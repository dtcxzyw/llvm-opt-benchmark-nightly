Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.10?download=true
inline.NumInlined: 1195
inline.NumDeleted: 457
begin_hunk_0_@_RNvNtCsluMP4ekZjHw_14diesel_derives17queryable_by_name6derive:bb.a
  store ptr %.val, ptr %i.ac, align 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ds, ptr %.sroa.031.sroa.4.0..sroa_idx, align 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.031.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.af, ptr %.sroa.031.sroa.6.0..sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr null, ptr %.sroa.634.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.cv unwind label %.thread154

bb.cu:                                            ; preds = %bb.cw
  br i1 %.sroa.024.1, label %bb.et, label %.body118

.thread154:                                       ; preds = %bb.ct
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.cv:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 2)
          to label %bb.cy unwind label %bb.cx

bb.cw:                                            ; preds = %.body106, %bb.cx
  %.sroa.024.1 = phi i1 [ false, %.body106 ], [ %.sroa.024.2, %bb.cx ]
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %.body106 ], [ %i.du, %bb.cx ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.ab) #26
          to label %bb.cu unwind label %bb.bv

bb.cx:                                            ; preds = %bb.eg, %bb.ef, %.loopexit184, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cv
  %.sroa.024.2 = phi i1 [ false, %bb.eg ], [ false, %bb.ef ], [ false, %.loopexit184 ], [ true, %bb.db ], [ true, %bb.da ], [ true, %bb.cz ], [ true, %bb.cy ], [ true, %bb.cv ]
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cy:                                            ; preds = %bb.cv
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 26)
          to label %bb.cz unwind label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.da unwind label %bb.cx

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.db unwind label %bb.cx

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 5)
          to label %bb.dc unwind label %bb.cx

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false)
  invoke void @_RNvXs0_NtCsa66IwKi6YE3_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %.preheader180 unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader180:                                    ; preds = %bb.dc
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 5 uses
  %.sroa.8147.0..sroa_idx148166 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 6 uses
  br label %bb.dd

.body106:                                         ; preds = %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eo, %bb.ep, %.body.i.i, %bb.dr, %.body.i14.i, %.body.i104, %bb.ej
  %.pn69 = phi { ptr, i32 } [ %i.gp, %bb.ej ], [ %i.gi, %.body.i14.i ], [ %i.gr, %bb.eo ], [ %i.ft, %.body.i104 ], [ %i.fl, %bb.dr ], [ %i.eo, %.body.i.i ], [ %i.gr, %bb.ep ], [ %lpad.loopexit.split-lp300, %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB27_17queryable_by_name6derives0_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_ENCB2Q_s1_0EEB27_(ptr noalias noundef align 8 dereferenceable(64) %i.z) #26
          to label %bb.cw unwind label %bb.bv

.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dp, %bb.df, %bb.er, %bb.em, %bb.dx, %bb.dc
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  br label %.body106

bb.dd:                                            ; preds = %.preheader180, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsa66IwKi6YE3_5quote9___private9RepInterpNtCsf5uYjtxkodL_11proc_macro211TokenStreamEECsluMP4ekZjHw_14diesel_derives.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8147)
  call void @llvm.experimental.noalias.scope.decl(metadata !3797)
  %.pre.i = load ptr, ptr %i.dv, align 8, !alias.scope !3798 ; 2 uses
  %i.ef = icmp eq ptr %.pre.i, null
  br label %bb.de

bb.de:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.dd
  %.val.i103244 = phi ptr [ %.sroa.0.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEECsluMP4ekZjHw_14diesel_derives.exit.i ], [ %.pre.i, %bb.dd ]
  %.not.i.i = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEECsluMP4ekZjHw_14diesel_derives.exit.i ], [ %i.ef, %bb.dd ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3799)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3800
  br i1 %.not.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro211TokenStreamEECsluMP4ekZjHw_14diesel_derives.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EBM_4nextCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dv)
          to label %.noexc105 unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.df
  %i.eg = load i64, ptr %i.c, align 8, !range !24, !noalias !3800, !noundef !12 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.eg, -2
  br i1 %.not3.i.i, label %bb.dg, label %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB2h_17queryable_by_name6derives0_0ENCB30_s1_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEB4o_4nextB2h_.exit.thread

bb.dg:                                            ; preds = %.noexc105
  %.val.i.i102 = load ptr, ptr %i.dv, align 8, !alias.scope !3798, !noundef !12 ; 4 uses
  %.val4.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !3798 ; 6 uses
  %i.eh = icmp eq ptr %.val.i.i102, null
  br i1 %i.eh, label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EB2k_NvYB16_B1G_4nextECsluMP4ekZjHw_14diesel_derives.exit.thread47.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.ei = load ptr, ptr %.val4.i.i, align 8, !invariant.load !12, !noalias !3801 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  invoke void %i.ei(ptr noundef nonnull %.val.i.i102)
          to label %bb.dj unwind label %bb.dk, !noalias !3801

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ej = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !range !13, !invariant.load !12, !noalias !3801 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EB2k_NvYB16_B1G_4nextECsluMP4ekZjHw_14diesel_derives.exit.thread47.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.dj
  %i.em = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.en = load i64, ptr %i.em, align 8, !range !14, !invariant.load !12, !noalias !3801
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i102, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) %i.en) #24, !noalias !3801
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EB2k_NvYB16_B1G_4nextECsluMP4ekZjHw_14diesel_derives.exit.thread47.i

bb.dk:                                            ; preds = %bb.di
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !range !13, !invariant.load !12, !noalias !3801 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.body.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.dk
  %i.es = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.et = load i64, ptr %i.es, align 8, !range !14, !invariant.load !12, !noalias !3801
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i102, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) %i.et) #24, !noalias !3801
  br label %.body.i.i

.body.i.i:                                        ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.dk
  store ptr null, ptr %i.dv, align 8, !alias.scope !3798
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro211TokenStreamEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.c) #26
          to label %.body106 unwind label %bb.dl, !noalias !3801

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EB2k_NvYB16_B1G_4nextECsluMP4ekZjHw_14diesel_derives.exit.thread47.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.dj, %bb.dg
  store ptr null, ptr %i.dv, align 8, !alias.scope !3798
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro211TokenStreamEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.dl:                                            ; preds = %.body.i.i
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3801
  unreachable

_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB2h_17queryable_by_name6derives0_0ENCB30_s1_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEB4o_4nextB2h_.exit.thread: ; preds = %.noexc105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8147, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx34.i, i64 24, i1 false), !noalias !3797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3800
  br label %bb.ee

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro211TokenStreamEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EB2k_NvYB16_B1G_4nextECsluMP4ekZjHw_14diesel_derives.exit.thread47.i, %bb.de
  %.val.i103243 = phi ptr [ null, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EB2k_NvYB16_B1G_4nextECsluMP4ekZjHw_14diesel_derives.exit.thread47.i ], [ %.val.i103244, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3800
  call void @llvm.experimental.noalias.scope.decl(metadata !3802)
  %i.ev = load ptr, ptr %i.z, align 8, !alias.scope !3803, !noundef !12 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.ev, null
  br i1 %.not.i7.i, label %.loopexit.i, label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro211TokenStreamEECsluMP4ekZjHw_14diesel_derives.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3804)
  call void @llvm.experimental.noalias.scope.decl(metadata !3805)
  call void @llvm.experimental.noalias.scope.decl(metadata !3806)
  %i.ew = load ptr, ptr %i.dx, align 8, !alias.scope !3807, !nonnull !12, !noundef !12
  br label %bb.dn

bb.dn:                                            ; preds = %bb.do, %bb.dm
  %i.ex = phi ptr [ %i.ez, %bb.do ], [ %i.ev, %bb.dm ] ; 4 uses
  %i.ey = icmp eq ptr %i.ex, %i.ew
  br i1 %i.ey, label %.loopexit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 1464 ; 2 uses
  store ptr %i.ez, ptr %i.z, align 8, !alias.scope !3807
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 1432
  %i.fb = load i8, ptr %i.fa, align 8, !range !21, !noalias !3808, !noundef !12
  %2 = and i8 %i.fb, 1
  %.sroa.0.0.i.i.i.i.i.i.i = icmp eq i8 %2, 0
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB1w_17queryable_by_name6derives0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i, label %bb.dn

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB1w_17queryable_by_name6derives0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i: ; preds = %bb.do
  %.val.i.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !3809, !nonnull !12, !align !15, !noundef !12
  %i.fc = load ptr, ptr %.val.i.i.i, align 8, !noalias !3810, !nonnull !12, !align !15, !noundef !12 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !range !25, !noalias !3810, !noundef !12
  %i.fe = icmp eq i64 %i.fd, -1
  br i1 %i.fe, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB1w_17queryable_by_name6derives0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i
  %.val3.i.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !3809 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3811
  %i.ff = invoke { ptr, ptr } @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty8TypePathNtNtB4_5token5CommaE4iterCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fc)
          to label %.noexc108 unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc108:                                        ; preds = %bb.dp
  %i.fg = extractvalue { ptr, ptr } %i.ff, 0
  %i.fh = extractvalue { ptr, ptr } %i.ff, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i) ]
  %i.fi = load ptr, ptr %.val3.i.i.i, align 8, !noalias !3810, !nonnull !12, !align !15, !noundef !12
  store ptr %i.fg, ptr %i.b, align 8, !noalias !3811
  store ptr %i.fh, ptr %i.ea, align 8, !noalias !3811
  store ptr %i.ex, ptr %i.eb, align 8, !noalias !3811
  store ptr %i.fi, ptr %i.ec, align 8, !noalias !3811
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3812
  %i.fj = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !3812 ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.dq, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1x_2ty8TypePathENCNCNvNtCsluMP4ekZjHw_14diesel_derives17queryable_by_name6derives1_00EE3newB2z_.exit.i.i.i.i, !prof !3813

bb.dq:                                            ; preds = %.noexc108
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc.i.i.i.i unwind label %bb.dr, !noalias !3814

.noexc.i.i.i.i:                                   ; preds = %bb.dq
  unreachable

bb.dr:                                            ; preds = %bb.dq
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1e_2ty8TypePathENCNCNvNtCsluMP4ekZjHw_14diesel_derives17queryable_by_name6derives1_00EEB2g_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #26, !noalias !3814
  br label %.body106

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1x_2ty8TypePathENCNCNvNtCsluMP4ekZjHw_14diesel_derives17queryable_by_name6derives1_00EE3newB2z_.exit.i.i.i.i: ; preds = %.noexc108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !3814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3811
  %.val.i103.pre = load ptr, ptr %i.dv, align 8, !alias.scope !3797
  br label %bb.ds

bb.ds:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1x_2ty8TypePathENCNCNvNtCsluMP4ekZjHw_14diesel_derives17queryable_by_name6derives1_00EE3newB2z_.exit.i.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB1w_17queryable_by_name6derives0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i
  %.val.i103 = phi ptr [ %.val.i103.pre, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1x_2ty8TypePathENCNCNvNtCsluMP4ekZjHw_14diesel_derives17queryable_by_name6derives1_00EE3newB2z_.exit.i.i.i.i ], [ %.val.i103243, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB1w_17queryable_by_name6derives0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ] ; 4 uses
  %.sroa.3.0.i.i = phi ptr [ @42, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1x_2ty8TypePathENCNCNvNtCsluMP4ekZjHw_14diesel_derives17queryable_by_name6derives1_00EE3newB2z_.exit.i.i.i.i ], [ @43, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB1w_17queryable_by_name6derives0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.fj, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1x_2ty8TypePathENCNCNvNtCsluMP4ekZjHw_14diesel_derives17queryable_by_name6derives1_00EE3newB2z_.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB1w_17queryable_by_name6derives0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ] ; 3 uses
  %.val6.i = load ptr, ptr %i.dw, align 8, !alias.scope !3797 ; 6 uses
  %i.fm = icmp eq ptr %.val.i103, null
  br i1 %i.fm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEECsluMP4ekZjHw_14diesel_derives.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i) ]
  %i.fn = load ptr, ptr %.val6.i, align 8, !invariant.load !12, !noalias !3815 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  invoke void %i.fn(ptr noundef nonnull %.val.i103)
          to label %bb.dv unwind label %bb.dw, !noalias !3815

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.fo = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !range !13, !invariant.load !12, !noalias !3815 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEECsluMP4ekZjHw_14diesel_derives.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.dv
  %i.fr = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !range !14, !invariant.load !12, !noalias !3815
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i103, i64 noundef %i.fp, i64 noundef range(i64 1, -9223372036854775807) %i.fs) #24, !noalias !3815
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.dw:                                            ; preds = %bb.du
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !range !13, !invariant.load !12, !noalias !3815 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %.body.i104, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.dw
  %i.fx = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !range !14, !invariant.load !12, !noalias !3815
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i103, i64 noundef %i.fv, i64 noundef range(i64 1, -9223372036854775807) %i.fy) #24, !noalias !3815
  br label %.body.i104

.loopexit.i:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro211TokenStreamEECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !3816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3817
  %i.fz = load ptr, ptr %i.ed, align 8, !alias.scope !3818, !noundef !12
  %.not.i8.i = icmp eq ptr %i.fz, null
  br i1 %.not.i8.i, label %.loopexit184, label %bb.dx

bb.dx:                                            ; preds = %.loopexit.i
  invoke void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EBM_4nextCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ed)
          to label %.noexc109 unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %bb.dx
  %i.ga = load i64, ptr %i.a, align 8, !noalias !3818 ; 2 uses
  %.not3.i9.i = icmp eq i64 %i.ga, -2
  br i1 %.not3.i9.i, label %bb.dy, label %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB2h_17queryable_by_name6derives0_0ENCB30_s1_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEB4o_4nextB2h_.exit.thread164

_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB2h_17queryable_by_name6derives0_0ENCB30_s1_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEB4o_4nextB2h_.exit.thread164: ; preds = %.noexc109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8147, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8147.0..sroa_idx148166, i64 24, i1 false), !noalias !3818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3817
  br label %bb.ee

bb.dy:                                            ; preds = %.noexc109
  %.val.i10.i = load ptr, ptr %i.ed, align 8, !alias.scope !3818, !noundef !12 ; 4 uses
  %.val4.i11.i = load ptr, ptr %i.ee, align 8, !alias.scope !3818 ; 6 uses
  %i.gb = icmp eq ptr %.val.i10.i, null
  br i1 %i.gb, label %.loopexit184.loopexit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i11.i) ]
  %i.gc = load ptr, ptr %.val4.i11.i, align 8, !invariant.load !12, !noalias !3819 ; 2 uses
  %.not.i.i.i12.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i12.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  invoke void %i.gc(ptr noundef nonnull %.val.i10.i)
          to label %bb.eb unwind label %bb.ec, !noalias !3819

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.gd = getelementptr inbounds nuw i8, ptr %.val4.i11.i, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !13, !invariant.load !12, !noalias !3819 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %.loopexit184.loopexit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i: ; preds = %bb.eb
  %i.gg = getelementptr inbounds nuw i8, ptr %.val4.i11.i, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !range !14, !invariant.load !12, !noalias !3819
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) %i.gh) #24, !noalias !3819
  br label %.loopexit184.loopexit

bb.ec:                                            ; preds = %bb.ea
  %i.gi = landingpad { ptr, i32 }
          cleanup
  %i.gj = getelementptr inbounds nuw i8, ptr %.val4.i11.i, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !range !13, !invariant.load !12, !noalias !3819 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %.body.i14.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i13.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i13.i: ; preds = %bb.ec
  %i.gm = getelementptr inbounds nuw i8, ptr %.val4.i11.i, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !range !14, !invariant.load !12, !noalias !3819
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i, i64 noundef %i.gk, i64 noundef range(i64 1, -9223372036854775807) %i.gn) #24, !noalias !3819
  br label %.body.i14.i

.body.i14.i:                                      ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i13.i, %bb.ec
  store ptr null, ptr %i.ed, align 8, !alias.scope !3818
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro211TokenStreamEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.a) #26
          to label %.body106 unwind label %bb.ed, !noalias !3819

bb.ed:                                            ; preds = %.body.i14.i
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3819
  unreachable

.body.i104:                                       ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.dw
  store ptr %.sroa.0.0.i.i, ptr %i.dv, align 8, !alias.scope !3797
  store ptr %.sroa.3.0.i.i, ptr %i.dw, align 8, !alias.scope !3797
  br label %.body106

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.dv, %bb.ds
  store ptr %.sroa.0.0.i.i, ptr %i.dv, align 8, !alias.scope !3797
  store ptr %.sroa.3.0.i.i, ptr %i.dw, align 8, !alias.scope !3797
  br label %bb.de

bb.ee:                                            ; preds = %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB2h_17queryable_by_name6derives0_0ENCB30_s1_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEB4o_4nextB2h_.exit.thread164, %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB2h_17queryable_by_name6derives0_0ENCB30_s1_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEB4o_4nextB2h_.exit.thread
  %.sroa.0145.1160 = phi i64 [ %i.eg, %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB2h_17queryable_by_name6derives0_0ENCB30_s1_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEB4o_4nextB2h_.exit.thread ], [ %i.ga, %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB2h_17queryable_by_name6derives0_0ENCB30_s1_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_EEB4o_4nextB2h_.exit.thread164 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4150.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8147, i64 24, i1 false)
  store i64 %.sroa.0145.1160, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8147)
  invoke void @_RNvXsu_NtCsa66IwKi6YE3_5quote9to_tokensNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.ek unwind label %bb.ej

.loopexit184.loopexit:                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i, %bb.eb, %bb.dy
  store ptr null, ptr %i.ed, align 8, !alias.scope !3818
  br label %.loopexit184

.loopexit184:                                     ; preds = %.loopexit.i, %.loopexit184.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3817
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8147)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCsluMP4ekZjHw_14diesel_derives5field5FieldENCNvNtB27_17queryable_by_name6derives0_0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemNtCsf5uYjtxkodL_11proc_macro211TokenStreamEL_ENCB2Q_s1_0EEB27_(ptr noalias noundef align 8 dereferenceable(64) %i.z)
          to label %bb.ef unwind label %bb.cx

bb.ef:                                            ; preds = %.loopexit184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.eg unwind label %bb.cx

end_hunk_0
