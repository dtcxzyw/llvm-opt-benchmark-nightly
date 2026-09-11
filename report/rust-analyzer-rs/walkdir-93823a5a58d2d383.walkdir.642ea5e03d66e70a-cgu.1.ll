Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/walkdir-93823a5a58d2d383.walkdir.642ea5e03d66e70a-cgu.1?download=true
inline.NumInlined: 152
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1p_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvMs3_B1p_NtB1p_8IntoIter4pushs_0E0INtNtB2s_3vec3VecBZ_EEB1p_:bb.a

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1y_5error5ErrorEEEB1y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.b
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1y_5error5ErrorEEEB1y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #22
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1u_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvMs3_B1u_NtB1u_8IntoIter4pushs_0E0EB1u_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1u_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvMs3_B1u_NtB1u_8IntoIter4pushs_0E0EB1u_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1u_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvMs3_B1u_NtB1u_8IntoIter4pushs_0E0EB1u_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1u_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvMs3_B1u_NtB1u_8IntoIter4pushs_0E0EB1u_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 5 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %.val13 = load ptr, ptr %4, align 8, !nonnull !4, !align !13, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %.val.i = load ptr, ptr %.val13, align 8, !noalias !168 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.n = load i64, ptr %.sroa.0.0, align 8, !range !9, !alias.scope !171, !noalias !172, !noundef !4 ; 2 uses
  %.not.i.i = icmp ne i64 %i.n, -2                ; 2 uses
  %i.o = load i64, ptr %.sroa.04.0, align 8, !range !9, !alias.scope !172, !noalias !171, !noundef !4
  %.not1.i.i = icmp eq i64 %i.o, -2               ; 2 uses
  %.not1.i.not.i = xor i1 %.not1.i.i, true
  %brmerge.i = or i1 %.not.i.i, %.not1.i.not.i
  %.not1.i.mux.i = and i1 %.not.i.i, %.not1.i.i
  br i1 %brmerge.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.r = load ptr, ptr %.val.i, align 8, !noalias !173, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !173, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !173, !nonnull !4, !align !13, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !4, !noalias !173, !nonnull !4
  %i.x = tail call noundef i8 %i.w(ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q) #26, !inline_history !153
  %i.y = icmp eq i8 %i.x, -1
  %.val12.pre = load ptr, ptr %4, align 8
  %.val.i14.pre = load ptr, ptr %.val12.pre, align 8, !noalias !174
  %.pre = load i64, ptr %.sroa.0.0, align 8, !range !9, !alias.scope !175, !noalias !176
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit: ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %i.n, %bb.c ], [ %.pre, %bb.d ]
  %.val.i14 = phi ptr [ %.val.i, %bb.c ], [ %.val.i14.pre, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i1 [ %.not1.i.mux.i, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %.not.i.i15 = icmp ne i64 %i.z, -2              ; 2 uses
  %i.aa = load i64, ptr %.sroa.08.0, align 8, !range !9, !alias.scope !176, !noalias !175, !noundef !4
  %.not1.i.i16 = icmp eq i64 %i.aa, -2            ; 2 uses
  %.not1.i.not.i17 = xor i1 %.not1.i.i16, true
  %brmerge.i18 = or i1 %.not.i.i15, %.not1.i.not.i17
  %.not1.i.mux.i19 = and i1 %.not.i.i15, %.not1.i.i16
  br i1 %brmerge.i18, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit21, label %bb.e

bb.e:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i14) ]
  %i.ad = load ptr, ptr %.val.i14, align 8, !noalias !181, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !181, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !181, !nonnull !4, !align !13, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !4, !noalias !181, !nonnull !4
  %i.aj = tail call noundef i8 %i.ai(ptr noundef nonnull %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac) #26, !inline_history !153
  %i.ak = icmp eq i8 %i.aj, -1
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit21

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit21: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit, %bb.e
  %.sroa.0.0.i.i20 = phi i1 [ %.not1.i.mux.i19, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit ], [ %i.ak, %bb.e ]
  %i.al = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i20
  br i1 %i.al, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3INtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1p_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvMs3_B1p_NtB1p_8IntoIter4pushs_0E0EB1p_.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit21
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !align !13, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %.val.i22 = load ptr, ptr %.val, align 8, !noalias !184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.am = load i64, ptr %.sroa.04.0, align 8, !range !9, !alias.scope !187, !noalias !188, !noundef !4
  %.not.i.i23 = icmp ne i64 %i.am, -2             ; 2 uses
  %i.an = load i64, ptr %.sroa.08.0, align 8, !range !9, !alias.scope !188, !noalias !187, !noundef !4
  %.not1.i.i24 = icmp eq i64 %i.an, -2            ; 2 uses
  %.not1.i.not.i25 = xor i1 %.not1.i.i24, true
  %brmerge.i26 = or i1 %.not.i.i23, %.not1.i.not.i25
  %.not1.i.mux.i27 = and i1 %.not.i.i23, %.not1.i.i24
  br i1 %brmerge.i26, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit29, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i22) ]
  %i.aq = load ptr, ptr %.val.i22, align 8, !noalias !189, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !189, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !189, !nonnull !4, !align !13, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !4, !noalias !189, !nonnull !4
  %i.aw = tail call noundef i8 %i.av(ptr noundef nonnull %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap) #26, !inline_history !153
  %i.ax = icmp eq i8 %i.aw, -1
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit29

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit29: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i28 = phi i1 [ %.not1.i.mux.i27, %bb.f ], [ %i.ax, %bb.g ]
  %i.ay = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i28
  %..i = select i1 %i.ay, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3INtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1p_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvMs3_B1p_NtB1p_8IntoIter4pushs_0E0EB1p_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3INtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1p_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvMs3_B1p_NtB1p_8IntoIter4pushs_0E0EB1p_.exit: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit21, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit29
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit21 ], [ %..i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit29 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1m_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvMs3_B1m_NtB1m_8IntoIter4pushs_0E0EB1m_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

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
  %..i = tail call noundef range(i64 0, 164703072086692426) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dt, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dr, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1t_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs3_B1t_NtB1t_8IntoIter4pushs_0E0EB1t_.exit
  %.sroa.021.0 = phi i8 [ %i.ck, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1t_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs3_B1t_NtB1t_8IntoIter4pushs_0E0EB1t_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1t_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs3_B1t_NtB1t_8IntoIter4pushs_0E0EB1t_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE7reverseBU_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !234, !noalias !235, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %.val.i.i = load ptr, ptr %.val8.i, align 8, !noalias !238 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.q = load i64, ptr %i.p, align 8, !range !9, !alias.scope !241, !noalias !242, !noundef !4
  %.not.i.i.i = icmp ne i64 %i.q, -2              ; 2 uses
  %i.r = load i64, ptr %i.n, align 8, !range !9, !alias.scope !243, !noalias !244, !noundef !4
  %.not1.i.i.i = icmp eq i64 %i.r, -2             ; 2 uses
  %.not1.i.not.i.i = xor i1 %.not1.i.i.i, true
  %brmerge.i.i = or i1 %.not.i.i.i, %.not1.i.not.i.i
  br i1 %brmerge.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.u = load ptr, ptr %.val.i.i, align 8, !noalias !245, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !245, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !245, !nonnull !4, !align !13, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !4, !noalias !245, !nonnull !4
  %i.aa = tail call noundef i8 %i.z(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t) #26, !noalias !246, !inline_history !200
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %.preheader.i, label %.preheader39.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit.i, %.split.i
  %.not50.i = icmp eq i64 %i.m, 2
  br i1 %.not50.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i, label %.lr.ph45.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit.i: ; preds = %bb.k
  %.not1.i.mux.i.i = and i1 %.not.i.i.i, %.not1.i.i.i
  br i1 %.not1.i.mux.i.i, label %.preheader.i, label %.preheader39.i

.preheader39.i:                                   ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit.i, %.split.i
  %.not49.i = icmp eq i64 %i.m, 2
  br i1 %.not49.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader39.i, %bb.l
  %.sroa.01.0.i41.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader39.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i41.i ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i41.i, -1          ; 2 uses
  %7 = icmp samesign ult i64 %6, %i.m
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %.val.i9.i = load ptr, ptr %.val8.i, align 8, !noalias !249 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !alias.scope !252, !noalias !253, !noundef !4
  %.not.i.i10.i = icmp ne i64 %i.ad, -2           ; 2 uses
  %i.ae = load i64, ptr %8, align 8, !range !9, !alias.scope !254, !noalias !255, !noundef !4
  %.not1.i.i11.i = icmp eq i64 %i.ae, -2          ; 2 uses
  %.not1.i.not.i12.i = xor i1 %.not1.i.i11.i, true
  %brmerge.i13.i = or i1 %.not.i.i10.i, %.not1.i.not.i12.i
  br i1 %brmerge.i13.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit16.i, label %.split29.i

.split29.i:                                       ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9.i) ]
  %i.ah = load ptr, ptr %.val.i9.i, align 8, !noalias !256, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !256, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !256, !nonnull !4, !align !13, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !4, !noalias !256, !nonnull !4
  %i.an = tail call noundef i8 %i.am(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag) #26, !noalias !246, !inline_history !200
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i, label %bb.l

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit16.i: ; preds = %.lr.ph.i
  %.not1.i.mux.i14.i = and i1 %.not.i.i10.i, %.not1.i.i11.i
  br i1 %.not1.i.mux.i14.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit16.i, %.split29.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i41.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i, label %.lr.ph.i

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i44.i = phi i64 [ %i.bd, %bb.m ], [ 2, %.preheader.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i44.i ; 2 uses
  %9 = add nsw i64 %.sroa.01.1.i44.i, -1          ; 2 uses
  %10 = icmp samesign ult i64 %9, %i.m
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %.val.i17.i = load ptr, ptr %.val8.i, align 8, !noalias !259 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ar = load i64, ptr %i.aq, align 8, !range !9, !alias.scope !262, !noalias !263, !noundef !4
  %.not.i.i18.i = icmp ne i64 %i.ar, -2           ; 2 uses
  %i.as = load i64, ptr %11, align 8, !range !9, !alias.scope !264, !noalias !265, !noundef !4
  %.not1.i.i19.i = icmp eq i64 %i.as, -2          ; 2 uses
  %.not1.i.not.i20.i = xor i1 %.not1.i.i19.i, true
  %brmerge.i21.i = or i1 %.not.i.i18.i, %.not1.i.not.i20.i
  br i1 %brmerge.i21.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit24.i, label %.split30.i

.split30.i:                                       ; preds = %.lr.ph45.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i) ]
  %i.av = load ptr, ptr %.val.i17.i, align 8, !noalias !266, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !266, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !266, !nonnull !4, !align !13, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !4, !noalias !266, !nonnull !4
  %i.bb = tail call noundef i8 %i.ba(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au) #26, !noalias !246, !inline_history !200
  %i.bc = icmp eq i8 %i.bb, -1
  br i1 %i.bc, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit24.i: ; preds = %.lr.ph45.i
  %.not1.i.mux.i22.i = and i1 %.not.i.i18.i, %.not1.i.i19.i
  br i1 %.not1.i.mux.i22.i, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i

bb.m:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit24.i, %.split30.i
  %i.bd = add nuw nsw i64 %.sroa.01.1.i44.i, 1    ; 2 uses
  %exitcond54.not.i = icmp eq i64 %i.bd, %i.m
  br i1 %exitcond54.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i, label %.lr.ph45.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i: ; preds = %bb.l, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit16.i, %.split29.i, %bb.m, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit24.i, %.split30.i, %.preheader39.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader.i ], [ false, %.preheader39.i ], [ true, %bb.m ], [ true, %.split30.i ], [ true, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit24.i ], [ false, %.split29.i ], [ false, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit16.i ], [ false, %bb.l ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader.i ], [ 2, %.preheader39.i ], [ %i.m, %bb.m ], [ %.sroa.01.1.i44.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit24.i ], [ %.sroa.01.1.i44.i, %.split30.i ], [ %i.m, %bb.l ], [ %.sroa.01.0.i41.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSINtNtCshzWfHUSfYae_4core6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1e_5error5ErrorE7sort_byNCNvMs3_B1e_NtB1e_8IntoIter4pushs_0E0B1e_.exit16.i ], [ %.sroa.01.0.i41.i, %.split29.i ] ; 7 uses
  %i.be = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.be)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs3_B1s_NtB1s_8IntoIter4pushs_0E0EB1s_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE7reverseBU_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 164703072086692426) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.bf = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1t_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs3_B1t_NtB1t_8IntoIter4pushs_0E0EB1t_.exit

bb.p:                                             ; preds = %bb.i
  %..i25.i = tail call noundef range(i64 0, 164703072086692426) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1v_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs3_B1v_NtB1v_8IntoIter4pushs_0E0EB1v_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i25.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #24
  %i.bg = shl nuw nsw i64 %..i25.i, 1
  %i.bh = or disjoint i64 %i.bg, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1t_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs3_B1t_NtB1t_8IntoIter4pushs_0E0EB1t_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE7reverseBU_.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.i.i.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i36.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.i.i.i ]
  %i.bi = shl nuw nsw i64 %.sroa.0.0.i36.i, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1t_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs3_B1t_NtB1t_8IntoIter4pushs_0E0EB1t_.exit

bb.q:                                             ; preds = %bb.n
  %i.bk = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %.not.i.i26.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i26.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE7reverseBU_.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.preheader.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.preheader.i.i.i: ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.i.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.cb, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.i.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.preheader.i.i.i ] ; 3 uses
  %i.bm = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 5 uses
  %i.bo = getelementptr [56 x i8], ptr %i.bl, i64 %i.bm ; 5 uses
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !269, !noalias !270
  %i.bq = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !271, !noalias !272
  store <2 x i64> %i.bq, ptr %i.bn, align 8, !alias.scope !269, !noalias !270
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !alias.scope !271, !noalias !272
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !alias.scope !273, !noalias !270
  %i.bu = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !274, !noalias !272
  store <2 x i64> %i.bu, ptr %i.br, align 8, !alias.scope !273, !noalias !270
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !alias.scope !274, !noalias !272
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !275, !noalias !270
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !276, !noalias !272
  store <2 x i64> %i.by, ptr %i.bv, align 8, !alias.scope !275, !noalias !270
  store <2 x i64> %i.bx, ptr %i.bw, align 8, !alias.scope !276, !noalias !272
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.sroa.0.0.copyload.i.6.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !279, !noalias !280
  %.sroa.02.0.copyload.i.6.i.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !281, !noalias !282
  store i64 %.sroa.02.0.copyload.i.6.i.i.i.i.i.i.i, ptr %i.bz, align 8, !alias.scope !279, !noalias !280
  store i64 %.sroa.0.0.copyload.i.6.i.i.i.i.i.i.i, ptr %i.ca, align 8, !alias.scope !281, !noalias !282
  %i.cb = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cb, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE7reverseBU_.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE12split_at_mutBU_.exit11.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1t_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs3_B1t_NtB1t_8IntoIter4pushs_0E0EB1t_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE7reverseBU_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bj, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtB4_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtBU_5error5ErrorE7reverseBU_.exit.i ], [ %i.bh, %bb.p ], [ %i.bf, %bb.o ] ; 2 uses
  %i.cc = lshr i64 %.sroa.023.0, 1
  %i.cd = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ce = sub nsw i64 %factor, %i.cc
  %i.cf = add nuw nsw i64 %i.cd, %factor
  %i.cg = mul i64 %i.ce, %.sroa.0.0
  %i.ch = mul i64 %i.cf, %.sroa.0.0
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 false)
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit
  %.sroa.02.136 = phi i64 [ %i.cl, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cl = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.cn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cp, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !4 ; 3 uses
  %i.cs = lshr i64 %i.cr, 1                       ; 5 uses
  %i.ct = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cu = add nuw i64 %i.cs, %i.ct                ; 5 uses
  %i.cv = sub i64 %.sroa.09.0, %i.cu
  %i.cw = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.cv ; 3 uses
  %i.cx = icmp samesign ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.023.135 to i1
  %i.cz = or i64 %i.cr, %.sroa.023.135
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl nuw nsw i64 %i.cu, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1v_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs3_B1v_NtB1v_8IntoIter4pushs_0E0EB1v_(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 164703072086692426) %i.cs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #24
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1v_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs3_B1v_NtB1v_8IntoIter4pushs_0E0EB1v_(ptr noalias nofree noundef nonnull align 8 %i.di, i64 noundef range(i64 0, 164703072086692426) %i.ct, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1n_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs3_B1n_NtB1n_8IntoIter4pushs_0E0EB1n_(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 164703072086692426) %i.cu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.do = shl nuw nsw i64 %i.cu, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1w_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs3_B1w_NtB1w_8IntoIter4pushs_0E0EB1w_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dp, %bb.x ], [ %i.dc, %bb.t ] ; 2 uses
  %i.dq = icmp ugt i64 %i.cl, 1
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dr = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ds = lshr i64 %.sroa.018.0, 1
  %i.dt = add nuw i64 %i.ds, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.du = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.du, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dv = or i64 %1, 1
  %i.dw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = xor i32 %i.dy, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6result6ResultNtNtCs8BgAEfz2JJK_7walkdir4dent8DirEntryNtNtB1v_5error5ErrorENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs3_B1v_NtB1v_8IntoIter4pushs_0E0EB1v_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #24
  br label %bb.ab
end_hunk_0
