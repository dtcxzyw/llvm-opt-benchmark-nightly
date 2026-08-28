Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.03?download=true
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRAbj100_RjENCINvMB8_SB1m_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2e_9Generator11render_luts0E0EB2g_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.not4 = icmp samesign eq i64 %2, %i.c
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit
  %.sroa.0.05 = phi ptr [ %i.f, %.lr.ph ], [ %i.s, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 5 uses
  %i.j = call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %3, ptr align 8 %.sroa.0.05, ptr nonnull align 8 %i.i) #8
  br i1 %i.j, label %bb.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load <2 x ptr>, ptr %.sroa.0.05, align 8
  store <2 x ptr> %i.k, ptr %i.b, align 16
  store ptr %i.b, ptr %i.a, align 8
  store ptr %.sroa.0.05, ptr %i.g, align 8
  store i64 1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  store ptr %i.i, ptr %i.g, align 8
  %i.l = icmp eq ptr %i.i, %0
  br i1 %i.l, label %._crit_edge11, label %.lr.ph10

bb.f:                                             ; preds = %bb.h
  %i.m = load ptr, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  store ptr %i.o, ptr %i.g, align 8
  %i.n = icmp eq ptr %i.o, %0
  br i1 %i.n, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i8 = phi ptr [ %i.o, %bb.f ], [ %i.i, %bb.e ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16 ; 5 uses
  %i.p = invoke zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %3, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.o)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph10
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRAbj100_RjEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #9
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph10
  br i1 %i.p, label %bb.f, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.f, %bb.h, %bb.e
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRAbj100_RjEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.q

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit: ; preds = %bb.d, %._crit_edge11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.e
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB1s_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2N_9StateData9can_errors_0E0EB2P_(ptr %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 9 uses
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %1, 7
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr [3 x i8], ptr %2, i64 %1   ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB19_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2u_9StateData9can_errors_0E0EB2w_(ptr %0, ptr %2, ptr nonnull %i.k, ptr align 8 %4)
  %i.l = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [3 x i8], ptr %2, i64 %i.h
  %i.n = getelementptr i8, ptr %i.k, i64 24
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB19_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2u_9StateData9can_errors_0E0EB2w_(ptr %i.l, ptr %i.m, ptr %i.n, ptr align 8 %4)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.o, ptr %0) #8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.q, ptr nonnull %i.r) #8 ; 2 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = xor i1 %i.p, true
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = select i1 %i.s, i64 3, i64 2
  %i.z = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.s, i64 2, i64 3
  %i.ab = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.aa ; 3 uses
  %i.ac = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.z, ptr %i.u) #8 ; 3 uses
  %i.ad = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.ab, ptr %i.x) #8 ; 3 uses
  %i.ae = select i1 %i.ac, ptr %i.z, ptr %i.u, !unpredictable !4
  %i.af = select i1 %i.ad, ptr %i.x, ptr %i.ab, !unpredictable !4
  %i.ag = select i1 %i.ad, ptr %i.z, ptr %i.x, !unpredictable !4
  %i.ah = select i1 %i.ac, ptr %i.u, ptr %i.ag, !unpredictable !4 ; 3 uses
  %i.ai = select i1 %i.ac, ptr %i.x, ptr %i.z, !unpredictable !4
  %i.aj = select i1 %i.ad, ptr %i.ab, ptr %i.ai, !unpredictable !4 ; 3 uses
  %i.ak = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr %i.aj, ptr %i.ah) #8 ; 2 uses
  %i.al = select i1 %i.ak, ptr %i.aj, ptr %i.ah, !unpredictable !4
  %i.am = select i1 %i.ak, ptr %i.ah, ptr %i.aj, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) %i.ae, i64 3, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, ptr noundef nonnull align 1 dereferenceable(3) %i.al, i64 3, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.am, i64 3, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ap, ptr noundef nonnull align 1 dereferenceable(3) %i.af, i64 3, i1 false)
  %i.aq = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.ar = getelementptr inbounds nuw [3 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.at = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.as, ptr %i.aq) #8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.aw = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.au, ptr nonnull %i.av) #8 ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [3 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [3 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [3 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [3 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %i.bg = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.bd, ptr %i.ay) #8 ; 3 uses
  %i.bh = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.bf, ptr %i.bb) #8 ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !4
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !4
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !4
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !4 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !4
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !4 ; 3 uses
  %i.bo = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr %i.bn, ptr %i.bl) #8 ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ar, ptr noundef nonnull align 1 dereferenceable(3) %i.bi, i64 3, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.br, ptr noundef nonnull align 1 dereferenceable(3) %i.bp, i64 3, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bs, ptr noundef nonnull align 1 dereferenceable(3) %i.bq, i64 3, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bt, ptr noundef nonnull align 1 dereferenceable(3) %i.bj, i64 3, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) %0, i64 3, i1 false)
  %i.bu = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.h
  %i.bv = getelementptr inbounds nuw [3 x i8], ptr %2, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bv, ptr noundef nonnull align 1 dereferenceable(3) %i.bu, i64 3, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.bw = sub i64 %1, %i.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.i
  %i.bz = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.j unwind label %.loopexit.split-lp ; 2 uses

.loopexit30:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit30, %.loopexit.split-lp, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.cv, %bb.s ], [ %lpad.loopexit, %.loopexit30 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d) #9
          to label %bb.p unwind label %bb.o

bb.j:                                             ; preds = %.loopexit
  %i.ca = extractvalue { i64, i64 } %i.bz, 0
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = extractvalue { i64, i64 } %i.bz, 1      ; 3 uses
  %i.cd = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [3 x i8], ptr %2, i64 %i.cc ; 2 uses
  %i.cf = icmp eq i64 %i.cc, 0
  %.sroa.05.0 = select i1 %i.cf, i64 %i.h, i64 %i.bw ; 2 uses
  %i.cg = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cg, label %.lr.ph, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit, %bb.k
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.ci, align 8
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB1g_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2B_9StateData9can_errors_0E0EB2D_(ptr %2, i64 %1, ptr %0, ptr align 8 %4)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtNtB4_3ops5range14RangeInclusivehEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c) #9
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %.body
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.p:                                             ; preds = %bb.m, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cj, %bb.m ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.k, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit
  %.sroa.06.031 = phi i64 [ %i.cl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit ], [ %.sroa.0.0, %bb.k ] ; 4 uses
  %i.cl = add i64 %.sroa.06.031, 1                ; 2 uses
  %i.cm = getelementptr inbounds nuw [3 x i8], ptr %i.cd, i64 %.sroa.06.031
  %.idx = mul nuw nsw i64 %.sroa.06.031, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cn, ptr noundef nonnull align 1 dereferenceable(3) %i.cm, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -3 ; 4 uses
  %i.cp = invoke zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.cn, ptr nonnull %i.co) #8
          to label %.noexc unwind label %.loopexit30

.noexc:                                           ; preds = %.lr.ph
  br i1 %i.cp, label %bb.q, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit

bb.q:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %i.cn, i64 3, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.cn, ptr %i.bx, align 8
  store i64 1, ptr %i.by, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cn, ptr noundef nonnull align 1 dereferenceable(3) %i.co, i64 3, i1 false)
  store ptr %i.co, ptr %i.bx, align 8
  %i.cq = icmp eq i64 %.sroa.06.031, 1
  br i1 %i.cq, label %._crit_edge, label %.lr.ph34

bb.r:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cr, ptr noundef nonnull align 1 dereferenceable(3) %i.ct, i64 3, i1 false)
  store ptr %i.ct, ptr %i.bx, align 8
  %i.cs = icmp eq ptr %i.ct, %i.ce
  br i1 %i.cs, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.q, %bb.r
  %.sroa.0.0.i33 = phi ptr [ %i.ct, %bb.r ], [ %i.co, %bb.q ]
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i33, i64 -3 ; 5 uses
  %i.cu = invoke zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %4, ptr nonnull %i.b, ptr nonnull %i.ct)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %.lr.ph34
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtNtB4_3ops5range14RangeInclusivehEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #9
          to label %.body unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph34
  br i1 %i.cu, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.t, %bb.q
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtNtB4_3ops5range14RangeInclusivehEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit unwind label %.loopexit30

bb.u:                                             ; preds = %bb.s
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit: ; preds = %._crit_edge, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.cl, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit.backedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 7 uses
  %i.i = icmp ugt i64 %1, 7
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.j, ptr align 8 %0) #8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m) #8 ; 2 uses
  %i.o = zext i1 %i.k to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.q = xor i1 %i.k, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.t = select i1 %i.n, i64 3, i64 2
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.v = select i1 %i.n, i64 2, i64 3
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.v ; 3 uses
  %i.x = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.u, ptr align 8 %i.p) #8 ; 3 uses
  %i.y = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.w, ptr align 8 %i.s) #8 ; 3 uses
  %i.z = select i1 %i.x, ptr %i.u, ptr %i.p, !unpredictable !4
  %i.aa = select i1 %i.y, ptr %i.s, ptr %i.w, !unpredictable !4
  %i.ab = select i1 %i.y, ptr %i.u, ptr %i.s, !unpredictable !4
  %i.ac = select i1 %i.x, ptr %i.p, ptr %i.ab, !unpredictable !4 ; 3 uses
  %i.ad = select i1 %i.x, ptr %i.s, ptr %i.u, !unpredictable !4
  %i.ae = select i1 %i.y, ptr %i.w, ptr %i.ad, !unpredictable !4 ; 3 uses
  %i.af = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr align 8 %i.ae, ptr align 8 %i.ac) #8 ; 2 uses
  %i.ag = select i1 %i.af, ptr %i.ae, ptr %i.ac, !unpredictable !4
  %i.ah = select i1 %i.af, ptr %i.ac, ptr %i.ae, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ao = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.an, ptr align 8 %i.al) #8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ar = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq) #8 ; 2 uses
  %i.as = zext i1 %i.ao to i64
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.as ; 3 uses
  %i.au = xor i1 %i.ao, true
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.av ; 4 uses
  %i.ax = select i1 %i.ar, i64 3, i64 2
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ax ; 4 uses
  %i.az = select i1 %i.ar, i64 2, i64 3
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az ; 3 uses
  %i.bb = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ay, ptr align 8 %i.at) #8 ; 3 uses
  %i.bc = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ba, ptr align 8 %i.aw) #8 ; 3 uses
  %i.bd = select i1 %i.bb, ptr %i.ay, ptr %i.at, !unpredictable !4
  %i.be = select i1 %i.bc, ptr %i.aw, ptr %i.ba, !unpredictable !4
  %i.bf = select i1 %i.bc, ptr %i.ay, ptr %i.aw, !unpredictable !4
  %i.bg = select i1 %i.bb, ptr %i.at, ptr %i.bf, !unpredictable !4 ; 3 uses
  %i.bh = select i1 %i.bb, ptr %i.aw, ptr %i.ay, !unpredictable !4
  %i.bi = select i1 %i.bc, ptr %i.ba, ptr %i.bh, !unpredictable !4 ; 3 uses
  %i.bj = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr align 8 %i.bi, ptr align 8 %i.bg) #8 ; 2 uses
  %i.bk = select i1 %i.bj, ptr %i.bi, ptr %i.bg, !unpredictable !4
  %i.bl = select i1 %i.bj, ptr %i.bg, ptr %i.bi, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.h
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.br = sub i64 %1, %i.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.g
  %i.bu = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.h unwind label %.loopexit.split-lp ; 2 uses

.loopexit30:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit30, %.loopexit.split-lp, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %lpad.loopexit, %.loopexit30 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d) #9
          to label %bb.n unwind label %bb.m

bb.h:                                             ; preds = %.loopexit
  %i.bv = extractvalue { i64, i64 } %i.bu, 0
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = extractvalue { i64, i64 } %i.bu, 1      ; 3 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.bx ; 2 uses
  %i.ca = icmp eq i64 %i.bx, 0
  %.sroa.05.0 = select i1 %i.ca, i64 %i.h, i64 %i.br ; 2 uses
  %i.cb = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cb, label %.lr.ph, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.i
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.cd, align 8
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_(ptr align 8 %2, i64 %1, ptr %0, ptr %4)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorEEB1x_(ptr nonnull align 8 %i.c) #9
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.a
  ret void

bb.m:                                             ; preds = %bb.k, %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.n:                                             ; preds = %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ce, %bb.k ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.06.031 = phi i64 [ %i.cg, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.cg = add i64 %.sroa.06.031, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %.sroa.06.031
  %.idx = mul nuw nsw i64 %.sroa.06.031, 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24 ; 4 uses
  %i.ck = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.cj) #8
          to label %.noexc unwind label %.loopexit30

.noexc:                                           ; preds = %.lr.ph
  br i1 %i.ck, label %bb.o, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.o:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.ci, ptr %i.bs, align 8
  store i64 1, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  store ptr %i.cj, ptr %i.bs, align 8
  %i.cl = icmp eq i64 %.sroa.06.031, 1
  br i1 %i.cl, label %._crit_edge, label %.lr.ph34

bb.p:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.bs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  store ptr %i.co, ptr %i.bs, align 8
  %i.cn = icmp eq ptr %i.co, %i.bz
  br i1 %i.cn, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.o, %bb.p
  %.sroa.0.0.i33 = phi ptr [ %i.co, %bb.p ], [ %i.cj, %bb.o ]
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i33, i64 -24 ; 5 uses
  %i.cp = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.co)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %.lr.ph34
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorEEB1x_(ptr nonnull align 8 %i.a) #9
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph34
  br i1 %i.cp, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.r, %bb.o
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorEEB1x_(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit unwind label %.loopexit30

bb.s:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.cg, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit.backedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 11 uses
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %1, 7
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr [8 x i8], ptr %2, i64 %1   ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr %0, ptr %2, ptr nonnull %i.k, ptr %4)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.n = getelementptr i8, ptr %i.k, i64 64
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr %i.l, ptr %i.m, ptr %i.n, ptr %4)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.o, ptr align 8 %0) #8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r) #8 ; 2 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = xor i1 %i.p, true
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = select i1 %i.s, i64 3, i64 2
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.s, i64 2, i64 3
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 3 uses
  %i.ac = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.z, ptr align 8 %i.u) #8 ; 3 uses
  %i.ad = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ab, ptr align 8 %i.x) #8 ; 3 uses
  %i.ae = select i1 %i.ac, ptr %i.z, ptr %i.u, !unpredictable !4
  %i.af = select i1 %i.ad, ptr %i.x, ptr %i.ab, !unpredictable !4
  %i.ag = select i1 %i.ad, ptr %i.z, ptr %i.x, !unpredictable !4
  %i.ah = select i1 %i.ac, ptr %i.u, ptr %i.ag, !unpredictable !4 ; 3 uses
  %i.ai = select i1 %i.ac, ptr %i.x, ptr %i.z, !unpredictable !4
  %i.aj = select i1 %i.ad, ptr %i.ab, ptr %i.ai, !unpredictable !4 ; 3 uses
  %i.ak = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr align 8 %i.aj, ptr align 8 %i.ah) #8 ; 2 uses
  %i.al = select i1 %i.ak, ptr %i.aj, ptr %i.ah, !unpredictable !4
  %i.am = select i1 %i.ak, ptr %i.ah, ptr %i.aj, !unpredictable !4
  %i.an = load i64, ptr %i.ae, align 8
  store i64 %i.an, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.al, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.am, align 8
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load i64, ptr %i.af, align 8
  store i64 %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.aw, ptr align 8 %i.au) #8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.az) #8 ; 2 uses
  %i.bb = zext i1 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bb ; 3 uses
  %i.bd = xor i1 %i.ax, true
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.be ; 4 uses
  %i.bg = select i1 %i.ba, i64 3, i64 2
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.ba, i64 2, i64 3
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bi ; 3 uses
  %i.bk = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.bh, ptr align 8 %i.bc) #8 ; 3 uses
  %i.bl = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.bj, ptr align 8 %i.bf) #8 ; 3 uses
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bc, !unpredictable !4
  %i.bn = select i1 %i.bl, ptr %i.bf, ptr %i.bj, !unpredictable !4
  %i.bo = select i1 %i.bl, ptr %i.bh, ptr %i.bf, !unpredictable !4
  %i.bp = select i1 %i.bk, ptr %i.bc, ptr %i.bo, !unpredictable !4 ; 3 uses
  %i.bq = select i1 %i.bk, ptr %i.bf, ptr %i.bh, !unpredictable !4
  %i.br = select i1 %i.bl, ptr %i.bj, ptr %i.bq, !unpredictable !4 ; 3 uses
  %i.bs = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr align 8 %i.br, ptr align 8 %i.bp) #8 ; 2 uses
  %i.bt = select i1 %i.bs, ptr %i.br, ptr %i.bp, !unpredictable !4
  %i.bu = select i1 %i.bs, ptr %i.bp, ptr %i.br, !unpredictable !4
  %i.bv = load i64, ptr %i.bm, align 8
  store i64 %i.bv, ptr %i.av, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bx = load i64, ptr %i.bt, align 8
  store i64 %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bz = load i64, ptr %i.bu, align 8
  store i64 %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cb = load i64, ptr %i.bn, align 8
  store i64 %i.cb, ptr %i.ca, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cc = load i64, ptr %0, align 8
  store i64 %i.cc, ptr %2, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.cf = load i64, ptr %i.cd, align 8
  store i64 %i.cf, ptr %i.ce, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.cg = sub i64 %1, %i.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit33

.loopexit33:                                      ; preds = %.loopexit33.backedge, %bb.i
  %i.cj = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.j unwind label %.loopexit.split-lp35 ; 2 uses

.loopexit34:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp35:                             ; preds = %.loopexit33
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit34, %.loopexit.split-lp35, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ep, %bb.t ], [ %lpad.loopexit36, %.loopexit34 ], [ %lpad.loopexit.split-lp37, %.loopexit.split-lp35 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d) #9
          to label %bb.q unwind label %bb.p

bb.j:                                             ; preds = %.loopexit33
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %.lr.ph.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.cm = extractvalue { i64, i64 } %i.cj, 1      ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm ; 2 uses
  %i.cp = icmp eq i64 %i.cm, 0
  %.sroa.05.0 = select i1 %i.cp, i64 %i.h, i64 %i.cg ; 2 uses
  %i.cq = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cq, label %.lr.ph, label %.loopexit33.backedge

.loopexit33.backedge:                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.k
  br label %.loopexit33

.lr.ph.preheader.i:                               ; preds = %bb.j
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.cs, align 8
  %i.ct = add i64 %1, -1                          ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ct
  %i.cv = getelementptr [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc29
  %i.cy = getelementptr i8, ptr %i.dp, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.do, i64 8
  %i.da = and i64 %1, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.m, label %bb.l

.lr.ph.i:                                         ; preds = %.noexc29, %.lr.ph.preheader.i
  %.sroa.0.031.i = phi ptr [ %i.dg, %.noexc29 ], [ %0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.04.030.i = phi i64 [ %i.dc, %.noexc29 ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.06.029.i = phi ptr [ %i.dj, %.noexc29 ], [ %2, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.011.028.i = phi ptr [ %i.dl, %.noexc29 ], [ %i.cv, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.027.i = phi ptr [ %i.dp, %.noexc29 ], [ %i.cw, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.017.026.i = phi ptr [ %i.do, %.noexc29 ], [ %i.cu, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.019.025.i = phi ptr [ %i.dq, %.noexc29 ], [ %i.cx, %.lr.ph.preheader.i ] ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.04.030.i, 1      ; 2 uses
  %i.dd = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr align 8 %.sroa.011.028.i, ptr align 8 %.sroa.06.029.i) #8
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %..i21.i = select i1 %i.dd, ptr %.sroa.011.028.i, ptr %.sroa.06.029.i
  %i.de = load i64, ptr %..i21.i, align 8
  store i64 %i.de, ptr %.sroa.0.031.i, align 8
  %i.df = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr align 8 %.sroa.017.026.i, ptr align 8 %.sroa.015.027.i) #8
          to label %.noexc29 unwind label %.loopexit ; 3 uses

.noexc29:                                         ; preds = %.noexc
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 8 ; 2 uses
  %i.dh = xor i1 %i.dd, true
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.029.i, i64 %i.di ; 5 uses
  %i.dk = zext i1 %i.dd to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.028.i, i64 %i.dk ; 4 uses
  %..i.i = select i1 %i.df, ptr %.sroa.015.027.i, ptr %.sroa.017.026.i
  %i.dm = xor i1 %i.df, true
  %i.dn = load i64, ptr %..i.i, align 8
  store i64 %i.dn, ptr %.sroa.019.025.i, align 8
  %.neg.i.i = sext i1 %i.dm to i64
  %i.do = getelementptr [8 x i8], ptr %.sroa.017.026.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.df to i64
  %i.dp = getelementptr [8 x i8], ptr %.sroa.015.027.i, i64 %.neg13.i.i ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.019.025.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.dc, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.dr = icmp ult ptr %i.dj, %i.cy               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dr, ptr %i.dj, ptr %i.dl
  %i.ds = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8
  store i64 %i.ds, ptr %i.dg, align 8
  %i.dt = zext i1 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dt
  %i.dv = xor i1 %i.dr, true
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dw
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.dl, %._crit_edge.i ], [ %i.dx, %bb.l ]
  %.sroa.06.1.i = phi ptr [ %i.dj, %._crit_edge.i ], [ %i.du, %bb.l ]
  %i.dy = icmp ne ptr %.sroa.06.1.i, %i.cy
  %i.dz = icmp ne ptr %.sroa.011.1.i, %i.cz
  %or.cond.i = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond.i, label %bb.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.n
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB1x_(ptr nonnull align 8 %i.c) #9
          to label %bb.q unwind label %bb.p

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %bb.m, %bb.a
  ret void

bb.p:                                             ; preds = %bb.o, %.body
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.q:                                             ; preds = %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.phi, %bb.o ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.k, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.06.043 = phi i64 [ %i.eb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.0.0, %bb.k ] ; 4 uses
  %i.eb = add i64 %.sroa.06.043, 1                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.06.043
  %.idx = shl nuw nsw i64 %.sroa.06.043, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 6 uses
  %i.ee = load i64, ptr %i.ec, align 8
  store i64 %i.ee, ptr %i.ed, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 4 uses
  %i.eg = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.ef) #8
          to label %.noexc31 unwind label %.loopexit34

.noexc31:                                         ; preds = %.lr.ph
  br i1 %i.eg, label %bb.r, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.r:                                             ; preds = %.noexc31
  %i.eh = load i64, ptr %i.ed, align 8
  store i64 %i.eh, ptr %i.b, align 8
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.ed, ptr %i.ch, align 8
  store i64 1, ptr %i.ci, align 8
  %i.ei = load i64, ptr %i.ef, align 8
  store i64 %i.ei, ptr %i.ed, align 8
  store ptr %i.ef, ptr %i.ch, align 8
  %i.ej = icmp eq i64 %.sroa.06.043, 1
  br i1 %i.ej, label %._crit_edge, label %.lr.ph60

bb.s:                                             ; preds = %bb.u
  %i.ek = load ptr, ptr %i.ch, align 8
  %i.el = load i64, ptr %i.en, align 8
  store i64 %i.el, ptr %i.ek, align 8
  store ptr %i.en, ptr %i.ch, align 8
  %i.em = icmp eq ptr %i.en, %i.co
  br i1 %i.em, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.r, %bb.s
  %.sroa.0.0.i59 = phi ptr [ %i.en, %bb.s ], [ %i.ef, %bb.r ]
  %i.en = getelementptr inbounds i8, ptr %.sroa.0.0.i59, i64 -8 ; 5 uses
  %i.eo = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.en)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %.lr.ph60
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB1x_(ptr nonnull align 8 %i.a) #9
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %.lr.ph60
  br i1 %i.eo, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.u, %bb.r
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB1x_(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit unwind label %.loopexit34

bb.v:                                             ; preds = %bb.t
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.eb, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit33.backedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 11 uses
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %1, 7
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr [8 x i8], ptr %2, i64 %1   ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB19_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr %0, ptr %2, ptr nonnull %i.k, ptr %4)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.n = getelementptr i8, ptr %i.k, i64 64
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB19_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr %i.l, ptr %i.m, ptr %i.n, ptr %4)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.o, ptr align 8 %0) #8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r) #8 ; 2 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = xor i1 %i.p, true
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = select i1 %i.s, i64 3, i64 2
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.s, i64 2, i64 3
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 3 uses
  %i.ac = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.z, ptr align 8 %i.u) #8 ; 3 uses
  %i.ad = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.ab, ptr align 8 %i.x) #8 ; 3 uses
  %i.ae = select i1 %i.ac, ptr %i.z, ptr %i.u, !unpredictable !4
  %i.af = select i1 %i.ad, ptr %i.x, ptr %i.ab, !unpredictable !4
  %i.ag = select i1 %i.ad, ptr %i.z, ptr %i.x, !unpredictable !4
  %i.ah = select i1 %i.ac, ptr %i.u, ptr %i.ag, !unpredictable !4 ; 3 uses
  %i.ai = select i1 %i.ac, ptr %i.x, ptr %i.z, !unpredictable !4
  %i.aj = select i1 %i.ad, ptr %i.ab, ptr %i.ai, !unpredictable !4 ; 3 uses
  %i.ak = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr align 8 %i.aj, ptr align 8 %i.ah) #8 ; 2 uses
  %i.al = select i1 %i.ak, ptr %i.aj, ptr %i.ah, !unpredictable !4
  %i.am = select i1 %i.ak, ptr %i.ah, ptr %i.aj, !unpredictable !4
  %i.an = load i64, ptr %i.ae, align 8
  store i64 %i.an, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.al, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.am, align 8
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load i64, ptr %i.af, align 8
  store i64 %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.aw, ptr align 8 %i.au) #8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.az) #8 ; 2 uses
  %i.bb = zext i1 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bb ; 3 uses
  %i.bd = xor i1 %i.ax, true
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.be ; 4 uses
  %i.bg = select i1 %i.ba, i64 3, i64 2
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.ba, i64 2, i64 3
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bi ; 3 uses
  %i.bk = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.bh, ptr align 8 %i.bc) #8 ; 3 uses
  %i.bl = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.bj, ptr align 8 %i.bf) #8 ; 3 uses
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bc, !unpredictable !4
  %i.bn = select i1 %i.bl, ptr %i.bf, ptr %i.bj, !unpredictable !4
  %i.bo = select i1 %i.bl, ptr %i.bh, ptr %i.bf, !unpredictable !4
  %i.bp = select i1 %i.bk, ptr %i.bc, ptr %i.bo, !unpredictable !4 ; 3 uses
  %i.bq = select i1 %i.bk, ptr %i.bf, ptr %i.bh, !unpredictable !4
  %i.br = select i1 %i.bl, ptr %i.bj, ptr %i.bq, !unpredictable !4 ; 3 uses
  %i.bs = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr align 8 %i.br, ptr align 8 %i.bp) #8 ; 2 uses
  %i.bt = select i1 %i.bs, ptr %i.br, ptr %i.bp, !unpredictable !4
  %i.bu = select i1 %i.bs, ptr %i.bp, ptr %i.br, !unpredictable !4
  %i.bv = load i64, ptr %i.bm, align 8
  store i64 %i.bv, ptr %i.av, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bx = load i64, ptr %i.bt, align 8
  store i64 %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bz = load i64, ptr %i.bu, align 8
  store i64 %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cb = load i64, ptr %i.bn, align 8
  store i64 %i.cb, ptr %i.ca, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cc = load i64, ptr %0, align 8
  store i64 %i.cc, ptr %2, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.cf = load i64, ptr %i.cd, align 8
  store i64 %i.cf, ptr %i.ce, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.cg = sub i64 %1, %i.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit33

.loopexit33:                                      ; preds = %.loopexit33.backedge, %bb.i
  %i.cj = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.j unwind label %.loopexit.split-lp35 ; 2 uses

.loopexit34:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp35:                             ; preds = %.loopexit33
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit34, %.loopexit.split-lp35, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ep, %bb.t ], [ %lpad.loopexit36, %.loopexit34 ], [ %lpad.loopexit.split-lp37, %.loopexit.split-lp35 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d) #9
          to label %bb.q unwind label %bb.p

bb.j:                                             ; preds = %.loopexit33
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %.lr.ph.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.cm = extractvalue { i64, i64 } %i.cj, 1      ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm ; 2 uses
  %i.cp = icmp eq i64 %i.cm, 0
  %.sroa.05.0 = select i1 %i.cp, i64 %i.h, i64 %i.cg ; 2 uses
  %i.cq = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cq, label %.lr.ph, label %.loopexit33.backedge

.loopexit33.backedge:                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit, %bb.k
  br label %.loopexit33

.lr.ph.preheader.i:                               ; preds = %bb.j
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.cs, align 8
  %i.ct = add i64 %1, -1                          ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ct
  %i.cv = getelementptr [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc29
  %i.cy = getelementptr i8, ptr %i.dp, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.do, i64 8
  %i.da = and i64 %1, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.m, label %bb.l

.lr.ph.i:                                         ; preds = %.noexc29, %.lr.ph.preheader.i
  %.sroa.0.031.i = phi ptr [ %i.dg, %.noexc29 ], [ %0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.04.030.i = phi i64 [ %i.dc, %.noexc29 ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.06.029.i = phi ptr [ %i.dj, %.noexc29 ], [ %2, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.011.028.i = phi ptr [ %i.dl, %.noexc29 ], [ %i.cv, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.027.i = phi ptr [ %i.dp, %.noexc29 ], [ %i.cw, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.017.026.i = phi ptr [ %i.do, %.noexc29 ], [ %i.cu, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.019.025.i = phi ptr [ %i.dq, %.noexc29 ], [ %i.cx, %.lr.ph.preheader.i ] ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.04.030.i, 1      ; 2 uses
  %i.dd = invoke zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr align 8 %.sroa.011.028.i, ptr align 8 %.sroa.06.029.i) #8
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %..i21.i = select i1 %i.dd, ptr %.sroa.011.028.i, ptr %.sroa.06.029.i
  %i.de = load i64, ptr %..i21.i, align 8
  store i64 %i.de, ptr %.sroa.0.031.i, align 8
  %i.df = invoke zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr align 8 %.sroa.017.026.i, ptr align 8 %.sroa.015.027.i) #8
          to label %.noexc29 unwind label %.loopexit ; 3 uses

.noexc29:                                         ; preds = %.noexc
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 8 ; 2 uses
  %i.dh = xor i1 %i.dd, true
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.029.i, i64 %i.di ; 5 uses
  %i.dk = zext i1 %i.dd to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.028.i, i64 %i.dk ; 4 uses
  %..i.i = select i1 %i.df, ptr %.sroa.015.027.i, ptr %.sroa.017.026.i
  %i.dm = xor i1 %i.df, true
  %i.dn = load i64, ptr %..i.i, align 8
  store i64 %i.dn, ptr %.sroa.019.025.i, align 8
  %.neg.i.i = sext i1 %i.dm to i64
  %i.do = getelementptr [8 x i8], ptr %.sroa.017.026.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.df to i64
  %i.dp = getelementptr [8 x i8], ptr %.sroa.015.027.i, i64 %.neg13.i.i ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.019.025.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.dc, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.dr = icmp ult ptr %i.dj, %i.cy               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dr, ptr %i.dj, ptr %i.dl
  %i.ds = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8
  store i64 %i.ds, ptr %i.dg, align 8
  %i.dt = zext i1 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dt
  %i.dv = xor i1 %i.dr, true
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dw
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.dl, %._crit_edge.i ], [ %i.dx, %bb.l ]
  %.sroa.06.1.i = phi ptr [ %i.dj, %._crit_edge.i ], [ %i.du, %bb.l ]
  %i.dy = icmp ne ptr %.sroa.06.1.i, %i.cy
  %i.dz = icmp ne ptr %.sroa.011.1.i, %i.cz
  %or.cond.i = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond.i, label %bb.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.n
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropRNtCsgSMwPvzVUxY_11proc_macro25IdentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c) #9
          to label %bb.q unwind label %bb.p

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.m, %bb.a
  ret void

bb.p:                                             ; preds = %bb.o, %.body
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.q:                                             ; preds = %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.phi, %bb.o ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.k, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit
  %.sroa.06.043 = phi i64 [ %i.eb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit ], [ %.sroa.0.0, %bb.k ] ; 4 uses
  %i.eb = add i64 %.sroa.06.043, 1                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.06.043
  %.idx = shl nuw nsw i64 %.sroa.06.043, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 6 uses
  %i.ee = load i64, ptr %i.ec, align 8
  store i64 %i.ee, ptr %i.ed, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 4 uses
  %i.eg = invoke zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.ef) #8
          to label %.noexc31 unwind label %.loopexit34

.noexc31:                                         ; preds = %.lr.ph
  br i1 %i.eg, label %bb.r, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit

bb.r:                                             ; preds = %.noexc31
  %i.eh = load ptr, ptr %i.ed, align 8
  store ptr %i.eh, ptr %i.b, align 8
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.ed, ptr %i.ch, align 8
  store i64 1, ptr %i.ci, align 8
  %i.ei = load i64, ptr %i.ef, align 8
  store i64 %i.ei, ptr %i.ed, align 8
  store ptr %i.ef, ptr %i.ch, align 8
  %i.ej = icmp eq i64 %.sroa.06.043, 1
  br i1 %i.ej, label %._crit_edge, label %.lr.ph60

bb.s:                                             ; preds = %bb.u
  %i.ek = load ptr, ptr %i.ch, align 8
  %i.el = load i64, ptr %i.en, align 8
  store i64 %i.el, ptr %i.ek, align 8
  store ptr %i.en, ptr %i.ch, align 8
  %i.em = icmp eq ptr %i.en, %i.co
  br i1 %i.em, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.r, %bb.s
  %.sroa.0.0.i59 = phi ptr [ %i.en, %bb.s ], [ %i.ef, %bb.r ]
  %i.en = getelementptr inbounds i8, ptr %.sroa.0.0.i59, i64 -8 ; 5 uses
  %i.eo = invoke zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.en)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %.lr.ph60
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropRNtCsgSMwPvzVUxY_11proc_macro25IdentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #9
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %.lr.ph60
  br i1 %i.eo, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.u, %bb.r
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropRNtCsgSMwPvzVUxY_11proc_macro25IdentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit unwind label %.loopexit34

bb.v:                                             ; preds = %bb.t
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %._crit_edge, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.eb, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit33.backedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1v_5StateENCINvMB8_SB1s_20sort_unstable_by_keyB2g_NCNvMs1_B1v_NtB1v_9StateData16set_normal_edgess_0E0EB1x_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 7 uses
  %i.i = icmp ugt i64 %1, 7
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.j, ptr align 8 %0) #8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m) #8 ; 2 uses
  %i.o = zext i1 %i.k to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.q = xor i1 %i.k, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.t = select i1 %i.n, i64 3, i64 2
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.v = select i1 %i.n, i64 2, i64 3
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.v ; 3 uses
  %i.x = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.u, ptr align 8 %i.p) #8 ; 3 uses
  %i.y = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.w, ptr align 8 %i.s) #8 ; 3 uses
  %i.z = select i1 %i.x, ptr %i.u, ptr %i.p, !unpredictable !4
  %i.aa = select i1 %i.y, ptr %i.s, ptr %i.w, !unpredictable !4
  %i.ab = select i1 %i.y, ptr %i.u, ptr %i.s, !unpredictable !4
  %i.ac = select i1 %i.x, ptr %i.p, ptr %i.ab, !unpredictable !4 ; 3 uses
  %i.ad = select i1 %i.x, ptr %i.s, ptr %i.u, !unpredictable !4
  %i.ae = select i1 %i.y, ptr %i.w, ptr %i.ad, !unpredictable !4 ; 3 uses
  %i.af = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr align 8 %i.ae, ptr align 8 %i.ac) #8 ; 2 uses
  %i.ag = select i1 %i.af, ptr %i.ae, ptr %i.ac, !unpredictable !4
  %i.ah = select i1 %i.af, ptr %i.ac, ptr %i.ae, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.an, ptr align 8 %i.al) #8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ar = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq) #8 ; 2 uses
  %i.as = zext i1 %i.ao to i64
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.as ; 3 uses
  %i.au = xor i1 %i.ao, true
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.av ; 4 uses
  %i.ax = select i1 %i.ar, i64 3, i64 2
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ax ; 4 uses
  %i.az = select i1 %i.ar, i64 2, i64 3
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.az ; 3 uses
  %i.bb = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.ay, ptr align 8 %i.at) #8 ; 3 uses
  %i.bc = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.ba, ptr align 8 %i.aw) #8 ; 3 uses
  %i.bd = select i1 %i.bb, ptr %i.ay, ptr %i.at, !unpredictable !4
  %i.be = select i1 %i.bc, ptr %i.aw, ptr %i.ba, !unpredictable !4
  %i.bf = select i1 %i.bc, ptr %i.ay, ptr %i.aw, !unpredictable !4
  %i.bg = select i1 %i.bb, ptr %i.at, ptr %i.bf, !unpredictable !4 ; 3 uses
  %i.bh = select i1 %i.bb, ptr %i.aw, ptr %i.ay, !unpredictable !4
  %i.bi = select i1 %i.bc, ptr %i.ba, ptr %i.bh, !unpredictable !4 ; 3 uses
  %i.bj = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr align 8 %i.bi, ptr align 8 %i.bg) #8 ; 2 uses
  %i.bk = select i1 %i.bj, ptr %i.bi, ptr %i.bg, !unpredictable !4
  %i.bl = select i1 %i.bj, ptr %i.bg, ptr %i.bi, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.h
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.br = sub i64 %1, %i.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.g
  %i.bu = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.h unwind label %.loopexit.split-lp ; 2 uses

.loopexit30:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit30, %.loopexit.split-lp, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %lpad.loopexit, %.loopexit30 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d) #9
          to label %bb.n unwind label %bb.m

bb.h:                                             ; preds = %.loopexit
  %i.bv = extractvalue { i64, i64 } %i.bu, 0
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = extractvalue { i64, i64 } %i.bu, 1      ; 3 uses
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.bx ; 2 uses
  %i.ca = icmp eq i64 %i.bx, 0
  %.sroa.05.0 = select i1 %i.ca, i64 %i.h, i64 %i.br ; 2 uses
  %i.cb = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cb, label %.lr.ph, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1b_5StateENCINvMB8_SB18_20sort_unstable_by_keyB1W_NCNvMs1_B1b_NtB1b_9StateData16set_normal_edgess_0E0EB1d_.exit, %bb.i
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.cd, align 8
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1j_5StateENCINvMB8_SB1g_20sort_unstable_by_keyB24_NCNvMs1_B1j_NtB1j_9StateData16set_normal_edgess_0E0EB1l_(ptr align 8 %2, i64 %1, ptr %0, ptr align 8 %4)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1w_5StateEEEB1y_(ptr nonnull align 8 %i.c) #9
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.a
  ret void

bb.m:                                             ; preds = %bb.k, %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.n:                                             ; preds = %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ce, %bb.k ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1b_5StateENCINvMB8_SB18_20sort_unstable_by_keyB1W_NCNvMs1_B1b_NtB1b_9StateData16set_normal_edgess_0E0EB1d_.exit
  %.sroa.06.031 = phi i64 [ %i.cg, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1b_5StateENCINvMB8_SB18_20sort_unstable_by_keyB1W_NCNvMs1_B1b_NtB1b_9StateData16set_normal_edgess_0E0EB1d_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.cg = add i64 %.sroa.06.031, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.sroa.06.031
  %.idx = shl nuw nsw i64 %.sroa.06.031, 5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -32 ; 4 uses
  %i.ck = invoke zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.cj) #8
          to label %.noexc unwind label %.loopexit30

.noexc:                                           ; preds = %.lr.ph
  br i1 %i.ck, label %bb.o, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1b_5StateENCINvMB8_SB18_20sort_unstable_by_keyB1W_NCNvMs1_B1b_NtB1b_9StateData16set_normal_edgess_0E0EB1d_.exit

bb.o:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 32, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.ci, ptr %i.bs, align 8
  store i64 1, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 32, i1 false)
  store ptr %i.cj, ptr %i.bs, align 8
  %i.cl = icmp eq i64 %.sroa.06.031, 1
  br i1 %i.cl, label %._crit_edge, label %.lr.ph34

bb.p:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.bs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.co, i64 32, i1 false)
  store ptr %i.co, ptr %i.bs, align 8
  %i.cn = icmp eq ptr %i.co, %i.bz
  br i1 %i.cn, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.o, %bb.p
  %.sroa.0.0.i33 = phi ptr [ %i.co, %bb.p ], [ %i.cj, %bb.o ]
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i33, i64 -32 ; 5 uses
  %i.cp = invoke zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.co)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %.lr.ph34
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1w_5StateEEEB1y_(ptr nonnull align 8 %i.a) #9
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph34
  br i1 %i.cp, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.r, %bb.o
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1w_5StateEEEB1y_(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1b_5StateENCINvMB8_SB18_20sort_unstable_by_keyB1W_NCNvMs1_B1b_NtB1b_9StateData16set_normal_edgess_0E0EB1d_.exit unwind label %.loopexit30

bb.s:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1b_5StateENCINvMB8_SB18_20sort_unstable_by_keyB1W_NCNvMs1_B1b_NtB1b_9StateData16set_normal_edgess_0E0EB1d_.exit: ; preds = %._crit_edge, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.cg, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit.backedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRAbj100_RjENCINvMB8_SB1s_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2k_9Generator11render_luts0E0EB2m_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 9 uses
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %1, 7
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr [16 x i8], ptr %2, i64 %1  ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableTRAbj100_RjENCINvMB8_SB19_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB21_9Generator11render_luts0E0EB23_(ptr %0, ptr %2, ptr nonnull %i.k, ptr align 8 %4)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.h
  %i.n = getelementptr i8, ptr %i.k, i64 128
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableTRAbj100_RjENCINvMB8_SB19_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB21_9Generator11render_luts0E0EB23_(ptr %i.l, ptr %i.m, ptr %i.n, ptr align 8 %4)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.o, ptr align 8 %0) #8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r) #8 ; 2 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = xor i1 %i.p, true
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = select i1 %i.s, i64 3, i64 2
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.s, i64 2, i64 3
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 3 uses
  %i.ac = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.z, ptr align 8 %i.u) #8 ; 3 uses
  %i.ad = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.ab, ptr align 8 %i.x) #8 ; 3 uses
  %i.ae = select i1 %i.ac, ptr %i.z, ptr %i.u, !unpredictable !4
  %i.af = select i1 %i.ad, ptr %i.x, ptr %i.ab, !unpredictable !4
  %i.ag = select i1 %i.ad, ptr %i.z, ptr %i.x, !unpredictable !4
  %i.ah = select i1 %i.ac, ptr %i.u, ptr %i.ag, !unpredictable !4 ; 3 uses
  %i.ai = select i1 %i.ac, ptr %i.x, ptr %i.z, !unpredictable !4
  %i.aj = select i1 %i.ad, ptr %i.ab, ptr %i.ai, !unpredictable !4 ; 3 uses
  %i.ak = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr align 8 %i.aj, ptr align 8 %i.ah) #8 ; 2 uses
  %i.al = select i1 %i.ak, ptr %i.aj, ptr %i.ah, !unpredictable !4
  %i.am = select i1 %i.ak, ptr %i.ah, ptr %i.aj, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.as, ptr align 8 %i.aq) #8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.aw = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.av) #8 ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %i.bg = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.bd, ptr align 8 %i.ay) #8 ; 3 uses
  %i.bh = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.bf, ptr align 8 %i.bb) #8 ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !4
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !4
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !4
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !4 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !4
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !4 ; 3 uses
  %i.bo = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr align 8 %i.bn, ptr align 8 %i.bl) #8 ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.bw = sub i64 %1, %i.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.i
  %i.bz = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.j unwind label %.loopexit.split-lp ; 2 uses

.loopexit30:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit30, %.loopexit.split-lp, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.cw, %bb.s ], [ %lpad.loopexit, %.loopexit30 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d) #9
          to label %bb.p unwind label %bb.o

bb.j:                                             ; preds = %.loopexit
  %i.ca = extractvalue { i64, i64 } %i.bz, 0
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = extractvalue { i64, i64 } %i.bz, 1      ; 3 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cc ; 2 uses
  %i.cf = icmp eq i64 %i.cc, 0
  %.sroa.05.0 = select i1 %i.cf, i64 %i.h, i64 %i.bw ; 2 uses
  %i.cg = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cg, label %.lr.ph, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit, %bb.k
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.ci, align 8
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTRAbj100_RjENCINvMB8_SB1g_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB28_9Generator11render_luts0E0EB2a_(ptr align 8 %2, i64 %1, ptr %0, ptr align 8 %4)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRAbj100_RjEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c) #9
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %.body
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.p:                                             ; preds = %bb.m, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cj, %bb.m ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.k, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit
  %.sroa.06.031 = phi i64 [ %i.cl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit ], [ %.sroa.0.0, %bb.k ] ; 4 uses
  %i.cl = add i64 %.sroa.06.031, 1                ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.06.031
  %.idx = shl nuw nsw i64 %.sroa.06.031, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -16 ; 4 uses
  %i.cp = invoke zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.co) #8
          to label %.noexc unwind label %.loopexit30

.noexc:                                           ; preds = %.lr.ph
  br i1 %i.cp, label %bb.q, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit

bb.q:                                             ; preds = %.noexc
  %i.cq = load <2 x ptr>, ptr %i.cn, align 8
  store <2 x ptr> %i.cq, ptr %i.b, align 16
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.cn, ptr %i.bx, align 8
  store i64 1, ptr %i.by, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false)
  store ptr %i.co, ptr %i.bx, align 8
  %i.cr = icmp eq i64 %.sroa.06.031, 1
  br i1 %i.cr, label %._crit_edge, label %.lr.ph34

bb.r:                                             ; preds = %bb.t
  %i.cs = load ptr, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false)
  store ptr %i.cu, ptr %i.bx, align 8
  %i.ct = icmp eq ptr %i.cu, %i.ce
  br i1 %i.ct, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.q, %bb.r
  %.sroa.0.0.i33 = phi ptr [ %i.cu, %bb.r ], [ %i.co, %bb.q ]
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.0.i33, i64 -16 ; 5 uses
  %i.cv = invoke zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %4, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.cu)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %.lr.ph34
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRAbj100_RjEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #9
          to label %.body unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph34
  br i1 %i.cv, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.t, %bb.q
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRAbj100_RjEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit unwind label %.loopexit30

bb.u:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTRAbj100_RjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB20_9Generator11render_luts0E0EB22_.exit: ; preds = %._crit_edge, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.cl, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit.backedge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtNtBd_3ops5range14RangeInclusivehEENtNtB1l_4drop4Drop4dropCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = mul nuw nsw i64 %i.e, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.a, i64 %i.f, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorENtNtNtBd_3ops4drop4Drop4dropB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = mul nuw nsw i64 %i.e, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %i.a, i64 %i.f, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtNtBd_3ops4drop4Drop4dropB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %i.a, i64 %i.f, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropRNtCsgSMwPvzVUxY_11proc_macro25IdentENtNtNtBd_3ops4drop4Drop4dropCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %i.a, i64 %i.f, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1j_5StateEENtNtNtBd_3ops4drop4Drop4dropB1l_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl nuw nsw i64 %i.e, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %i.a, i64 %i.f, i1 false)
  ret void
}

end_hunk_0
