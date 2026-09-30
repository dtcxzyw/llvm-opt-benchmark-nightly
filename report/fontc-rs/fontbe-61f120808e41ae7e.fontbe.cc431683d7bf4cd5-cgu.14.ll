Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.14?download=true
inline.NumInlined: 2070
inline.NumDeleted: 814
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehReECshxhuDJfZv4T_6fontbe:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.4320, i64 16 ; 2 uses
  %.sroa.012.4.val = load ptr, ptr %.sroa.012.4320, align 8, !nonnull !5, !noundef !5
  %i.bp = getelementptr i8, ptr %.sroa.012.4320, i64 8
  %.sroa.012.4.val77 = load i64, ptr %i.bp, align 8, !noundef !5 ; 5 uses
  %.not.i122 = icmp ult i64 %.sroa.26.5318, 4
  br i1 %.not.i122, label %.invoke, label %bb.p, !prof !12

bb.p:                                             ; preds = %.lr.ph321
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.035.5319, i64 4 ; 2 uses
  %i.br = add nsw i64 %.sroa.26.5318, -4          ; 2 uses
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull %.sroa.035.5319, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.q:                                             ; preds = %bb.p
  %.not.i128 = icmp ugt i64 %.sroa.012.4.val77, %i.br
  br i1 %.not.i128, label %.invoke, label %bb.r, !prof !12

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull %i.bq, i64 noundef %.sroa.012.4.val77, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.4.val, i64 noundef %.sroa.012.4.val77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %.preheader215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader:                                       ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.012.5.val76
  %i.bt = sub nuw nsw i64 %i.by, %.sroa.012.5.val76 ; 2 uses
  %i.bu = icmp eq ptr %i.bv, %i.c
  br i1 %i.bu, label %.loopexit, label %.lr.ph346

.lr.ph346:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.012.5345 = phi ptr [ %i.bv, %.preheader ], [ %i.e, %.preheader.preheader ] ; 3 uses
  %.sroa.035.6344 = phi ptr [ %i.bs, %.preheader ], [ %i.ah, %.preheader.preheader ] ; 2 uses
  %.sroa.26.6343 = phi i64 [ %i.bt, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.5345, i64 16 ; 2 uses
  %.sroa.012.5.val = load ptr, ptr %.sroa.012.5345, align 8, !nonnull !5, !noundef !5
  %i.bw = getelementptr i8, ptr %.sroa.012.5345, i64 8
  %.sroa.012.5.val76 = load i64, ptr %i.bw, align 8, !noundef !5 ; 5 uses
  %.not.i134 = icmp ugt i64 %4, %.sroa.26.6343
  br i1 %.not.i134, label %.invoke, label %bb.s, !prof !12

bb.s:                                             ; preds = %.lr.ph346
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.035.6344, i64 %4 ; 2 uses
  %i.by = sub nuw nsw i64 %.sroa.26.6343, %4      ; 2 uses
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull %.sroa.035.6344, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.t unwind label %.loopexit196

bb.t:                                             ; preds = %bb.s
  %.not.i140 = icmp ugt i64 %.sroa.012.5.val76, %i.by
  br i1 %.not.i140, label %.invoke, label %bb.u, !prof !12

.invoke:                                          ; preds = %bb.q, %.lr.ph321, %bb.n, %.lr.ph326, %bb.k, %.lr.ph331, %bb.h, %.lr.ph336, %bb.e, %bb.t, %.lr.ph346
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull %i.bx, i64 noundef %.sroa.012.5.val76, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.5.val, i64 noundef %.sroa.012.5.val76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %.preheader unwind label %.loopexit196

bb.v:                                             ; preds = %bb.y, %.loopexit
  ret void

bb.w:                                             ; preds = %.loopexit.split-lp
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.x:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

bb.y:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cb, align 8
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range11alpha_rangeNCNvMNtB4_11compile_ctxINtB14_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0EB2u_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.d, align 8, !range !24, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !29, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %1, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.i, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = icmp ult i64 %4, %1
  br i1 %i.n, label %bb.f, label %.invoke

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ult i64 %4, %3
  br i1 %i.o, label %bb.k, label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.f
  %i.p = phi i64 [ %3, %bb.f ], [ %1, %bb.d ]
  %i.q = phi ptr [ @20, %bb.f ], [ @19, %bb.d ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %bb.r, %bb.t, %.split.i, %.noexc19
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.invoke, %.split, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.u

bb.j:                                             ; preds = %.split
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.u = load i8, ptr %i.t, align 1, !noundef !5  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %4
  %i.w = load i8, ptr %i.v, align 1, !noundef !5  ; 2 uses
  %i.x = zext i8 %i.w to i32
  %.not.i33 = icmp ugt i8 %i.u, %i.w
  br i1 %.not.i33, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph: ; preds = %bb.k
  %i.y = icmp ult i64 %5, %4
  %i.z = sub nuw i64 %5, %4                       ; 2 uses
  %i.aa = icmp eq i64 %5, %4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load ptr, ptr %6, align 8, !nonnull !5, !align !9 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1648
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !9 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !align !9 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br i1 %i.y, label %.split, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader, !prof !28

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph
  %i.am = zext i8 %i.u to i32
  br label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0B1V_.exit
  %.sroa.0.034 = phi i32 [ %spec.select.i.i.i, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0B1V_.exit ], [ %i.am, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader ] ; 11 uses
  %i.an = add nuw nsw i32 %.sroa.0.034, 1
  %or.cond.i.i.i = icmp eq i32 %.sroa.0.034, 55295
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 57344, i32 %i.an ; 2 uses
  %i.ao = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %.not12 = icmp ugt i64 %5, %i.ao
  br i1 %.not12, label %.split, label %bb.n, !prof !28

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread: ; preds = %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0B1V_.exit, %bb.k
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECshxhuDJfZv4T_6fontbe.exit15 unwind label %bb.l

bb.l:                                             ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECshxhuDJfZv4T_6fontbe.exit15: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.split:                                           ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph
  %.us-phi = phi i64 [ %1, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph ], [ %i.ao, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %4, i64 noundef %5, i64 noundef %.us-phi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29
          to label %bb.j unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit
  %i.ar = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %4 ; 10 uses
  %i.at = icmp samesign ult i32 %.sroa.0.034, 128
  br i1 %i.at, label %.thread.i.a, label %7

7:                                                ; preds = %bb.n
  %8 = icmp samesign ult i32 %.sroa.0.034, 2048   ; 2 uses
  %9 = icmp samesign ult i32 %.sroa.0.034, 65536  ; 2 uses
  %..i = select i1 %9, i64 3, i64 4
  %.sroa.0.0.i16 = select i1 %8, i64 2, i64 %..i  ; 2 uses
  %10 = icmp samesign ult i64 %i.z, %.sroa.0.0.i16
  br i1 %10, label %bb.q, label %bb.o

.thread.i.a:                                      ; preds = %bb.n
  br i1 %i.aa, label %bb.q, label %.thread7.i

bb.o:                                             ; preds = %7
  %11 = trunc i32 %.sroa.0.034 to i8
  %12 = and i8 %11, 63
  %13 = or disjoint i8 %12, -128                  ; 3 uses
  %14 = lshr i32 %.sroa.0.034, 6
  %15 = trunc i32 %14 to i8                       ; 2 uses
  %16 = and i8 %15, 63
  %17 = or disjoint i8 %16, -128                  ; 2 uses
  %18 = lshr i32 %.sroa.0.034, 12
  %19 = trunc i32 %18 to i8                       ; 2 uses
  %20 = and i8 %19, 63
  %21 = or disjoint i8 %20, -128
  %22 = lshr i32 %.sroa.0.034, 18
  %23 = trunc nuw nsw i32 %22 to i8
  %24 = or disjoint i8 %23, -16
  br i1 %8, label %25, label %28

.thread7.i:                                       ; preds = %.thread.i.a
  %i.au = trunc nuw nsw i32 %.sroa.0.034 to i8
  store i8 %i.au, ptr %i.as, align 1, !alias.scope !2714
  br label %bb.r

25:                                               ; preds = %bb.o
  %26 = or disjoint i8 %15, -64
  store i8 %26, ptr %i.as, align 1, !alias.scope !2714
  %27 = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %13, ptr %27, align 1, !alias.scope !2714
  br label %bb.r

28:                                               ; preds = %bb.o
  br i1 %9, label %29, label %bb.p

29:                                               ; preds = %28
  %30 = or disjoint i8 %19, -32
  store i8 %30, ptr %i.as, align 1, !alias.scope !2714
  %31 = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %17, ptr %31, align 1, !alias.scope !2714
  %32 = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %13, ptr %32, align 1, !alias.scope !2714
  br label %bb.r

bb.p:                                             ; preds = %28
  store i8 %24, ptr %i.as, align 1, !alias.scope !2714
  %33 = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %21, ptr %33, align 1, !alias.scope !2714
  %34 = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %17, ptr %34, align 1, !alias.scope !2714
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 %13, ptr %i.av, align 1, !alias.scope !2714
  br label %bb.r

bb.q:                                             ; preds = %.thread.i.a, %7
  %.sroa.0.06.i = phi i64 [ 1, %.thread.i.a ], [ %.sroa.0.0.i16, %7 ]
  invoke fastcc void @_RNvNvNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw8do_panic7runtime(i32 noundef range(i32 0, 1114112) %.sroa.0.034, i64 noundef %.sroa.0.06.i, i64 noundef range(i64 0, -9223372036854775808) %i.z) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p, %29, %25, %.thread7.i
  %i.aw = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aw, ptr %i.c, align 8, !noalias !2715
  store i64 %i.ax, ptr %i.ab, align 8, !noalias !2715
  %i.ay = load ptr, ptr %i.ad, align 8, !noalias !2716, !nonnull !5, !align !9, !noundef !5
  %i.az = invoke { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3geteECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ax)
          to label %.noexc17 unwind label %.loopexit ; 2 uses

.noexc17:                                         ; preds = %bb.r
  %i.ba = extractvalue { i16, i16 } %i.az, 0
  %i.bb = trunc i16 %i.ba to i1
  br i1 %i.bb, label %bb.s, label %.split.i

bb.s:                                             ; preds = %.noexc17
  %i.bc = extractvalue { i16, i16 } %i.az, 1
  %i.bd = load i64, ptr %i.ak, align 8, !alias.scope !2717, !noalias !2716, !noundef !5 ; 3 uses
  %i.be = load i64, ptr %i.aj, align 8, !range !11, !alias.scope !2717, !noalias !2716, !noundef !5
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.t, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8grow_oneCs6WnK4nVnpEz_11write_fonts(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #28
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i unwind label %.loopexit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.t, %bb.s
  %i.bg = load ptr, ptr %i.al, align 8, !alias.scope !2717, !noalias !2716, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bd
  store i16 %i.bc, ptr %i.bh, align 2, !noalias !2716
  %i.bi = add i64 %i.bd, 1
  store i64 %i.bi, ptr %i.ak, align 8, !alias.scope !2717, !noalias !2716
  br label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0B1V_.exit

.split.i:                                         ; preds = %.noexc17
  %i.bj = load i32, ptr %i.ag, align 8, !noalias !2716, !noundef !5
  %i.bk = load i32, ptr %i.ah, align 4, !noalias !2716, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2715
  store ptr %i.c, ptr %i.a, align 8, !noalias !2715
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCshxhuDJfZv4T_6fontbe, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2715
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @45, ptr noundef nonnull %i.a)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %.split.i
  %i.bl = zext i32 %i.bk to i64
  %i.bm = zext i32 %i.bj to i64                   ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2715
  invoke void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB3_14CompilationCtxNtNtB5_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE5errorNtNtCsgCecv3eZDcN_5alloc6string6StringEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %i.ac, i64 noundef %i.bm, i64 noundef %i.bn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0B1V_.exit unwind label %.loopexit

_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0B1V_.exit: ; preds = %.noexc19, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %or.cond25 = icmp ugt i32 %spec.select.i.i.i, %i.x
  br i1 %or.cond25, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.h, %bb.u
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range11alpha_rangeNCNvMNtB4_11compile_ctxINtB14_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1L_16FeaVariationInfoE21add_glyphs_from_ranges_0EB1N_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.d, align 8, !range !24, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !29, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %1, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.i, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = icmp ult i64 %4, %1
  br i1 %i.n, label %bb.f, label %.invoke

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ult i64 %4, %3
  br i1 %i.o, label %bb.k, label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.f
  %i.p = phi i64 [ %3, %bb.f ], [ %1, %bb.d ]
  %i.q = phi ptr [ @20, %bb.f ], [ @19, %bb.d ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %bb.r, %bb.t, %.split.i, %.noexc19
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.invoke, %.split, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.u

bb.j:                                             ; preds = %.split
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.u = load i8, ptr %i.t, align 1, !noundef !5  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %4
  %i.w = load i8, ptr %i.v, align 1, !noundef !5  ; 2 uses
  %i.x = zext i8 %i.w to i32
  %.not.i33 = icmp ugt i8 %i.u, %i.w
  br i1 %.not.i33, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph: ; preds = %bb.k
  %i.y = icmp ult i64 %5, %4
  %i.z = sub nuw i64 %5, %4                       ; 2 uses
  %i.aa = icmp eq i64 %5, %4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load ptr, ptr %6, align 8, !nonnull !5, !align !9 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1648
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !9 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !align !9 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br i1 %i.y, label %.split, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader, !prof !28

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph
  %i.am = zext i8 %i.u to i32
  br label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_ranges_0B1e_.exit
  %.sroa.0.034 = phi i32 [ %spec.select.i.i.i, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_ranges_0B1e_.exit ], [ %i.am, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader ] ; 11 uses
  %i.an = add nuw nsw i32 %.sroa.0.034, 1
  %or.cond.i.i.i = icmp eq i32 %.sroa.0.034, 55295
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 57344, i32 %i.an ; 2 uses
  %i.ao = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %.not12 = icmp ugt i64 %5, %i.ao
  br i1 %.not12, label %.split, label %bb.n, !prof !28

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread: ; preds = %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_ranges_0B1e_.exit, %bb.k
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECshxhuDJfZv4T_6fontbe.exit15 unwind label %bb.l

bb.l:                                             ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECshxhuDJfZv4T_6fontbe.exit15: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.split:                                           ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph
  %.us-phi = phi i64 [ %1, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph ], [ %i.ao, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %4, i64 noundef %5, i64 noundef %.us-phi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29
          to label %bb.j unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit
  %i.ar = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %4 ; 10 uses
  %i.at = icmp samesign ult i32 %.sroa.0.034, 128
  br i1 %i.at, label %.thread.i.a, label %7

7:                                                ; preds = %bb.n
  %8 = icmp samesign ult i32 %.sroa.0.034, 2048   ; 2 uses
  %9 = icmp samesign ult i32 %.sroa.0.034, 65536  ; 2 uses
  %..i = select i1 %9, i64 3, i64 4
  %.sroa.0.0.i16 = select i1 %8, i64 2, i64 %..i  ; 2 uses
  %10 = icmp samesign ult i64 %i.z, %.sroa.0.0.i16
  br i1 %10, label %bb.q, label %bb.o

.thread.i.a:                                      ; preds = %bb.n
  br i1 %i.aa, label %bb.q, label %.thread7.i

bb.o:                                             ; preds = %7
  %11 = trunc i32 %.sroa.0.034 to i8
  %12 = and i8 %11, 63
  %13 = or disjoint i8 %12, -128                  ; 3 uses
  %14 = lshr i32 %.sroa.0.034, 6
  %15 = trunc i32 %14 to i8                       ; 2 uses
  %16 = and i8 %15, 63
  %17 = or disjoint i8 %16, -128                  ; 2 uses
  %18 = lshr i32 %.sroa.0.034, 12
  %19 = trunc i32 %18 to i8                       ; 2 uses
  %20 = and i8 %19, 63
  %21 = or disjoint i8 %20, -128
  %22 = lshr i32 %.sroa.0.034, 18
  %23 = trunc nuw nsw i32 %22 to i8
  %24 = or disjoint i8 %23, -16
  br i1 %8, label %25, label %28

.thread7.i:                                       ; preds = %.thread.i.a
  %i.au = trunc nuw nsw i32 %.sroa.0.034 to i8
  store i8 %i.au, ptr %i.as, align 1, !alias.scope !2725
  br label %bb.r

25:                                               ; preds = %bb.o
  %26 = or disjoint i8 %15, -64
  store i8 %26, ptr %i.as, align 1, !alias.scope !2725
  %27 = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %13, ptr %27, align 1, !alias.scope !2725
  br label %bb.r

28:                                               ; preds = %bb.o
  br i1 %9, label %29, label %bb.p

29:                                               ; preds = %28
  %30 = or disjoint i8 %19, -32
  store i8 %30, ptr %i.as, align 1, !alias.scope !2725
  %31 = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %17, ptr %31, align 1, !alias.scope !2725
  %32 = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %13, ptr %32, align 1, !alias.scope !2725
  br label %bb.r

bb.p:                                             ; preds = %28
  store i8 %24, ptr %i.as, align 1, !alias.scope !2725
  %33 = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %21, ptr %33, align 1, !alias.scope !2725
  %34 = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %17, ptr %34, align 1, !alias.scope !2725
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 %13, ptr %i.av, align 1, !alias.scope !2725
  br label %bb.r

bb.q:                                             ; preds = %.thread.i.a, %7
  %.sroa.0.06.i = phi i64 [ 1, %.thread.i.a ], [ %.sroa.0.0.i16, %7 ]
  invoke fastcc void @_RNvNvNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw8do_panic7runtime(i32 noundef range(i32 0, 1114112) %.sroa.0.034, i64 noundef %.sroa.0.06.i, i64 noundef range(i64 0, -9223372036854775808) %i.z) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p, %29, %25, %.thread7.i
  %i.aw = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aw, ptr %i.c, align 8, !noalias !2726
  store i64 %i.ax, ptr %i.ab, align 8, !noalias !2726
  %i.ay = load ptr, ptr %i.ad, align 8, !noalias !2727, !nonnull !5, !align !9, !noundef !5
  %i.az = invoke { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3geteECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ax)
          to label %.noexc17 unwind label %.loopexit ; 2 uses

.noexc17:                                         ; preds = %bb.r
  %i.ba = extractvalue { i16, i16 } %i.az, 0
  %i.bb = trunc i16 %i.ba to i1
  br i1 %i.bb, label %bb.s, label %.split.i

bb.s:                                             ; preds = %.noexc17
  %i.bc = extractvalue { i16, i16 } %i.az, 1
  %i.bd = load i64, ptr %i.ak, align 8, !alias.scope !2728, !noalias !2727, !noundef !5 ; 3 uses
  %i.be = load i64, ptr %i.aj, align 8, !range !11, !alias.scope !2728, !noalias !2727, !noundef !5
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.t, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8grow_oneCs6WnK4nVnpEz_11write_fonts(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #28
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i unwind label %.loopexit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.t, %bb.s
  %i.bg = load ptr, ptr %i.al, align 8, !alias.scope !2728, !noalias !2727, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bd
  store i16 %i.bc, ptr %i.bh, align 2, !noalias !2727
  %i.bi = add i64 %i.bd, 1
  store i64 %i.bi, ptr %i.ak, align 8, !alias.scope !2728, !noalias !2727
  br label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_ranges_0B1e_.exit

.split.i:                                         ; preds = %.noexc17
  %i.bj = load i32, ptr %i.ag, align 8, !noalias !2727, !noundef !5
  %i.bk = load i32, ptr %i.ah, align 4, !noalias !2727, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2726
  store ptr %i.c, ptr %i.a, align 8, !noalias !2726
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCshxhuDJfZv4T_6fontbe, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2726
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @45, ptr noundef nonnull %i.a)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %.split.i
  %i.bl = zext i32 %i.bk to i64
  %i.bm = zext i32 %i.bj to i64                   ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2726
  invoke void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB3_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1b_16FeaVariationInfoE5errorNtNtCsgCecv3eZDcN_5alloc6string6StringEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %i.ac, i64 noundef %i.bm, i64 noundef %i.bn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_ranges_0B1e_.exit unwind label %.loopexit

_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_ranges_0B1e_.exit: ; preds = %.noexc19, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %or.cond25 = icmp ugt i32 %spec.select.i.i.i, %i.x
  br i1 %or.cond25, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.h, %bb.u
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range11alpha_rangeNCNvMNtB4_8validateINtB14_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0EB1I_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 %6, ptr nofree noundef nonnull readonly align 8 captures(none) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.d, align 8, !range !24, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !29, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %1, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.i, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = icmp ult i64 %4, %1
  br i1 %i.n, label %bb.f, label %.invoke

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ult i64 %4, %3
  br i1 %i.o, label %bb.k, label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.f
  %i.p = phi i64 [ %3, %bb.f ], [ %1, %bb.d ]
  %i.q = phi ptr [ @20, %bb.f ], [ @19, %bb.d ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %bb.r, %.split.i, %.noexc20
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.invoke, %.split, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.s

bb.j:                                             ; preds = %.split
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.u = load i8, ptr %i.t, align 1, !noundef !5  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %4
  %i.w = load i8, ptr %i.v, align 1, !noundef !5  ; 2 uses
  %i.x = zext i8 %i.w to i32
  %.not.i35 = icmp ugt i8 %i.u, %i.w
  br i1 %.not.i35, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph: ; preds = %bb.k
  %i.y = icmp ult i64 %5, %4
  %i.z = sub nuw i64 %5, %4                       ; 2 uses
  %i.aa = icmp eq i64 %5, %4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.y, label %.split, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader, !prof !28

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph
  %i.af = zext i8 %i.u to i32
  br label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit
  %.sroa.022.036 = phi i32 [ %spec.select.i.i.i, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit ], [ %i.af, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.preheader ] ; 11 uses
  %i.ag = add nuw nsw i32 %.sroa.022.036, 1
  %or.cond.i.i.i = icmp eq i32 %.sroa.022.036, 55295
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 57344, i32 %i.ag ; 2 uses
  %i.ah = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %.not12 = icmp ugt i64 %5, %i.ah
  br i1 %.not12, label %.split, label %bb.n, !prof !28

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread: ; preds = %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit, %bb.k
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECshxhuDJfZv4T_6fontbe.exit16 unwind label %bb.l

bb.l:                                             ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECshxhuDJfZv4T_6fontbe.exit16: ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.split:                                           ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph
  %.us-phi = phi i64 [ %1, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.lr.ph ], [ %i.ah, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %4, i64 noundef %5, i64 noundef %.us-phi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29
          to label %bb.j unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit
  %i.ak = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %4 ; 10 uses
  %i.am = icmp samesign ult i32 %.sroa.022.036, 128
  br i1 %i.am, label %.thread.i.a, label %8

8:                                                ; preds = %bb.n
  %9 = icmp samesign ult i32 %.sroa.022.036, 2048 ; 2 uses
  %10 = icmp samesign ult i32 %.sroa.022.036, 65536 ; 2 uses
  %..i = select i1 %10, i64 3, i64 4
  %.sroa.0.0.i17 = select i1 %9, i64 2, i64 %..i  ; 2 uses
  %11 = icmp samesign ult i64 %i.z, %.sroa.0.0.i17
  br i1 %11, label %bb.q, label %bb.o

.thread.i.a:                                      ; preds = %bb.n
  br i1 %i.aa, label %bb.q, label %.thread7.i

bb.o:                                             ; preds = %8
  %12 = trunc i32 %.sroa.022.036 to i8
  %13 = and i8 %12, 63
  %14 = or disjoint i8 %13, -128                  ; 3 uses
  %15 = lshr i32 %.sroa.022.036, 6
  %16 = trunc i32 %15 to i8                       ; 2 uses
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, -128                  ; 2 uses
  %19 = lshr i32 %.sroa.022.036, 12
  %20 = trunc i32 %19 to i8                       ; 2 uses
  %21 = and i8 %20, 63
  %22 = or disjoint i8 %21, -128
  %23 = lshr i32 %.sroa.022.036, 18
  %24 = trunc nuw nsw i32 %23 to i8
  %25 = or disjoint i8 %24, -16
  br i1 %9, label %26, label %29

.thread7.i:                                       ; preds = %.thread.i.a
  %i.an = trunc nuw nsw i32 %.sroa.022.036 to i8
  store i8 %i.an, ptr %i.al, align 1, !alias.scope !2733
  br label %bb.r

26:                                               ; preds = %bb.o
  %27 = or disjoint i8 %16, -64
  store i8 %27, ptr %i.al, align 1, !alias.scope !2733
  %28 = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %14, ptr %28, align 1, !alias.scope !2733
  br label %bb.r

29:                                               ; preds = %bb.o
  br i1 %10, label %30, label %bb.p

30:                                               ; preds = %29
  %31 = or disjoint i8 %20, -32
  store i8 %31, ptr %i.al, align 1, !alias.scope !2733
  %32 = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %18, ptr %32, align 1, !alias.scope !2733
  %33 = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 %14, ptr %33, align 1, !alias.scope !2733
  br label %bb.r

bb.p:                                             ; preds = %29
  store i8 %25, ptr %i.al, align 1, !alias.scope !2733
  %34 = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %22, ptr %34, align 1, !alias.scope !2733
  %35 = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 %18, ptr %35, align 1, !alias.scope !2733
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  store i8 %14, ptr %i.ao, align 1, !alias.scope !2733
  br label %bb.r

bb.q:                                             ; preds = %.thread.i.a, %8
  %.sroa.0.06.i = phi i64 [ 1, %.thread.i.a ], [ %.sroa.0.0.i17, %8 ]
  invoke fastcc void @_RNvNvNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw8do_panic7runtime(i32 noundef range(i32 0, 1114112) %.sroa.022.036, i64 noundef %.sroa.0.06.i, i64 noundef range(i64 0, -9223372036854775808) %i.z) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p, %30, %26, %.thread7.i
  %i.ap = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ap, ptr %i.c, align 8, !noalias !2734
  store i64 %i.aq, ptr %i.ab, align 8, !noalias !2734
  %i.ar = load ptr, ptr %i.ac, align 8, !noalias !2734, !nonnull !5, !align !9, !noundef !5
  %i.as = invoke { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3geteECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aq)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.r
  %i.at = extractvalue { i16, i16 } %i.as, 0
  %.not.i18 = icmp eq i16 %i.at, 1
  br i1 %.not.i18, label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit, label %.split.i

.split.i:                                         ; preds = %.noexc19
  %i.au = load i32, ptr %i.ad, align 8, !noalias !2734, !noundef !5
  %i.av = load i32, ptr %i.ae, align 4, !noalias !2734, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2734
  store ptr %i.c, ptr %i.a, align 8, !noalias !2734
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCshxhuDJfZv4T_6fontbe, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2734
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @45, ptr noundef nonnull %i.a)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %.split.i
  %i.aw = zext i32 %i.av to i64
  %i.ax = zext i32 %i.au to i64                   ; 2 uses
  %i.ay = add nuw nsw i64 %i.aw, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2734
  invoke fastcc void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB3_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE7warningNtNtCsgCecv3eZDcN_5alloc6string6StringEB18_(ptr noalias nofree noundef align 8 dereferenceable(568) %6, i64 noundef %i.ax, i64 noundef %i.ay, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit unwind label %.loopexit

_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit: ; preds = %.noexc20, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %or.cond27 = icmp ugt i32 %spec.select.i.i.i, %i.x
  br i1 %or.cond27, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivecENtNtNtB7_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.h, %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range3cidNCNvMNtB4_11compile_ctxINtBV_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_range0EB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = load i8, ptr %1, align 8, !range !8, !noundef !5 ; 2 uses
  %i.h = icmp samesign ugt i8 %i.g, 23
  %i.i = zext nneg i8 %i.g to i64                 ; 2 uses
  %i.j = add nsw i64 %i.i, -23
  %i.k = select i1 %i.h, i64 %i.j, i64 0
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0 = phi i64 [ %i.i, %bb.c ], [ %i.p, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.u, %bb.e ] ; 3 uses
  switch i64 %.sroa.4.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %.sroa.02.0, align 1, !alias.scope !2747, !noundef !5 ; 2 uses
  switch i8 %i.v, label %bb.h [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %.sroa.02.0, align 1, !alias.scope !2747
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.w = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.v, %bb.g ]
  %cond.i = icmp eq i8 %i.w, 43                   ; 2 uses
  %i.x = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.0, %i.x    ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.y = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.y, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.h
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.k
  %.not53.i = icmp eq i64 %i.ac, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.br, %bb.o ], [ 0, %.preheader.i ], [ %i.at, %bb.l ], [ %i.bb, %bb.m ], [ %i.bj, %bb.n ], [ %i.an, %.preheader58.i ]
  %i.z = zext i16 %.sroa.043.1.i to i32
  %i.aa = shl nuw i32 %i.z, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.h, %.preheader58.i
  %.sroa.0.1.i122 = phi ptr [ %i.ab, %.preheader58.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %.sroa.15.1.i121 = phi i64 [ %i.ac, %.preheader58.i ], [ %.sroa.15.0.i, %bb.h ]
  %.sroa.043.0.i120 = phi i16 [ %i.an, %.preheader58.i ], [ 0, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i122, i64 1
  %i.ac = add nsw i64 %.sroa.15.1.i121, -1        ; 2 uses
  %i.ad = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i120, i16 10) ; 2 uses
  %i.ae = extractvalue { i16, i1 } %i.ad, 0       ; 2 uses
  %i.af = extractvalue { i16, i1 } %i.ad, 1
  %i.ag = load i8, ptr %.sroa.0.1.i122, align 1, !alias.scope !2747, !noundef !5 ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.i, !prof !12

bb.i:                                             ; preds = %.preheader58.i.preheader
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 10
  br i1 %i.aj, label %bb.k, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %.preheader58.i.preheader
  %i.ak = add i8 %i.ag, -48
  %i.al = icmp ult i8 %i.ak, 10
  %spec.select.i = select i1 %i.al, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.am = trunc nuw nsw i32 %i.ai to i16
  %i.an = add i16 %i.ae, %i.am                    ; 3 uses
  %i.ao = icmp ult i16 %i.an, %i.ae
  br i1 %i.ao, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader58.i, !prof !12

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ap = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !2747, !noundef !5
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.l, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %.lr.ph.i
  %i.at = trunc nuw nsw i32 %i.ar to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !2747, !noundef !5
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -48                  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 10
  br i1 %i.ay, label %bb.m, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.az = mul nuw nsw i16 %i.at, 10
  %i.ba = trunc nuw nsw i32 %i.ax to i16
  %i.bb = add nuw nsw i16 %i.az, %i.ba            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !2747, !noundef !5
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 10
  br i1 %i.bg, label %bb.n, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.2
  %i.bh = mul nuw i16 %i.bb, 10
  %i.bi = trunc nuw nsw i32 %i.bf to i16
  %i.bj = add nuw nsw i16 %i.bh, %i.bi            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !2747, !noundef !5
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.o, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.bp = mul i16 %i.bj, 10
  %i.bq = trunc nuw nsw i32 %i.bn to i16
  %i.br = add i16 %i.bp, %i.bq
  br label %.loopexit.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.j
  %.sroa.8.0.insert.insert.i = phi i32 [ %spec.select.i, %bb.j ], [ %i.aa, %.loopexit.i ] ; 3 uses
  %i.bs = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bs, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25, !prof !30

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.k, %bb.i, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.f, %bb.g, %bb.g, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i51 = phi i32 [ %.sroa.8.0.insert.insert.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.g ], [ 257, %.lr.ph.i ], [ 257, %bb.g ], [ 1, %bb.f ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.i ], [ 513, %bb.k ]
  %.sroa.4.0.extract.shift.i23 = lshr i32 %.sroa.8.0.insert.insert.i51, 8
  %.sroa.4.0.extract.trunc.i24 = trunc i32 %.sroa.4.0.extract.shift.i23 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2748
  store i8 %.sroa.4.0.extract.trunc.i24, ptr %i.d, align 1, !noalias !2748
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.5.0.extract.shift.i21 = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i22 = trunc nuw i32 %.sroa.5.0.extract.shift.i21 to i16
  %i.bt = load i8, ptr %2, align 8, !range !8, !noundef !5 ; 2 uses
end_hunk_0
