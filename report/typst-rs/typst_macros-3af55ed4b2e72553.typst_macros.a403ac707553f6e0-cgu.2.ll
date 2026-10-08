Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.2?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
begin_hunk_0_@_RINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB2_2kw8keywordsEB4_:bb.a
bb.v:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !21
  unreachable

_RINvNtCse52LceO7DeS_12typst_macros4util21parse_key_value_arrayNtNtB2_2kw8keywordsNtNtCsjMPGGl8VONr_3syn3lit6LitStrEB4_.exit: ; preds = %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCse52LceO7DeS_12typst_macros(ptr nonnull sret([32 x i8]) align 8 %i.v, ptr nonnull align 8 %i.u) #23
  %i.at = load i64, ptr %i.v, align 8
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.au, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtCse52LceO7DeS_12typst_macros4util21parse_key_value_arrayNtNtB2_2kw8keywordsNtNtCsjMPGGl8VONr_3syn3lit6LitStrEB4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBP_6string6StringENtNtCsjMPGGl8VONr_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1D_EE13from_residualCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.s, ptr nonnull align 8 @9) #23
  br label %bb.y

bb.x:                                             ; preds = %_RINvNtCse52LceO7DeS_12typst_macros4util21parse_key_value_arrayNtNtB2_2kw8keywordsNtNtCsjMPGGl8VONr_3syn3lit6LitStrEB4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @_RNvXsg_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCse52LceO7DeS_12typst_macros(ptr nonnull sret([32 x i8]) align 8 %i.w, ptr nonnull align 8 %i.t) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB2i_2kw8keywordsE0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtBY_6string6StringEEB2k_(ptr nonnull sret([24 x i8]) align 8 %i.y, ptr nonnull align 8 %i.x) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keybNCNvBY_5parses_0E0EB10_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i1 zeroext %4, ptr align 8 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 2 uses
  %i.b = alloca [528 x i8], align 8               ; 2 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCscVvfRCjUNk2_11proc_macro2(i64 %i.j, i64 64) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.z ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ci, %bb.z ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keybNCNvB15_5parses_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keybNCNvB15_5parses_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keybNCNvB15_5parses_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 12 uses
  %i.o = getelementptr inbounds nuw [920 x i8], ptr %0, i64 %.sroa.09.0 ; 6 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keybNCNvB14_5parses_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 920
  %i.r = load ptr, ptr %5, align 8
  %i.s = tail call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4elem5parses_0B5_(ptr %i.r, ptr nonnull align 8 %i.q) #23
  %i.t = load ptr, ptr %5, align 8
  %i.u = tail call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4elem5parses_0B5_(ptr %i.t, ptr align 8 %i.o) #23
  %i.v = xor i1 %i.s, true
  %i.w = and i1 %i.u, %i.v                        ; 2 uses
  %.not26.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader15.i

.preheader15.i:                                   ; preds = %bb.k
  br i1 %.not26.i, label %.thread.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not26.i, label %.thread43.i, label %.lr.ph21.i

.lr.ph.i:                                         ; preds = %.preheader15.i, %bb.l
  %.sroa.01.0.i17.i = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader15.i ] ; 3 uses
  %i.x = getelementptr [920 x i8], ptr %i.o, i64 %.sroa.01.0.i17.i ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -920
  %i.z = load ptr, ptr %5, align 8
  %i.aa = tail call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4elem5parses_0B5_(ptr %i.z, ptr nonnull align 8 %i.x) #23
  %i.ab = load ptr, ptr %5, align 8
  %i.ac = tail call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4elem5parses_0B5_(ptr %i.ab, ptr align 8 %i.y) #23
  %i.ad = xor i1 %i.aa, true
  %i.ae = and i1 %i.ac, %i.ad
  br i1 %i.ae, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keybNCNvB14_5parses_0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.af = add nuw i64 %.sroa.01.0.i17.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keybNCNvB14_5parses_0E0EB16_.exit.i, label %.lr.ph.i

.lr.ph21.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i20.i = phi i64 [ %i.ao, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ag = getelementptr [920 x i8], ptr %i.o, i64 %.sroa.01.1.i20.i ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -920
  %i.ai = load ptr, ptr %5, align 8
  %i.aj = tail call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4elem5parses_0B5_(ptr %i.ai, ptr nonnull align 8 %i.ag) #23
  %i.ak = load ptr, ptr %5, align 8
  %i.al = tail call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4elem5parses_0B5_(ptr %i.ak, ptr align 8 %i.ah) #23
  %i.am = xor i1 %i.aj, true
  %i.an = and i1 %i.al, %i.am
  br i1 %i.an, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keybNCNvB14_5parses_0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph21.i
  %i.ao = add nuw i64 %.sroa.01.1.i20.i, 1        ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.ao, %i.n
  br i1 %exitcond29.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keybNCNvB14_5parses_0E0EB16_.exit.i, label %.lr.ph21.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keybNCNvB14_5parses_0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph21.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i20.i, %.lr.ph21.i ], [ %.sroa.01.0.i17.i, %.lr.ph.i ], [ %i.n, %bb.l ] ; 3 uses
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keybNCNvB14_5parses_0E0EB16_.exit.i
  br i1 %i.w, label %.thread43.i, label %.thread.i

bb.o:                                             ; preds = %bb.i
  %i.ap = tail call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCscVvfRCjUNk2_11proc_macro2(i64 %.sroa.01.0, i64 %i.n) #23
  %i.aq = shl i64 %i.ap, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keybNCNvB15_5parses_0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %i.ar = tail call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCscVvfRCjUNk2_11proc_macro2(i64 32, i64 %i.n) #23 ; 4 uses
  %.not6.i = icmp ugt i64 %i.ar, %i.n
  br i1 %.not6.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keybNCNvB17_5parses_0E0EB19_(ptr align 8 %i.o, i64 %i.ar, ptr align 8 %2, i64 %3, i32 0, ptr align 8 null, ptr align 8 %5) #21
  %i.as = shl i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keybNCNvB15_5parses_0E0EB17_.exit

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 0, i64 %i.ar, i64 %i.n, ptr nonnull align 8 @12) #22
  unreachable

.thread.i:                                        ; preds = %.preheader15.i, %.thread43.i, %bb.n, %bb.j
  %.sroa.0.0.i1114.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i3745.i, %.thread43.i ], [ %i.n, %bb.j ], [ 2, %.preheader15.i ]
  %i.au = shl i64 %.sroa.0.0.i1114.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keybNCNvB15_5parses_0E0EB17_.exit

.thread43.i:                                      ; preds = %.preheader.i, %bb.n
  %.sroa.0.0.i3745.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  tail call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCse52LceO7DeS_12typst_macros4elem5Field7reverseBy_(ptr align 8 %i.o, i64 %.sroa.0.0.i3745.i) #23
  br label %.thread.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keybNCNvB15_5parses_0E0EB17_.exit: ; preds = %bb.o, %bb.q, %.thread.i
  %.sroa.0.0.i32 = phi i64 [ %i.av, %.thread.i ], [ %i.at, %bb.q ], [ %i.aq, %bb.o ] ; 2 uses
  %i.aw = lshr i64 %.sroa.023.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ay = sub i64 %factor, %i.aw
  %i.az = add i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit
  %.sroa.02.137 = phi i64 [ %7, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 4 uses
  %.sroa.023.136 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 3 uses
  %6 = getelementptr i8, ptr %i.a, i64 %.sroa.02.137
  %i.bf = getelementptr i8, ptr %6, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1
  %.not28 = icmp ult i8 %i.bg, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.136, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.137, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bi, align 1
  br i1 %i.l, label %bb.z, label %bb.aa

bb.s:                                             ; preds = %.lr.ph
  %7 = add i64 %.sroa.02.137, -1                  ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.b, i64 %.sroa.02.137
  %8 = getelementptr i8, ptr %i.bj, i64 -8
  %i.bk = load i64, ptr %8, align 8               ; 2 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 5 uses
  %i.bm = lshr i64 %.sroa.023.136, 1              ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm                ; 5 uses
  %i.bo = sub i64 %.sroa.09.0, %i.bn
  %i.bp = getelementptr inbounds nuw [920 x i8], ptr %0, i64 %i.bo ; 3 uses
  %i.bq = icmp ugt i64 %i.bn, %3
  %i.br = trunc i64 %i.bk to i1                   ; 2 uses
  %or.cond.i = or i1 %i.bq, %i.br
  %i.bs = trunc i64 %.sroa.023.136 to i1          ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bt = shl i64 %i.bn, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bu = or i64 %i.bl, 1
  %i.bv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keybNCNvB17_5parses_0E0EB19_(ptr align 8 %i.bp, i64 %i.bl, ptr align 8 %2, i64 %3, i32 %i.by, ptr align 8 null, ptr align 8 %5) #21
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [920 x i8], ptr %i.bp, i64 %i.bl
  %i.ca = or i64 %i.bm, 1
  %i.cb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keybNCNvB17_5parses_0E0EB19_(ptr align 8 %i.bz, i64 %i.bm, ptr align 8 %2, i64 %3, i32 %i.ce, ptr align 8 null, ptr align 8 %5) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keybNCNvBZ_5parses_0E0EB11_(ptr align 8 %i.bp, i64 range(i64 0, -1) %i.bn, ptr align 8 %2, i64 %3, i64 %i.bl, ptr align 8 %5)
  %i.cf = shl i64 %i.bn, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keybNCNvB18_5parses_0E0EB1a_.exit: ; preds = %bb.u, %bb.y
  %.sroa.0.0.i = phi i64 [ %i.cg, %bb.y ], [ %i.bt, %bb.u ] ; 2 uses
  %i.ch = icmp ugt i64 %7, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ci = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cj = lshr i64 %.sroa.018.0, 1
  %i.ck = add i64 %i.cj, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.cl = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cl, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cm = or i64 %1, 1
  %i.cn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keybNCNvB17_5parses_0E0EB19_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i32 %i.cq, ptr align 8 null, ptr align 8 %5) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtB24_11TokenStreamNvCse52LceO7DeS_12typst_macros11derive_castE0EB2U_EB3f_(ptr nofree captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtB1i_11TokenStreamNvCse52LceO7DeS_12typst_macros11derive_castE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2t_(ptr nonnull align 8 %i.a) #23
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtB24_11TokenStreamNvCse52LceO7DeS_12typst_macros4castE0EB2U_EB3f_(ptr nofree captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtB1i_11TokenStreamNvCse52LceO7DeS_12typst_macros4castE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2t_(ptr nonnull align 8 %i.a) #23
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCse52LceO7DeS_12typst_macros2tyE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB1i_11TokenStreamB29_ENCNCINvMsg_B1e_NtB1e_6Client7expand2NvCse52LceO7DeS_12typst_macros2tyE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB39_(ptr nonnull align 8 %i.a) #23
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCse52LceO7DeS_12typst_macros4elemE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB1i_11TokenStreamB29_ENCNCINvMsg_B1e_NtB1e_6Client7expand2NvCse52LceO7DeS_12typst_macros4elemE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB39_(ptr nonnull align 8 %i.a) #23
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCse52LceO7DeS_12typst_macros4funcE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB1i_11TokenStreamB29_ENCNCINvMsg_B1e_NtB1e_6Client7expand2NvCse52LceO7DeS_12typst_macros4funcE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB39_(ptr nonnull align 8 %i.a) #23
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCse52LceO7DeS_12typst_macros4timeE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB1i_11TokenStreamB29_ENCNCINvMsg_B1e_NtB1e_6Client7expand2NvCse52LceO7DeS_12typst_macros4timeE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB39_(ptr nonnull align 8 %i.a) #23
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCse52LceO7DeS_12typst_macros5scopeE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB1i_11TokenStreamB29_ENCNCINvMsg_B1e_NtB1e_6Client7expand2NvCse52LceO7DeS_12typst_macros5scopeE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB39_(ptr nonnull align 8 %i.a) #23
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtB25_11TokenStreamNvCse52LceO7DeS_12typst_macros11derive_castE0EB2V_EB3g_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtB25_11TokenStreamNvCse52LceO7DeS_12typst_macros4castE0EB2V_EB3g_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB25_11TokenStreamB2W_ENCNCINvMsg_B21_NtB21_6Client7expand2NvCse52LceO7DeS_12typst_macros2tyE00E0EB2W_EB3W_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB25_11TokenStreamB2W_ENCNCINvMsg_B21_NtB21_6Client7expand2NvCse52LceO7DeS_12typst_macros4elemE00E0EB2W_EB3W_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB25_11TokenStreamB2W_ENCNCINvMsg_B21_NtB21_6Client7expand2NvCse52LceO7DeS_12typst_macros4funcE00E0EB2W_EB3W_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}
end_hunk_0
