Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.13?download=true
inline.NumInlined: 2227
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3o_
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3o_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit
  %.sroa.0.05 = phi ptr [ %i.ao, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val9.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val9.i to i64
  %i.f = and i64 %i.e, 1
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr i8, ptr %.val9.i, i64 %i.g ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = ptrtoint ptr %.val10.i to i64
  %i.m = and i64 %i.l, 1
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr i8, ptr %.val10.i, i64 %i.n ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.r)
  %i.s = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.p, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %i.k, %i.r
  %spec.select.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.w, label %bb.d, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.x = icmp eq ptr %i.d, %0
  br i1 %i.x, label %._crit_edge11, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %bb.d
  %i.y = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.z = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  br label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.aa = icmp eq ptr %i.ab, %0
  br i1 %i.aa, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.ab, %bb.e ], [ %i.d, %.lr.ph10.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 4 uses
  %.val8.i = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = ptrtoint ptr %.val8.i to i64
  %i.ad = and i64 %i.ac, 1
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr i8, ptr %.val8.i, i64 %i.ae ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i11.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ai)
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ag, i64 %spec.store.select.i.i.i11.i) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.z, %i.ai
  %spec.select.i.i.i12.i = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = icmp slt i64 %spec.select.i.i.i12.i, 0
  br i1 %i.an, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store ptr %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1674
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !1674
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB11_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Q_11SyntaxTokenB2c_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB55_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fa, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit
  %.sroa.021.0 = phi i8 [ %i.cd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread110, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q), !noalias !1706
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o), !noalias !1707
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = icmp ult i32 %i.s, %i.u                  ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread110, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.sroa.01.0.i.i62 = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.x = getelementptr [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.y = getelementptr i8, ptr %i.x, i64 -16
  %i.z = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w), !noalias !1708
  %i.aa = extractvalue { i32, i32 } %i.z, 0
  %i.ab = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y), !noalias !1707
  %i.ac = extractvalue { i32, i32 } %i.ab, 0
  %i.ad = icmp ult i32 %i.aa, %i.ac
  br i1 %i.ad, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i.i62, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i65 = phi i64 [ %i.an, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.ag = getelementptr [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.ah = getelementptr i8, ptr %i.ag, i64 -16
  %i.ai = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af), !noalias !1709
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  %i.ak = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah), !noalias !1707
  %i.al = extractvalue { i32, i32 } %i.ak, 0
  %i.am = icmp ult i32 %i.aj, %i.al
  br i1 %i.am, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.an = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.an, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i, label %.lr.ph66

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ao = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ao)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread110: ; preds = %.preheader
  br i1 %.not5.i112, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.ap = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5f_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1684
  %i.aq = shl nuw nsw i64 %..i36, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %i.bu, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.as = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.au = getelementptr [16 x i8], ptr %i.bd, i64 %i.as ; 3 uses
  %i.av = load i64, ptr %i.at, align 8, !range !6, !alias.scope !1710, !noalias !1711, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1710, !noalias !1711, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !1712, !noalias !1707
  store i64 %i.av, ptr %i.au, align 8, !alias.scope !1713, !noalias !1714
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !1713, !noalias !1714
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader ]
  %i.az = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit

bb.q:                                             ; preds = %bb.n
  %i.bb = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715), !noalias !1707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716), !noalias !1707
  %.not.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread110, %bb.q
  %i.bc = phi i64 [ %i.bb, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread110 ] ; 4 uses
  %.sroa.0.0.i.i108115119 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread110 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i108115119 ; 3 uses
  %xtraiter = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bc, 1
  br i1 %i.be, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %unroll_iter = and i64 %i.bc, 9223372036854775806
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new ], [ %i.bu, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.bf = xor i64 %.sroa.0.016.i.i, -1
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.bh = getelementptr [16 x i8], ptr %i.bd, i64 %i.bf ; 3 uses
  %i.bi = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !1710, !noalias !1711, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1710, !noalias !1711, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !alias.scope !1712, !noalias !1707
  store i64 %i.bi, ptr %i.bh, align 8, !alias.scope !1713, !noalias !1714
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !alias.scope !1713, !noalias !1714
  %i.bm = xor i64 %.sroa.0.016.i.i, -2
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = getelementptr [16 x i8], ptr %i.bd, i64 %i.bm ; 3 uses
  %i.bq = load i64, ptr %i.bo, align 8, !range !6, !alias.scope !1710, !noalias !1711, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !1710, !noalias !1711, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !alias.scope !1712, !noalias !1707
  store i64 %i.bq, ptr %i.bp, align 8, !alias.scope !1713, !noalias !1714
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !alias.scope !1713, !noalias !1714
  %i.bu = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ba, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ar, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.bv = lshr i64 %.sroa.023.0, 1
  %i.bw = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bx = sub nsw i64 %factor, %i.bv
  %i.by = add nuw nsw i64 %i.bw, %factor
  %i.bz = mul i64 %i.bx, %.sroa.0.0
  %i.ca = mul i64 %i.by, %.sroa.0.0
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cb, i1 false)
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.ce, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit ] ; 4 uses
  %i.ce = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.cg, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ci, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ce
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !5 ; 3 uses
  %i.cl = lshr i64 %i.ck, 1                       ; 8 uses
  %i.cm = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.cn = add nuw i64 %i.cl, %i.cm                ; 4 uses
  %i.co = sub i64 %.sroa.09.0, %i.cn
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.co ; 6 uses
  %i.cq = icmp samesign ugt i64 %i.cn, %3
  %i.cr = trunc i64 %.sroa.023.170 to i1
  %i.cs = or i64 %i.ck, %.sroa.023.170
  %i.ct = trunc i64 %i.cs to i1
  %or.cond3.i = or i1 %i.cq, %i.ct
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cu = trunc i64 %i.ck to i1
  br i1 %i.cu, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cv = shl nuw nsw i64 %i.cn, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cr, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cw = or i64 %i.cl, 1
  %i.cx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5f_(ptr noalias nofree noundef nonnull align 8 %i.cp, i64 noundef range(i64 0, 576460752303423488) %i.cl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1690
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cl
  %i.dc = or i64 %i.cm, 1
  %i.dd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true)
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 1
  %i.dg = xor i32 %i.df, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5f_(ptr noalias nofree noundef nonnull align 8 %i.db, i64 noundef range(i64 0, 576460752303423488) %i.cm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1690
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.dh = icmp eq i64 %i.cl, 0
  %i.di = icmp eq i64 %i.cm, 0
  %or.cond.i = or i1 %i.di, %i.dh
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB56_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 range(i64 0, -9223372036854775808) %i.cl) ; 2 uses
  %i.dj = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dj, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB56_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cl ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cl, %i.cm  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dk, ptr %i.cp
  %i.dl = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dl, i1 false), !alias.scope !1717
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB11_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Q_11SyntaxTokenB2c_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB55_:bb.a
  %..i17.i = select i1 %i.du, ptr %i.dn, ptr %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !1717, !noalias !1718
  %i.dv = xor i1 %i.du, true
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dw ; 3 uses
  %i.dy = zext i1 %i.du to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dy ; 3 uses
  %i.ea = icmp eq ptr %i.dx, %i.cp
  %i.eb = icmp eq ptr %i.dz, %2
  %or.cond.i.i = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5x_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.em, %.noexc22.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.ej, %.noexc22.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.el, %.noexc22.i ], [ %i.dk, %.critedge.i ] ; 3 uses
  %i.ec = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.02.i.i)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.ed = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i34)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i

.noexc22.i:                                       ; preds = %.noexc21.i
  %i.ee = extractvalue { i32, i32 } %i.ec, 0
  %i.ef = extractvalue { i32, i32 } %i.ed, 0
  %i.eg = icmp ult i32 %i.ee, %i.ef               ; 3 uses
  %i.eh = xor i1 %i.eg, true
  %.sroa.05.0.i.i = select i1 %i.eg, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !1717, !noalias !1719
  %i.ei = zext i1 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i34, i64 %i.ei ; 3 uses
  %i.ek = zext i1 %i.eg to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.en = icmp ne ptr %i.ej, %i.dm
  %i.eo = icmp ne ptr %i.el, %i.m
  %or.cond.i20.i = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5x_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5x_.exit.i: ; preds = %.noexc22.i, %.noexc18.i
  %.sroa.13.4.i = phi ptr [ %i.dx, %.noexc18.i ], [ %i.em, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.dz, %.noexc18.i ], [ %i.dm, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc18.i ], [ %i.ej, %.noexc22.i ] ; 2 uses
  %i.ep = ptrtoint ptr %.sroa.7.2.i to i64
  %i.eq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.er = sub nuw i64 %i.ep, %i.eq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.er, i1 false), !alias.scope !1717, !noalias !1720
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB56_.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.noexc21.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dm, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.es = ptrtoint ptr %.sroa.7.1.i to i64
  %i.et = ptrtoint ptr %.sroa.0.2.i to i64
  %i.eu = sub nuw i64 %i.es, %i.et
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.eu, i1 false), !alias.scope !1717, !noalias !1721
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB56_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5x_.exit.i
  %i.ev = shl nuw nsw i64 %i.cn, 1
  %i.ew = or disjoint i64 %i.ev, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5g_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB56_.exit
  %.sroa.0.0.i = phi i64 [ %i.ew, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB56_.exit ], [ %i.cv, %bb.u ] ; 2 uses
  %i.ex = icmp ugt i64 %i.ce, 1
  br i1 %i.ex, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.ey = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ez = lshr i64 %.sroa.018.0, 1
  %i.fa = add nuw i64 %i.ez, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.fb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.fb, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fc = or i64 %1, 1
  %i.fd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fc, i1 true)
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 1
  %i.fg = xor i32 %i.ff, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1690
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCs8Xq8PKFYOms_3hir5LocalNvYBW_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs8Xq8PKFYOms_3hir5LocalNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs8Xq8PKFYOms_3hir5LocalNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs8Xq8PKFYOms_3hir5LocalNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread94, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 60
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !1753, !noalias !1754, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 28
  %.val11.i = load i32, ptr %i.r, align 4, !alias.scope !1753, !noalias !1754, !noundef !5
  %i.s = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread94, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %i.u = getelementptr i8, ptr %i.t, i64 28
  %.val8.i = load i32, ptr %i.u, align 4, !alias.scope !1753, !noalias !1754, !noundef !5 ; 2 uses
  %i.v = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %i.y = getelementptr i8, ptr %i.x, i64 28
  %.val.i = load i32, ptr %i.y, align 4, !alias.scope !1753, !noalias !1754, !noundef !5 ; 2 uses
  %i.z = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.aa = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i, label %.lr.ph55

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs8Xq8PKFYOms_3hir5LocalNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs8Xq8PKFYOms_3hir5LocalNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 4 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #44, !inline_history !1726
  %i.ad = shl nuw nsw i64 %..i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs8Xq8PKFYOms_3hir5LocalNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs8Xq8PKFYOms_3hir5LocalNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755), !noalias !1754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756), !noalias !1754
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread94, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread94 ]
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs8Xq8PKFYOms_3hir5LocalNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i.thread94 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.am = getelementptr [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 4, !alias.scope !1757, !noalias !1758
  %i.ao = load <2 x i64>, ptr %i.am, align 4, !alias.scope !1759, !noalias !1760
  store <2 x i64> %i.ao, ptr %i.al, align 4, !alias.scope !1757, !noalias !1758
  store <2 x i64> %i.an, ptr %i.am, align 4, !alias.scope !1759, !noalias !1760
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 4, !alias.scope !1761, !noalias !1758
  %i.as = load <2 x i64>, ptr %i.aq, align 4, !alias.scope !1762, !noalias !1760
  store <2 x i64> %i.as, ptr %i.ap, align 4, !alias.scope !1761, !noalias !1758
  store <2 x i64> %i.ar, ptr %i.aq, align 4, !alias.scope !1762, !noalias !1760
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs8Xq8PKFYOms_3hir5LocalNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs8Xq8PKFYOms_3hir5Local7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.159 to i1
  %i.br = or i64 %i.bj, %.sroa.023.159
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs8Xq8PKFYOms_3hir5LocalNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 4 %i.bo, i64 noundef range(i64 0, 288230376151711744) %i.bk, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #44, !inline_history !1741
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs8Xq8PKFYOms_3hir5LocalNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 4 %i.ca, i64 noundef range(i64 0, 288230376151711744) %i.bl, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #44, !inline_history !1741
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs8Xq8PKFYOms_3hir5LocalNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs8Xq8PKFYOms_3hir5LocalNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i, 5               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !1765
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cm = phi ptr [ %i.cy, %.preheader.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %i.cn = phi ptr [ %i.cw, %.preheader.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cq, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -32 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -32 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -32 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cm, i64 -4
  %.val.i.i = load i32, ptr %i.cr, align 4, !alias.scope !1764, !noalias !1766, !noundef !5
  %i.cs = getelementptr i8, ptr %i.cn, i64 -4
  %.val12.i.i = load i32, ptr %i.cs, align 4, !alias.scope !1763, !noalias !1767, !noundef !5
  %i.ct = icmp ult i32 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i17.i = select i1 %i.ct, ptr %i.co, ptr %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cq, ptr noundef nonnull align 4 dereferenceable(32) %..i17.i, i64 32, i1 false), !alias.scope !1765, !noalias !1768
  %i.cu = xor i1 %i.ct, true
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cv ; 3 uses
  %i.cx = zext i1 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cx ; 3 uses
  %i.cz = icmp eq ptr %i.cw, %i.bo
  %i.da = icmp eq ptr %i.cy, %2
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs8Xq8PKFYOms_3hir5LocalE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.db = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %i.dc = phi ptr [ %i.di, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dd = getelementptr i8, ptr %.sroa.0.02.i.i, i64 28
  %.sroa.0.0.val.i.i = load i32, ptr %i.dd, align 4, !alias.scope !1763, !noalias !1769, !noundef !5
  %i.de = getelementptr i8, ptr %i.dc, i64 28
  %.val.i19.i = load i32, ptr %i.de, align 4, !alias.scope !1764, !noalias !1770, !noundef !5
  %i.df = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dg = xor i1 %i.df, true
  %.sroa.05.0.i.i = select i1 %i.df, ptr %.sroa.0.02.i.i, ptr %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.db, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !1765, !noalias !1771
  %i.dh = zext i1 %i.dg to i64
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %i.dh ; 3 uses
  %i.dj = zext i1 %i.df to i64
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 2 uses
  %i.dm = icmp ne ptr %i.di, %i.cl
  %i.dn = icmp ne ptr %i.dk, %i.m
  %or.cond.i20.i = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs8Xq8PKFYOms_3hir5LocalE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs8Xq8PKFYOms_3hir5LocalE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.dl, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.cl, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.di, %.lr.ph.i.i ] ; 2 uses
  %i.do = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dp = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dq = sub nuw i64 %i.do, %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dq, i1 false), !alias.scope !1765, !noalias !1772
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs8Xq8PKFYOms_3hir5LocalNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs8Xq8PKFYOms_3hir5LocalNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs8Xq8PKFYOms_3hir5LocalE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.dr = shl nuw nsw i64 %i.bm, 1
  %i.ds = or disjoint i64 %i.dr, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs8Xq8PKFYOms_3hir5LocalNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs8Xq8PKFYOms_3hir5LocalNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i = phi i64 [ %i.ds, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs8Xq8PKFYOms_3hir5LocalNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bd, 1
  br i1 %i.dt, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.du = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.018.0, 1
  %i.dw = add nuw i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dx, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs8Xq8PKFYOms_3hir5LocalNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ec, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #44, !inline_history !1741
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3b_7Assists6finish0E0EB3d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 46116860184273880) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 46116860184273880) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i100 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ge, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gc, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3j_7Assists6finish0E0EB3l_.exit
  %.sroa.021.0 = phi i8 [ %i.dc, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3j_7Assists6finish0E0EB3l_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3j_7Assists6finish0E0EB3l_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [200 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [200 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread98, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 384
  %.val14.i = load i32, ptr %i.q, align 8, !alias.scope !1846, !noalias !1847, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 388
  %.val15.i = load i32, ptr %i.r, align 4, !alias.scope !1846, !noalias !1847, !noundef !5 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 184
  %.val16.i = load i32, ptr %i.s, align 8, !alias.scope !1846, !noalias !1847, !noundef !5
  %i.t = getelementptr i8, ptr %i.o, i64 188
  %.val17.i = load i32, ptr %i.t, align 4, !alias.scope !1846, !noalias !1847, !noundef !5
  %i.u = sub i32 %.val15.i, %.val14.i
  %i.v = sub i32 %.val17.i, %.val16.i
  %i.w = icmp ult i32 %i.u, %i.v                  ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread98, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val13.i = phi i32 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader46 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.ad, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [200 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 184
  %.val10.i = load i32, ptr %i.y, align 8, !alias.scope !1846, !noalias !1847, !noundef !5 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 188
  %.val11.i = load i32, ptr %i.z, align 4, !alias.scope !1846, !noalias !1847, !noundef !5 ; 2 uses
  %i.aa = sub i32 %.val11.i, %.val10.i
  %i.ab = sub i32 %.val13.i, %.val12.i
  %i.ac = icmp ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i51, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i32 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi i32 [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [200 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 184
  %.val.i = load i32, ptr %i.af, align 8, !alias.scope !1846, !noalias !1847, !noundef !5 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 188
  %.val7.i = load i32, ptr %i.ag, align 4, !alias.scope !1846, !noalias !1847, !noundef !5 ; 2 uses
  %i.ah = sub i32 %.val7.i, %.val.i
  %i.ai = sub i32 %.val9.i, %.val8.i
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.ak = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ak, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i, label %.lr.ph55

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.al)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread98: ; preds = %.preheader
  br i1 %.not5.i100, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i95, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 46116860184273880) %i.n, i64 %.sroa.01.0)
  %i.am = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3j_7Assists6finish0E0EB3l_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 46116860184273880) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3l_7Assists6finish0E0EB3n_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 46116860184273880) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(200) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1777
  %i.an = shl nuw nsw i64 %..i35, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3j_7Assists6finish0E0EB3l_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread ], [ %.sroa.0.0.i.i96103107, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ap = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3j_7Assists6finish0E0EB3l_.exit

bb.q:                                             ; preds = %bb.n
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848), !noalias !1847
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849), !noalias !1847
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread98, %bb.q
  %i.as = phi i64 [ %i.ar, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread98 ]
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3i_7Assists6finish0E0EB3k_.exit.i.thread98 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [200 x i8], ptr %i.o, i64 %.sroa.0.0.i.i96103107
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ct, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.016.i.i, -1
  %i.av = getelementptr inbounds nuw [200 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 14 uses
  %i.aw = getelementptr [200 x i8], ptr %i.at, i64 %i.au ; 14 uses
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !1850, !noalias !1851
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !1852, !noalias !1853
  store <2 x i64> %i.ay, ptr %i.av, align 8, !alias.scope !1850, !noalias !1851
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !alias.scope !1852, !noalias !1853
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !1854, !noalias !1851
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !1855, !noalias !1853
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !1854, !noalias !1851
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !1855, !noalias !1853
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !1856, !noalias !1851
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !1857, !noalias !1853
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !1856, !noalias !1851
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !1857, !noalias !1853
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !1858, !noalias !1851
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !1859, !noalias !1853
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !alias.scope !1858, !noalias !1851
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !alias.scope !1859, !noalias !1853
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 64 ; 2 uses
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !1860, !noalias !1851
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !1861, !noalias !1853
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !alias.scope !1860, !noalias !1851
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !alias.scope !1861, !noalias !1853
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 80 ; 2 uses
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !1862, !noalias !1851
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !1863, !noalias !1853
  store <2 x i64> %i.bs, ptr %i.bp, align 8, !alias.scope !1862, !noalias !1851
  store <2 x i64> %i.br, ptr %i.bq, align 8, !alias.scope !1863, !noalias !1853
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 96 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !1864, !noalias !1851
  %i.bw = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !1865, !noalias !1853
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !alias.scope !1864, !noalias !1851
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !alias.scope !1865, !noalias !1853
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 112 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !1866, !noalias !1851
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !alias.scope !1867, !noalias !1853
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !alias.scope !1866, !noalias !1851
  store <2 x i64> %i.bz, ptr %i.by, align 8, !alias.scope !1867, !noalias !1853
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 128 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 128 ; 2 uses
  %i.cd = load <2 x i64>, ptr %i.cb, align 8, !alias.scope !1868, !noalias !1851
  %i.ce = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !1869, !noalias !1853
  store <2 x i64> %i.ce, ptr %i.cb, align 8, !alias.scope !1868, !noalias !1851
  store <2 x i64> %i.cd, ptr %i.cc, align 8, !alias.scope !1869, !noalias !1853
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 144 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 144 ; 2 uses
  %i.ch = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !1870, !noalias !1851
  %i.ci = load <2 x i64>, ptr %i.cg, align 8, !alias.scope !1871, !noalias !1853
  store <2 x i64> %i.ci, ptr %i.cf, align 8, !alias.scope !1870, !noalias !1851
  store <2 x i64> %i.ch, ptr %i.cg, align 8, !alias.scope !1871, !noalias !1853
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 160 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 160 ; 2 uses
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !1872, !noalias !1851
  %i.cm = load <2 x i64>, ptr %i.ck, align 8, !alias.scope !1873, !noalias !1853
  store <2 x i64> %i.cm, ptr %i.cj, align 8, !alias.scope !1872, !noalias !1851
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !alias.scope !1873, !noalias !1853
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 176 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 176 ; 2 uses
  %i.cp = load <2 x i64>, ptr %i.cn, align 8, !alias.scope !1874, !noalias !1851
  %i.cq = load <2 x i64>, ptr %i.co, align 8, !alias.scope !1875, !noalias !1853
  store <2 x i64> %i.cq, ptr %i.cn, align 8, !alias.scope !1874, !noalias !1851
  store <2 x i64> %i.cp, ptr %i.co, align 8, !alias.scope !1875, !noalias !1853
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 192 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aw, i64 192 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876), !noalias !1847
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877), !noalias !1847
  %.sroa.0.0.copyload.i.i.i.24.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1878, !noalias !1879
  %.sroa.02.0.copyload.i.i.i.24.i.i.i.i = load i64, ptr %i.cs, align 8, !alias.scope !1880, !noalias !1881
  store i64 %.sroa.02.0.copyload.i.i.i.24.i.i.i.i, ptr %i.cr, align 8, !alias.scope !1878, !noalias !1879
  store i64 %.sroa.0.0.copyload.i.i.i.24.i.i.i.i, ptr %i.cs, align 8, !alias.scope !1880, !noalias !1881
  %i.ct = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ct, %i.as
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3j_7Assists6finish0E0EB3l_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.aq, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs6oosyzwIepl_6ide_db7assists6Assist7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ao, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.cu = lshr i64 %.sroa.023.0, 1
  %i.cv = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cw = sub nsw i64 %factor, %i.cu
  %i.cx = add nuw nsw i64 %i.cv, %factor
  %i.cy = mul i64 %i.cw, %.sroa.0.0
  %i.cz = mul i64 %i.cx, %.sroa.0.0
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.da, i1 false)
  %i.dc = trunc nuw nsw i64 %i.db to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.dd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit ] ; 4 uses
  %i.dd = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.df, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dd
  %i.dj = load i64, ptr %i.di, align 8, !noundef !5 ; 3 uses
  %i.dk = lshr i64 %i.dj, 1                       ; 8 uses
  %i.dl = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.dm = add nuw i64 %i.dk, %i.dl                ; 4 uses
  %i.dn = sub i64 %.sroa.09.0, %i.dm
  %i.do = getelementptr inbounds nuw [200 x i8], ptr %0, i64 %i.dn ; 6 uses
  %i.dp = icmp samesign ugt i64 %i.dm, %3
  %i.dq = trunc i64 %.sroa.023.159 to i1
  %i.dr = or i64 %i.dj, %.sroa.023.159
  %i.ds = trunc i64 %i.dr to i1
  %or.cond3.i = or i1 %i.dp, %i.ds
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dt = trunc i64 %i.dj to i1
  br i1 %i.dt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.du = shl nuw nsw i64 %i.dm, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.dq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.dv = or i64 %i.dk, 1
  %i.dw = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 1
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3b_7Assists6finish0E0EB3d_:bb.a
  %i.fo = xor i1 %i.fn, true
  %.sroa.05.0.i.i = select i1 %i.fn, ptr %.sroa.0.02.i.i, ptr %i.fg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ff, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.05.0.i.i, i64 200, i1 false), !alias.scope !1884, !noalias !1890
  %i.fp = zext i1 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [200 x i8], ptr %i.fg, i64 %i.fp ; 3 uses
  %i.fr = zext i1 %i.fn to i64
  %i.fs = getelementptr inbounds nuw [200 x i8], ptr %.sroa.0.02.i.i, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 200 ; 2 uses
  %i.fu = icmp ne ptr %i.fq, %i.el
  %i.fv = icmp ne ptr %i.fs, %i.m
  %or.cond.i20.i = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs6oosyzwIepl_6ide_db7assists6AssistE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3D_7Assists6finish0E0EB3F_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs6oosyzwIepl_6ide_db7assists6AssistE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3D_7Assists6finish0E0EB3F_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.fa, %.preheader.i ], [ %i.ft, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.fc, %.preheader.i ], [ %i.el, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.fq, %.lr.ph.i.i ] ; 2 uses
  %i.fw = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fx = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fy = sub nuw i64 %i.fw, %i.fx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fy, i1 false), !alias.scope !1884, !noalias !1891
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3c_7Assists6finish0E0EB3e_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3c_7Assists6finish0E0EB3e_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs6oosyzwIepl_6ide_db7assists6AssistE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3D_7Assists6finish0E0EB3F_.exit.i
  %i.fz = shl nuw nsw i64 %i.dm, 1
  %i.ga = or disjoint i64 %i.fz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3m_7Assists6finish0E0EB3o_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3c_7Assists6finish0E0EB3e_.exit
  %.sroa.0.0.i = phi i64 [ %i.ga, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3c_7Assists6finish0E0EB3e_.exit ], [ %i.du, %bb.u ] ; 2 uses
  %i.gb = icmp ugt i64 %i.dd, 1
  br i1 %i.gb, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.gc = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gd = lshr i64 %.sroa.018.0, 1
  %i.ge = add nuw i64 %i.gd, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.gf = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gf, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gg = or i64 %1, 1
  %i.gh = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.gg, i1 true)
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = shl nuw nsw i32 %i.gi, 1
  %i.gk = xor i32 %i.gj, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3l_7Assists6finish0E0EB3n_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 46116860184273880) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 46116860184273880) %3, i32 noundef %i.gk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(200) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1834
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i127 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i132 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.hc, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ha, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3q_.exit
  %.sroa.021.0 = phi i8 [ %i.dj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3q_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3q_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph92, label %._crit_edge

.lr.ph92:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread130, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !1986, !noalias !1987, !nonnull !5, !align !10, !noundef !5 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988), !noalias !1989
  %i.r = load ptr, ptr %.val8.i, align 8, !alias.scope !1988, !noalias !1990, !nonnull !5, !align !10, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1988, !noalias !1990, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !range !13, !noalias !1991, !noundef !5
  %.not.i.i49 = icmp eq i32 %i.v, -1
  %..i.i50 = select i1 %.not.i.i49, ptr null, ptr %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1988, !noalias !1990, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noalias !1991, !noundef !5
  %.not2.i.i51 = icmp eq i32 %i.y, 0
  %.sroa.01.0.i.i52 = select i1 %.not2.i.i51, ptr null, ptr %i.x
  %i.z = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i50, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i52), !noalias !1992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993), !noalias !1989
  %i.aa = load ptr, ptr %.val8.i, align 8, !alias.scope !1993, !noalias !1994, !nonnull !5, !align !10, !noundef !5
  %i.ab = load ptr, ptr %i.s, align 8, !alias.scope !1993, !noalias !1994, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !range !13, !noalias !1995, !noundef !5
  %.not.i2.i53 = icmp eq i32 %i.ad, -1
  %..i3.i54 = select i1 %.not.i2.i53, ptr null, ptr %i.ab
  %i.ae = load ptr, ptr %i.w, align 8, !alias.scope !1993, !noalias !1994, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !1995, !noundef !5
  %.not2.i4.i55 = icmp eq i32 %i.af, 0
  %.sroa.01.0.i5.i56 = select i1 %.not2.i4.i55, ptr null, ptr %i.ae
  %i.ag = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i54, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i56), !noalias !1996
  %i.ah = icmp slt i32 %i.ag, %i.z                ; 2 uses
  %.not99 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.ah, label %.preheader66, label %.preheader67

.preheader67:                                     ; preds = %bb.k
  br i1 %.not99, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread, label %.lr.ph

.preheader66:                                     ; preds = %bb.k
  br i1 %.not99, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread130, label %.lr.ph86

.lr.ph:                                           ; preds = %.preheader67, %bb.l
  %.sroa.01.0.i.i82 = phi i64 [ %i.ba, %bb.l ], [ 2, %.preheader67 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i82
  %i.aj = getelementptr [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i82
  %i.ak = getelementptr i8, ptr %i.aj, i64 -88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997), !noalias !1989
  %i.al = load ptr, ptr %.val8.i, align 8, !alias.scope !1997, !noalias !1998, !nonnull !5, !align !10, !noundef !5
  %i.am = load ptr, ptr %i.s, align 8, !alias.scope !1997, !noalias !1998, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !range !13, !noalias !1999, !noundef !5
  %.not.i.i41 = icmp eq i32 %i.ao, -1
  %..i.i42 = select i1 %.not.i.i41, ptr null, ptr %i.am
  %i.ap = load ptr, ptr %i.w, align 8, !alias.scope !1997, !noalias !1998, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !1999, !noundef !5
  %.not2.i.i43 = icmp eq i32 %i.aq, 0
  %.sroa.01.0.i.i44 = select i1 %.not2.i.i43, ptr null, ptr %i.ap
  %i.ar = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i42, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i44), !noalias !2000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001), !noalias !1989
  %i.as = load ptr, ptr %.val8.i, align 8, !alias.scope !2001, !noalias !2002, !nonnull !5, !align !10, !noundef !5
  %i.at = load ptr, ptr %i.s, align 8, !alias.scope !2001, !noalias !2002, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !range !13, !noalias !2003, !noundef !5
  %.not.i2.i45 = icmp eq i32 %i.av, -1
  %..i3.i46 = select i1 %.not.i2.i45, ptr null, ptr %i.at
  %i.aw = load ptr, ptr %i.w, align 8, !alias.scope !2001, !noalias !2002, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !2003, !noundef !5
  %.not2.i4.i47 = icmp eq i32 %i.ax, 0
  %.sroa.01.0.i5.i48 = select i1 %.not2.i4.i47, ptr null, ptr %i.aw
  %i.ay = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i46, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i48), !noalias !2004
  %i.az = icmp slt i32 %i.ay, %i.ar
  br i1 %i.az, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ba = add nuw i64 %.sroa.01.0.i.i82, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i, label %.lr.ph

.lr.ph86:                                         ; preds = %.preheader66, %bb.m
  %.sroa.01.1.i.i85 = phi i64 [ %i.bt, %bb.m ], [ 2, %.preheader66 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i85
  %i.bc = getelementptr [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i85
  %i.bd = getelementptr i8, ptr %i.bc, i64 -88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005), !noalias !1989
  %i.be = load ptr, ptr %.val8.i, align 8, !alias.scope !2005, !noalias !2006, !nonnull !5, !align !10, !noundef !5
  %i.bf = load ptr, ptr %i.s, align 8, !alias.scope !2005, !noalias !2006, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !range !13, !noalias !2007, !noundef !5
  %.not.i.i38 = icmp eq i32 %i.bh, -1
  %..i.i39 = select i1 %.not.i.i38, ptr null, ptr %i.bf
  %i.bi = load ptr, ptr %i.w, align 8, !alias.scope !2005, !noalias !2006, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !2007, !noundef !5
  %.not2.i.i = icmp eq i32 %i.bj, 0
  %.sroa.01.0.i.i40 = select i1 %.not2.i.i, ptr null, ptr %i.bi
  %i.bk = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i39, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i40), !noalias !2008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009), !noalias !1989
  %i.bl = load ptr, ptr %.val8.i, align 8, !alias.scope !2009, !noalias !2010, !nonnull !5, !align !10, !noundef !5
  %i.bm = load ptr, ptr %i.s, align 8, !alias.scope !2009, !noalias !2010, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !range !13, !noalias !2011, !noundef !5
  %.not.i2.i = icmp eq i32 %i.bo, -1
  %..i3.i = select i1 %.not.i2.i, ptr null, ptr %i.bm
  %i.bp = load ptr, ptr %i.w, align 8, !alias.scope !2009, !noalias !2010, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !2011, !noundef !5
  %.not2.i4.i = icmp eq i32 %i.bq, 0
  %.sroa.01.0.i5.i = select i1 %.not2.i4.i, ptr null, ptr %i.bp
  %i.br = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i), !noalias !2012
  %i.bs = icmp slt i32 %i.br, %i.bk
  br i1 %i.bs, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i

bb.m:                                             ; preds = %.lr.ph86
  %i.bt = add nuw i64 %.sroa.01.1.i.i85, 1        ; 2 uses
  %exitcond112.not = icmp eq i64 %i.bt, %i.n
  br i1 %exitcond112.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i, label %.lr.ph86

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph86
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i85, %.lr.ph86 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i82, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.bu = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.bu)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread130: ; preds = %.preheader66
  br i1 %.not5.i132, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread: ; preds = %.preheader67
  br i1 %.not5.i127, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i
  br i1 %i.ah, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 %.sroa.01.0)
  %i.bv = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3q_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3s_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1923
  %i.bw = shl nuw nsw i64 %..i36, 1
  %i.bx = or disjoint i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3q_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i6164 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread ], [ %.sroa.0.0.i.i128135139, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.by = shl nuw nsw i64 %.sroa.0.0.i.i6164, 1
  %i.bz = or disjoint i64 %i.by, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3q_.exit

bb.q:                                             ; preds = %bb.n
  %i.ca = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013), !noalias !1989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014), !noalias !1989
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread130, %bb.q
  %i.cb = phi i64 [ %i.ca, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread130 ]
  %.sroa.0.0.i.i128135139 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3p_.exit.i.thread130 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.0.i.i128135139
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.da, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.cd = xor i64 %.sroa.0.016.i.i, -1
  %i.ce = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 7 uses
  %i.cf = getelementptr [88 x i8], ptr %i.cc, i64 %i.cd ; 7 uses
  %i.cg = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !2015, !noalias !2016
  %i.ch = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !2017, !noalias !2018
  store <2 x i64> %i.ch, ptr %i.ce, align 8, !alias.scope !2015, !noalias !2016
  store <2 x i64> %i.cg, ptr %i.cf, align 8, !alias.scope !2017, !noalias !2018
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !2019, !noalias !2016
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2020, !noalias !2018
  store <2 x i64> %i.cl, ptr %i.ci, align 8, !alias.scope !2019, !noalias !2016
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !alias.scope !2020, !noalias !2018
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.co = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !2021, !noalias !2016
  %i.cp = load <2 x i64>, ptr %i.cn, align 8, !alias.scope !2022, !noalias !2018
  store <2 x i64> %i.cp, ptr %i.cm, align 8, !alias.scope !2021, !noalias !2016
  store <2 x i64> %i.co, ptr %i.cn, align 8, !alias.scope !2022, !noalias !2018
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 48 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 2 uses
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !2023, !noalias !2016
  %i.ct = load <2 x i64>, ptr %i.cr, align 8, !alias.scope !2024, !noalias !2018
  store <2 x i64> %i.ct, ptr %i.cq, align 8, !alias.scope !2023, !noalias !2016
  store <2 x i64> %i.cs, ptr %i.cr, align 8, !alias.scope !2024, !noalias !2018
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 2 uses
  %i.cw = load <2 x i64>, ptr %i.cu, align 8, !alias.scope !2025, !noalias !2016
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !2026, !noalias !2018
  store <2 x i64> %i.cx, ptr %i.cu, align 8, !alias.scope !2025, !noalias !2016
  store <2 x i64> %i.cw, ptr %i.cv, align 8, !alias.scope !2026, !noalias !2018
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 80 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027), !noalias !1989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028), !noalias !1989
  %.sroa.0.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !2029, !noalias !2030
  %.sroa.02.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !2031, !noalias !2032
  store i64 %.sroa.02.0.copyload.i.i.i.10.i.i.i.i, ptr %i.cy, align 8, !alias.scope !2029, !noalias !2030
  store i64 %.sroa.0.0.copyload.i.i.i.10.i.i.i.i, ptr %i.cz, align 8, !alias.scope !2031, !noalias !2032
  %i.da = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, %i.cb
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3q_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bz, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.bx, %bb.p ], [ %i.bv, %bb.o ] ; 2 uses
  %i.db = lshr i64 %.sroa.023.0, 1
  %i.dc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dd = sub nsw i64 %factor, %i.db
  %i.de = add nuw nsw i64 %i.dc, %factor
  %i.df = mul i64 %i.dd, %.sroa.0.0
  %i.dg = mul i64 %i.de, %.sroa.0.0
  %i.dh = xor i64 %i.dg, %i.df
  %i.di = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dh, i1 false)
  %i.dj = trunc nuw nsw i64 %i.di to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph92, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit
  %.sroa.02.191 = phi i64 [ %.sroa.02.0, %.lr.ph92 ], [ %i.dk, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit ] ; 2 uses
  %.sroa.023.190 = phi i64 [ %.sroa.023.0, %.lr.ph92 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit ] ; 4 uses
  %i.dk = add i64 %.sroa.02.191, -1               ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.dm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.190, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.191, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.do, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dk
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5 ; 3 uses
  %i.dr = lshr i64 %i.dq, 1                       ; 8 uses
  %i.ds = lshr i64 %.sroa.023.190, 1              ; 6 uses
  %i.dt = add nuw i64 %i.dr, %i.ds                ; 4 uses
  %i.du = sub i64 %.sroa.09.0, %i.dt
  %i.dv = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.du ; 6 uses
  %i.dw = icmp samesign ugt i64 %i.dt, %3
  %i.dx = trunc i64 %.sroa.023.190 to i1
  %i.dy = or i64 %i.dq, %.sroa.023.190
  %i.dz = trunc i64 %i.dy to i1
  %or.cond3.i = or i1 %i.dw, %i.dz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = trunc i64 %i.dq to i1
  br i1 %i.ea, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.eb = shl nuw nsw i64 %i.dt, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.dx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ec = or i64 %i.dr, 1
  %i.ed = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = xor i32 %i.ef, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3s_(ptr noalias nofree noundef nonnull align 8 %i.dv, i64 noundef range(i64 0, 104811045873349726) %i.dr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.eg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1952
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw [88 x i8], ptr %i.dv, i64 %i.dr
  %i.ei = or i64 %i.ds, 1
  %i.ej = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ei, i1 true)
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 1
  %i.em = xor i32 %i.el, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3s_(ptr noalias nofree noundef nonnull align 8 %i.eh, i64 noundef range(i64 0, 104811045873349726) %i.ds, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.em, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1952
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  %i.en = icmp eq i64 %i.dr, 0
  %i.eo = icmp eq i64 %i.ds, 0
  %or.cond.i = or i1 %i.eo, %i.en
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3j_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 range(i64 0, -9223372036854775808) %i.dr) ; 2 uses
  %i.ep = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ep, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3j_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw [88 x i8], ptr %i.dv, i64 %i.dr ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.dr, %i.ds  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.eq, ptr %i.dv
  %i.er = mul nuw nsw i64 %..i.i, 88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.er, i1 false), !alias.scope !2035
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %i.er ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.et = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.noexc19.i
  %.sroa.13.0.i = phi ptr [ %i.fp, %.noexc19.i ], [ %i.eq, %.critedge.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3i_:bb.a
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3j_.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.noexc30.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.es, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gu = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gv = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gw = sub nuw i64 %i.gu, %i.gv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gw, i1 false), !alias.scope !2035, !noalias !2051
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3j_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3K_.exit.i
  %i.gx = shl nuw nsw i64 %i.dt, 1
  %i.gy = or disjoint i64 %i.gx, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3t_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3j_.exit
  %.sroa.0.0.i = phi i64 [ %i.gy, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3j_.exit ], [ %i.eb, %bb.u ] ; 2 uses
  %i.gz = icmp ugt i64 %i.dk, 1
  br i1 %i.gz, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.ha = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.hb = lshr i64 %.sroa.018.0, 1
  %i.hc = add nuw i64 %i.hb, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.hd = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.hd, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.he = or i64 %1, 1
  %i.hf = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.he, i1 true)
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 1
  %i.hi = xor i32 %i.hh, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.hi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !1952
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i127 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i132 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.hc, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ha, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3q_.exit
  %.sroa.021.0 = phi i8 [ %i.dj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3q_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3q_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph92, label %._crit_edge

.lr.ph92:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread130, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !2146, !noalias !2147, !nonnull !5, !align !10, !noundef !5 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2148), !noalias !2149
  %i.r = load ptr, ptr %.val8.i, align 8, !alias.scope !2148, !noalias !2150, !nonnull !5, !align !10, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2148, !noalias !2150, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !range !13, !noalias !2151, !noundef !5
  %.not.i.i49 = icmp eq i32 %i.v, -1
  %..i.i50 = select i1 %.not.i.i49, ptr null, ptr %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2148, !noalias !2150, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noalias !2151, !noundef !5
  %.not2.i.i51 = icmp eq i32 %i.y, 0
  %.sroa.01.0.i.i52 = select i1 %.not2.i.i51, ptr null, ptr %i.x
  %i.z = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i50, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i52), !noalias !2152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153), !noalias !2149
  %i.aa = load ptr, ptr %.val8.i, align 8, !alias.scope !2153, !noalias !2154, !nonnull !5, !align !10, !noundef !5
  %i.ab = load ptr, ptr %i.s, align 8, !alias.scope !2153, !noalias !2154, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !range !13, !noalias !2155, !noundef !5
  %.not.i2.i53 = icmp eq i32 %i.ad, -1
  %..i3.i54 = select i1 %.not.i2.i53, ptr null, ptr %i.ab
  %i.ae = load ptr, ptr %i.w, align 8, !alias.scope !2153, !noalias !2154, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !2155, !noundef !5
  %.not2.i4.i55 = icmp eq i32 %i.af, 0
  %.sroa.01.0.i5.i56 = select i1 %.not2.i4.i55, ptr null, ptr %i.ae
  %i.ag = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i54, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i56), !noalias !2156
  %i.ah = icmp slt i32 %i.ag, %i.z                ; 2 uses
  %.not99 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.ah, label %.preheader66, label %.preheader67

.preheader67:                                     ; preds = %bb.k
  br i1 %.not99, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread, label %.lr.ph

.preheader66:                                     ; preds = %bb.k
  br i1 %.not99, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread130, label %.lr.ph86

.lr.ph:                                           ; preds = %.preheader67, %bb.l
  %.sroa.01.0.i.i82 = phi i64 [ %i.ba, %bb.l ], [ 2, %.preheader67 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i82
  %i.aj = getelementptr [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i82
  %i.ak = getelementptr i8, ptr %i.aj, i64 -88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157), !noalias !2149
  %i.al = load ptr, ptr %.val8.i, align 8, !alias.scope !2157, !noalias !2158, !nonnull !5, !align !10, !noundef !5
  %i.am = load ptr, ptr %i.s, align 8, !alias.scope !2157, !noalias !2158, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !range !13, !noalias !2159, !noundef !5
  %.not.i.i41 = icmp eq i32 %i.ao, -1
  %..i.i42 = select i1 %.not.i.i41, ptr null, ptr %i.am
  %i.ap = load ptr, ptr %i.w, align 8, !alias.scope !2157, !noalias !2158, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !2159, !noundef !5
  %.not2.i.i43 = icmp eq i32 %i.aq, 0
  %.sroa.01.0.i.i44 = select i1 %.not2.i.i43, ptr null, ptr %i.ap
  %i.ar = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i42, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i44), !noalias !2160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2161), !noalias !2149
  %i.as = load ptr, ptr %.val8.i, align 8, !alias.scope !2161, !noalias !2162, !nonnull !5, !align !10, !noundef !5
  %i.at = load ptr, ptr %i.s, align 8, !alias.scope !2161, !noalias !2162, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !range !13, !noalias !2163, !noundef !5
  %.not.i2.i45 = icmp eq i32 %i.av, -1
  %..i3.i46 = select i1 %.not.i2.i45, ptr null, ptr %i.at
  %i.aw = load ptr, ptr %i.w, align 8, !alias.scope !2161, !noalias !2162, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !2163, !noundef !5
  %.not2.i4.i47 = icmp eq i32 %i.ax, 0
  %.sroa.01.0.i5.i48 = select i1 %.not2.i4.i47, ptr null, ptr %i.aw
  %i.ay = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i46, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i48), !noalias !2164
  %i.az = icmp slt i32 %i.ay, %i.ar
  br i1 %i.az, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ba = add nuw i64 %.sroa.01.0.i.i82, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i, label %.lr.ph

.lr.ph86:                                         ; preds = %.preheader66, %bb.m
  %.sroa.01.1.i.i85 = phi i64 [ %i.bt, %bb.m ], [ 2, %.preheader66 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i85
  %i.bc = getelementptr [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i85
  %i.bd = getelementptr i8, ptr %i.bc, i64 -88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165), !noalias !2149
  %i.be = load ptr, ptr %.val8.i, align 8, !alias.scope !2165, !noalias !2166, !nonnull !5, !align !10, !noundef !5
  %i.bf = load ptr, ptr %i.s, align 8, !alias.scope !2165, !noalias !2166, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !range !13, !noalias !2167, !noundef !5
  %.not.i.i38 = icmp eq i32 %i.bh, -1
  %..i.i39 = select i1 %.not.i.i38, ptr null, ptr %i.bf
  %i.bi = load ptr, ptr %i.w, align 8, !alias.scope !2165, !noalias !2166, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !2167, !noundef !5
  %.not2.i.i = icmp eq i32 %i.bj, 0
  %.sroa.01.0.i.i40 = select i1 %.not2.i.i, ptr null, ptr %i.bi
  %i.bk = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i39, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i40), !noalias !2168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169), !noalias !2149
  %i.bl = load ptr, ptr %.val8.i, align 8, !alias.scope !2169, !noalias !2170, !nonnull !5, !align !10, !noundef !5
  %i.bm = load ptr, ptr %i.s, align 8, !alias.scope !2169, !noalias !2170, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !range !13, !noalias !2171, !noundef !5
  %.not.i2.i = icmp eq i32 %i.bo, -1
  %..i3.i = select i1 %.not.i2.i, ptr null, ptr %i.bm
  %i.bp = load ptr, ptr %i.w, align 8, !alias.scope !2169, !noalias !2170, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !2171, !noundef !5
  %.not2.i4.i = icmp eq i32 %i.bq, 0
  %.sroa.01.0.i5.i = select i1 %.not2.i4.i, ptr null, ptr %i.bp
  %i.br = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i), !noalias !2172
  %i.bs = icmp slt i32 %i.br, %i.bk
  br i1 %i.bs, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i

bb.m:                                             ; preds = %.lr.ph86
  %i.bt = add nuw i64 %.sroa.01.1.i.i85, 1        ; 2 uses
  %exitcond112.not = icmp eq i64 %i.bt, %i.n
  br i1 %exitcond112.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i, label %.lr.ph86

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph86
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i85, %.lr.ph86 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i82, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.bu = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.bu)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread130: ; preds = %.preheader66
  br i1 %.not5.i132, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread: ; preds = %.preheader67
  br i1 %.not5.i127, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i
  br i1 %i.ah, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 %.sroa.01.0)
  %i.bv = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3q_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3s_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2083
  %i.bw = shl nuw nsw i64 %..i36, 1
  %i.bx = or disjoint i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3q_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i6164 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread ], [ %.sroa.0.0.i.i128135139, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.by = shl nuw nsw i64 %.sroa.0.0.i.i6164, 1
  %i.bz = or disjoint i64 %i.by, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3q_.exit

bb.q:                                             ; preds = %bb.n
  %i.ca = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173), !noalias !2149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174), !noalias !2149
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread130, %bb.q
  %i.cb = phi i64 [ %i.ca, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread130 ]
  %.sroa.0.0.i.i128135139 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3p_.exit.i.thread130 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.0.i.i128135139
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.da, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.cd = xor i64 %.sroa.0.016.i.i, -1
  %i.ce = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 7 uses
  %i.cf = getelementptr [88 x i8], ptr %i.cc, i64 %i.cd ; 7 uses
  %i.cg = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !2175, !noalias !2176
  %i.ch = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !2177, !noalias !2178
  store <2 x i64> %i.ch, ptr %i.ce, align 8, !alias.scope !2175, !noalias !2176
  store <2 x i64> %i.cg, ptr %i.cf, align 8, !alias.scope !2177, !noalias !2178
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !2179, !noalias !2176
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2180, !noalias !2178
  store <2 x i64> %i.cl, ptr %i.ci, align 8, !alias.scope !2179, !noalias !2176
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !alias.scope !2180, !noalias !2178
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.co = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !2181, !noalias !2176
  %i.cp = load <2 x i64>, ptr %i.cn, align 8, !alias.scope !2182, !noalias !2178
  store <2 x i64> %i.cp, ptr %i.cm, align 8, !alias.scope !2181, !noalias !2176
  store <2 x i64> %i.co, ptr %i.cn, align 8, !alias.scope !2182, !noalias !2178
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 48 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 2 uses
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !2183, !noalias !2176
  %i.ct = load <2 x i64>, ptr %i.cr, align 8, !alias.scope !2184, !noalias !2178
  store <2 x i64> %i.ct, ptr %i.cq, align 8, !alias.scope !2183, !noalias !2176
  store <2 x i64> %i.cs, ptr %i.cr, align 8, !alias.scope !2184, !noalias !2178
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 2 uses
  %i.cw = load <2 x i64>, ptr %i.cu, align 8, !alias.scope !2185, !noalias !2176
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !2186, !noalias !2178
  store <2 x i64> %i.cx, ptr %i.cu, align 8, !alias.scope !2185, !noalias !2176
  store <2 x i64> %i.cw, ptr %i.cv, align 8, !alias.scope !2186, !noalias !2178
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 80 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2187), !noalias !2149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188), !noalias !2149
  %.sroa.0.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !2189, !noalias !2190
  %.sroa.02.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !2191, !noalias !2192
  store i64 %.sroa.02.0.copyload.i.i.i.10.i.i.i.i, ptr %i.cy, align 8, !alias.scope !2189, !noalias !2190
  store i64 %.sroa.0.0.copyload.i.i.i.10.i.i.i.i, ptr %i.cz, align 8, !alias.scope !2191, !noalias !2192
  %i.da = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, %i.cb
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3q_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bz, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.bx, %bb.p ], [ %i.bv, %bb.o ] ; 2 uses
  %i.db = lshr i64 %.sroa.023.0, 1
  %i.dc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dd = sub nsw i64 %factor, %i.db
  %i.de = add nuw nsw i64 %i.dc, %factor
  %i.df = mul i64 %i.dd, %.sroa.0.0
  %i.dg = mul i64 %i.de, %.sroa.0.0
  %i.dh = xor i64 %i.dg, %i.df
  %i.di = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dh, i1 false)
  %i.dj = trunc nuw nsw i64 %i.di to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph92, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit
  %.sroa.02.191 = phi i64 [ %.sroa.02.0, %.lr.ph92 ], [ %i.dk, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit ] ; 2 uses
  %.sroa.023.190 = phi i64 [ %.sroa.023.0, %.lr.ph92 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit ] ; 4 uses
  %i.dk = add i64 %.sroa.02.191, -1               ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.dm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.190, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.191, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.do, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dk
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5 ; 3 uses
  %i.dr = lshr i64 %i.dq, 1                       ; 8 uses
  %i.ds = lshr i64 %.sroa.023.190, 1              ; 6 uses
  %i.dt = add nuw i64 %i.dr, %i.ds                ; 4 uses
  %i.du = sub i64 %.sroa.09.0, %i.dt
  %i.dv = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.du ; 6 uses
  %i.dw = icmp samesign ugt i64 %i.dt, %3
  %i.dx = trunc i64 %.sroa.023.190 to i1
  %i.dy = or i64 %i.dq, %.sroa.023.190
  %i.dz = trunc i64 %i.dy to i1
  %or.cond3.i = or i1 %i.dw, %i.dz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = trunc i64 %i.dq to i1
  br i1 %i.ea, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.eb = shl nuw nsw i64 %i.dt, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.dx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ec = or i64 %i.dr, 1
  %i.ed = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = xor i32 %i.ef, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3s_(ptr noalias nofree noundef nonnull align 8 %i.dv, i64 noundef range(i64 0, 104811045873349726) %i.dr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.eg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2112
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw [88 x i8], ptr %i.dv, i64 %i.dr
  %i.ei = or i64 %i.ds, 1
  %i.ej = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ei, i1 true)
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 1
  %i.em = xor i32 %i.el, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3s_(ptr noalias nofree noundef nonnull align 8 %i.eh, i64 noundef range(i64 0, 104811045873349726) %i.ds, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.em, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2112
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %i.en = icmp eq i64 %i.dr, 0
  %i.eo = icmp eq i64 %i.ds, 0
  %or.cond.i = or i1 %i.eo, %i.en
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3j_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 range(i64 0, -9223372036854775808) %i.dr) ; 2 uses
  %i.ep = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ep, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3j_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw [88 x i8], ptr %i.dv, i64 %i.dr ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.dr, %i.ds  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.eq, ptr %i.dv
  %i.er = mul nuw nsw i64 %..i.i, 88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.er, i1 false), !alias.scope !2195
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %i.er ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.et = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.noexc19.i
  %.sroa.13.0.i = phi ptr [ %i.fp, %.noexc19.i ], [ %i.eq, %.critedge.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2R_:bb.a
  %.not.i.i.i.i.i67 = icmp eq i64 %..i.i.i.i.i.i66, 0
  br i1 %.not.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i68

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i68
  %i.ba = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i69, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i75 = icmp eq i64 %i.ba, %..i.i.i.i.i.i66
  br i1 %exitcond.not.i.i.i.i.i75, label %._crit_edge.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i68

._crit_edge.i.i.i.i.i76:                          ; preds = %bb.p, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61
  %i.bb = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i63, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i65)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77

.loopexit.i.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i.i68
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i73, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77

.lr.ph.i.i.i.i.i68:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61, %bb.p
  %.sroa.01.019.i.i.i.i.i69 = phi i64 [ %i.ba, %bb.p ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i62, i64 %.sroa.01.019.i.i.i.i.i69
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i64, i64 %.sroa.01.019.i.i.i.i.i69
  %.val15.i.i.i.i.i70 = load ptr, ptr %i.bd, align 8, !alias.scope !2397, !noalias !2398, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i71 = load ptr, ptr %i.be, align 8, !alias.scope !2399, !noalias !2400, !nonnull !5, !noundef !5 ; 2 uses
  %i.bf = ptrtoint ptr %.val15.i.i.i.i.i70 to i64
  %i.bg = and i64 %i.bf, 1
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr i8, ptr %.val15.i.i.i.i.i70, i64 %i.bh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ], !noalias !2379
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !2401, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !2401, !noundef !5 ; 2 uses
  %i.bm = ptrtoint ptr %.val16.i.i.i.i.i71 to i64
  %i.bn = and i64 %i.bm, 1
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr i8, ptr %.val16.i.i.i.i.i71, i64 %i.bo ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ], !noalias !2379
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !2401, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !2401, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bs)
  %i.bt = tail call i32 @memcmp(ptr nonnull %i.bj, ptr nonnull %i.bq, i64 %spec.store.select.i.i.i.i.i.i.i72), !noalias !2401 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.bl, %i.bs
  %spec.select.i.i.i.i.i.i.i73 = select i1 %i.bv, i64 %i.bw, i64 %i.bu ; 2 uses
  %i.bx = icmp eq i64 %spec.select.i.i.i.i.i.i.i73, 0
  br i1 %i.bx, label %bb.p, label %.loopexit.i.i.i.i.i74

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58, %._crit_edge.i.i.i.i.i76, %.loopexit.i.i.i.i.i74
  %.sroa.0.0.i.i60 = phi i8 [ %.sroa.0.0.i.i.i59, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58 ], [ %i.bb, %._crit_edge.i.i.i.i.i76 ], [ %i.bc, %.loopexit.i.i.i.i.i74 ]
  %i.by = icmp eq i8 %.sroa.0.0.i.i60, -1         ; 2 uses
  %.not112 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %i.by, label %.preheader, label %.preheader87

.preheader87:                                     ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77
  br i1 %.not112, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader87
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77
  br i1 %.not112, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.preheader
  %umax124 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %i.bz = phi i8 [ %i.cf, %bb.v ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %.sroa.01.0.i.i97 = phi i64 [ %i.ek, %bb.v ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i97 ; 8 uses
  %i.cb = add nsw i64 %.sroa.01.0.i.i97, -1       ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.n
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.cb ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405), !noalias !2379
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407), !noalias !2379
  %i.cf = load i8, ptr %i.ce, align 8, !range !15, !alias.scope !2408, !noalias !2409, !noundef !5 ; 3 uses
  %i.cg = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cf, i8 %i.bz)
  %i.ch = icmp eq i8 %i.cf, %i.bz
  br i1 %i.ch, label %bb.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.q:                                             ; preds = %.lr.ph
  switch i8 %i.bz, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41 [
    i8 1, label %bb.r
    i8 4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 25
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !2408, !noalias !2409, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 25
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !2410, !noalias !2411, !noundef !5
  %i.cm = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cj, i8 %i.cl)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.s:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !range !16, !alias.scope !2408, !noalias !2409, !noundef !5 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !range !16, !alias.scope !2410, !noalias !2411, !noundef !5 ; 2 uses
  %i.cr = tail call i8 @llvm.ucmp.i8.i32(i32 %i.co, i32 %i.cq)
  %i.cs = icmp eq i32 %i.co, %i.cq
  br i1 %i.cs, label %bb.t, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !2408, !noalias !2409, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !2410, !noalias !2411, !noundef !5
  %i.cx = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cu, i32 %i.cw)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38: ; preds = %bb.t, %bb.s, %bb.r, %.lr.ph
  %.sroa.0.0.i.i.i39 = phi i8 [ %i.cg, %.lr.ph ], [ %i.cm, %bb.r ], [ %i.cx, %bb.t ], [ %i.cr, %bb.s ] ; 2 uses
  %i.cy = icmp eq i8 %.sroa.0.0.i.i.i39, 0
  br i1 %i.cy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413), !noalias !2379
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !2414, !noalias !2415, !noundef !5 ; 2 uses
  %i.db = icmp ugt i64 %i.da, 1                   ; 2 uses
  %i.dc = load ptr, ptr %i.ca, align 8, !alias.scope !2414, !noalias !2415, !nonnull !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !2414, !noalias !2415
  %.sink11.i.i.i.i42 = select i1 %i.db, ptr %i.dc, ptr %i.ca
  %.sink10.i.i.i.i43 = select i1 %i.db, i64 %i.de, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !2416, !noalias !2417, !noundef !5 ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, 1                   ; 2 uses
  %i.di = load ptr, ptr %i.cd, align 8, !alias.scope !2416, !noalias !2417, !nonnull !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !2416, !noalias !2417
  %.sink11.i1.i.i.i44 = select i1 %i.dh, ptr %i.di, ptr %i.cd
  %.sink10.i2.i.i.i45 = select i1 %i.dh, i64 %i.dk, i64 %i.dg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2418), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2420), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421), !noalias !2379
  %..i.i.i.i.i.i46 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i45, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i43) ; 2 uses
  %.not.i.i.i.i.i47 = icmp eq i64 %..i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i.i.i47, label %._crit_edge.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i48

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i48
  %i.dl = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i49, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i55 = icmp eq i64 %i.dl, %..i.i.i.i.i.i46
  br i1 %exitcond.not.i.i.i.i.i55, label %._crit_edge.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i48

._crit_edge.i.i.i.i.i56:                          ; preds = %bb.u, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41
  %i.dm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i43, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i45)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57

.loopexit.i.i.i.i.i54:                            ; preds = %.lr.ph.i.i.i.i.i48
  %i.dn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i53, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57

.lr.ph.i.i.i.i.i48:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41, %bb.u
  %.sroa.01.019.i.i.i.i.i49 = phi i64 [ %i.dl, %bb.u ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i42, i64 %.sroa.01.019.i.i.i.i.i49
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i44, i64 %.sroa.01.019.i.i.i.i.i49
  %.val15.i.i.i.i.i50 = load ptr, ptr %i.do, align 8, !alias.scope !2422, !noalias !2423, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i51 = load ptr, ptr %i.dp, align 8, !alias.scope !2424, !noalias !2425, !nonnull !5, !noundef !5 ; 2 uses
  %i.dq = ptrtoint ptr %.val15.i.i.i.i.i50 to i64
  %i.dr = and i64 %i.dq, 1
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr i8, ptr %.val15.i.i.i.i.i50, i64 %i.ds ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ], !noalias !2379
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !2426, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !2426, !noundef !5 ; 2 uses
  %i.dx = ptrtoint ptr %.val16.i.i.i.i.i51 to i64
  %i.dy = and i64 %i.dx, 1
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr i8, ptr %.val16.i.i.i.i.i51, i64 %i.dz ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ], !noalias !2379
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !2426, !nonnull !5, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !2426, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i52 = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.ed)
  %i.ee = tail call i32 @memcmp(ptr nonnull %i.du, ptr nonnull %i.eb, i64 %spec.store.select.i.i.i.i.i.i.i52), !noalias !2426 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp eq i32 %i.ee, 0
  %i.eh = sub i64 %i.dw, %i.ed
  %spec.select.i.i.i.i.i.i.i53 = select i1 %i.eg, i64 %i.eh, i64 %i.ef ; 2 uses
  %i.ei = icmp eq i64 %spec.select.i.i.i.i.i.i.i53, 0
  br i1 %i.ei, label %bb.u, label %.loopexit.i.i.i.i.i54

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38, %._crit_edge.i.i.i.i.i56, %.loopexit.i.i.i.i.i54
  %.sroa.0.0.i.i40 = phi i8 [ %.sroa.0.0.i.i.i39, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38 ], [ %i.dm, %._crit_edge.i.i.i.i.i56 ], [ %i.dn, %.loopexit.i.i.i.i.i54 ]
  %i.ej = icmp eq i8 %.sroa.0.0.i.i40, -1
  br i1 %i.ej, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57
  %i.ek = add nuw i64 %.sroa.01.0.i.i97, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %umax
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i, label %.lr.ph

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.ab
  %i.el = phi i8 [ %i.er, %bb.ab ], [ %i.t, %.lr.ph100.preheader ] ; 3 uses
  %.sroa.01.1.i.i99 = phi i64 [ %i.gw, %bb.ab ], [ 2, %.lr.ph100.preheader ] ; 4 uses
  %i.em = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99 ; 8 uses
  %i.en = add nsw i64 %.sroa.01.1.i.i99, -1       ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.n
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.en ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2430), !noalias !2379
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2432), !noalias !2379
  %i.er = load i8, ptr %i.eq, align 8, !range !15, !alias.scope !2433, !noalias !2434, !noundef !5 ; 3 uses
  %i.es = tail call i8 @llvm.ucmp.i8.i8(i8 %i.er, i8 %i.el)
  %i.et = icmp eq i8 %i.er, %i.el
  br i1 %i.et, label %bb.w, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.w:                                             ; preds = %.lr.ph100
  switch i8 %i.el, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.x
    i8 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 25
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !2433, !noalias !2434, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 25
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !2435, !noalias !2436, !noundef !5
  %i.ey = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ev, i8 %i.ex)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.fa = load i32, ptr %i.ez, align 4, !range !16, !alias.scope !2433, !noalias !2434, !noundef !5 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !range !16, !alias.scope !2435, !noalias !2436, !noundef !5 ; 2 uses
  %i.fd = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fa, i32 %i.fc)
  %i.fe = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fe, label %bb.z, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !alias.scope !2433, !noalias !2434, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !alias.scope !2435, !noalias !2436, !noundef !5
  %i.fj = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fg, i32 %i.fi)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %.lr.ph100
  %.sroa.0.0.i.i.i = phi i8 [ %i.es, %.lr.ph100 ], [ %i.ey, %bb.x ], [ %i.fj, %bb.z ], [ %i.fd, %bb.y ] ; 2 uses
  %i.fk = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.fk, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2437), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438), !noalias !2379
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !2439, !noalias !2440, !noundef !5 ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, 1                   ; 2 uses
  %i.fo = load ptr, ptr %i.em, align 8, !alias.scope !2439, !noalias !2440, !nonnull !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !2439, !noalias !2440
  %.sink11.i.i.i.i = select i1 %i.fn, ptr %i.fo, ptr %i.em
  %.sink10.i.i.i.i = select i1 %i.fn, i64 %i.fq, i64 %i.fm ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !2441, !noalias !2442, !noundef !5 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 1                   ; 2 uses
  %i.fu = load ptr, ptr %i.ep, align 8, !alias.scope !2441, !noalias !2442, !nonnull !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !2441, !noalias !2442
  %.sink11.i1.i.i.i = select i1 %i.ft, ptr %i.fu, ptr %i.ep
  %.sink10.i2.i.i.i = select i1 %i.ft, i64 %i.fw, i64 %i.fs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2445), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446), !noalias !2379
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fx, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.aa, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.fy = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.fz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.aa
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.fx, %bb.aa ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !2447, !noalias !2448, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !alias.scope !2449, !noalias !2450, !nonnull !5, !noundef !5 ; 2 uses
  %i.gc = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.gd = and i64 %i.gc, 1
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.ge ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gf) ], !noalias !2379
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !2451, !nonnull !5, !noundef !5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !2451, !noundef !5 ; 2 uses
  %i.gj = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.gk = and i64 %i.gj, 1
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.gl ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gm) ], !noalias !2379
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !2451, !nonnull !5, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !noalias !2451, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gp)
  %i.gq = tail call i32 @memcmp(ptr nonnull %i.gg, ptr nonnull %i.gn, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !2451 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp eq i32 %i.gq, 0
  %i.gt = sub i64 %i.gi, %i.gp
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gs, i64 %i.gt, i64 %i.gr ; 2 uses
  %i.gu = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.gu, label %bb.aa, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i37 = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.fy, %._crit_edge.i.i.i.i.i ], [ %i.fz, %.loopexit.i.i.i.i.i ]
  %i.gv = icmp eq i8 %.sroa.0.0.i.i37, -1
  br i1 %i.gv, label %bb.ab, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i

bb.ab:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  %i.gw = add nuw i64 %.sroa.01.1.i.i99, 1        ; 2 uses
  %exitcond125.not = icmp eq i64 %i.gw, %umax124
  br i1 %exitcond125.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i, label %.lr.ph100

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i: ; preds = %bb.v, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57, %bb.ab, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i99, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit ], [ %umax124, %bb.ab ], [ %.sroa.01.0.i.i97, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57 ], [ %umax, %bb.v ] ; 6 uses
  %i.gx = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.gx)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.ac

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157: ; preds = %.preheader
  br i1 %.not5.i159, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread: ; preds = %.preheader87
  br i1 %.not5.i154, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.ac:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i
  br i1 %i.by, label %bb.af, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.ad:                                            ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 %.sroa.01.0)
  %i.gy = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit

bb.ae:                                            ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2287
  %i.gz = shl nuw nsw i64 %..i35, 1
  %i.ha = or disjoint i64 %i.gz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread, %bb.j, %bb.af, %bb.ac
  %.sroa.0.0.i.i8285 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.ac ], [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread ], [ %.sroa.0.0.i.i155162166, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.hb = shl nuw nsw i64 %.sroa.0.0.i.i8285, 1
  %i.hc = or disjoint i64 %i.hb, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit

bb.af:                                            ; preds = %bb.ac
  %i.hd = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453), !noalias !2379
  %.not.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157, %bb.af
  %i.he = phi i64 [ %i.hd, %bb.af ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157 ]
  %.sroa.0.0.i.i155162166 = phi i64 [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.0.i.i155162166
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.id, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.hg = xor i64 %.sroa.0.016.i.i, -1
  %i.hh = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 7 uses
  %i.hi = getelementptr [88 x i8], ptr %i.hf, i64 %i.hg ; 7 uses
  %i.hj = load <2 x i64>, ptr %i.hh, align 8, !alias.scope !2454, !noalias !2455
  %i.hk = load <2 x i64>, ptr %i.hi, align 8, !alias.scope !2456, !noalias !2457
  store <2 x i64> %i.hk, ptr %i.hh, align 8, !alias.scope !2454, !noalias !2455
  store <2 x i64> %i.hj, ptr %i.hi, align 8, !alias.scope !2456, !noalias !2457
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !alias.scope !2458, !noalias !2455
  %i.ho = load <2 x i64>, ptr %i.hm, align 8, !alias.scope !2459, !noalias !2457
  store <2 x i64> %i.ho, ptr %i.hl, align 8, !alias.scope !2458, !noalias !2455
  store <2 x i64> %i.hn, ptr %i.hm, align 8, !alias.scope !2459, !noalias !2457
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 32 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 2 uses
  %i.hr = load <2 x i64>, ptr %i.hp, align 8, !alias.scope !2460, !noalias !2455
  %i.hs = load <2 x i64>, ptr %i.hq, align 8, !alias.scope !2461, !noalias !2457
  store <2 x i64> %i.hs, ptr %i.hp, align 8, !alias.scope !2460, !noalias !2455
  store <2 x i64> %i.hr, ptr %i.hq, align 8, !alias.scope !2461, !noalias !2457
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 48 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 48 ; 2 uses
  %i.hv = load <2 x i64>, ptr %i.ht, align 8, !alias.scope !2462, !noalias !2455
  %i.hw = load <2 x i64>, ptr %i.hu, align 8, !alias.scope !2463, !noalias !2457
  store <2 x i64> %i.hw, ptr %i.ht, align 8, !alias.scope !2462, !noalias !2455
  store <2 x i64> %i.hv, ptr %i.hu, align 8, !alias.scope !2463, !noalias !2457
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 64 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 64 ; 2 uses
  %i.hz = load <2 x i64>, ptr %i.hx, align 8, !alias.scope !2464, !noalias !2455
  %i.ia = load <2 x i64>, ptr %i.hy, align 8, !alias.scope !2465, !noalias !2457
  store <2 x i64> %i.ia, ptr %i.hx, align 8, !alias.scope !2464, !noalias !2455
  store <2 x i64> %i.hz, ptr %i.hy, align 8, !alias.scope !2465, !noalias !2457
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hh, i64 80 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hi, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466), !noalias !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467), !noalias !2379
  %.sroa.0.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !2468, !noalias !2469
  %.sroa.02.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !2470, !noalias !2471
  store i64 %.sroa.02.0.copyload.i.i.i.10.i.i.i.i, ptr %i.ib, align 8, !alias.scope !2468, !noalias !2469
  store i64 %.sroa.0.0.copyload.i.i.i.10.i.i.i.i, ptr %i.ic, align 8, !alias.scope !2470, !noalias !2471
  %i.id = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.id, %i.he
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit: ; preds = %bb.ad, %bb.ae, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.hc, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ha, %bb.ae ], [ %i.gy, %bb.ad ] ; 2 uses
  %i.ie = lshr i64 %.sroa.023.0, 1
  %i.if = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ig = sub nsw i64 %factor, %i.ie
  %i.ih = add nuw nsw i64 %i.if, %factor
  %i.ii = mul i64 %i.ig, %.sroa.0.0
  %i.ij = mul i64 %i.ih, %.sroa.0.0
  %i.ik = xor i64 %i.ij, %i.ii
  %i.il = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ik, i1 false)
  %i.im = trunc nuw nsw i64 %i.il to i8
  br label %bb.g

bb.ag:                                            ; preds = %.lr.ph105, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit
  %.sroa.02.1104 = phi i64 [ %.sroa.02.0, %.lr.ph105 ], [ %i.in, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit ] ; 2 uses
  %.sroa.023.1103 = phi i64 [ %.sroa.023.0, %.lr.ph105 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit ] ; 4 uses
  %i.in = add i64 %.sroa.02.1104, -1              ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ip, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.ah

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit, %bb.ag, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1103, %bb.ag ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1104, %bb.ag ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ir, align 1
  br i1 %i.k, label %bb.az, label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.in
  %i.it = load i64, ptr %i.is, align 8, !noundef !5 ; 3 uses
  %i.iu = lshr i64 %i.it, 1                       ; 8 uses
  %i.iv = lshr i64 %.sroa.023.1103, 1             ; 6 uses
  %i.iw = add nuw i64 %i.iu, %i.iv                ; 4 uses
  %i.ix = sub i64 %.sroa.09.0, %i.iw
  %i.iy = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ix ; 6 uses
  %i.iz = icmp samesign ugt i64 %i.iw, %3
  %i.ja = trunc i64 %.sroa.023.1103 to i1
  %i.jb = or i64 %i.it, %.sroa.023.1103
  %i.jc = trunc i64 %i.jb to i1
  %or.cond3.i = or i1 %i.iz, %i.jc
  br i1 %or.cond3.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jd = trunc i64 %i.it to i1
  br i1 %i.jd, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.je = shl nuw nsw i64 %i.iw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit

bb.ak:                                            ; preds = %bb.al, %bb.ai
  br i1 %i.ja, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.jf = or i64 %i.iu, 1
  %i.jg = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.jf, i1 true)
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = shl nuw nsw i32 %i.jh, 1
  %i.jj = xor i32 %i.ji, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.iy, i64 noundef range(i64 0, 104811045873349726) %i.iu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2316
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.jk = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %i.iu
  %i.jl = or i64 %i.iv, 1
  %i.jm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.jl, i1 true)
  %i.jn = trunc nuw nsw i64 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 1
  %i.jp = xor i32 %i.jo, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.jk, i64 noundef range(i64 0, 104811045873349726) %i.iv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.jp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2316
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  %i.jq = icmp eq i64 %i.iu, 0
  %i.jr = icmp eq i64 %i.iv, 0
  %or.cond.i = or i1 %i.jr, %i.jq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2S_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.iv, i64 range(i64 0, -9223372036854775808) %i.iu) ; 2 uses
  %i.js = icmp samesign ult i64 %3, %..i.i
  br i1 %i.js, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2S_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ao
  %i.jt = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %i.iu ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.iu, %i.iv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.jt, ptr %i.iy
  %i.ju = mul nuw nsw i64 %..i.i, 88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ju, i1 false), !alias.scope !2474
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ju ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i
  %i.jw = phi ptr [ %i.mn, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.jv, %.critedge.i ] ; 7 uses
  %i.jx = phi ptr [ %i.ml, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.jt, %.critedge.i ] ; 7 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.ka, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -88 ; 4 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 -88 ; 4 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2R_:bb.a
  %.not.i.i.i.i.i67 = icmp eq i64 %..i.i.i.i.i.i66, 0
  br i1 %.not.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i68

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i68
  %i.ba = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i69, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i75 = icmp eq i64 %i.ba, %..i.i.i.i.i.i66
  br i1 %exitcond.not.i.i.i.i.i75, label %._crit_edge.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i68

._crit_edge.i.i.i.i.i76:                          ; preds = %bb.p, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61
  %i.bb = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i63, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i65)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77

.loopexit.i.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i.i68
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i73, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77

.lr.ph.i.i.i.i.i68:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61, %bb.p
  %.sroa.01.019.i.i.i.i.i69 = phi i64 [ %i.ba, %bb.p ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i62, i64 %.sroa.01.019.i.i.i.i.i69
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i64, i64 %.sroa.01.019.i.i.i.i.i69
  %.val15.i.i.i.i.i70 = load ptr, ptr %i.bd, align 8, !alias.scope !2713, !noalias !2714, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i71 = load ptr, ptr %i.be, align 8, !alias.scope !2715, !noalias !2716, !nonnull !5, !noundef !5 ; 2 uses
  %i.bf = ptrtoint ptr %.val15.i.i.i.i.i70 to i64
  %i.bg = and i64 %i.bf, 1
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr i8, ptr %.val15.i.i.i.i.i70, i64 %i.bh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ], !noalias !2695
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !2717, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !2717, !noundef !5 ; 2 uses
  %i.bm = ptrtoint ptr %.val16.i.i.i.i.i71 to i64
  %i.bn = and i64 %i.bm, 1
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr i8, ptr %.val16.i.i.i.i.i71, i64 %i.bo ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ], !noalias !2695
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !2717, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !2717, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bs)
  %i.bt = tail call i32 @memcmp(ptr nonnull %i.bj, ptr nonnull %i.bq, i64 %spec.store.select.i.i.i.i.i.i.i72), !noalias !2717 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.bl, %i.bs
  %spec.select.i.i.i.i.i.i.i73 = select i1 %i.bv, i64 %i.bw, i64 %i.bu ; 2 uses
  %i.bx = icmp eq i64 %spec.select.i.i.i.i.i.i.i73, 0
  br i1 %i.bx, label %bb.p, label %.loopexit.i.i.i.i.i74

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58, %._crit_edge.i.i.i.i.i76, %.loopexit.i.i.i.i.i74
  %.sroa.0.0.i.i60 = phi i8 [ %.sroa.0.0.i.i.i59, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58 ], [ %i.bb, %._crit_edge.i.i.i.i.i76 ], [ %i.bc, %.loopexit.i.i.i.i.i74 ]
  %i.by = icmp eq i8 %.sroa.0.0.i.i60, -1         ; 2 uses
  %.not112 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %i.by, label %.preheader, label %.preheader87

.preheader87:                                     ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77
  br i1 %.not112, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader87
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77
  br i1 %.not112, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.preheader
  %umax124 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %i.bz = phi i8 [ %i.cf, %bb.v ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %.sroa.01.0.i.i97 = phi i64 [ %i.ek, %bb.v ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i97 ; 8 uses
  %i.cb = add nsw i64 %.sroa.01.0.i.i97, -1       ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.n
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.cb ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2720), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2721), !noalias !2695
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2722), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2723), !noalias !2695
  %i.cf = load i8, ptr %i.ce, align 8, !range !15, !alias.scope !2724, !noalias !2725, !noundef !5 ; 3 uses
  %i.cg = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cf, i8 %i.bz)
  %i.ch = icmp eq i8 %i.cf, %i.bz
  br i1 %i.ch, label %bb.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.q:                                             ; preds = %.lr.ph
  switch i8 %i.bz, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41 [
    i8 1, label %bb.r
    i8 4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 25
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !2724, !noalias !2725, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 25
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !2726, !noalias !2727, !noundef !5
  %i.cm = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cj, i8 %i.cl)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.s:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !range !16, !alias.scope !2724, !noalias !2725, !noundef !5 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !range !16, !alias.scope !2726, !noalias !2727, !noundef !5 ; 2 uses
  %i.cr = tail call i8 @llvm.ucmp.i8.i32(i32 %i.co, i32 %i.cq)
  %i.cs = icmp eq i32 %i.co, %i.cq
  br i1 %i.cs, label %bb.t, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !2724, !noalias !2725, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !2726, !noalias !2727, !noundef !5
  %i.cx = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cu, i32 %i.cw)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38: ; preds = %bb.t, %bb.s, %bb.r, %.lr.ph
  %.sroa.0.0.i.i.i39 = phi i8 [ %i.cg, %.lr.ph ], [ %i.cm, %bb.r ], [ %i.cx, %bb.t ], [ %i.cr, %bb.s ] ; 2 uses
  %i.cy = icmp eq i8 %.sroa.0.0.i.i.i39, 0
  br i1 %i.cy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2728), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729), !noalias !2695
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !2730, !noalias !2731, !noundef !5 ; 2 uses
  %i.db = icmp ugt i64 %i.da, 1                   ; 2 uses
  %i.dc = load ptr, ptr %i.ca, align 8, !alias.scope !2730, !noalias !2731, !nonnull !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !2730, !noalias !2731
  %.sink11.i.i.i.i42 = select i1 %i.db, ptr %i.dc, ptr %i.ca
  %.sink10.i.i.i.i43 = select i1 %i.db, i64 %i.de, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !2732, !noalias !2733, !noundef !5 ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, 1                   ; 2 uses
  %i.di = load ptr, ptr %i.cd, align 8, !alias.scope !2732, !noalias !2733, !nonnull !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !2732, !noalias !2733
  %.sink11.i1.i.i.i44 = select i1 %i.dh, ptr %i.di, ptr %i.cd
  %.sink10.i2.i.i.i45 = select i1 %i.dh, i64 %i.dk, i64 %i.dg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2734), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2736), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737), !noalias !2695
  %..i.i.i.i.i.i46 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i45, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i43) ; 2 uses
  %.not.i.i.i.i.i47 = icmp eq i64 %..i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i.i.i47, label %._crit_edge.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i48

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i48
  %i.dl = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i49, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i55 = icmp eq i64 %i.dl, %..i.i.i.i.i.i46
  br i1 %exitcond.not.i.i.i.i.i55, label %._crit_edge.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i48

._crit_edge.i.i.i.i.i56:                          ; preds = %bb.u, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41
  %i.dm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i43, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i45)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57

.loopexit.i.i.i.i.i54:                            ; preds = %.lr.ph.i.i.i.i.i48
  %i.dn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i53, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57

.lr.ph.i.i.i.i.i48:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41, %bb.u
  %.sroa.01.019.i.i.i.i.i49 = phi i64 [ %i.dl, %bb.u ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i42, i64 %.sroa.01.019.i.i.i.i.i49
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i44, i64 %.sroa.01.019.i.i.i.i.i49
  %.val15.i.i.i.i.i50 = load ptr, ptr %i.do, align 8, !alias.scope !2738, !noalias !2739, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i51 = load ptr, ptr %i.dp, align 8, !alias.scope !2740, !noalias !2741, !nonnull !5, !noundef !5 ; 2 uses
  %i.dq = ptrtoint ptr %.val15.i.i.i.i.i50 to i64
  %i.dr = and i64 %i.dq, 1
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr i8, ptr %.val15.i.i.i.i.i50, i64 %i.ds ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ], !noalias !2695
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !2742, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !2742, !noundef !5 ; 2 uses
  %i.dx = ptrtoint ptr %.val16.i.i.i.i.i51 to i64
  %i.dy = and i64 %i.dx, 1
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr i8, ptr %.val16.i.i.i.i.i51, i64 %i.dz ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ], !noalias !2695
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !2742, !nonnull !5, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !2742, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i52 = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.ed)
  %i.ee = tail call i32 @memcmp(ptr nonnull %i.du, ptr nonnull %i.eb, i64 %spec.store.select.i.i.i.i.i.i.i52), !noalias !2742 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp eq i32 %i.ee, 0
  %i.eh = sub i64 %i.dw, %i.ed
  %spec.select.i.i.i.i.i.i.i53 = select i1 %i.eg, i64 %i.eh, i64 %i.ef ; 2 uses
  %i.ei = icmp eq i64 %spec.select.i.i.i.i.i.i.i53, 0
  br i1 %i.ei, label %bb.u, label %.loopexit.i.i.i.i.i54

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38, %._crit_edge.i.i.i.i.i56, %.loopexit.i.i.i.i.i54
  %.sroa.0.0.i.i40 = phi i8 [ %.sroa.0.0.i.i.i39, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38 ], [ %i.dm, %._crit_edge.i.i.i.i.i56 ], [ %i.dn, %.loopexit.i.i.i.i.i54 ]
  %i.ej = icmp eq i8 %.sroa.0.0.i.i40, -1
  br i1 %i.ej, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57
  %i.ek = add nuw i64 %.sroa.01.0.i.i97, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %umax
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i, label %.lr.ph

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.ab
  %i.el = phi i8 [ %i.er, %bb.ab ], [ %i.t, %.lr.ph100.preheader ] ; 3 uses
  %.sroa.01.1.i.i99 = phi i64 [ %i.gw, %bb.ab ], [ 2, %.lr.ph100.preheader ] ; 4 uses
  %i.em = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99 ; 8 uses
  %i.en = add nsw i64 %.sroa.01.1.i.i99, -1       ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.n
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.en ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2746), !noalias !2695
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2747), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2748), !noalias !2695
  %i.er = load i8, ptr %i.eq, align 8, !range !15, !alias.scope !2749, !noalias !2750, !noundef !5 ; 3 uses
  %i.es = tail call i8 @llvm.ucmp.i8.i8(i8 %i.er, i8 %i.el)
  %i.et = icmp eq i8 %i.er, %i.el
  br i1 %i.et, label %bb.w, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.w:                                             ; preds = %.lr.ph100
  switch i8 %i.el, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.x
    i8 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 25
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !2749, !noalias !2750, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 25
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !2751, !noalias !2752, !noundef !5
  %i.ey = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ev, i8 %i.ex)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.fa = load i32, ptr %i.ez, align 4, !range !16, !alias.scope !2749, !noalias !2750, !noundef !5 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !range !16, !alias.scope !2751, !noalias !2752, !noundef !5 ; 2 uses
  %i.fd = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fa, i32 %i.fc)
  %i.fe = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fe, label %bb.z, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !alias.scope !2749, !noalias !2750, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !alias.scope !2751, !noalias !2752, !noundef !5
  %i.fj = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fg, i32 %i.fi)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %.lr.ph100
  %.sroa.0.0.i.i.i = phi i8 [ %i.es, %.lr.ph100 ], [ %i.ey, %bb.x ], [ %i.fj, %bb.z ], [ %i.fd, %bb.y ] ; 2 uses
  %i.fk = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.fk, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2753), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754), !noalias !2695
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !2755, !noalias !2756, !noundef !5 ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, 1                   ; 2 uses
  %i.fo = load ptr, ptr %i.em, align 8, !alias.scope !2755, !noalias !2756, !nonnull !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !2755, !noalias !2756
  %.sink11.i.i.i.i = select i1 %i.fn, ptr %i.fo, ptr %i.em
  %.sink10.i.i.i.i = select i1 %i.fn, i64 %i.fq, i64 %i.fm ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !2757, !noalias !2758, !noundef !5 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 1                   ; 2 uses
  %i.fu = load ptr, ptr %i.ep, align 8, !alias.scope !2757, !noalias !2758, !nonnull !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !2757, !noalias !2758
  %.sink11.i1.i.i.i = select i1 %i.ft, ptr %i.fu, ptr %i.ep
  %.sink10.i2.i.i.i = select i1 %i.ft, i64 %i.fw, i64 %i.fs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762), !noalias !2695
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fx, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.aa, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.fy = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.fz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.aa
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.fx, %bb.aa ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !2763, !noalias !2764, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !alias.scope !2765, !noalias !2766, !nonnull !5, !noundef !5 ; 2 uses
  %i.gc = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.gd = and i64 %i.gc, 1
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.ge ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gf) ], !noalias !2695
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !2767, !nonnull !5, !noundef !5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !2767, !noundef !5 ; 2 uses
  %i.gj = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.gk = and i64 %i.gj, 1
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.gl ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gm) ], !noalias !2695
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !2767, !nonnull !5, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !noalias !2767, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gp)
  %i.gq = tail call i32 @memcmp(ptr nonnull %i.gg, ptr nonnull %i.gn, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !2767 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp eq i32 %i.gq, 0
  %i.gt = sub i64 %i.gi, %i.gp
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gs, i64 %i.gt, i64 %i.gr ; 2 uses
  %i.gu = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.gu, label %bb.aa, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i37 = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.fy, %._crit_edge.i.i.i.i.i ], [ %i.fz, %.loopexit.i.i.i.i.i ]
  %i.gv = icmp eq i8 %.sroa.0.0.i.i37, -1
  br i1 %i.gv, label %bb.ab, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i

bb.ab:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  %i.gw = add nuw i64 %.sroa.01.1.i.i99, 1        ; 2 uses
  %exitcond125.not = icmp eq i64 %i.gw, %umax124
  br i1 %exitcond125.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i, label %.lr.ph100

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i: ; preds = %bb.v, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57, %bb.ab, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i99, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit ], [ %umax124, %bb.ab ], [ %.sroa.01.0.i.i97, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57 ], [ %umax, %bb.v ] ; 6 uses
  %i.gx = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.gx)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.ac

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157: ; preds = %.preheader
  br i1 %.not5.i159, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread: ; preds = %.preheader87
  br i1 %.not5.i154, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.ac:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i
  br i1 %i.by, label %bb.af, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.ad:                                            ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 %.sroa.01.0)
  %i.gy = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit

bb.ae:                                            ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2603
  %i.gz = shl nuw nsw i64 %..i35, 1
  %i.ha = or disjoint i64 %i.gz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread, %bb.j, %bb.af, %bb.ac
  %.sroa.0.0.i.i8285 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.ac ], [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread ], [ %.sroa.0.0.i.i155162166, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.hb = shl nuw nsw i64 %.sroa.0.0.i.i8285, 1
  %i.hc = or disjoint i64 %i.hb, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit

bb.af:                                            ; preds = %bb.ac
  %i.hd = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2768), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769), !noalias !2695
  %.not.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157, %bb.af
  %i.he = phi i64 [ %i.hd, %bb.af ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157 ]
  %.sroa.0.0.i.i155162166 = phi i64 [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.0.i.i155162166
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.id, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.hg = xor i64 %.sroa.0.016.i.i, -1
  %i.hh = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 7 uses
  %i.hi = getelementptr [88 x i8], ptr %i.hf, i64 %i.hg ; 7 uses
  %i.hj = load <2 x i64>, ptr %i.hh, align 8, !alias.scope !2770, !noalias !2771
  %i.hk = load <2 x i64>, ptr %i.hi, align 8, !alias.scope !2772, !noalias !2773
  store <2 x i64> %i.hk, ptr %i.hh, align 8, !alias.scope !2770, !noalias !2771
  store <2 x i64> %i.hj, ptr %i.hi, align 8, !alias.scope !2772, !noalias !2773
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !alias.scope !2774, !noalias !2771
  %i.ho = load <2 x i64>, ptr %i.hm, align 8, !alias.scope !2775, !noalias !2773
  store <2 x i64> %i.ho, ptr %i.hl, align 8, !alias.scope !2774, !noalias !2771
  store <2 x i64> %i.hn, ptr %i.hm, align 8, !alias.scope !2775, !noalias !2773
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 32 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 2 uses
  %i.hr = load <2 x i64>, ptr %i.hp, align 8, !alias.scope !2776, !noalias !2771
  %i.hs = load <2 x i64>, ptr %i.hq, align 8, !alias.scope !2777, !noalias !2773
  store <2 x i64> %i.hs, ptr %i.hp, align 8, !alias.scope !2776, !noalias !2771
  store <2 x i64> %i.hr, ptr %i.hq, align 8, !alias.scope !2777, !noalias !2773
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 48 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 48 ; 2 uses
  %i.hv = load <2 x i64>, ptr %i.ht, align 8, !alias.scope !2778, !noalias !2771
  %i.hw = load <2 x i64>, ptr %i.hu, align 8, !alias.scope !2779, !noalias !2773
  store <2 x i64> %i.hw, ptr %i.ht, align 8, !alias.scope !2778, !noalias !2771
  store <2 x i64> %i.hv, ptr %i.hu, align 8, !alias.scope !2779, !noalias !2773
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 64 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 64 ; 2 uses
  %i.hz = load <2 x i64>, ptr %i.hx, align 8, !alias.scope !2780, !noalias !2771
  %i.ia = load <2 x i64>, ptr %i.hy, align 8, !alias.scope !2781, !noalias !2773
  store <2 x i64> %i.ia, ptr %i.hx, align 8, !alias.scope !2780, !noalias !2771
  store <2 x i64> %i.hz, ptr %i.hy, align 8, !alias.scope !2781, !noalias !2773
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hh, i64 80 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hi, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2782), !noalias !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2783), !noalias !2695
  %.sroa.0.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !2784, !noalias !2785
  %.sroa.02.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !2786, !noalias !2787
  store i64 %.sroa.02.0.copyload.i.i.i.10.i.i.i.i, ptr %i.ib, align 8, !alias.scope !2784, !noalias !2785
  store i64 %.sroa.0.0.copyload.i.i.i.10.i.i.i.i, ptr %i.ic, align 8, !alias.scope !2786, !noalias !2787
  %i.id = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.id, %i.he
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit: ; preds = %bb.ad, %bb.ae, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.hc, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ha, %bb.ae ], [ %i.gy, %bb.ad ] ; 2 uses
  %i.ie = lshr i64 %.sroa.023.0, 1
  %i.if = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ig = sub nsw i64 %factor, %i.ie
  %i.ih = add nuw nsw i64 %i.if, %factor
  %i.ii = mul i64 %i.ig, %.sroa.0.0
  %i.ij = mul i64 %i.ih, %.sroa.0.0
  %i.ik = xor i64 %i.ij, %i.ii
  %i.il = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ik, i1 false)
  %i.im = trunc nuw nsw i64 %i.il to i8
  br label %bb.g

bb.ag:                                            ; preds = %.lr.ph105, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit
  %.sroa.02.1104 = phi i64 [ %.sroa.02.0, %.lr.ph105 ], [ %i.in, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit ] ; 2 uses
  %.sroa.023.1103 = phi i64 [ %.sroa.023.0, %.lr.ph105 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit ] ; 4 uses
  %i.in = add i64 %.sroa.02.1104, -1              ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ip, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.ah

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit, %bb.ag, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1103, %bb.ag ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1104, %bb.ag ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ir, align 1
  br i1 %i.k, label %bb.az, label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.in
  %i.it = load i64, ptr %i.is, align 8, !noundef !5 ; 3 uses
  %i.iu = lshr i64 %i.it, 1                       ; 8 uses
  %i.iv = lshr i64 %.sroa.023.1103, 1             ; 6 uses
  %i.iw = add nuw i64 %i.iu, %i.iv                ; 4 uses
  %i.ix = sub i64 %.sroa.09.0, %i.iw
  %i.iy = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ix ; 6 uses
  %i.iz = icmp samesign ugt i64 %i.iw, %3
  %i.ja = trunc i64 %.sroa.023.1103 to i1
  %i.jb = or i64 %i.it, %.sroa.023.1103
  %i.jc = trunc i64 %i.jb to i1
  %or.cond3.i = or i1 %i.iz, %i.jc
  br i1 %or.cond3.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jd = trunc i64 %i.it to i1
  br i1 %i.jd, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.je = shl nuw nsw i64 %i.iw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit

bb.ak:                                            ; preds = %bb.al, %bb.ai
  br i1 %i.ja, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.jf = or i64 %i.iu, 1
  %i.jg = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.jf, i1 true)
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = shl nuw nsw i32 %i.jh, 1
  %i.jj = xor i32 %i.ji, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.iy, i64 noundef range(i64 0, 104811045873349726) %i.iu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2632
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.jk = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %i.iu
  %i.jl = or i64 %i.iv, 1
  %i.jm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.jl, i1 true)
  %i.jn = trunc nuw nsw i64 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 1
  %i.jp = xor i32 %i.jo, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.jk, i64 noundef range(i64 0, 104811045873349726) %i.iv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.jp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2632
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  %i.jq = icmp eq i64 %i.iu, 0
  %i.jr = icmp eq i64 %i.iv, 0
  %or.cond.i = or i1 %i.jr, %i.jq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.iv, i64 range(i64 0, -9223372036854775808) %i.iu) ; 2 uses
  %i.js = icmp samesign ult i64 %3, %..i.i
  br i1 %i.js, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ao
  %i.jt = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %i.iu ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.iu, %i.iv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.jt, ptr %i.iy
  %i.ju = mul nuw nsw i64 %..i.i, 88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ju, i1 false), !alias.scope !2790
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ju ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i
  %i.jw = phi ptr [ %i.mn, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.jv, %.critedge.i ] ; 7 uses
  %i.jx = phi ptr [ %i.ml, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.jt, %.critedge.i ] ; 7 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.ka, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -88 ; 4 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 -88 ; 4 uses
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2R_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  %..i.i.i.i.i.i.i29.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i28.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i26.i) ; 2 uses
  %.not.i.i.i.i.i.i30.i = icmp eq i64 %..i.i.i.i.i.i.i29.i, 0
  br i1 %.not.i.i.i.i.i.i30.i, label %._crit_edge.i.i.i.i.i.i39.i, label %.lr.ph.i.i.i.i.i.i31.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i31.i
  %i.ob = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i32.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i38.i = icmp eq i64 %i.ob, %..i.i.i.i.i.i.i29.i
  br i1 %exitcond.not.i.i.i.i.i.i38.i, label %._crit_edge.i.i.i.i.i.i39.i, label %.lr.ph.i.i.i.i.i.i31.i

._crit_edge.i.i.i.i.i.i39.i:                      ; preds = %bb.ay, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i
  %i.oc = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i26.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i28.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i

.loopexit.i.i.i.i.i.i37.i:                        ; preds = %.lr.ph.i.i.i.i.i.i31.i
  %i.od = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i36.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i

.lr.ph.i.i.i.i.i.i31.i:                           ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i, %bb.ay
  %.sroa.01.019.i.i.i.i.i.i32.i = phi i64 [ %i.ob, %bb.ay ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i ] ; 3 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i25.i, i64 %.sroa.01.019.i.i.i.i.i.i32.i
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i27.i, i64 %.sroa.01.019.i.i.i.i.i.i32.i
  %.val15.i.i.i.i.i.i33.i = load ptr, ptr %i.oe, align 8, !alias.scope !2837, !noalias !2838, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i34.i = load ptr, ptr %i.of, align 8, !alias.scope !2839, !noalias !2840, !nonnull !5, !noundef !5 ; 2 uses
  %i.og = ptrtoint ptr %.val15.i.i.i.i.i.i33.i to i64
  %i.oh = and i64 %i.og, 1
  %i.oi = sub nsw i64 0, %i.oh
  %i.oj = getelementptr i8, ptr %.val15.i.i.i.i.i.i33.i, i64 %i.oi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oj) ]
  %i.ok = load ptr, ptr %i.oj, align 8, !noalias !2841, !nonnull !5, !noundef !5
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !noalias !2841, !noundef !5 ; 2 uses
  %i.on = ptrtoint ptr %.val16.i.i.i.i.i.i34.i to i64
  %i.oo = and i64 %i.on, 1
  %i.op = sub nsw i64 0, %i.oo
  %i.oq = getelementptr i8, ptr %.val16.i.i.i.i.i.i34.i, i64 %i.op ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oq) ]
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !2841, !nonnull !5, !noundef !5
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !noalias !2841, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i35.i = tail call i64 @llvm.umin.i64(i64 %i.om, i64 %i.ot)
  %i.ou = tail call i32 @memcmp(ptr nonnull %i.ok, ptr nonnull %i.or, i64 %spec.store.select.i.i.i.i.i.i.i.i35.i), !noalias !2841 ; 2 uses
  %i.ov = sext i32 %i.ou to i64
  %i.ow = icmp eq i32 %i.ou, 0
  %i.ox = sub i64 %i.om, %i.ot
  %spec.select.i.i.i.i.i.i.i.i36.i = select i1 %i.ow, i64 %i.ox, i64 %i.ov ; 2 uses
  %i.oy = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i36.i, 0
  br i1 %i.oy, label %bb.ay, label %.loopexit.i.i.i.i.i.i37.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i: ; preds = %.loopexit.i.i.i.i.i.i37.i, %._crit_edge.i.i.i.i.i.i39.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i
  %.sroa.0.0.i.i.i22.i = phi i8 [ %.sroa.0.0.i.i.i.i20.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i ], [ %i.oc, %._crit_edge.i.i.i.i.i.i39.i ], [ %i.od, %.loopexit.i.i.i.i.i.i37.i ]
  %i.oz = icmp eq i8 %.sroa.0.0.i.i.i22.i, -1     ; 3 uses
  %i.pa = xor i1 %i.oz, true
  %.sroa.05.0.i.i = select i1 %i.oz, ptr %.sroa.0.03.i.i, ptr %i.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.mq, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.0.i.i, i64 88, i1 false), !alias.scope !2790, !noalias !2842
  %i.pb = zext i1 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [88 x i8], ptr %i.mr, i64 %i.pb ; 3 uses
  %i.pd = zext i1 %i.oz to i64
  %i.pe = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.03.i.i, i64 %i.pd ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.mq, i64 88 ; 2 uses
  %i.pg = icmp ne ptr %i.pc, %i.jv
  %i.ph = icmp ne ptr %i.pe, %i.m
  %or.cond.i23.i = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3j_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3j_.exit.i: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.ml, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.pf, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ]
  %.sroa.7.0.i = phi ptr [ %i.mn, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.jv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.pc, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ] ; 2 uses
  %i.pi = ptrtoint ptr %.sroa.7.0.i to i64
  %i.pj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.pk = sub nuw i64 %i.pi, %i.pj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.pk, i1 false), !alias.scope !2790, !noalias !2843
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit: ; preds = %bb.an, %bb.ao, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3j_.exit.i
  %i.pl = shl nuw nsw i64 %i.iw, 1
  %i.pm = or disjoint i64 %i.pl, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit: ; preds = %bb.aj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit
  %.sroa.0.0.i = phi i64 [ %i.pm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit ], [ %i.je, %bb.aj ] ; 2 uses
  %i.pn = icmp ugt i64 %i.in, 1
  br i1 %i.pn, label %bb.ag, label %._crit_edge

bb.az:                                            ; preds = %._crit_edge
  %i.po = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.pp = lshr i64 %.sroa.018.0, 1
  %i.pq = add nuw i64 %i.pp, %.sroa.09.0
  br label %bb.f

bb.ba:                                            ; preds = %._crit_edge
  %i.pr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.pr, 0
  br i1 %.not30, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ps = or i64 %1, 1
  %i.pt = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ps, i1 true)
  %i.pu = trunc nuw nsw i64 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.pu, 1
  %i.pw = xor i32 %i.pv, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.pw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2632
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #47, !noalias !2871, !inline_history !2847 ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.sroa.01.0.i.i62 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u) #47, !noalias !2871, !inline_history !2847
  br i1 %i.v, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i62, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i65 = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #47, !noalias !2871, !inline_history !2847
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ab = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i, label %.lr.ph66

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110: ; preds = %.preheader
  br i1 %.not5.i112, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2847
  %i.ae = shl nuw nsw i64 %..i36, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread ], [ %.sroa.0.0.i.i108115119, %middle.block ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872), !noalias !2871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2873), !noalias !2871
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110 ] ; 4 uses
  %.sroa.0.0.i.i108115119 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i108115119 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !2874, !noalias !2875
  %wide.load144 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !2874, !noalias !2875
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load145 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2876, !noalias !2877
  %wide.load146 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2876, !noalias !2877
  %reverse = shufflevector <2 x i64> %wide.load145, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse147 = shufflevector <2 x i64> %wide.load146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !2874, !noalias !2875
  store <2 x i64> %reverse147, ptr %i.ar, align 8, !alias.scope !2874, !noalias !2875
  %i.as = getelementptr i8, ptr %i.an, i64 -8
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %reverse148 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse149 = shufflevector <2 x ptr> %wide.load144, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse148, ptr %i.as, align 8, !alias.scope !2876, !noalias !2877
  store <2 x ptr> %reverse149, ptr %i.at, align 8, !alias.scope !2876, !noalias !2877
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !2853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ba, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !2874, !noalias !2875, !nonnull !5, !noundef !5
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !2876, !noalias !2877
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !2874, !noalias !2875
  store ptr %i.ay, ptr %i.ax, align 8, !alias.scope !2876, !noalias !2877
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2854

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.bb = lshr i64 %.sroa.023.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb
  %i.be = add nuw nsw i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bk, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit ] ; 4 uses
  %i.bk = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bo, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !5 ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 8 uses
  %i.bs = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bt = add nuw i64 %i.br, %i.bs                ; 4 uses
  %i.bu = sub i64 %.sroa.09.0, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 6 uses
  %i.bw = icmp samesign ugt i64 %i.bt, %3
  %i.bx = trunc i64 %.sroa.023.170 to i1
  %i.by = or i64 %i.bq, %.sroa.023.170
  %i.bz = trunc i64 %i.by to i1
  %or.cond3.i = or i1 %i.bw, %i.bz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = trunc i64 %i.bq to i1
  br i1 %i.ca, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cb = shl nuw nsw i64 %i.bt, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cc = or i64 %i.br, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2855
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br
  %i.ci = or i64 %i.bs, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2855
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  %i.cn = icmp eq i64 %i.br, 0
  %i.co = icmp eq i64 %i.bs, 0
  %or.cond.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 range(i64 0, -9223372036854775808) %i.br) ; 2 uses
  %i.cp = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cp, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.br, %i.bs  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cq, ptr %i.bv
  %i.cr = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cr, i1 false), !alias.scope !2879
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2P_:bb.a
  %.sroa.7.0.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.cs, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cw, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.ct = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %i.cv = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct) #47
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -8 ; 2 uses
  %..i17.i = select i1 %i.cv, ptr %i.ct, ptr %i.cu
  %i.cx = load i64, ptr %..i17.i, align 8, !alias.scope !2879, !noalias !2880
  store i64 %i.cx, ptr %i.cw, align 8, !alias.scope !2881, !noalias !2882
  %i.cy = xor i1 %i.cv, true
  %i.cz = zext i1 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cz ; 3 uses
  %i.db = zext i1 %i.cv to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = icmp eq ptr %i.da, %i.bv
  %i.de = icmp eq ptr %i.dc, %2
  %or.cond.i.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.noexc20.i ], [ %i.bv, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dj, %.noexc20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dl, %.noexc20.i ], [ %i.cq, %.critedge.i ] ; 3 uses
  %i.df = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i34) #47
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dg = xor i1 %i.df, true
  %.sroa.05.0.i.i = select i1 %i.df, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.dh = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !2879, !noalias !2883
  store i64 %i.dh, ptr %.sroa.13.1.i, align 8, !alias.scope !2881, !noalias !2884
  %i.di = zext i1 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.df to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dn = icmp ne ptr %i.dj, %i.cs
  %i.do = icmp ne ptr %i.dl, %i.m
  %or.cond.i19.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3h_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3h_.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.da, %.noexc.i ], [ %i.dm, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.cs, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dj, %.noexc20.i ] ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dr, i1 false), !alias.scope !2879, !noalias !2885
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cs, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ds = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.du, i1 false), !alias.scope !2879, !noalias !2886
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3h_.exit.i
  %i.dv = shl nuw nsw i64 %i.bt, 1
  %i.dw = or disjoint i64 %i.dv, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit
  %.sroa.0.0.i = phi i64 [ %i.dw, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit ], [ %i.cb, %bb.u ] ; 2 uses
  %i.dx = icmp ugt i64 %i.bk, 1
  br i1 %i.dx, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dy = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dz = lshr i64 %.sroa.018.0, 1
  %i.ea = add nuw i64 %i.dz, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.eb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eb, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = or i64 %1, 1
  %i.ed = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = xor i32 %i.ef, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.eg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2855
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #47, !noalias !2914, !inline_history !2890 ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.sroa.01.0.i.i62 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u) #47, !noalias !2914, !inline_history !2890
  br i1 %i.v, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i62, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i65 = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #47, !noalias !2914, !inline_history !2890
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ab = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i, label %.lr.ph66

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110: ; preds = %.preheader
  br i1 %.not5.i112, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2890
  %i.ae = shl nuw nsw i64 %..i36, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread ], [ %.sroa.0.0.i.i108115119, %middle.block ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2915), !noalias !2914
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916), !noalias !2914
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110 ] ; 4 uses
  %.sroa.0.0.i.i108115119 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i108115119 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !2917, !noalias !2918
  %wide.load144 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !2917, !noalias !2918
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load145 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2919, !noalias !2920
  %wide.load146 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2919, !noalias !2920
  %reverse = shufflevector <2 x i64> %wide.load145, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse147 = shufflevector <2 x i64> %wide.load146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !2917, !noalias !2918
  store <2 x i64> %reverse147, ptr %i.ar, align 8, !alias.scope !2917, !noalias !2918
  %i.as = getelementptr i8, ptr %i.an, i64 -8
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %reverse148 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse149 = shufflevector <2 x ptr> %wide.load144, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse148, ptr %i.as, align 8, !alias.scope !2919, !noalias !2920
  store <2 x ptr> %reverse149, ptr %i.at, align 8, !alias.scope !2919, !noalias !2920
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !2896

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ba, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !2917, !noalias !2918, !nonnull !5, !noundef !5
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !2919, !noalias !2920
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !2917, !noalias !2918
  store ptr %i.ay, ptr %i.ax, align 8, !alias.scope !2919, !noalias !2920
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2897

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.bb = lshr i64 %.sroa.023.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb
  %i.be = add nuw nsw i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bk, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit ] ; 4 uses
  %i.bk = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bo, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !5 ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 8 uses
  %i.bs = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bt = add nuw i64 %i.br, %i.bs                ; 4 uses
  %i.bu = sub i64 %.sroa.09.0, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 6 uses
  %i.bw = icmp samesign ugt i64 %i.bt, %3
  %i.bx = trunc i64 %.sroa.023.170 to i1
  %i.by = or i64 %i.bq, %.sroa.023.170
  %i.bz = trunc i64 %i.by to i1
  %or.cond3.i = or i1 %i.bw, %i.bz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = trunc i64 %i.bq to i1
  br i1 %i.ca, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cb = shl nuw nsw i64 %i.bt, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cc = or i64 %i.br, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2898
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br
  %i.ci = or i64 %i.bs, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2898
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  %i.cn = icmp eq i64 %i.br, 0
  %i.co = icmp eq i64 %i.bs, 0
  %or.cond.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 range(i64 0, -9223372036854775808) %i.br) ; 2 uses
  %i.cp = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cp, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.br, %i.bs  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cq, ptr %i.bv
  %i.cr = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cr, i1 false), !alias.scope !2922
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2F_:bb.a
.noexc.i:                                         ; preds = %.preheader.i
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -8 ; 2 uses
  %..i17.i = select i1 %i.cv, ptr %i.ct, ptr %i.cu
  %i.cx = load i64, ptr %..i17.i, align 8, !alias.scope !2922, !noalias !2923
  store i64 %i.cx, ptr %i.cw, align 8, !alias.scope !2924, !noalias !2925
  %i.cy = xor i1 %i.cv, true
  %i.cz = zext i1 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cz ; 3 uses
  %i.db = zext i1 %i.cv to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = icmp eq ptr %i.da, %i.bv
  %i.de = icmp eq ptr %i.dc, %2
  %or.cond.i.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB37_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.noexc20.i ], [ %i.bv, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dj, %.noexc20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dl, %.noexc20.i ], [ %i.cq, %.critedge.i ] ; 3 uses
  %i.df = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i34) #47
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dg = xor i1 %i.df, true
  %.sroa.05.0.i.i = select i1 %i.df, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.dh = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !2922, !noalias !2926
  store i64 %i.dh, ptr %.sroa.13.1.i, align 8, !alias.scope !2924, !noalias !2927
  %i.di = zext i1 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.df to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dn = icmp ne ptr %i.dj, %i.cs
  %i.do = icmp ne ptr %i.dl, %i.m
  %or.cond.i19.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB37_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB37_.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.da, %.noexc.i ], [ %i.dm, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.cs, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dj, %.noexc20.i ] ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dr, i1 false), !alias.scope !2922, !noalias !2928
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cs, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ds = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.du, i1 false), !alias.scope !2922, !noalias !2929
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB37_.exit.i
  %i.dv = shl nuw nsw i64 %i.bt, 1
  %i.dw = or disjoint i64 %i.dv, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit
  %.sroa.0.0.i = phi i64 [ %i.dw, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit ], [ %i.cb, %bb.u ] ; 2 uses
  %i.dx = icmp ugt i64 %i.bk, 1
  br i1 %i.dx, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dy = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dz = lshr i64 %.sroa.018.0, 1
  %i.ea = add nuw i64 %i.dz, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.eb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eb, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = or i64 %1, 1
  %i.ed = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = xor i32 %i.ef, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.eg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2898
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3v_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [66 x i8], align 1                ; 4 uses
  %i.f = alloca [528 x i8], align 8               ; 4 uses
  %i.g = icmp samesign ult i64 %1, 2
  br i1 %i.g, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i64 4611686018427387904, %1
  %i.i = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.i, 0
  %i.j = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.h, %i.j         ; 2 uses
  %i.k = icmp samesign ult i64 %1, 4097
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 1
  %i.n = sub nuw nsw i64 %1, %i.m
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not5.i216 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i221 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ay, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ay ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gq, %bb.ay ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.go, %bb.ay ] ; 3 uses
  %i.o = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.p = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.p, label %.lr.ph150, label %._crit_edge

.lr.ph150:                                        ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.r = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  %.not.i31 = icmp ult i64 %i.r, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.t = icmp samesign ult i64 %i.r, 2
  br i1 %i.t, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val10.i = load ptr, ptr %i.u, align 8, !alias.scope !2958, !noalias !2959, !nonnull !5, !noundef !5 ; 3 uses
  %.val11.i = load ptr, ptr %i.s, align 8, !alias.scope !2958, !noalias !2959
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.val10.i, ptr %.val11.i) #47, !noalias !2960, !inline_history !2934 ; 2 uses
  %.not157 = icmp eq i64 %i.r, 2                  ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader77

.preheader77:                                     ; preds = %bb.k
  br i1 %.not157, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not157, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219, label %.lr.ph144

.lr.ph:                                           ; preds = %.preheader77, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader77 ]
  %.sroa.01.0.i.i140 = phi i64 [ %i.y, %bb.l ], [ 2, %.preheader77 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.01.0.i.i140
  %.val8.i = load ptr, ptr %i.w, align 8, !alias.scope !2958, !noalias !2959, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.val8.i, ptr nonnull %.val9.i) #47, !noalias !2960, !inline_history !2934
  br i1 %i.x, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.sroa.01.0.i.i140, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i, label %.lr.ph

.lr.ph144:                                        ; preds = %.preheader, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i143 = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.01.1.i.i143
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !2958, !noalias !2959, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.val.i, ptr nonnull %.val7.i) #47, !noalias !2960, !inline_history !2934
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i

bb.m:                                             ; preds = %.lr.ph144
  %i.ab = add nuw i64 %.sroa.01.1.i.i143, 1       ; 2 uses
  %exitcond198.not = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond198.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i, label %.lr.ph144

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph144
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i143, %.lr.ph144 ], [ %i.r, %bb.m ], [ %.sroa.01.0.i.i140, %.lr.ph ], [ %i.r, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.r
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219: ; preds = %.preheader
  br i1 %.not5.i221, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread: ; preds = %.preheader77
  br i1 %.not5.i216, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.r, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.r, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3F_(ptr noalias nofree noundef nonnull align 8 %i.s, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2934
  %i.ae = shl nuw nsw i64 %..i36, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i6972 = phi i64 [ %i.r, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread ], [ %.sroa.0.0.i.i217224228, %middle.block ], [ %.sroa.0.0.i.i217224228, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i6972, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961), !noalias !2959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2962), !noalias !2959
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219 ] ; 4 uses
  %.sroa.0.0.i.i217224228 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.0.0.i.i217224228 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !2963, !noalias !2964
  %wide.load309 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !2963, !noalias !2964
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load310 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2965, !noalias !2966
  %wide.load311 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2965, !noalias !2966
  %reverse = shufflevector <2 x i64> %wide.load310, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse312 = shufflevector <2 x i64> %wide.load311, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !2963, !noalias !2964
  store <2 x i64> %reverse312, ptr %i.ar, align 8, !alias.scope !2963, !noalias !2964
  %i.as = getelementptr i8, ptr %i.an, i64 -8
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %reverse313 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse314 = shufflevector <2 x ptr> %wide.load309, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse313, ptr %i.as, align 8, !alias.scope !2965, !noalias !2966
  store <2 x ptr> %reverse314, ptr %i.at, align 8, !alias.scope !2965, !noalias !2966
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !2940

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ba, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !2963, !noalias !2964, !nonnull !5, !noundef !5
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !2965, !noalias !2966
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !2963, !noalias !2964
  store ptr %i.ay, ptr %i.ax, align 8, !alias.scope !2965, !noalias !2966
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2941

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.bb = lshr i64 %.sroa.023.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb
  %i.be = add nuw nsw i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph150, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit
  %.sroa.02.1149 = phi i64 [ %.sroa.02.0, %.lr.ph150 ], [ %i.bk, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit ] ; 2 uses
  %.sroa.023.1148 = phi i64 [ %.sroa.023.0, %.lr.ph150 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit ] ; 4 uses
  %i.bk = add i64 %.sroa.02.1149, -1              ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1148, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1149, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bo, align 1
  br i1 %i.o, label %bb.ay, label %bb.az

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !5 ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 8 uses
  %i.bs = lshr i64 %.sroa.023.1148, 1             ; 6 uses
  %i.bt = add nuw i64 %i.br, %i.bs                ; 4 uses
  %i.bu = sub i64 %.sroa.09.0, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 6 uses
  %i.bw = icmp samesign ugt i64 %i.bt, %3
  %i.bx = trunc i64 %.sroa.023.1148 to i1
  %i.by = or i64 %i.bq, %.sroa.023.1148
  %i.bz = trunc i64 %i.by to i1
  %or.cond3.i = or i1 %i.bw, %i.bz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = trunc i64 %i.bq to i1
  br i1 %i.ca, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cb = shl nuw nsw i64 %i.bt, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cc = or i64 %i.br, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3F_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2942
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br
  %i.ci = or i64 %i.bs, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3F_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2942
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  %i.cn = icmp eq i64 %i.br, 0
  %i.co = icmp eq i64 %i.bs, 0
  %or.cond.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 range(i64 0, -9223372036854775808) %i.br) ; 2 uses
  %i.cp = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cp, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.br, %i.bs  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cq, ptr %i.bv
  %i.cr = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cr, i1 false), !alias.scope !2969
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 5 uses
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3v_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2969
  br label %.invoke317

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i8.i: ; preds = %bb.au
  %.sroa.6.0.extract.shift.i.i.i.i9.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i7.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i10.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i9.i to i32
  br label %bb.ax

bb.aw:                                            ; preds = %.noexc40
  %i.ft = load i32, ptr %i.fn, align 8, !noalias !2969, !noundef !5
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i8.i
  %.sroa.02.0.i.i5.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i10.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i8.i ], [ %i.ft, %bb.aw ]
  %i.fu = xor i32 %.sroa.0.0.i.i4.i, -1
  %.not.i.i6.i = icmp ugt i32 %.sroa.02.0.i.i5.i, %i.fu
  br i1 %.not.i.i6.i, label %.invoke319, label %.noexc21.i, !prof !9

.noexc21.i:                                       ; preds = %bb.ax
  %i.fv = icmp ult i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i4.i ; 3 uses
  %i.fw = xor i1 %i.fv, true
  %.sroa.05.0.i.i = select i1 %i.fv, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.fx = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !2969, !noalias !2975
  store i64 %i.fx, ptr %.sroa.13.1.i, align 8, !alias.scope !2967, !noalias !2973
  %i.fy = zext i1 %i.fw to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.fy ; 3 uses
  %i.ga = zext i1 %i.fv to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.gd = icmp ne ptr %i.fz, %i.cs
  %i.ge = icmp ne ptr %i.gb, %i.q
  %or.cond.i20.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3X_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3X_.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ei, %.noexc.i ], [ %i.gc, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.ek, %.noexc.i ], [ %i.cs, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.fz, %.noexc21.i ] ; 2 uses
  %i.gf = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gh = sub nuw i64 %i.gf, %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gh, i1 false), !alias.scope !2969, !noalias !2976
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit

.loopexit.i.loopexit:                             ; preds = %bb.ab, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i.loopexit.split-lp:                    ; preds = %.invoke315, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit:                    ; preds = %bb.an, %bb.at
  %lpad.loopexit73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.invoke319, %.invoke317
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.i.loopexit, %.loopexit.i.loopexit.split-lp
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i.loopexit.split-lp ], [ %.sroa.13.0.i, %.loopexit.i.loopexit ], [ %.sroa.13.1.i, %.loopexit.split-lp.i.loopexit ], [ %.sroa.13.1.i, %.loopexit.split-lp.i.loopexit.split-lp ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i.loopexit.split-lp ], [ %.sroa.7.0.i, %.loopexit.i.loopexit ], [ %i.cs, %.loopexit.split-lp.i.loopexit ], [ %i.cs, %.loopexit.split-lp.i.loopexit.split-lp ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i.loopexit.split-lp ], [ %2, %.loopexit.i.loopexit ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i.loopexit ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.i.loopexit ], [ %lpad.loopexit73, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.i.loopexit.split-lp ]
  %i.gi = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gk = sub nuw i64 %i.gi, %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.gk, i1 false), !alias.scope !2969, !noalias !2977
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3X_.exit.i
  %i.gl = shl nuw nsw i64 %i.bt, 1
  %i.gm = or disjoint i64 %i.gl, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit
  %.sroa.0.0.i = phi i64 [ %i.gm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit ], [ %i.cb, %bb.u ] ; 2 uses
  %i.gn = icmp ugt i64 %i.bk, 1
  br i1 %i.gn, label %bb.r, label %._crit_edge

bb.ay:                                            ; preds = %._crit_edge
  %i.go = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gp = lshr i64 %.sroa.018.0, 1
  %i.gq = add nuw i64 %i.gp, %.sroa.09.0
  br label %bb.f

bb.az:                                            ; preds = %._crit_edge
  %i.gr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gr, 0
  br i1 %.not30, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gs = or i64 %1, 1
  %i.gt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = xor i32 %i.gv, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2942
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.a, %bb.bb
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2K_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #47, !noalias !3005, !inline_history !2981 ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.sroa.01.0.i.i62 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u) #47, !noalias !3005, !inline_history !2981
  br i1 %i.v, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i62, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i65 = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #47, !noalias !3005, !inline_history !2981
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ab = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i, label %.lr.ph66

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110: ; preds = %.preheader
  br i1 %.not5.i112, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2U_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2981
  %i.ae = shl nuw nsw i64 %..i36, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread ], [ %.sroa.0.0.i.i108115119, %middle.block ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3006), !noalias !3005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3007), !noalias !3005
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110 ] ; 4 uses
  %.sroa.0.0.i.i108115119 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i108115119 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !3008, !noalias !3009
  %wide.load144 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !3008, !noalias !3009
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load145 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !3010, !noalias !3011
  %wide.load146 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !3010, !noalias !3011
  %reverse = shufflevector <2 x i64> %wide.load145, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse147 = shufflevector <2 x i64> %wide.load146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !3008, !noalias !3009
  store <2 x i64> %reverse147, ptr %i.ar, align 8, !alias.scope !3008, !noalias !3009
  %i.as = getelementptr i8, ptr %i.an, i64 -8
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %reverse148 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse149 = shufflevector <2 x ptr> %wide.load144, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse148, ptr %i.as, align 8, !alias.scope !3010, !noalias !3011
  store <2 x ptr> %reverse149, ptr %i.at, align 8, !alias.scope !3010, !noalias !3011
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !2987

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ba, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !3008, !noalias !3009, !nonnull !5, !noundef !5
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !3010, !noalias !3011
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !3008, !noalias !3009
  store ptr %i.ay, ptr %i.ax, align 8, !alias.scope !3010, !noalias !3011
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2988

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.bb = lshr i64 %.sroa.023.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb
  %i.be = add nuw nsw i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bk, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit ] ; 4 uses
  %i.bk = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bo, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !5 ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 8 uses
  %i.bs = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bt = add nuw i64 %i.br, %i.bs                ; 4 uses
  %i.bu = sub i64 %.sroa.09.0, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 6 uses
  %i.bw = icmp samesign ugt i64 %i.bt, %3
  %i.bx = trunc i64 %.sroa.023.170 to i1
  %i.by = or i64 %i.bq, %.sroa.023.170
  %i.bz = trunc i64 %i.by to i1
  %or.cond3.i = or i1 %i.bw, %i.bz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = trunc i64 %i.bq to i1
  br i1 %i.ca, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cb = shl nuw nsw i64 %i.bt, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cc = or i64 %i.br, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2U_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2989
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br
  %i.ci = or i64 %i.bs, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2U_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2989
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3012)
  %i.cn = icmp eq i64 %i.br, 0
  %i.co = icmp eq i64 %i.bs, 0
  %or.cond.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 range(i64 0, -9223372036854775808) %i.br) ; 2 uses
  %i.cp = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cp, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.br, %i.bs  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cq, ptr %i.bv
  %i.cr = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cr, i1 false), !alias.scope !3013
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i
end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2K_:bb.a
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3c_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.noexc20.i ], [ %i.bv, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dj, %.noexc20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dl, %.noexc20.i ], [ %i.cq, %.critedge.i ] ; 3 uses
  %i.df = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i34) #47
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dg = xor i1 %i.df, true
  %.sroa.05.0.i.i = select i1 %i.df, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.dh = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !3013, !noalias !3017
  store i64 %i.dh, ptr %.sroa.13.1.i, align 8, !alias.scope !3015, !noalias !3018
  %i.di = zext i1 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.df to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dn = icmp ne ptr %i.dj, %i.cs
  %i.do = icmp ne ptr %i.dl, %i.m
  %or.cond.i19.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3c_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3c_.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.da, %.noexc.i ], [ %i.dm, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.cs, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dj, %.noexc20.i ] ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dr, i1 false), !alias.scope !3013, !noalias !3019
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cs, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ds = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.du, i1 false), !alias.scope !3013, !noalias !3020
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3c_.exit.i
  %i.dv = shl nuw nsw i64 %i.bt, 1
  %i.dw = or disjoint i64 %i.dv, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit
  %.sroa.0.0.i = phi i64 [ %i.dw, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit ], [ %i.cb, %bb.u ] ; 2 uses
  %i.dx = icmp ugt i64 %i.bk, 1
  br i1 %i.dx, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dy = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dz = lshr i64 %.sroa.018.0, 1
  %i.ea = add nuw i64 %i.dz, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.eb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eb, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = or i64 %1, 1
  %i.ed = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = xor i32 %i.ef, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2U_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.eg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2989
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2R_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i120 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i125 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eu, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Z_.exit
  %.sroa.021.0 = phi i8 [ %i.bx, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Z_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Z_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph78, label %._crit_edge

.lr.ph78:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3048)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread123, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val16.i = load ptr, ptr %5, align 8, !alias.scope !3048, !noalias !3049, !nonnull !5, !align !10, !noundef !5 ; 6 uses
  %.val17.i = load i64, ptr %i.q, align 8, !range !17, !alias.scope !3047, !noalias !3050, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val18.i = load ptr, ptr %i.r, align 8, !alias.scope !3047, !noalias !3050 ; 3 uses
  %.val19.i = load i64, ptr %i.o, align 8, !alias.scope !3047, !noalias !3050
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val20.i = load ptr, ptr %i.s, align 8, !alias.scope !3047, !noalias !3050
  %.val3.i41 = load ptr, ptr %.val16.i, align 8, !noalias !3051
  %i.t = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i41, i64 %.val17.i, ptr %.val18.i) #47, !noalias !3051
  %.val.i42 = load ptr, ptr %.val16.i, align 8, !noalias !3051
  %i.u = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i42, i64 %.val19.i, ptr %.val20.i) #47, !noalias !3051
  %i.v = icmp ult i64 %i.t, %i.u                  ; 2 uses
  %.not85 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader52, label %.preheader53

.preheader53:                                     ; preds = %bb.k
  br i1 %.not85, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread, label %.lr.ph

.preheader52:                                     ; preds = %bb.k
  br i1 %.not85, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread123, label %.lr.ph72

.lr.ph:                                           ; preds = %.preheader53, %bb.l
  %.val15.i = phi ptr [ %.val13.i, %bb.l ], [ %.val18.i, %.preheader53 ]
  %.val14.i = phi i64 [ %.val12.i, %bb.l ], [ %.val17.i, %.preheader53 ]
  %.sroa.01.0.i.i68 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader53 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i68 ; 2 uses
  %.val12.i = load i64, ptr %i.w, align 8, !range !17, !alias.scope !3047, !noalias !3050, !noundef !5 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val13.i = load ptr, ptr %i.x, align 8, !alias.scope !3047, !noalias !3050 ; 2 uses
  %.val3.i39 = load ptr, ptr %.val16.i, align 8, !noalias !3051
  %i.y = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i39, i64 %.val12.i, ptr %.val13.i) #47, !noalias !3051
  %.val.i40 = load ptr, ptr %.val16.i, align 8, !noalias !3051
  %i.z = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i40, i64 %.val14.i, ptr %.val15.i) #47, !noalias !3051
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i68, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i, label %.lr.ph

.lr.ph72:                                         ; preds = %.preheader52, %bb.m
  %.val10.i = phi ptr [ %.val8.i, %bb.m ], [ %.val18.i, %.preheader52 ]
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val17.i, %.preheader52 ]
  %.sroa.01.1.i.i71 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader52 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i71 ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !range !17, !alias.scope !3047, !noalias !3050, !noundef !5 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val8.i = load ptr, ptr %i.ad, align 8, !alias.scope !3047, !noalias !3050 ; 2 uses
  %.val3.i = load ptr, ptr %.val16.i, align 8, !noalias !3051
  %i.ae = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i, i64 %.val7.i, ptr %.val8.i) #47, !noalias !3051
  %.val.i38 = load ptr, ptr %.val16.i, align 8, !noalias !3051
  %i.af = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i38, i64 %.val9.i, ptr %.val10.i) #47, !noalias !3051
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i

bb.m:                                             ; preds = %.lr.ph72
  %i.ah = add nuw i64 %.sroa.01.1.i.i71, 1        ; 2 uses
  %exitcond98.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond98.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i, label %.lr.ph72

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph72
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i71, %.lr.ph72 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i68, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread123: ; preds = %.preheader52
  br i1 %.not5.i125, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i120, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Z_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3025
  %i.ak = shl nuw nsw i64 %..i36, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Z_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %i.bo, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod169 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.am = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ao = getelementptr [16 x i8], ptr %i.ax, i64 %i.am ; 3 uses
  %i.ap = load i64, ptr %i.an, align 8, !range !17, !alias.scope !3052, !noalias !3053, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !3052, !noalias !3053, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !3054, !noalias !3050
  store i64 %i.ap, ptr %i.ao, align 8, !alias.scope !3055, !noalias !3056
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !3055, !noalias !3056
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4750 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread ], [ %.sroa.0.0.i.i121128132, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i121128132, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i.i4750, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Z_.exit

bb.q:                                             ; preds = %bb.n
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057), !noalias !3050
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3058), !noalias !3050
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread123, %bb.q
  %i.aw = phi i64 [ %i.av, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread123 ] ; 4 uses
  %.sroa.0.0.i.i121128132 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Y_.exit.i.thread123 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i121128132 ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new ], [ %i.bo, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.az = xor i64 %.sroa.0.016.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 3 uses
  %i.bc = load i64, ptr %i.ba, align 8, !range !17, !alias.scope !3052, !noalias !3053, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !3052, !noalias !3053, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !3054, !noalias !3050
  store i64 %i.bc, ptr %i.bb, align 8, !alias.scope !3055, !noalias !3056
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !3055, !noalias !3056
  %i.bg = xor i64 %.sroa.0.016.i.i, -2
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.ax, i64 %i.bg ; 3 uses
  %i.bk = load i64, ptr %i.bi, align 8, !range !17, !alias.scope !3052, !noalias !3053, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !3052, !noalias !3053, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !3054, !noalias !3050
  store i64 %i.bk, ptr %i.bj, align 8, !alias.scope !3055, !noalias !3056
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !3055, !noalias !3056
  %i.bo = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit.loopexit.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2Z_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItem7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.al, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.bp = lshr i64 %.sroa.023.0, 1
  %i.bq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.br = sub nsw i64 %factor, %i.bp
  %i.bs = add nuw nsw i64 %i.bq, %factor
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph78, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit
  %.sroa.02.177 = phi i64 [ %.sroa.02.0, %.lr.ph78 ], [ %i.by, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit ] ; 2 uses
  %.sroa.023.176 = phi i64 [ %.sroa.023.0, %.lr.ph78 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit ] ; 4 uses
  %i.by = add i64 %.sroa.02.177, -1               ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ca, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.176, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.177, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cc, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.by
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !5 ; 3 uses
  %i.cf = lshr i64 %i.ce, 1                       ; 8 uses
  %i.cg = lshr i64 %.sroa.023.176, 1              ; 6 uses
  %i.ch = add nuw i64 %i.cf, %i.cg                ; 4 uses
  %i.ci = sub i64 %.sroa.09.0, %i.ch
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ci ; 6 uses
  %i.ck = icmp samesign ugt i64 %i.ch, %3
  %i.cl = trunc i64 %.sroa.023.176 to i1
  %i.cm = or i64 %i.ce, %.sroa.023.176
  %i.cn = trunc i64 %i.cm to i1
  %or.cond3.i = or i1 %i.ck, %i.cn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = trunc i64 %i.ce to i1
  br i1 %i.co, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cp = shl nuw nsw i64 %i.ch, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cl, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cq = or i64 %i.cf, 1
  %i.cr = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 576460752303423488) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3031
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cf
  %i.cw = or i64 %i.cg, 1
  %i.cx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 576460752303423488) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3031
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  %i.db = icmp eq i64 %i.cf, 0
  %i.dc = icmp eq i64 %i.cg, 0
  %or.cond.i = or i1 %i.dc, %i.db
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 range(i64 0, -9223372036854775808) %i.cf) ; 2 uses
  %i.dd = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dd, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cf ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cf, %i.cg  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.de, ptr %i.cj
end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2R_:bb.a
  %i.dx = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val8.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !3060, !noalias !3067
  %.val3.i.i21.i = load ptr, ptr %.val, align 8, !noalias !3068
  %i.dy = invoke fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i.i21.i, i64 %.sroa.0.0.val.i.i, ptr %.sroa.0.0.val6.i.i) #47
          to label %.noexc24.i unwind label %.loopexit.split-lp.i, !noalias !3061

.noexc24.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i22.i = load ptr, ptr %.val, align 8, !noalias !3068
  %i.dz = invoke fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i.i22.i, i64 %.val7.i.i, ptr %.val8.i.i) #47
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !3061

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.ea = icmp ult i64 %i.dy, %i.dz               ; 3 uses
  %i.eb = xor i1 %i.ea, true
  %.sroa.05.0.i.i = select i1 %i.ea, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !3061, !noalias !3069
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i34, i64 %i.ec ; 3 uses
  %i.ee = zext i1 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.eh = icmp ne ptr %i.ed, %i.dg
  %i.ei = icmp ne ptr %i.ef, %i.m
  %or.cond.i23.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3j_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3j_.exit.i: ; preds = %.noexc25.i, %.noexc19.i
  %.sroa.13.4.i = phi ptr [ %i.dr, %.noexc19.i ], [ %i.eg, %.noexc25.i ]
  %.sroa.7.2.i = phi ptr [ %i.dt, %.noexc19.i ], [ %i.dg, %.noexc25.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc19.i ], [ %i.ed, %.noexc25.i ] ; 2 uses
  %i.ej = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ek = ptrtoint ptr %.sroa.0.3.i to i64
  %i.el = sub nuw i64 %i.ej, %i.ek
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.el, i1 false), !alias.scope !3061, !noalias !3070
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.noexc24.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dg, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.em = ptrtoint ptr %.sroa.7.1.i to i64
  %i.en = ptrtoint ptr %.sroa.0.2.i to i64
  %i.eo = sub nuw i64 %i.em, %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.eo, i1 false), !alias.scope !3061, !noalias !3071
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3j_.exit.i
  %i.ep = shl nuw nsw i64 %i.ch, 1
  %i.eq = or disjoint i64 %i.ep, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit
  %.sroa.0.0.i = phi i64 [ %i.eq, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit ], [ %i.cp, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.by, 1
  br i1 %i.er, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.es = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.et = lshr i64 %.sroa.018.0, 1
  %i.eu = add nuw i64 %i.et, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ev = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ev, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ew = or i64 %1, 1
  %i.ex = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3031
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2W_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.el, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ej, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3096)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, %bb.h
  br i1 %4, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !3096, !noalias !3097, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !3096, !noalias !3097, !nonnull !5, !noundef !5
  %i.r = load i64, ptr %.val10.i, align 8, !range !18, !noalias !3098, !noundef !5
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.s = load i64, ptr %.val11.i, align 8, !range !18, !noalias !3098, !noundef !5
  %switch.gep170 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.s
  %switch.load171 = load i8, ptr %switch.gep170, align 1
  %i.t = icmp ult i8 %switch.load, %switch.load171 ; 2 uses
  %.not87 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.t, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %switch.lookup
  br i1 %.not87, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %switch.lookup
  br i1 %.not87, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader59, %bb.k
  %.val9.i = phi ptr [ %.val8.i, %bb.k ], [ %.val10.i, %.preheader59 ]
  %.sroa.01.0.i.i72 = phi i64 [ %i.aa, %bb.k ], [ 2, %.preheader59 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i72
  %i.v = add nsw i64 %.sroa.01.0.i.i72, -1
  %i.w = icmp ult i64 %i.v, %i.n
  tail call void @llvm.assume(i1 %i.w)
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !3096, !noalias !3097, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.x = load i64, ptr %.val8.i, align 8, !range !18, !noalias !3098, !noundef !5
  %switch.gep154 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.x
  %switch.load155 = load i8, ptr %switch.gep154, align 1
  %i.y = load i64, ptr %.val9.i, align 8, !range !18, !noalias !3098, !noundef !5
  %switch.gep174 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.y
  %switch.load175 = load i8, ptr %switch.gep174, align 1
  %i.z = icmp ult i8 %switch.load155, %switch.load175
  br i1 %i.z, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.sroa.01.0.i.i72, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.l
  %.val7.i = phi ptr [ %.val.i, %bb.l ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i74 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i74
  %i.ac = add nsw i64 %.sroa.01.1.i.i74, -1
  %i.ad = icmp ult i64 %i.ac, %i.n
  tail call void @llvm.assume(i1 %i.ad)
  %.val.i = load ptr, ptr %i.ab, align 8, !alias.scope !3096, !noalias !3097, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %.val.i, align 8, !range !18, !noalias !3098, !noundef !5
  %switch.gep158 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ae
  %switch.load159 = load i8, ptr %switch.gep158, align 1
  %i.af = load i64, ptr %.val7.i, align 8, !range !18, !noalias !3098, !noundef !5
  %switch.gep178 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.af
  %switch.load179 = load i8, ptr %switch.gep178, align 1
  %i.ag = icmp ult i8 %switch.load159, %switch.load179
  br i1 %i.ag, label %bb.l, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i

bb.l:                                             ; preds = %.lr.ph75
  %i.ah = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond96.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %.lr.ph75

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph75
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %.lr.ph75 ], [ %i.n, %bb.l ], [ %.sroa.01.0.i.i72, %.lr.ph ], [ %i.n, %bb.k ] ; 6 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.m

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread: ; preds = %.preheader59
  br i1 %.not5.i114, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.m:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i
  br i1 %i.t, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

bb.o:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3076
  %i.ak = shl nuw nsw i64 %..i35, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, %bb.j, %bb.p, %bb.m
  %.sroa.0.0.i.i5356 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %middle.block ], [ %.sroa.0.0.i.i115122126, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i5356, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

bb.p:                                             ; preds = %bb.m
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099), !noalias !3097
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100), !noalias !3097
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, %bb.p
  %i.ap = phi i64 [ %i.ao, %bb.p ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i115122126 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ap, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.ap, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !3101, !noalias !3102
  %wide.load147 = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !3101, !noalias !3102
  %i.av = getelementptr i8, ptr %i.at, i64 -8
  %i.aw = getelementptr i8, ptr %i.at, i64 -24
  %wide.load148 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !3103, !noalias !3104
  %wide.load149 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !3103, !noalias !3104
  %reverse = shufflevector <2 x i64> %wide.load148, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse150 = shufflevector <2 x i64> %wide.load149, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x i64> %reverse, ptr %i.as, align 8, !alias.scope !3101, !noalias !3102
  store <2 x i64> %reverse150, ptr %i.ax, align 8, !alias.scope !3101, !noalias !3102
  %i.ay = getelementptr i8, ptr %i.at, i64 -8
  %i.az = getelementptr i8, ptr %i.at, i64 -24
  %reverse151 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse152 = shufflevector <2 x ptr> %wide.load147, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse151, ptr %i.ay, align 8, !alias.scope !3103, !noalias !3104
  store <2 x ptr> %reverse152, ptr %i.az, align 8, !alias.scope !3103, !noalias !3104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !3082

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bg, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.bb = xor i64 %.sroa.0.016.i.i, -1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.aq, i64 %i.bb ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !alias.scope !3101, !noalias !3102, !nonnull !5, !align !10, !noundef !5
  %i.bf = load i64, ptr %i.bd, align 8, !alias.scope !3103, !noalias !3104
  store i64 %i.bf, ptr %i.bc, align 8, !alias.scope !3101, !noalias !3102
  store ptr %i.be, ptr %i.bd, align 8, !alias.scope !3103, !noalias !3104
  %i.bg = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !3083

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.al, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw nsw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

bb.q:                                             ; preds = %.lr.ph80, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit
  %.sroa.02.179 = phi i64 [ %.sroa.02.0, %.lr.ph80 ], [ %i.bq, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 2 uses
  %.sroa.023.178 = phi i64 [ %.sroa.023.0, %.lr.ph80 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.179, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit, %bb.q, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.178, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.179, %bb.q ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.023.178, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.178 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.178
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 1152921504606846976) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3084
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 1152921504606846976) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3084
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  %i.ct = icmp eq i64 %i.bx, 0
  %i.cu = icmp eq i64 %i.by, 0
  %or.cond.i = or i1 %i.cu, %i.ct
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.by, i64 range(i64 0, -9223372036854775808) %i.bx) ; 2 uses
  %i.cv = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cv, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cw, ptr %i.cb
  %i.cx = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cx, i1 false), !alias.scope !3107
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 3 uses
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2W_:bb.a
  %switch.gep186 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ds
  %switch.load187 = load i8, ptr %switch.gep186, align 1
  %i.dt = icmp ult i8 %switch.load167, %switch.load187 ; 3 uses
  %i.du = xor i1 %i.dt, true
  %.sroa.0.02.i.i.val = load i64, ptr %.sroa.0.02.i.i, align 8
  %.val = load i64, ptr %i.dq, align 8
  %i.dv = select i1 %i.dt, i64 %.sroa.0.02.i.i.val, i64 %.val
  store i64 %i.dv, ptr %i.dp, align 8, !alias.scope !3105, !noalias !3111
  %i.dw = zext i1 %i.du to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dw ; 3 uses
  %i.dy = zext i1 %i.dt to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.cy
  %i.ec = icmp ne ptr %i.dz, %i.m
  %or.cond.i24.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i24.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ef, i1 false), !alias.scope !3107, !noalias !3114
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i
  %i.eg = shl nuw nsw i64 %i.bz, 1
  %i.eh = or disjoint i64 %i.eg, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit: ; preds = %bb.t, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit
  %.sroa.0.0.i = phi i64 [ %i.eh, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit ], [ %i.ch, %bb.t ] ; 2 uses
  %i.ei = icmp ugt i64 %i.bq, 1
  br i1 %i.ei, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ej = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ek = lshr i64 %.sroa.018.0, 1
  %i.el = add nuw i64 %i.ek, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.em = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.em, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = or i64 %1, 1
  %i.eo = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3084
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB2X_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gv, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gt, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit
  %.sroa.021.0 = phi i8 [ %i.cz, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread96, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !3144, !noalias !3145, !nonnull !5, !noundef !5 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !3144, !noalias !3145, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = ptrtoint ptr %.val10.i to i64
  %i.s = and i64 %i.r, 1
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %.val10.i, i64 %i.t ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ], !noalias !3146
  %i.v = load ptr, ptr %i.u, align 8, !noalias !3146, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !3146, !noundef !5 ; 2 uses
  %i.y = ptrtoint ptr %.val11.i to i64
  %i.z = and i64 %i.y, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr i8, ptr %.val11.i, i64 %i.aa ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ], !noalias !3146
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !3146, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !3146, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i39 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.ac, i64 %spec.store.select.i.i.i39), !noalias !3146 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.x, %i.ae
  %spec.select.i.i.i40 = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp slt i64 %spec.select.i.i.i40, 0    ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.aj, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread96, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader50 ] ; 2 uses
  %.sroa.01.0.i.i55 = phi i64 [ %i.be, %bb.l ], [ 2, %.preheader50 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55
  %.val8.i = load ptr, ptr %i.ak, align 8, !alias.scope !3144, !noalias !3145, !nonnull !5, !noundef !5 ; 3 uses
  %i.al = ptrtoint ptr %.val8.i to i64
  %i.am = and i64 %i.al, 1
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr i8, ptr %.val8.i, i64 %i.an ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ], !noalias !3146
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !3146, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !3146, !noundef !5 ; 2 uses
  %i.as = ptrtoint ptr %.val9.i to i64
  %i.at = and i64 %i.as, 1
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr i8, ptr %.val9.i, i64 %i.au ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ], !noalias !3146
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !3146, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !3146, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ay)
  %i.az = tail call i32 @memcmp(ptr nonnull %i.ap, ptr nonnull %i.aw, i64 %spec.store.select.i.i.i37), !noalias !3146 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = sub i64 %i.ar, %i.ay
  %spec.select.i.i.i38 = select i1 %i.bb, i64 %i.bc, i64 %i.ba
  %i.bd = icmp slt i64 %spec.select.i.i.i38, 0
  br i1 %i.bd, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.be = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i58 = phi i64 [ %i.bz, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58
  %.val.i = load ptr, ptr %i.bf, align 8, !alias.scope !3144, !noalias !3145, !nonnull !5, !noundef !5 ; 3 uses
  %i.bg = ptrtoint ptr %.val.i to i64
  %i.bh = and i64 %i.bg, 1
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr i8, ptr %.val.i, i64 %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ], !noalias !3146
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !3146, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !3146, !noundef !5 ; 2 uses
  %i.bn = ptrtoint ptr %.val7.i to i64
  %i.bo = and i64 %i.bn, 1
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr i8, ptr %.val7.i, i64 %i.bp ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ], !noalias !3146
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !3146, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !3146, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bt)
  %i.bu = tail call i32 @memcmp(ptr nonnull %i.bk, ptr nonnull %i.br, i64 %spec.store.select.i.i.i), !noalias !3146 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp eq i32 %i.bu, 0
  %i.bx = sub i64 %i.bm, %i.bt
  %spec.select.i.i.i = select i1 %i.bw, i64 %i.bx, i64 %i.bv
  %i.by = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.by, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i

bb.m:                                             ; preds = %.lr.ph59
  %i.bz = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.bz, %i.n
  br i1 %exitcond79.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i, label %.lr.ph59

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ca = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ca)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i
  br i1 %i.aj, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.cb = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB37_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3119
  %i.cc = shl nuw nsw i64 %..i35, 1
  %i.cd = or disjoint i64 %i.cc, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit

bb.q:                                             ; preds = %bb.n
  %i.cg = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3147), !noalias !3145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3148), !noalias !3145
  %.not.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread96, %bb.q
  %i.ch = phi i64 [ %i.cg, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread96 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cq, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.cj = xor i64 %.sroa.0.016.i.i, -1
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.cl = getelementptr [24 x i8], ptr %i.ci, i64 %i.cj ; 3 uses
  %i.cm = load <2 x i64>, ptr %i.ck, align 8, !alias.scope !3149, !noalias !3150
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !3151, !noalias !3152
  store <2 x i64> %i.cn, ptr %i.ck, align 8, !alias.scope !3149, !noalias !3150
  store <2 x i64> %i.cm, ptr %i.cl, align 8, !alias.scope !3151, !noalias !3152
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3153), !noalias !3145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154), !noalias !3145
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !3155, !noalias !3156
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !3157, !noalias !3158
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.co, align 8, !alias.scope !3155, !noalias !3156
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.cp, align 8, !alias.scope !3157, !noalias !3158
  %i.cq = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cq, %i.ch
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.cf, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.cd, %bb.p ], [ %i.cb, %bb.o ] ; 2 uses
  %i.cr = lshr i64 %.sroa.023.0, 1
  %i.cs = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ct = sub nsw i64 %factor, %i.cr
  %i.cu = add nuw nsw i64 %i.cs, %factor
  %i.cv = mul i64 %i.ct, %.sroa.0.0
  %i.cw = mul i64 %i.cu, %.sroa.0.0
  %i.cx = xor i64 %i.cw, %i.cv
  %i.cy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cx, i1 false)
  %i.cz = trunc nuw nsw i64 %i.cy to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB38_.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.da, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB38_.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB38_.exit ] ; 4 uses
  %i.da = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.dc, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB38_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB38_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB38_.exit ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.de, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !noundef !5 ; 3 uses
  %i.dh = lshr i64 %i.dg, 1                       ; 8 uses
  %i.di = lshr i64 %.sroa.023.163, 1              ; 6 uses
  %i.dj = add nuw i64 %i.dh, %i.di                ; 4 uses
  %i.dk = sub i64 %.sroa.09.0, %i.dj
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.dk ; 6 uses
  %i.dm = icmp samesign ugt i64 %i.dj, %3
  %i.dn = trunc i64 %.sroa.023.163 to i1
  %i.do = or i64 %i.dg, %.sroa.023.163
  %i.dp = trunc i64 %i.do to i1
  %or.cond3.i = or i1 %i.dm, %i.dp
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = trunc i64 %i.dg to i1
  br i1 %i.dq, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.dr = shl nuw nsw i64 %i.dj, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB38_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.dn, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ds = or i64 %i.dh, 1
  %i.dt = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB37_(ptr noalias nofree noundef nonnull align 8 %i.dl, i64 noundef range(i64 0, 384307168202282326) %i.dh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3132
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dh
  %i.dy = or i64 %i.di, 1
  %i.dz = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB37_(ptr noalias nofree noundef nonnull align 8 %i.dx, i64 noundef range(i64 0, 384307168202282326) %i.di, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ec, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3132
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3160)
  %i.ed = icmp eq i64 %i.dh, 0
  %i.ee = icmp eq i64 %i.di, 0
  %or.cond.i = or i1 %i.ee, %i.ed
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB2Y_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.di, i64 range(i64 0, -9223372036854775808) %i.dh) ; 2 uses
  %i.ef = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ef, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB2Y_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dh ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.dh, %i.di  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.eg, ptr %i.dl
  %i.eh = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.eh, i1 false), !alias.scope !3161
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.ej = phi ptr [ %i.fj, %.preheader.i ], [ %i.ei, %.critedge.i ]
  %i.ek = phi ptr [ %i.fi, %.preheader.i ], [ %i.eg, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.en, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -24 ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 -24 ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.em, align 8, !alias.scope !3160, !noalias !3162, !nonnull !5, !noundef !5 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.el, align 8, !alias.scope !3159, !noalias !3163, !nonnull !5, !noundef !5 ; 2 uses
  %i.eo = ptrtoint ptr %.val.i.i to i64
  %i.ep = and i64 %i.eo, 1
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr i8, ptr %.val.i.i, i64 %i.eq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  %i.es = load ptr, ptr %i.er, align 8, !noalias !3164, !nonnull !5, !noundef !5
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !noalias !3164, !noundef !5 ; 2 uses
  %i.ev = ptrtoint ptr %.val12.i.i to i64
  %i.ew = and i64 %i.ev, 1
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr i8, ptr %.val12.i.i, i64 %i.ex ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !3164, !nonnull !5, !noundef !5
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !3164, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.fb)
  %i.fc = tail call i32 @memcmp(ptr nonnull %i.es, ptr nonnull %i.ez, i64 %spec.store.select.i.i.i.i.i), !noalias !3164 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp eq i32 %i.fc, 0
  %i.ff = sub i64 %i.eu, %i.fb
end_hunk_12
