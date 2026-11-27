Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle:bb.a
  %i.ex = icmp ugt i64 %i.ew, 1                   ; 2 uses
  %i.ey = load ptr, ptr %i.eu, align 8, !alias.scope !12460, !noalias !12451, !nonnull !18
  %i.ez = getelementptr inbounds i8, ptr %i.ek, i64 -16
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !12460, !noalias !12451
  %.sink11.i.i.i.i = select i1 %i.ex, ptr %i.ey, ptr %i.eu ; 2 uses
  %.sink10.i.i.i.i = select i1 %i.ex, i64 %i.fa, i64 %i.ew ; 4 uses
  %.idx = shl nuw nsw i64 %.sink10.i.i.i.i, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !12459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12459
  store ptr inttoptr (i64 16 to ptr), ptr %i.ab, align 8, !noalias !12459
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store i64 0, ptr %i.fc, align 8, !noalias !12459
  %.not.i.i = icmp eq i64 %.sink10.i.i.i.i, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCsgpMJJHpo27b_12typst_bundle.exit
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ab, i64 noundef %.sink10.i.i.i.i)
          to label %.lr.ph.i.i unwind label %bb.y, !noalias !12459

bb.y:                                             ; preds = %bb.x
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.ab, align 8, !noalias !12459, !nonnull !18, !noundef !18
  %.val3.i.i = load i64, ptr %i.fc, align 8, !noalias !12459
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val.i.i, i64 %.val3.i.i) #49
          to label %common.resume unwind label %bb.z, !noalias !12459

bb.z:                                             ; preds = %bb.y
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12459
  unreachable

.thread.i.i:                                      ; preds = %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCsgpMJJHpo27b_12typst_bundle.exit.thread, %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCsgpMJJHpo27b_12typst_bundle.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12461
  br label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys_0EECsgpMJJHpo27b_12typst_bundle.exit

.lr.ph.i.i:                                       ; preds = %bb.x
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !noalias !12459
  %.pre4.i.i = load i64, ptr %i.fc, align 8, !noalias !12459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12459
  store ptr %.pre.i.i, ptr %i.ac, align 8, !noalias !12459
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store i64 %.pre4.i.i, ptr %i.ff, align 8, !noalias !12459
  call void @llvm.experimental.noalias.scope.decl(metadata !12462)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sink10.i.i.i.i)
          to label %.noexc.i211 unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12463

.noexc.i211:                                      ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12461
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i217, %.noexc.i211
  %.sroa.012.020.i.i = phi ptr [ %.sink11.i.i.i.i, %.noexc.i211 ], [ %i.fi, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i217 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 8 ; 2 uses
  %.val2.i.i.i = load i64, ptr %.sroa.012.020.i.i, align 8, !noalias !12464, !noundef !18 ; 3 uses
  %i.fj = load i64, ptr %i.fg, align 8, !noalias !12465, !noundef !18 ; 2 uses
  %i.fk = icmp ult i64 %.val2.i.i.i, %i.fj
  br i1 %i.fk, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.i.i, i64 noundef %i.fj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #45
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12465

.noexc6.i:                                        ; preds = %bb.ab
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.aa
  %i.fl = load ptr, ptr %i.fh, align 8, !noalias !12465, !nonnull !18, !noundef !18
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.fl, i64 %.val2.i.i.i
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fm)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12466

.noexc7.i:                                        ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i
  %.pr.i.i212 = load ptr, ptr %i.aa, align 8, !noalias !12461
  %.not1.i.i213 = icmp eq ptr %.pr.i.i212, null
  %.pre.pre.i = load ptr, ptr %i.ac, align 8, !noalias !12459 ; 3 uses
  %.pre32.pre.i = load i64, ptr %i.ff, align 8, !noalias !12459 ; 2 uses
  br i1 %.not1.i.i213, label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys_0EECsgpMJJHpo27b_12typst_bundle.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !12461
  call void @llvm.experimental.noalias.scope.decl(metadata !12467)
  %.not.i.i.i.i214 = icmp eq ptr %.pre.pre.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i214, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i215, label %bb.ae

bb.ad:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i215
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body.i207 unwind label %bb.af, !noalias !12468, !inline_history !13

bb.ae:                                            ; preds = %bb.ac
  %i.fo = getelementptr i8, ptr %.pre.pre.i, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.fo, align 8, !noalias !12469, !noundef !18
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i215

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i215: ; preds = %bb.ae, %bb.ac
  %.sroa.02.0.i.i.i.i216 = phi i64 [ %.val.i.i.i.i, %bb.ae ], [ 0, %bb.ac ]
  %i.fp = icmp eq i64 %.pre32.pre.i, %.sroa.02.0.i.i.i.i216
  %i.fq = zext i1 %i.fp to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %i.fq)
          to label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i217 unwind label %bb.ad, !noalias !12470, !inline_history !13

bb.af:                                            ; preds = %bb.ad
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12468, !inline_history !13
  unreachable

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i217: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i215
  %i.fs = load ptr, ptr %i.ac, align 8, !alias.scope !12471, !noalias !12459, !nonnull !18, !noundef !18 ; 2 uses
  %i.ft = load i64, ptr %i.ff, align 8, !alias.scope !12471, !noalias !12459, !noundef !18 ; 2 uses
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !12461
  %i.fv = add i64 %i.ft, 1                        ; 2 uses
  store i64 %i.fv, ptr %i.ff, align 8, !alias.scope !12471, !noalias !12459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12461
  %i.fw = icmp eq ptr %i.fi, %i.fb
  br i1 %i.fw, label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys_0EECsgpMJJHpo27b_12typst_bundle.exit, label %bb.aa

.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i, %bb.ab, %.lr.ph.i.i
  %lpad.loopexit.split-lp2062 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i207

.body.i207:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad
  %eh.lpad-body.i208 = phi { ptr, i32 } [ %i.fn, %bb.ad ], [ %lpad.loopexit.split-lp2062, %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val.i209 = load ptr, ptr %i.ac, align 8, !noalias !12459, !nonnull !18, !noundef !18
  %.val2.i210 = load i64, ptr %i.ff, align 8, !noalias !12459
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val.i209, i64 %.val2.i210) #49
          to label %common.resume unwind label %bb.ag, !noalias !12459

bb.ag:                                            ; preds = %.body.i207
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12459
  unreachable

_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys_0EECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.noexc7.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i217, %.thread.i.i
  %i.fy = phi i64 [ 0, %.thread.i.i ], [ %i.fv, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i217 ], [ %.pre32.pre.i, %.noexc7.i ]
  %i.fz = phi ptr [ inttoptr (i64 16 to ptr), %.thread.i.i ], [ %i.fs, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i217 ], [ %.pre.pre.i, %.noexc7.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !12459
  br label %bb.da

bb.ah:                                            ; preds = %bb.b
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load i64, ptr %i.gc, align 16, !noundef !18
  %i.ge = getelementptr inbounds nuw [64 x i8], ptr %i.gb, i64 %i.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12472
  store ptr %0, ptr %i.e, align 8, !alias.scope !12473, !noalias !12474
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gb, ptr %.sroa.4539.0..sroa_idx, align 8, !alias.scope !12473, !noalias !12474
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ge, ptr %.sroa.5540.0..sroa_idx, align 8, !alias.scope !12473, !noalias !12474
  %.sroa.6541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %.sroa.6541.0..sroa_idx, align 8, !alias.scope !12473, !noalias !12474
  %.sroa.7542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.8543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  store i8 2, ptr %.sroa.8543.0..sroa_idx, align 8, !alias.scope !12473, !noalias !12474
  %.sroa.10545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  store i8 2, ptr %.sroa.10545.0..sroa_idx, align 8, !alias.scope !12473, !noalias !12474
  call void @llvm.experimental.noalias.scope.decl(metadata !12475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12476
  %i.gf = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %bb.ai unwind label %bb.az, !noalias !12477, !inline_history !12027 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gg = extractvalue { i64, i64 } %i.gf, 0
  %i.gh = extractvalue { i64, i64 } %i.gf, 1
  %i.gi = trunc nuw i64 %i.gg to i1
  br i1 %i.gi, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.aj

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.ai
  %i.gj = load i8, ptr %.sroa.8543.0..sroa_idx, align 8, !range !22, !alias.scope !12478, !noalias !12479, !noundef !18
  %.not.i.i.i.i410 = icmp eq i8 %i.gj, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !12478, !noalias !12479
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.val3.i.i.i.i.i = load i64, ptr %i.gl, align 8, !alias.scope !12478, !noalias !12479
  %i.gm = sub i64 %.val3.i.i.i.i.i, %.val.i.i.i.i.i
  %i.gn = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !22, !alias.scope !12478, !noalias !12479, !noundef !18
  %.not53.i.i.i.i = icmp eq i8 %i.gn, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.val.i61.i.i.i.i = load i64, ptr %i.go, align 8, !alias.scope !12478, !noalias !12479
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val3.i62.i.i.i.i = load i64, ptr %i.gp, align 8, !alias.scope !12478, !noalias !12479
  %i.gq = sub i64 %.val3.i62.i.i.i.i, %.val.i61.i.i.i.i
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %i.gq ; 2 uses
  %i.gr = call i64 @llvm.uadd.sat.i64(i64 %i.gm, i64 %.sroa.8.0.i.i.i.i)
  %i.gs = select i1 %.not.i.i.i.i410, i64 %.sroa.8.0.i.i.i.i, i64 %i.gr
  %i.gt = call i64 @llvm.uadd.sat.i64(i64 %i.gs, i64 1) ; 2 uses
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.gt, i64 4) ; 2 uses
  %i.gu = shl i64 %..i.i, 3                       ; 3 uses
  %i.gv = icmp ugt i64 %i.gt, 2305843009213693951
  %.not.i.i.i411 = icmp ugt i64 %i.gu, 9223372036854775800
  %or.cond.i.i.i412 = or i1 %i.gv, %.not.i.i.i411
  br i1 %or.cond.i.i.i412, label %bb.ap, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413, !prof !27

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12476
  call void @llvm.experimental.noalias.scope.decl(metadata !12480), !noalias !12481
  call void @llvm.experimental.noalias.scope.decl(metadata !12482), !noalias !12479
  call void @llvm.experimental.noalias.scope.decl(metadata !12483), !noalias !12479
  %i.gw = load i8, ptr %.sroa.8543.0..sroa_idx, align 8, !range !22, !alias.scope !12484, !noalias !12479, !noundef !18
  %i.gx = icmp eq i8 %i.gw, 2
  br i1 %i.gx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.sroa.7542.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i unwind label %bb.al, !noalias !12477, !inline_history !12042

bb.al:                                            ; preds = %bb.ak
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !22, !alias.scope !12485, !noalias !12479, !noundef !18
  %i.ha = icmp eq i8 %i.gz, 2
  br i1 %i.ha, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hb)
          to label %common.resume unwind label %bb.ao, !noalias !12477, !inline_history !12042

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.hc = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !22, !alias.scope !12486, !noalias !12479, !noundef !18
  %i.hd = icmp eq i8 %i.hc, 2
  br i1 %i.hd, label %.thread579, label %bb.an

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.he), !noalias !12477, !inline_history !12042
  br label %.thread579

bb.ao:                                            ; preds = %bb.am
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12487, !inline_history !12042
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsgpMJJHpo27b_12typst_bundle.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !12488, !inline_history !12042
  %i.hg = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.gu, i64 noundef range(i64 8, 17) 8) #48, !noalias !12488, !inline_history !12042 ; 4 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.ap, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgpMJJHpo27b_12typst_bundle.exit.i414

bb.ap:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsgpMJJHpo27b_12typst_bundle.exit.i
  %.sroa.4.0.ph.i.i422 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413 ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsgpMJJHpo27b_12typst_bundle.exit.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i422, i64 %i.gu) #46
          to label %.noexc.i423 unwind label %bb.az, !noalias !12477, !inline_history !12042

.noexc.i423:                                      ; preds = %bb.ap
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgpMJJHpo27b_12typst_bundle.exit.i414: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413
  store i64 %i.gh, ptr %i.hg, align 8, !noalias !12477
  store i64 %..i.i, ptr %i.c, align 8, !noalias !12476
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12476
  %.sroa.6.0..sroa_idx.i.i417 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i417, align 8, !noalias !12476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !12477
  call void @llvm.experimental.noalias.scope.decl(metadata !12489), !noalias !12481
  call void @llvm.experimental.noalias.scope.decl(metadata !12490), !noalias !12479
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgpMJJHpo27b_12typst_bundle.exit.i414
  %i.ho = phi ptr [ %i.ie, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit ], [ %i.hg, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgpMJJHpo27b_12typst_bundle.exit.i414 ] ; 16 uses
  %i.hp = phi i64 [ %i.ig, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgpMJJHpo27b_12typst_bundle.exit.i414 ] ; 11 uses
  %i.hq = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.ar unwind label %bb.au, !noalias !12491, !inline_history !12053 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.hr = extractvalue { i64, i64 } %i.hq, 0
  %i.hs = extractvalue { i64, i64 } %i.hq, 1
  %i.ht = trunc nuw i64 %i.hr to i1
  br i1 %i.ht, label %bb.as, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorINtNtB19_6option6OptionINtNtNtB19_3num7nonzero7NonZerojEEE5querys0_0ENCB4J_s1_0EECsgpMJJHpo27b_12typst_bundle.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.hu = icmp samesign ult i64 %i.hp, 1152921504606846976
  call void @llvm.assume(i1 %i.hu), !noalias !12479
  %i.hv = load i64, ptr %i.c, align 8, !range !36, !alias.scope !12492, !noalias !12493, !noundef !18
  %i.hw = icmp eq i64 %i.hp, %i.hv
  br i1 %i.hw, label %bb.at, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit

bb.at:                                            ; preds = %bb.as
  %i.hx = load i8, ptr %i.hi, align 8, !range !22, !alias.scope !12494, !noalias !12491, !noundef !18
  %.not.i.i.i425 = icmp eq i8 %i.hx, 2
  %.val.i.i.i.i426 = load i64, ptr %i.hj, align 8, !alias.scope !12494, !noalias !12491
  %.val3.i.i.i.i = load i64, ptr %i.hk, align 8, !alias.scope !12494, !noalias !12491
  %i.hy = sub i64 %.val3.i.i.i.i, %.val.i.i.i.i426
  %i.hz = load i8, ptr %i.hl, align 8, !range !22, !alias.scope !12494, !noalias !12491, !noundef !18
  %.not53.i.i.i = icmp eq i8 %i.hz, 2
  %.val.i61.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !12494, !noalias !12491
  %.val3.i62.i.i.i = load i64, ptr %i.hn, align 8, !alias.scope !12494, !noalias !12491
  %i.ia = sub i64 %.val3.i62.i.i.i, %.val.i61.i.i.i
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %i.ia ; 2 uses
  %i.ib = call i64 @llvm.uadd.sat.i64(i64 %i.hy, i64 %.sroa.8.0.i.i.i)
  %i.ic = select i1 %.not.i.i.i425, i64 %.sroa.8.0.i.i.i, i64 %i.ib
  %i.id = call i64 @llvm.uadd.sat.i64(i64 %i.ic, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hp, i64 noundef range(i64 1, 0) %i.id, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit_crit_edge unwind label %bb.au, !noalias !12477

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit_crit_edge: ; preds = %bb.at
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !12492, !noalias !12493
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit_crit_edge, %bb.as
  %i.ie = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCsgpMJJHpo27b_12typst_bundle.exit_crit_edge ], [ %i.ho, %bb.as ] ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.hp
  store i64 %i.hs, ptr %i.if, align 8, !noalias !12491
  %i.ig = add nuw nsw i64 %i.hp, 1                ; 2 uses
  store i64 %i.ig, ptr %.sroa.6.0..sroa_idx.i.i417, align 8, !alias.scope !12492, !noalias !12493
  br label %bb.aq

bb.au:                                            ; preds = %bb.at, %bb.aq
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEE5querys0_0ENCB42_s1_0EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b) #49
          to label %.body.i418 unwind label %bb.av, !noalias !12491, !inline_history !12053

bb.av:                                            ; preds = %bb.au
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12491, !inline_history !12053
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorINtNtB19_6option6OptionINtNtNtB19_3num7nonzero7NonZerojEEE5querys0_0ENCB4J_s1_0EECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.ar
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEE5querys0_0ENCB42_s1_0EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.ba unwind label %bb.aw, !noalias !12491, !inline_history !12053

bb.aw:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorINtNtB19_6option6OptionINtNtNtB19_3num7nonzero7NonZerojEEE5querys0_0ENCB4J_s1_0EECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body.i418

.body.i418:                                       ; preds = %bb.au, %bb.aw
  %eh.lpad-body.i419 = phi { ptr, i32 } [ %i.ij, %bb.aw ], [ %i.ih, %bb.au ] ; 2 uses
  %.val.i.i420 = load i64, ptr %i.c, align 8, !noalias !12476 ; 2 uses
  %i.ik = icmp eq i64 %.val.i.i420, 0
  br i1 %i.ik, label %common.resume, label %bb.ax

bb.ax:                                            ; preds = %.body.i418
  %.val6.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12476, !nonnull !18, !noundef !18
  br label %common.resume.sink.split

bb.ay:                                            ; preds = %bb.az
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12477, !inline_history !12027
  unreachable

bb.az:                                            ; preds = %bb.ap, %bb.ah
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEE5querys0_0ENCB42_s1_0EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e) #49
          to label %common.resume unwind label %bb.ay, !noalias !12477, !inline_history !12027

.thread579:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12472
  br label %_RINvXsd_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB6_8BTreeSetjEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtB1h_8adapters3map3MapINtNtB2r_7flatten7FlatMapINtNtNtB1j_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3I_7content7ContentENCNvMs0_NtNtB3K_13introspection12introspectorINtB5P_19ElementIntrospectorINtNtB1j_6option6OptionINtNtNtB1j_3num7nonzero7NonZerojEEE5querys0_0ENCB5J_s1_0EECsgpMJJHpo27b_12typst_bundle.exit

bb.ba:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorINtNtB19_6option6OptionINtNtNtB19_3num7nonzero7NonZerojEEE5querys0_0ENCB4J_s1_0EECsgpMJJHpo27b_12typst_bundle.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12476
  %.sroa.0534.0.copyload = load i64, ptr %i.c, align 8, !noalias !12495 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12472
  %i.in = icmp samesign ult i64 %i.hp, 1152921504606846976
  call void @llvm.assume(i1 %i.in)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  %i.io = icmp eq i64 %i.hp, 1
  br i1 %i.io, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit, label %bb.bb, !prof !20

bb.bb:                                            ; preds = %bb.ba
  %i.ip = icmp samesign ult i64 %i.hp, 21
  br i1 %i.ip, label %bb.bd, label %bb.bc, !prof !20

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainjNvYjNtNtB8_3cmp10PartialOrd2ltINtNtCs1xwejQucwHj_5alloc3vec3VecjEECsbxkkfIdoBnT_11write_fonts(ptr noalias nofree noundef nonnull align 8 %i.ho, i64 noundef range(i64 1, 1152921504606846976) %i.hp, ptr noalias nofree noundef nonnull %i.a) #51
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.by, !noalias !12496

bb.bd:                                            ; preds = %bb.bb
  %.idx.i.i395 = shl nuw nsw i64 %i.hp, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i.i395
  %.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  br label %.lr.ph.i.i396

.lr.ph.i.i396:                                    ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit.i.i, %bb.bd
  %.sroa.0.04.i.i = phi ptr [ %.sroa.0.0.i.i397, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit.i.i ], [ %.sroa.0.01.i.i, %bb.bd ] ; 4 uses
  %.pn3.i.i = phi ptr [ %.sroa.0.04.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit.i.i ], [ %i.ho, %bb.bd ] ; 3 uses
  %.val9.i.i.i = load i64, ptr %.sroa.0.04.i.i, align 8, !alias.scope !12497, !noalias !12496, !noundef !18 ; 3 uses
  %.val10.i.i.i = load i64, ptr %.pn3.i.i, align 8, !alias.scope !12498, !noalias !12496, !noundef !18 ; 2 uses
  %i.ir = icmp ult i64 %.val9.i.i.i, %.val10.i.i.i
  br i1 %i.ir, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i396
  store i64 %.val10.i.i.i, ptr %.sroa.0.04.i.i, align 8, !alias.scope !12499, !noalias !12496
  %i.is = icmp eq ptr %.pn3.i.i, %i.ho
  br i1 %i.is, label %._crit_edge, label %.lr.ph2039

.preheader.i.i:                                   ; preds = %.lr.ph2039
  store i64 %.val8.i.i.i, ptr %.sroa.0.0.i.i.i4002038, align 8, !alias.scope !12499, !noalias !12496
  %i.it = icmp eq ptr %i.iu, %i.ho
  br i1 %i.it, label %._crit_edge, label %.lr.ph2039

.lr.ph2039:                                       ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i.i.i4002038 = phi ptr [ %i.iu, %.preheader.i.i ], [ %.pn3.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i4002038, i64 -8 ; 3 uses
  %.val8.i.i.i = load i64, ptr %i.iu, align 8, !alias.scope !12498, !noalias !12496, !noundef !18 ; 2 uses
  %i.iv = icmp ult i64 %.val9.i.i.i, %.val8.i.i.i
  br i1 %i.iv, label %.preheader.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i.i, %.lr.ph2039, %.preheader.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %i.ho, %.preheader.i.i.preheader ], [ %i.ho, %.preheader.i.i ], [ %.sroa.0.0.i.i.i4002038, %.lr.ph2039 ]
  store i64 %.val9.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i, align 8, !alias.scope !12499, !noalias !12500
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %._crit_edge, %.lr.ph.i.i396
  %.sroa.0.0.i.i397 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8 ; 2 uses
  %.not.i.i398 = icmp eq ptr %.sroa.0.0.i.i397, %i.iq
  br i1 %.not.i.i398, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit, label %.lr.ph.i.i396

_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit.i.i, %bb.ba, %bb.bc
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hp ; 4 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !12501
  %i.ix = call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !12501 ; 5 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.be, label %.loopexit79.i.i.i, !prof !21

bb.be:                                            ; preds = %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc.i.i389 unwind label %bb.bx, !noalias !12501

.noexc.i.i389:                                    ; preds = %bb.be
  unreachable

.loopexit79.i.i.i:                                ; preds = %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECsgpMJJHpo27b_12typst_bundle.exit
  store ptr null, ptr %i.ix, align 8, !noalias !12501
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 98
  store i16 0, ptr %i.iz, align 2, !noalias !12501
  br label %.peel.begin.i.i.i

.peel.begin.i.i.i:                                ; preds = %.loopexit.i.i.i, %.loopexit79.i.i.i
  %.sroa.014.0.i.i = phi i64 [ 0, %.loopexit79.i.i.i ], [ %i.qd, %.loopexit.i.i.i ] ; 4 uses
  %.sroa.8.0.i.i382 = phi i64 [ 0, %.loopexit79.i.i.i ], [ %.sroa.8.1.i.i, %.loopexit.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i383 = phi ptr [ %i.ix, %.loopexit79.i.i.i ], [ %.sroa.0.1.i.i, %.loopexit.i.i.i ] ; 8 uses
  %.sroa.9.0.i.i.i = phi ptr [ %i.ho, %.loopexit79.i.i.i ], [ %.sroa.9.3.ph122.i.i.i, %.loopexit.i.i.i ] ; 4 uses
  %.sroa.5.0.i.i.i = phi i64 [ undef, %.loopexit79.i.i.i ], [ %.sroa.5.2.ph123.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.045.0.i.i.i = phi i64 [ 2, %.loopexit79.i.i.i ], [ %.sroa.0.0.i.i.i11.i.ph124.i.i.i, %.loopexit.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.ix, %.loopexit79.i.i.i ], [ %.sroa.0.1.i.i.i, %.loopexit.i.i.i ] ; 4 uses
  switch i64 %.sroa.045.0.i.i.i, label %.preheader127.i.i.i [
    i64 2, label %bb.bf
    i64 0, label %.loopexit106.i.i.i
  ]

.peel.begin.jt1.i.i.i:                            ; preds = %.loopexit105.jt1.i.i.i
  %i.ja = zext nneg i16 %i.jw to i64
  %i.jb = add nuw nsw i16 %i.jw, 1
  store i16 %i.jb, ptr %i.jm, align 2, !noalias !12502
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.ja
  store i64 %.sroa.6.019.i.peel.i99.i.i, ptr %i.jc, align 8, !noalias !12502
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ], !noalias !12444
  %i.jd = add i64 %.sroa.014.297.i.i, 1           ; 2 uses
  %i.je = icmp eq ptr %.sroa.9.3.ph.jt1.i.i.i, %i.iw
  br i1 %i.je, label %.loopexit105.jt0.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_TjNtNtNtNtCs1xwejQucwHj_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoIterjENCINvMse_NtBS_3setINtB47_8BTreeSetjE16from_sorted_iterB3p_E0EE4peek0ECsgpMJJHpo27b_12typst_bundle.exit.i.peel.i.i.i

.peel.begin.jt0.i.i.i:                            ; preds = %.loopexit105.jt0.i.i.i
  %i.jf = zext nneg i16 %i.jy to i64
end_hunk_0
