Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19603
inline.NumDeleted: 9841
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position13PagedPositionE5queryCs7tN9tvpkfrg_12typst_layout:bb.a
  %i.ex = icmp ugt i64 %i.ew, 1                   ; 2 uses
  %i.ey = load ptr, ptr %i.eu, align 8, !alias.scope !23289, !noalias !23280, !nonnull !44
  %i.ez = getelementptr inbounds i8, ptr %i.ek, i64 -16
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !23289, !noalias !23280
  %.sink11.i.i.i.i = select i1 %i.ex, ptr %i.ey, ptr %i.eu ; 2 uses
  %.sink10.i.i.i.i = select i1 %i.ex, i64 %i.fa, i64 %i.ew ; 4 uses
  %.idx = shl nuw nsw i64 %.sink10.i.i.i.i, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !23288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !23288
  store ptr inttoptr (i64 16 to ptr), ptr %i.ab, align 8, !noalias !23288
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store i64 0, ptr %i.fc, align 8, !noalias !23288
  %.not.i.i = icmp eq i64 %.sink10.i.i.i.i, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCs7tN9tvpkfrg_12typst_layout.exit
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ab, i64 noundef %.sink10.i.i.i.i)
          to label %.lr.ph.i.i unwind label %bb.y, !noalias !23288

bb.y:                                             ; preds = %bb.x
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.ab, align 8, !noalias !23288, !nonnull !44, !noundef !44
  %.val3.i.i = load i64, ptr %i.fc, align 8, !noalias !23288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val.i.i, i64 %.val3.i.i) #53
          to label %common.resume unwind label %bb.z, !noalias !23288

bb.z:                                             ; preds = %bb.y
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !23288
  unreachable

.thread.i.i:                                      ; preds = %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCs7tN9tvpkfrg_12typst_layout.exit.thread, %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !23288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !23290
  br label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position13PagedPositionE5querys_0EECs7tN9tvpkfrg_12typst_layout.exit

.lr.ph.i.i:                                       ; preds = %bb.x
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !noalias !23288
  %.pre4.i.i = load i64, ptr %i.fc, align 8, !noalias !23288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !23288
  store ptr %.pre.i.i, ptr %i.ac, align 8, !noalias !23288
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store i64 %.pre4.i.i, ptr %i.ff, align 8, !noalias !23288
  call void @llvm.experimental.noalias.scope.decl(metadata !23291)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sink10.i.i.i.i)
          to label %.noexc.i211 unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23292

.noexc.i211:                                      ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !23290
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit.i.i217, %.noexc.i211
  %.sroa.012.020.i.i = phi ptr [ %.sink11.i.i.i.i, %.noexc.i211 ], [ %i.fi, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit.i.i217 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 8 ; 2 uses
  %.val2.i.i.i = load i64, ptr %.sroa.012.020.i.i, align 8, !noalias !23293, !noundef !44 ; 3 uses
  %i.fj = load i64, ptr %i.fg, align 8, !noalias !23294, !noundef !44 ; 2 uses
  %i.fk = icmp ult i64 %.val2.i.i.i, %i.fj
  br i1 %i.fk, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorNtNtB1y_8position13PagedPositionE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.i.i, i64 noundef %i.fj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #52
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23294

.noexc6.i:                                        ; preds = %bb.ab
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorNtNtB1y_8position13PagedPositionE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.aa
  %i.fl = load ptr, ptr %i.fh, align 8, !noalias !23294, !nonnull !44, !noundef !44
  %i.fm = getelementptr inbounds nuw [48 x i8], ptr %i.fl, i64 %.val2.i.i.i
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fm)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23295

.noexc7.i:                                        ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorNtNtB1y_8position13PagedPositionE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.pr.i.i212 = load ptr, ptr %i.aa, align 8, !noalias !23290
  %.not1.i.i213 = icmp eq ptr %.pr.i.i212, null
  %.pre.pre.i = load ptr, ptr %i.ac, align 8, !noalias !23288 ; 3 uses
  %.pre32.pre.i = load i64, ptr %i.ff, align 8, !noalias !23288 ; 2 uses
  br i1 %.not1.i.i213, label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position13PagedPositionE5querys_0EECs7tN9tvpkfrg_12typst_layout.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !23290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !23290
  call void @llvm.experimental.noalias.scope.decl(metadata !23296)
  %.not.i.i.i.i214 = icmp eq ptr %.pre.pre.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i214, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i215, label %bb.ae

bb.ad:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i215
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body.i207 unwind label %bb.af, !noalias !23297, !inline_history !16

bb.ae:                                            ; preds = %bb.ac
  %i.fo = getelementptr i8, ptr %.pre.pre.i, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.fo, align 8, !noalias !23298, !noundef !44
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i215

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i215: ; preds = %bb.ae, %bb.ac
  %.sroa.02.0.i.i.i.i216 = phi i64 [ %.val.i.i.i.i, %bb.ae ], [ 0, %bb.ac ]
  %i.fp = icmp eq i64 %.pre32.pre.i, %.sroa.02.0.i.i.i.i216
  %i.fq = zext i1 %i.fp to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %i.fq)
          to label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit.i.i217 unwind label %bb.ad, !noalias !23299, !inline_history !16

bb.af:                                            ; preds = %bb.ad
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !23297, !inline_history !16
  unreachable

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit.i.i217: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i215
  %i.fs = load ptr, ptr %i.ac, align 8, !alias.scope !23300, !noalias !23288, !nonnull !44, !noundef !44 ; 2 uses
  %i.ft = load i64, ptr %i.ff, align 8, !alias.scope !23300, !noalias !23288, !noundef !44 ; 2 uses
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !23290
  %i.fv = add i64 %i.ft, 1                        ; 2 uses
  store i64 %i.fv, ptr %i.ff, align 8, !alias.scope !23300, !noalias !23288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !23290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !23290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !23290
  %i.fw = icmp eq ptr %i.fi, %i.fb
  br i1 %i.fw, label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position13PagedPositionE5querys_0EECs7tN9tvpkfrg_12typst_layout.exit, label %bb.aa

.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorNtNtB1y_8position13PagedPositionE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.ab, %.lr.ph.i.i
  %lpad.loopexit.split-lp2062 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i207

.body.i207:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad
  %eh.lpad-body.i208 = phi { ptr, i32 } [ %i.fn, %bb.ad ], [ %lpad.loopexit.split-lp2062, %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val.i209 = load ptr, ptr %i.ac, align 8, !noalias !23288, !nonnull !44, !noundef !44
  %.val2.i210 = load i64, ptr %i.ff, align 8, !noalias !23288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val.i209, i64 %.val2.i210) #53
          to label %common.resume unwind label %bb.ag, !noalias !23288

bb.ag:                                            ; preds = %.body.i207
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !23288
  unreachable

_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position13PagedPositionE5querys_0EECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.noexc7.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit.i.i217, %.thread.i.i
  %i.fy = phi i64 [ 0, %.thread.i.i ], [ %i.fv, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit.i.i217 ], [ %.pre32.pre.i, %.noexc7.i ]
  %i.fz = phi ptr [ inttoptr (i64 16 to ptr), %.thread.i.i ], [ %i.fs, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit.i.i217 ], [ %.pre.pre.i, %.noexc7.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !23290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !23288
  br label %bb.da

bb.ah:                                            ; preds = %bb.b
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load i64, ptr %i.gc, align 16, !noundef !44
  %i.ge = getelementptr inbounds nuw [64 x i8], ptr %i.gb, i64 %i.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23301
  store ptr %0, ptr %i.e, align 8, !alias.scope !23302, !noalias !23303
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gb, ptr %.sroa.4539.0..sroa_idx, align 8, !alias.scope !23302, !noalias !23303
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ge, ptr %.sroa.5540.0..sroa_idx, align 8, !alias.scope !23302, !noalias !23303
  %.sroa.6541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %.sroa.6541.0..sroa_idx, align 8, !alias.scope !23302, !noalias !23303
  %.sroa.7542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.8543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  store i8 2, ptr %.sroa.8543.0..sroa_idx, align 8, !alias.scope !23302, !noalias !23303
  %.sroa.10545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  store i8 2, ptr %.sroa.10545.0..sroa_idx, align 8, !alias.scope !23302, !noalias !23303
  call void @llvm.experimental.noalias.scope.decl(metadata !23304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23305
  %i.gf = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position13PagedPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %bb.ai unwind label %bb.az, !noalias !23306, !inline_history !22856 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gg = extractvalue { i64, i64 } %i.gf, 0
  %i.gh = extractvalue { i64, i64 } %i.gf, 1
  %i.gi = trunc nuw i64 %i.gg to i1
  br i1 %i.gi, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position13PagedPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.aj

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position13PagedPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.ai
  %i.gj = load i8, ptr %.sroa.8543.0..sroa_idx, align 8, !range !51, !alias.scope !23307, !noalias !23308, !noundef !44
  %.not.i.i.i.i410 = icmp eq i8 %i.gj, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !23307, !noalias !23308
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.val3.i.i.i.i.i = load i64, ptr %i.gl, align 8, !alias.scope !23307, !noalias !23308
  %i.gm = sub i64 %.val3.i.i.i.i.i, %.val.i.i.i.i.i
  %i.gn = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !51, !alias.scope !23307, !noalias !23308, !noundef !44
  %.not53.i.i.i.i = icmp eq i8 %i.gn, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.val.i61.i.i.i.i = load i64, ptr %i.go, align 8, !alias.scope !23307, !noalias !23308
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val3.i62.i.i.i.i = load i64, ptr %i.gp, align 8, !alias.scope !23307, !noalias !23308
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
  br i1 %or.cond.i.i.i412, label %bb.ap, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413, !prof !64

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23305
  call void @llvm.experimental.noalias.scope.decl(metadata !23309), !noalias !23310
  call void @llvm.experimental.noalias.scope.decl(metadata !23311), !noalias !23308
  call void @llvm.experimental.noalias.scope.decl(metadata !23312), !noalias !23308
  %i.gw = load i8, ptr %.sroa.8543.0..sroa_idx, align 8, !range !51, !alias.scope !23313, !noalias !23308, !noundef !44
  %i.gx = icmp eq i8 %i.gw, 2
  br i1 %i.gx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.sroa.7542.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i unwind label %bb.al, !noalias !23306, !inline_history !22871

bb.al:                                            ; preds = %bb.ak
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !51, !alias.scope !23314, !noalias !23308, !noundef !44
  %i.ha = icmp eq i8 %i.gz, 2
  br i1 %i.ha, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hb)
          to label %common.resume unwind label %bb.ao, !noalias !23306, !inline_history !22871

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.hc = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !51, !alias.scope !23315, !noalias !23308, !noundef !44
  %i.hd = icmp eq i8 %i.hc, 2
  br i1 %i.hd, label %.thread579, label %bb.an

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.he), !noalias !23306, !inline_history !22871
  br label %.thread579

bb.ao:                                            ; preds = %bb.am
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !23316, !inline_history !22871
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position13PagedPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !23317, !inline_history !22871
  %i.hg = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.gu, i64 noundef range(i64 1, 17) 8) #55, !noalias !23317, !inline_history !22871 ; 4 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.ap, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i414

bb.ap:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position13PagedPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.4.0.ph.i.i422 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413 ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position13PagedPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7tN9tvpkfrg_12typst_layout.exit.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i422, i64 %i.gu) #56
          to label %.noexc.i423 unwind label %bb.az, !noalias !23306, !inline_history !22871

.noexc.i423:                                      ; preds = %bb.ap
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i414: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413
  store i64 %i.gh, ptr %i.hg, align 8, !noalias !23306
  store i64 %..i.i, ptr %i.c, align 8, !noalias !23305
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !23305
  %.sroa.6.0..sroa_idx.i.i417 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i417, align 8, !noalias !23305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !23306
  call void @llvm.experimental.noalias.scope.decl(metadata !23318), !noalias !23310
  call void @llvm.experimental.noalias.scope.decl(metadata !23319), !noalias !23308
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i414
  %i.ho = phi ptr [ %i.ie, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.hg, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i414 ] ; 16 uses
  %i.hp = phi i64 [ %i.ig, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i414 ] ; 11 uses
  %i.hq = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position13PagedPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.ar unwind label %bb.au, !noalias !23320, !inline_history !22882 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.hr = extractvalue { i64, i64 } %i.hq, 0
  %i.hs = extractvalue { i64, i64 } %i.hq, 1
  %i.ht = trunc nuw i64 %i.hr to i1
  br i1 %i.ht, label %bb.as, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorNtNtB4R_8position13PagedPositionE5querys0_0ENCB4J_s1_0EECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.hu = icmp samesign ult i64 %i.hp, 1152921504606846976
  call void @llvm.assume(i1 %i.hu), !noalias !23308
  %i.hv = load i64, ptr %i.c, align 8, !range !48, !alias.scope !23321, !noalias !23322, !noundef !44
  %i.hw = icmp eq i64 %i.hp, %i.hv
  br i1 %i.hw, label %bb.at, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit

bb.at:                                            ; preds = %bb.as
  %i.hx = load i8, ptr %i.hi, align 8, !range !51, !alias.scope !23323, !noalias !23320, !noundef !44
  %.not.i.i.i425 = icmp eq i8 %i.hx, 2
  %.val.i.i.i.i426 = load i64, ptr %i.hj, align 8, !alias.scope !23323, !noalias !23320
  %.val3.i.i.i.i = load i64, ptr %i.hk, align 8, !alias.scope !23323, !noalias !23320
  %i.hy = sub i64 %.val3.i.i.i.i, %.val.i.i.i.i426
  %i.hz = load i8, ptr %i.hl, align 8, !range !51, !alias.scope !23323, !noalias !23320, !noundef !44
  %.not53.i.i.i = icmp eq i8 %i.hz, 2
  %.val.i61.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !23323, !noalias !23320
  %.val3.i62.i.i.i = load i64, ptr %i.hn, align 8, !alias.scope !23323, !noalias !23320
  %i.ia = sub i64 %.val3.i62.i.i.i, %.val.i61.i.i.i
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %i.ia ; 2 uses
  %i.ib = call i64 @llvm.uadd.sat.i64(i64 %i.hy, i64 %.sroa.8.0.i.i.i)
  %i.ic = select i1 %.not.i.i.i425, i64 %.sroa.8.0.i.i.i, i64 %i.ib
  %i.id = call i64 @llvm.uadd.sat.i64(i64 %i.ic, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hp, i64 noundef %i.id, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit_crit_edge unwind label %bb.au, !noalias !23306

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit_crit_edge: ; preds = %bb.at
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !23321, !noalias !23322
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit_crit_edge, %bb.as
  %i.ie = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit_crit_edge ], [ %i.ho, %bb.as ] ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.hp
  store i64 %i.hs, ptr %i.if, align 8, !noalias !23320
  %i.ig = add nuw nsw i64 %i.hp, 1                ; 2 uses
  store i64 %i.ig, ptr %.sroa.6.0..sroa_idx.i.i417, align 8, !alias.scope !23321, !noalias !23322
  br label %bb.aq

bb.au:                                            ; preds = %bb.at, %bb.aq
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorNtNtB4a_8position13PagedPositionE5querys0_0ENCB42_s1_0EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b) #53
          to label %.body.i418 unwind label %bb.av, !noalias !23320, !inline_history !22882

bb.av:                                            ; preds = %bb.au
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !23320, !inline_history !22882
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorNtNtB4R_8position13PagedPositionE5querys0_0ENCB4J_s1_0EECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.ar
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorNtNtB4a_8position13PagedPositionE5querys0_0ENCB42_s1_0EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.ba unwind label %bb.aw, !noalias !23320, !inline_history !22882

bb.aw:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorNtNtB4R_8position13PagedPositionE5querys0_0ENCB4J_s1_0EECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body.i418

.body.i418:                                       ; preds = %bb.au, %bb.aw
  %eh.lpad-body.i419 = phi { ptr, i32 } [ %i.ij, %bb.aw ], [ %i.ih, %bb.au ] ; 2 uses
  %.val.i.i420 = load i64, ptr %i.c, align 8, !noalias !23305 ; 2 uses
  %i.ik = icmp eq i64 %.val.i.i420, 0
  br i1 %i.ik, label %common.resume, label %bb.ax

bb.ax:                                            ; preds = %.body.i418
  %.val6.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !23305, !nonnull !44, !noundef !44
  br label %common.resume.sink.split

bb.ay:                                            ; preds = %bb.az
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !23306, !inline_history !22856
  unreachable

bb.az:                                            ; preds = %bb.ap, %bb.ah
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorNtNtB4a_8position13PagedPositionE5querys0_0ENCB42_s1_0EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e) #53
          to label %common.resume unwind label %bb.ay, !noalias !23306, !inline_history !22856

.thread579:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23301
  br label %_RINvXsd_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB6_8BTreeSetjEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtB1h_8adapters3map3MapINtNtB2r_7flatten7FlatMapINtNtNtB1j_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3I_7content7ContentENCNvMs0_NtNtB3K_13introspection12introspectorINtB5P_19ElementIntrospectorNtNtB5R_8position13PagedPositionE5querys0_0ENCB5J_s1_0EECs7tN9tvpkfrg_12typst_layout.exit

bb.ba:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorNtNtB4R_8position13PagedPositionE5querys0_0ENCB4J_s1_0EECs7tN9tvpkfrg_12typst_layout.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23305
  %.sroa.0534.0.copyload = load i64, ptr %i.c, align 8, !noalias !23324 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23301
  %i.in = icmp samesign ult i64 %i.hp, 1152921504606846976
  call void @llvm.assume(i1 %i.in)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  %i.io = icmp eq i64 %i.hp, 1
  br i1 %i.io, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bb, !prof !46

bb.bb:                                            ; preds = %bb.ba
  %i.ip = icmp samesign ult i64 %i.hp, 21
  br i1 %i.ip, label %bb.bd, label %bb.bc, !prof !46

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainjNvYjNtNtB8_3cmp10PartialOrd2ltINtNtCs1xwejQucwHj_5alloc3vec3VecjEECsfxLd0MUuIWi_4usvg(ptr noalias nofree noundef nonnull align 8 %i.ho, i64 noundef range(i64 1, 1152921504606846976) %i.hp, ptr noalias nofree noundef nonnull %i.a) #57
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.by, !noalias !23325

bb.bd:                                            ; preds = %bb.bb
  %.idx.i.i395 = shl nuw nsw i64 %i.hp, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i.i395
  %.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  br label %.lr.ph.i.i396

.lr.ph.i.i396:                                    ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.bd
  %.sroa.0.04.i.i = phi ptr [ %.sroa.0.0.i.i397, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.0.01.i.i, %bb.bd ] ; 4 uses
  %.pn3.i.i = phi ptr [ %.sroa.0.04.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.ho, %bb.bd ] ; 3 uses
  %.val9.i.i.i = load i64, ptr %.sroa.0.04.i.i, align 8, !alias.scope !23326, !noalias !23325, !noundef !44 ; 3 uses
  %.val10.i.i.i = load i64, ptr %.pn3.i.i, align 8, !alias.scope !23327, !noalias !23325, !noundef !44 ; 2 uses
  %i.ir = icmp ult i64 %.val9.i.i.i, %.val10.i.i.i
  br i1 %i.ir, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i396
  store i64 %.val10.i.i.i, ptr %.sroa.0.04.i.i, align 8, !alias.scope !23328, !noalias !23325
  %i.is = icmp eq ptr %.pn3.i.i, %i.ho
  br i1 %i.is, label %._crit_edge, label %.lr.ph2039

.preheader.i.i:                                   ; preds = %.lr.ph2039
  store i64 %.val8.i.i.i, ptr %.sroa.0.0.i.i.i4002038, align 8, !alias.scope !23328, !noalias !23325
  %i.it = icmp eq ptr %i.iu, %i.ho
  br i1 %i.it, label %._crit_edge, label %.lr.ph2039

.lr.ph2039:                                       ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i.i.i4002038 = phi ptr [ %i.iu, %.preheader.i.i ], [ %.pn3.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i4002038, i64 -8 ; 3 uses
  %.val8.i.i.i = load i64, ptr %i.iu, align 8, !alias.scope !23327, !noalias !23325, !noundef !44 ; 2 uses
  %i.iv = icmp ult i64 %.val9.i.i.i, %.val8.i.i.i
  br i1 %i.iv, label %.preheader.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i.i, %.lr.ph2039, %.preheader.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %i.ho, %.preheader.i.i.preheader ], [ %i.ho, %.preheader.i.i ], [ %.sroa.0.0.i.i.i4002038, %.lr.ph2039 ]
  store i64 %.val9.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i, align 8, !alias.scope !23328, !noalias !23329
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %._crit_edge, %.lr.ph.i.i396
  %.sroa.0.0.i.i397 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8 ; 2 uses
  %.not.i.i398 = icmp eq ptr %.sroa.0.0.i.i397, %i.iq
  br i1 %.not.i.i398, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.i396

_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.ba, %bb.bc
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hp ; 4 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !23330
  %i.ix = call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !23330 ; 5 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.be, label %.loopexit79.i.i.i, !prof !47

bb.be:                                            ; preds = %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #56
          to label %.noexc.i.i389 unwind label %bb.bx, !noalias !23330

.noexc.i.i389:                                    ; preds = %bb.be
  unreachable

.loopexit79.i.i.i:                                ; preds = %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit
  store ptr null, ptr %i.ix, align 8, !noalias !23330
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 98
  store i16 0, ptr %i.iz, align 2, !noalias !23330
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
  store i16 %i.jb, ptr %i.jm, align 2, !noalias !23331
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.ja
  store i64 %.sroa.6.019.i.peel.i99.i.i, ptr %i.jc, align 8, !noalias !23331
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ], !noalias !23273
  %i.jd = add i64 %.sroa.014.297.i.i, 1           ; 2 uses
  %i.je = icmp eq ptr %.sroa.9.3.ph.jt1.i.i.i, %i.iw
  br i1 %i.je, label %.loopexit105.jt0.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_TjNtNtNtNtCs1xwejQucwHj_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoIterjENCINvMse_NtBS_3setINtB47_8BTreeSetjE16from_sorted_iterB3p_E0EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i

.peel.begin.jt0.i.i.i:                            ; preds = %.loopexit105.jt0.i.i.i
  %i.jf = zext nneg i16 %i.jy to i64
end_hunk_0
begin_hunk_1_@_RNvNtCs7tN9tvpkfrg_12typst_layout4flow11layout_flow:bb.a
  %i.brl = zext i64 %i.brj to i128
  %i.brm = zext i64 %i.brk to i128
  %i.brn = shl nuw i128 %i.brm, 64
  %i.bro = or disjoint i128 %i.brn, %i.brl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  invoke void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection7locatorNtB5_12SplitLocator10next_inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.fc, ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %4, i128 noundef %i.bro)
          to label %bb.ow unwind label %bb.ou

bb.ow:                                            ; preds = %bb.ov
  %i.brp = load i128, ptr %i.fc, align 16, !noundef !44 ; 2 uses
  %i.brq = load ptr, ptr %i.bpt, align 16, !align !62, !noundef !44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0522)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0522, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %.sroa.4523.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5526.0.copyload2166 = load double, ptr %.sroa.4.0..sroa_idx509, align 8
  %.sroa.5529.0.copyload = load double, ptr %i.ls, align 8 ; 4 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.4510.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !32274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !32274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !32274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bqd, i8 0, i64 24, i1 false), !noalias !32274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6549.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !32274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8551.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !32274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, i8 0, i64 24, i1 false), !noalias !32274
  store ptr %1, ptr %i.bpu, align 8, !noalias !32274
  store ptr %i.fg, ptr %i.bpv, align 8, !noalias !32274
  store ptr %i.fj, ptr %i.bpw, align 8, !noalias !32274
  store i64 0, ptr %i.bpx, align 8, !noalias !32274
  store double %.sroa.4523.0.copyload, ptr %i.bpy, align 8, !noalias !32274
  store double %.sroa.5529.0.copyload, ptr %i.bpz, align 8, !noalias !32274
  store i64 2, ptr %i.eb, align 8, !noalias !32274
  store i64 0, ptr %.sroa.41649.0..sroa_idx, align 8, !noalias !32274
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx1650, align 8, !noalias !32274
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx1651, align 8, !noalias !32274
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.0..sroa_idx1653, align 8, !noalias !32274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.101654.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.12.0..sroa_idx1656, align 8, !noalias !32274
  store i64 0, ptr %.sroa.131657.0..sroa_idx, align 8, !noalias !32274
  store i64 2, ptr %i.bqa, align 8, !noalias !32274
  store i64 0, ptr %.sroa.4547.0..sroa_idx, align 8, !noalias !32274
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5548.0..sroa_idx, align 8, !noalias !32274
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7550.0..sroa_idx, align 8, !noalias !32274
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.0..sroa_idx, align 8, !noalias !32274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10552.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.12.0..sroa_idx, align 8, !noalias !32274
  store i64 0, ptr %.sroa.13553.0..sroa_idx, align 8, !noalias !32274
  store ptr null, ptr %i.bqb, align 8, !noalias !32274
  store i64 0, ptr %i.bqc, align 8, !noalias !32274
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32274
  store i64 0, ptr %.sroa.5.0..sroa_idx.i54, align 8, !noalias !32274
  call void @llvm.experimental.noalias.scope.decl(metadata !32275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  invoke fastcc void @_RNvXs8_NtCs7tN9tvpkfrg_12typst_layout4flowNtB5_4WorkNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.fg)
          to label %bb.ox unwind label %.thread703.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31658

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i83: ; preds = %bb.ro
  %i.brr = landingpad { ptr, i32 }
          cleanup
  br label %bb.sw

.thread703.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ow, %bb.sd
  %lpad.loopexit.split-lp3778 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i83.thread

bb.ox:                                            ; preds = %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !32276
  %i.brs = lshr i64 %.sroa.6.0.copyload, 8        ; 2 uses
  %i.brt = trunc i64 %i.brs to i8                 ; 2 uses
  %i.bru = trunc i64 %i.brs to i1                 ; 3 uses
  %.inv.i20.i.peel = fcmp ord double %.sroa.4523.0.copyload, 0.000000e+00
  %spec.store.select1.i.i.peel = select i1 %.inv.i20.i.peel, double %.sroa.4523.0.copyload, double 0.000000e+00
  br label %bb.oy

bb.oy:                                            ; preds = %bb.sh, %bb.ox
  %i.brv = phi ptr [ %.pre, %bb.sh ], [ %i.fj, %bb.ox ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0522, i64 32, i1 false), !noalias !32277
  store double %.sroa.4523.0.copyload, ptr %.sroa.4523.0..sroa_idx524, align 8, !noalias !32277
  store double %.sroa.5529.0.copyload, ptr %.sroa.5529.0..sroa_idx530, align 8, !noalias !32277
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx532, align 8, !noalias !32277
  %i.brw = load <2 x double>, ptr %i.bqd, align 8, !alias.scope !32275
  %i.brx = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.brw) ; 2 uses
  %.inv.i.i77 = fcmp ord double %i.brx, 0.000000e+00
  %.neg = fneg double %i.brx
  %i.bry = select i1 %.inv.i.i77, double %.neg, double -0.000000e+00
  %i.brz = fadd double %.sroa.5526.0.copyload2166, %i.bry ; 2 uses
  %.inv.i80 = fcmp ord double %i.brz, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv.i80, double %i.brz, double 0.000000e+00 ; 3 uses
  store double %spec.store.select1.i, ptr %.sroa.5526.0..sroa_idx527, align 8, !noalias !32276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !32276
  call void @llvm.experimental.noalias.scope.decl(metadata !32278)
  call void @llvm.experimental.noalias.scope.decl(metadata !32279)
  call void @llvm.experimental.noalias.scope.decl(metadata !32280)
  %i.bsa = load i64, ptr %i.brv, align 8, !noalias !32281, !noundef !44
  %i.bsb = icmp eq i64 %i.bsa, 1
  br i1 %i.bsb, label %bb.oz, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator4nextB47_.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.se, %bb.oz, %.invoke2164, %bb.pg
  %lpad.loopexit.split-lp3775 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.oz:                                            ; preds = %bb.oy
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB2_8Composer6column(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.dh, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.eb, i128 noundef %i.brp, ptr noundef align 16 %i.brq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.di)
          to label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB2_8Composer13page_contents.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !32282, !inline_history !31665

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator4nextB47_.exit.i: ; preds = %bb.oy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !32283
  store double %spec.store.select1.i, ptr %i.db, align 8, !noalias !32283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !32283
  %i.bsc = load ptr, ptr %i.bqe, align 8, !alias.scope !32280, !noalias !32276, !nonnull !44, !align !49, !noundef !44 ; 2 uses
  %i.bsd = load i64, ptr %i.bqf, align 8, !alias.scope !32280, !noalias !32276, !noundef !44
  %i.bse = getelementptr inbounds nuw [8 x i8], ptr %i.bsc, i64 %i.bsd
  store i64 0, ptr %i.da, align 8, !noalias !32283
  store i64 0, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !32283
  store i64 1, ptr %.sroa.734.0..sroa_idx.i.i, align 8, !noalias !32283
  store ptr %i.db, ptr %.sroa.734.sroa.0.i.i.sroa.4.0..sroa.734.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !32283
  store ptr %i.bsc, ptr %.sroa.734.sroa.0.i.i.sroa.5.0..sroa.734.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !32283
  store ptr %i.bse, ptr %.sroa.734.sroa.0.i.i.sroa.6.0..sroa.734.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !32283
  store ptr %i.brv, ptr %.sroa.734.sroa.4.0..sroa.734.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32283
  call void @llvm.experimental.noalias.scope.decl(metadata !32284)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !32285
  store i64 0, ptr %i.bqg, align 8, !alias.scope !32286, !noalias !32287
  %i.bsf = call fastcc { i64, double } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1L_EEINtNtB1n_8repeat_n7RepeatNB1L_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3G_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator3nthB3K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.da, i64 noundef 1) #58, !noalias !32288 ; 2 uses
  %i.bsg = extractvalue { i64, double } %i.bsf, 0
  %i.bsh = trunc nuw i64 %i.bsg to i1
  br i1 %i.bsh, label %bb.pa, label %.noexc21.i

bb.pa:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator4nextB47_.exit.i
  %i.bsi = extractvalue { i64, double } %i.bsf, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !32289), !noalias !32287
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !32290), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32291), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32292), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32293), !noalias !32287
  %i.bsj = load i64, ptr %i.da, align 8, !range !52, !alias.scope !32294, !noalias !32287, !noundef !44
  %i.bsk = trunc nuw i64 %i.bsj to i1
  %.val.i.i.i.i.i = load i64, ptr %i.bqh, align 8, !alias.scope !32294, !noalias !32287
  %.sroa.7.0.i.i.i.i = select i1 %i.bsk, i64 %.val.i.i.i.i.i, i64 0 ; 2 uses
  %i.bsl = load i64, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !range !52, !alias.scope !32294, !noalias !32287, !noundef !44
  %i.bsm = trunc nuw i64 %i.bsl to i1
  %.val.i59.i.i.i.i = load i64, ptr %i.bqi, align 8, !alias.scope !32294, !noalias !32287
  %.sroa.8.0.i.i.i.i = select i1 %i.bsm, i64 %.val.i59.i.i.i.i, i64 0 ; 2 uses
  %i.bsn = load i64, ptr %.sroa.734.0..sroa_idx.i.i, align 8, !range !55, !alias.scope !32294, !noalias !32287, !noundef !44 ; 2 uses
  %.not.i.i.i.i356 = icmp eq i64 %i.bsn, 2
  br i1 %.not.i.i.i.i356, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bso = trunc nuw i64 %i.bsn to i1
  %i.bsp = load ptr, ptr %.sroa.734.sroa.0.i.i.sroa.5.0..sroa.734.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !32295, !noalias !32287, !noundef !44 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.bsp, null   ; 2 uses
  br i1 %i.bso, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %.val12.i.i.i.i.i.i = load ptr, ptr %.sroa.734.sroa.0.i.i.sroa.4.0..sroa.734.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !32295, !noalias !32287, !align !49, !noundef !44
  %i.bsq = icmp ne ptr %.val12.i.i.i.i.i.i, null
  %i.bsr = zext i1 %i.bsq to i64                  ; 2 uses
  br i1 %.not7.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i, label %bb.pf

bb.pd:                                            ; preds = %bb.pb
  br i1 %.not7.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %.val11.i.i.i.i.i.i = load ptr, ptr %.sroa.734.sroa.0.i.i.sroa.6.0..sroa.734.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !32295, !noalias !32287, !nonnull !44, !noundef !44
  %i.bss = ptrtoint ptr %.val11.i.i.i.i.i.i to i64
  %i.bst = ptrtoint ptr %i.bsp to i64
  %i.bsu = sub nuw i64 %i.bss, %i.bst
  %i.bsv = lshr exact i64 %i.bsu, 3
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i

bb.pf:                                            ; preds = %bb.pc
  %.val9.i.i.i.i.i.i = load ptr, ptr %.sroa.734.sroa.0.i.i.sroa.6.0..sroa.734.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !32295, !noalias !32287, !nonnull !44, !noundef !44
  %i.bsw = ptrtoint ptr %.val9.i.i.i.i.i.i to i64
  %i.bsx = ptrtoint ptr %i.bsp to i64
  %i.bsy = sub nuw i64 %i.bsw, %i.bsx
  %i.bsz = lshr exact i64 %i.bsy, 3
  %i.bta = add nuw nsw i64 %i.bsz, %i.bsr
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i: ; preds = %bb.pf, %bb.pe, %bb.pc
  %.sink20.i.i.i.i.i.i = phi i64 [ %i.bta, %bb.pf ], [ %i.bsv, %bb.pe ], [ %i.bsr, %bb.pc ]
  %i.btb = icmp eq i64 %.sink20.i.i.i.i.i.i, 0
  br i1 %i.btb, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator9size_hintB47_.exit.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i, %bb.pd, %bb.pa
  %i.btc = add i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator9size_hintB47_.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator9size_hintB47_.exit.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i
  %.sink77.i.i.sroa.phi.i.i = phi ptr [ %.sroa.8.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i ], [ %.sroa.5.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.btc, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i ]
  %i.btd = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i)
  store i64 %.sink.i.i.i.i, ptr %.sink77.i.i.sroa.phi.i.i, align 8, !alias.scope !32296, !noalias !32297
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.bte = load i64, ptr %i.bqg, align 8, !alias.scope !32298, !noalias !32287, !noundef !44
  %i.btf = call i64 @llvm.usub.sat.i64(i64 %i.btd, i64 %i.bte)
  %i.btg = call i64 @llvm.uadd.sat.i64(i64 %i.btf, i64 1) ; 2 uses
  %..i.i357 = call noundef i64 @llvm.umax.i64(i64 %i.btg, i64 4) ; 2 uses
  %i.bth = shl i64 %..i.i357, 3                   ; 3 uses
  %i.bti = icmp ugt i64 %i.btg, 2305843009213693951
  %.not.i.i.i358 = icmp ugt i64 %i.bth, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bti, %.not.i.i.i358
  br i1 %or.cond.i.i.i, label %bb.pg, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !64

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator9size_hintB47_.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !32299
  %i.btj = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bth, i64 noundef range(i64 1, 17) 8) #55, !noalias !32299 ; 4 uses
  %i.btk = icmp eq ptr %i.btj, null
  br i1 %i.btk, label %bb.pg, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i

bb.pg:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator9size_hintB47_.exit.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator9size_hintB47_.exit.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.bth) #56
          to label %.noexc363 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !32285

.noexc363:                                        ; preds = %bb.pg
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store double %i.bsi, ptr %i.btj, align 8, !noalias !32285
  store i64 %..i.i357, ptr %i.ae, align 8, !noalias !32285
  store ptr %i.btj, ptr %.sroa.4.0..sroa_idx.i359, align 8, !noalias !32285
  store i64 1, ptr %.sroa.6.0..sroa_idx.i360, align 8, !noalias !32285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !32285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %i.da, i64 96, i1 false), !noalias !32288
  call void @llvm.experimental.noalias.scope.decl(metadata !32300), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32301), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32302), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32303), !noalias !32287
  %.pre4.i.i.i = load i64, ptr %i.bqj, align 8, !alias.scope !32304, !noalias !32285 ; 2 uses
  br label %bb.ph

bb.ph:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.btl = phi ptr [ %i.bvs, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %i.btj, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.13583.0.copyload = phi i64 [ %i.bvv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 6 uses
  %i.btm = phi i64 [ %i.bun, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.pre4.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.btn = phi i64 [ %i.bvt, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.pre4.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32305), !noalias !32287
  %.not.i.i.i7.i = icmp eq i64 %i.btn, 0
  br i1 %.not.i.i.i7.i, label %bb.pi, label %bb.pt, !prof !46

bb.pi:                                            ; preds = %bb.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !32306), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32307), !noalias !32287
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !32308, !noalias !32285
  %i.bto = load ptr, ptr %i.bqo, align 8, !alias.scope !32308, !noalias !32285, !nonnull !44 ; 3 uses
  %i.btp = ptrtoaddr ptr %i.bto to i64
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bqp, align 8, !alias.scope !32308, !noalias !32285, !nonnull !44, !align !49 ; 2 uses
  %.promoted15.i.i.i.i.i.i = load i64, ptr %i.bqk, align 8, !alias.scope !32308, !noalias !32285 ; 2 uses
  %.promoted16.i.i.i.i.i.i = load i64, ptr %i.bql, align 8, !alias.scope !32308, !noalias !32285 ; 2 uses
  %.promoted17.i.i.i.i.i.i = load ptr, ptr %i.bqm, align 8, !alias.scope !32308, !noalias !32285 ; 2 uses
  %.promoted18.i.i.i.i.i.i = load ptr, ptr %i.bqn, align 8, !alias.scope !32308, !noalias !32285 ; 5 uses
  %i.btq = trunc nuw i64 %.promoted.i.i.i.i.i.i to i1
  br i1 %i.btq, label %bb.pj, label %bb.pl

bb.pj:                                            ; preds = %bb.pi
  %.not.i.i.i.peel.i.i.i.i.i.i = icmp eq i64 %.promoted15.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.peel.i.i.i.i.i.i, label %bb.pk, label %._RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i

._RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.pj
  %.pre.i.i.i.i.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !32309, !noalias !32285
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

bb.pk:                                            ; preds = %bb.pj
  store i64 0, ptr %i.ad, align 8, !alias.scope !32310, !noalias !32285
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pi
  call void @llvm.experimental.noalias.scope.decl(metadata !32311), !noalias !32287
  %.not.i.peel.i.i.i.i.i.i = icmp eq i64 %.promoted16.i.i.i.i.i.i, 2
  br i1 %.not.i.peel.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  call void @llvm.experimental.noalias.scope.decl(metadata !32312), !noalias !32287
  %i.btr = trunc nuw i64 %.promoted16.i.i.i.i.i.i to i1
  br i1 %i.btr, label %bb.pn, label %bb.pp

bb.pn:                                            ; preds = %bb.pm
  store ptr null, ptr %i.bqm, align 8, !alias.scope !32313, !noalias !32285
  %.not.i.i.i.i.peel.i.i.i.i.i.i = icmp eq ptr %.promoted17.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.peel.i.i.i.i.i.i, label %bb.po, label %.peel.next.i.i.i.i.i.i

bb.po:                                            ; preds = %bb.pn
  store i64 0, ptr %i.bql, align 8, !alias.scope !32314, !noalias !32285
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pm
  %.not.i.i.i.i.i.peel.i.i.i.i.i.i = icmp eq ptr %.promoted18.i.i.i.i.i.i, null
  %i.bts = icmp eq ptr %.promoted18.i.i.i.i.i.i, %i.bto
  %or.cond.i.i.i.i.i.peel.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.peel.i.i.i.i.i.i, i1 true, i1 %i.bts
  br i1 %or.cond.i.i.i.i.i.peel.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.peel.next.i.thread.i.i.i.i.i

.peel.next.i.i.i.i.i.i:                           ; preds = %bb.pn
  %.val2.i.i.peel.i.i.i.i.i.i = load double, ptr %.promoted17.i.i.i.i.i.i, align 8, !noalias !32315
  %i.btt = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !noalias !32315, !noundef !44 ; 3 uses
  %.not.i.i.i2.peel.i.i.i.i.i.i = icmp eq i64 %i.btt, 0
  store i64 %i.btt, ptr %i.bqk, align 8, !alias.scope !32308, !noalias !32285
  br i1 %.not.i.i.i2.peel.i.i.i.i.i.i, label %bb.pq, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i.i.i.i

.peel.next.i.thread.i.i.i.i.i:                    ; preds = %bb.pp
  %i.btu = getelementptr inbounds nuw i8, ptr %.promoted18.i.i.i.i.i.i, i64 8 ; 2 uses
  store ptr %i.btu, ptr %i.bqn, align 8, !alias.scope !32316, !noalias !32285
  %.val2.i.i.peel.i8.i.i.i.i.i = load double, ptr %.promoted18.i.i.i.i.i.i, align 8, !noalias !32315
  %i.btv = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !noalias !32315, !noundef !44 ; 3 uses
  %.not.i.i.i2.peel.i9.i.i.i.i.i = icmp eq i64 %i.btv, 0
  store i64 %i.btv, ptr %i.bqk, align 8, !alias.scope !32308, !noalias !32285
  br i1 %.not.i.i.i2.peel.i9.i.i.i.i.i, label %.lr.ph.split.us.preheader.thread.i.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i.i.i.i

bb.pq:                                            ; preds = %.peel.next.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bql, i8 0, i64 16, i1 false), !alias.scope !32317, !noalias !32285
  br label %.lr.ph.split.us.preheader.thread.i.i.i.i.i

.lr.ph.split.us.preheader.thread.i.i.i.i.i:       ; preds = %bb.pq, %.peel.next.i.thread.i.i.i.i.i
  %i.btw = phi ptr [ %.promoted18.i.i.i.i.i.i, %bb.pq ], [ %i.btu, %.peel.next.i.thread.i.i.i.i.i ] ; 4 uses
  %.not.i.i.i.i.i.i.us.peel.i.i.i.i.i = icmp eq ptr %i.btw, null
  %i.btx = icmp eq ptr %i.btw, %i.bto
  %or.cond.i.i.i.i.i.i.us.peel.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.us.peel.i.i.i.i.i, i1 true, i1 %i.btx
  br i1 %or.cond.i.i.i.i.i.i.us.peel.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i.i, label %.lr.ph.split.us.peel.next.i.i.preheader.i.i.i

.lr.ph.split.us.peel.next.i.i.preheader.i.i.i:    ; preds = %.lr.ph.split.us.preheader.thread.i.i.i.i.i
  %i.bty = ptrtoaddr ptr %i.btw to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.btw, i64 8
  %i.btz = add i64 %i.btp, -8
  %i.bua = sub i64 %i.btz, %i.bty
  %i.bub = and i64 %i.bua, -8
  %scevgep3.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.bub
  store ptr %scevgep3.i.i.i, ptr %i.bqn, align 8, !alias.scope !32318, !noalias !32285
  br label %.loopexit.loopexit.i.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i.i.i.i: ; preds = %.peel.next.i.thread.i.i.i.i.i, %.peel.next.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.peel.i11.i.i.i.i.i = phi double [ %.val2.i.i.peel.i8.i.i.i.i.i, %.peel.next.i.thread.i.i.i.i.i ], [ %.val2.i.i.peel.i.i.i.i.i.i, %.peel.next.i.i.i.i.i.i ] ; 2 uses
  %i.buc = phi i64 [ %i.btv, %.peel.next.i.thread.i.i.i.i.i ], [ %i.btt, %.peel.next.i.i.i.i.i.i ]
  store i64 1, ptr %i.ad, align 8, !alias.scope !32308, !noalias !32285
  store double %.sroa.5.0.i.i.i.peel.i11.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !32308, !noalias !32285
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i.i.i.i, %._RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i
  %i.bud = phi double [ %.pre.i.i.i.i.i.i, %._RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.peel.i11.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi i64 [ %.promoted15.i.i.i.i.i.i, %._RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i ], [ %i.buc, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i.i.i.i ]
  %i.bue = add i64 %.lcssa.i.i.i.i.i.i, -1
  store i64 %i.bue, ptr %i.bqk, align 8, !alias.scope !32309, !noalias !32285
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i

.loopexit.loopexit.i.i.i.i.i.i:                   ; preds = %.lr.ph.split.us.peel.next.i.i.preheader.i.i.i, %.lr.ph.split.us.preheader.thread.i.i.i.i.i
  store i64 0, ptr %i.ad, align 8, !alias.scope !32308, !noalias !32285
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.loopexit.loopexit.i.i.i.i.i.i, %bb.pp, %bb.pl
  %i.buf = load i64, ptr %i.bqq, align 8, !range !52, !alias.scope !32319, !noalias !32285, !noundef !44
  %i.bug = trunc nuw i64 %i.buf to i1
  br i1 %i.bug, label %bb.pr, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i

bb.pr:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.buh = load i64, ptr %i.bqr, align 8, !alias.scope !32320, !noalias !32285, !noundef !44 ; 2 uses
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq i64 %i.buh, 0
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %bb.ps, label %_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.thread.i6.i.i.i.i.i.i

_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.thread.i6.i.i.i.i.i.i: ; preds = %bb.pr
  %i.bui = add i64 %i.buh, -1
  %i.buj = load double, ptr %i.bqs, align 8, !alias.scope !32320, !noalias !32285
  store i64 %i.bui, ptr %i.bqr, align 8, !alias.scope !32320, !noalias !32285
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i

bb.ps:                                            ; preds = %bb.pr
  store i64 0, ptr %i.bqq, align 8, !alias.scope !32319, !noalias !32285
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i: ; preds = %bb.ps, %_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.thread.i6.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  %.sroa.3.0.i3.pn.i.i.i.i.i.i = phi double [ %i.bud, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %bb.ps ], [ %i.buj, %_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.thread.i6.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.i.i ], [ 0, %bb.ps ], [ 1, %_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.thread.i6.i.i.i.i.i.i ]
  %i.buk = insertvalue { i64, double } poison, i64 %.sroa.0.0.i.i.i.i.i.i, 0
  %i.bul = insertvalue { i64, double } %i.buk, double %.sroa.3.0.i3.pn.i.i.i.i.i.i, 1
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator4nextB47_.exit.i.i.i

bb.pt:                                            ; preds = %bb.ph
  store i64 0, ptr %i.bqj, align 8, !alias.scope !32304, !noalias !32285
  %i.bum = call fastcc { i64, double } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1L_EEINtNtB1n_8repeat_n7RepeatNB1L_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3G_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator3nthB3K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ad, i64 noundef %i.btn) #58, !noalias !32321
  %.pre.i.i.i = load i64, ptr %i.bqj, align 8, !alias.scope !32304, !noalias !32285 ; 2 uses
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator4nextB47_.exit.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator4nextB47_.exit.i.i.i: ; preds = %bb.pt, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i
  %i.bun = phi i64 [ %.pre.i.i.i, %bb.pt ], [ %i.btm, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i ] ; 3 uses
  %i.buo = phi i64 [ %.pre.i.i.i, %bb.pt ], [ 0, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i ]
  %.pn.i.i.i.i = phi { i64, double } [ %i.bum, %bb.pt ], [ %i.bul, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1R_EEINtNtB1t_8repeat_n7RepeatNB1R_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB3M_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator4nextB3Q_.exit.i.i.i.i ] ; 2 uses
  %i.bup = extractvalue { i64, double } %.pn.i.i.i.i, 0
  %i.buq = extractvalue { i64, double } %.pn.i.i.i.i, 1
  %i.bur = trunc nuw i64 %i.bup to i1
  br i1 %i.bur, label %bb.pu, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4skip4SkipINtNtB26_7flatten7FlatMapINtNtB26_5chain5ChainINtNtNtB28_7sources4once4OnceRBR_EINtNtNtB2a_5slice4iter4IterBR_EEINtNtB3G_8repeat_n7RepeatNBR_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB5e_8Composer13page_contents0EEE11spec_extendB5i_.exit.i

bb.pu:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBa_5slice4iter4IterB28_EEINtNtB1K_8repeat_n7RepeatNB28_ENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB43_8Composer13page_contents0EENtNtNtB8_6traits8iterator8Iterator4nextB47_.exit.i.i.i
  %i.bus = icmp samesign ult i64 %.sroa.13583.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.bus), !noalias !32287
  %i.but = load i64, ptr %i.ae, align 8, !range !48, !alias.scope !32322, !noalias !32285, !noundef !44
  %i.buu = icmp eq i64 %.sroa.13583.0.copyload, %i.but
  br i1 %i.buu, label %bb.pv, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.pv:                                            ; preds = %bb.pu
  call void @llvm.experimental.noalias.scope.decl(metadata !32323), !noalias !32287
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !32324), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32325), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32326), !noalias !32287
  call void @llvm.experimental.noalias.scope.decl(metadata !32327), !noalias !32287
  %i.buv = load i64, ptr %i.ad, align 8, !range !52, !alias.scope !32328, !noalias !32285, !noundef !44
  %i.buw = trunc nuw i64 %i.buv to i1
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bqk, align 8, !alias.scope !32328, !noalias !32285
  %.sroa.7.0.i.i.i.i.i.i = select i1 %i.buw, i64 %.val.i.i.i.i.i.i.i, i64 0 ; 2 uses
  %i.bux = load i64, ptr %i.bqq, align 8, !range !52, !alias.scope !32328, !noalias !32285, !noundef !44
  %i.buy = trunc nuw i64 %i.bux to i1
  %.val.i59.i.i.i.i.i.i = load i64, ptr %i.bqr, align 8, !alias.scope !32328, !noalias !32285
  %.sroa.8.0.i.i.i.i.i.i = select i1 %i.buy, i64 %.val.i59.i.i.i.i.i.i, i64 0 ; 2 uses
  %i.buz = load i64, ptr %i.bql, align 8, !range !55, !alias.scope !32328, !noalias !32285, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.buz, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i.i.i, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.bva = trunc nuw i64 %i.buz to i1
  %i.bvb = load ptr, ptr %i.bqn, align 8, !alias.scope !32329, !noalias !32285, !noundef !44 ; 3 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvb, null ; 2 uses
  br i1 %i.bva, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %.val12.i.i.i.i.i.i.i.i = load ptr, ptr %i.bqm, align 8, !alias.scope !32329, !noalias !32285, !align !49, !noundef !44
  %i.bvc = icmp ne ptr %.val12.i.i.i.i.i.i.i.i, null
  %i.bvd = zext i1 %i.bvc to i64                  ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.i.i.i.i.i.i, label %bb.qa

bb.py:                                            ; preds = %bb.pw
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtNtBb_5slice4iter4IterB1J_EENCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB39_8Composer13page_contents0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit.thread.i.i.i.i.i.i, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.bqo, align 8, !alias.scope !32329, !noalias !32285, !nonnull !44, !noundef !44
  %i.bve = ptrtoint ptr %.val11.i.i.i.i.i.i.i.i to i64
end_hunk_1
begin_hunk_2_@_RNvNtCs7tN9tvpkfrg_12typst_layout4math15layout_realized:bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !32823
  unreachable

common.resume:                                    ; preds = %bb.bx, %bb.bq, %bb.ba, %bb.az, %bb.s, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.jl, %bb.bq ], [ %i.bf, %bb.e ], [ %i.cc, %bb.k ], [ %i.df, %bb.s ], [ %lpad.thr_comm, %bb.ba ], [ %i.kd, %bb.bx ], [ %lpad.thr_comm, %bb.az ]
  resume { ptr, i32 } %common.resume.op

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit: ; preds = %bb.c, %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !32821, !nonnull !44, !noundef !44
  %i.bj = getelementptr inbounds nuw [304 x i8], ptr %i.bi, i64 %i.bc ; 2 uses
  store i64 3, ptr %i.bj, align 16, !noalias !32817
  %.sroa.5.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store double %spec.store.select5, ptr %.sroa.5.0..sroa_idx206, align 8, !noalias !32817
  %i.bk = add i64 %i.bc, 1
  store i64 %i.bk, ptr %i.bb, align 8, !alias.scope !32821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32818
  br label %bb.bs

bb.g:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val183 = load i64, ptr %i.bl, align 8, !noundef !44 ; 2 uses
  %.not.i = icmp eq i64 %.val183, 0
  br i1 %.not.i, label %bb.h, label %_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext4font.exit, !prof !47

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #52
  unreachable

_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext4font.exit: ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val182 = load ptr, ptr %i.bm, align 8, !nonnull !44, !noundef !44
  %i.bn = getelementptr [8 x i8], ptr %.val182, i64 %.val183
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8     ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 184 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 192
  %i.bs = load atomic i32, ptr %i.br acquire, align 4, !noalias !32824
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.i, !prof !46

bb.i:                                             ; preds = %_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext4font.exit
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bo)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext4font.exit, %bb.i
  %i.bu = load ptr, ptr %i.bq, align 8, !nonnull !44, !noundef !44
  %i.bv = load double, ptr %i.bu, align 8, !noundef !44
  %i.bw = tail call noundef double @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout2emNtB5_2EmNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %i.bv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32825)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32826
  store i64 3, ptr %i.d, align 16, !alias.scope !32827, !noalias !32825
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.bw, ptr %.sroa.5211.0..sroa_idx, align 8, !alias.scope !32827, !noalias !32825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32828)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !32829, !noundef !44 ; 3 uses
  %i.ca = load i64, ptr %i.bx, align 8, !range !48, !alias.scope !32829, !noundef !44
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.j, label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit194

bb.j:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit194 unwind label %bb.k, !noalias !32830

bb.k:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.d) #53
          to label %common.resume unwind label %bb.l, !noalias !32831

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !32831
  unreachable

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit194: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !32829, !nonnull !44, !noundef !44
  %i.cg = getelementptr inbounds nuw [304 x i8], ptr %i.cf, i64 %i.bz ; 2 uses
  store i64 3, ptr %i.cg, align 16, !noalias !32825
  %.sroa.5211.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store double %i.bw, ptr %.sroa.5211.0..sroa_idx212, align 8, !noalias !32825
  %i.ch = add i64 %i.bz, 1
  store i64 %i.ch, ptr %i.by, align 8, !alias.scope !32829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32826
  br label %bb.bs

bb.m:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load i8, ptr %i.ci, align 16, !range !57, !noundef !44
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.bt, label %bb.bu

bb.n:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !noundef !44 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.co = load i8, ptr %i.cn, align 1, !range !57, !noundef !44
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n, %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit195, %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = load i64, ptr %i.cq, align 16, !range !116, !noundef !44
  switch i64 %i.cr, label %default.unreachable285 [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %bb.z
    i64 6, label %bb.aa
    i64 7, label %bb.ab
    i64 8, label %bb.ac
    i64 9, label %bb.ad
    i64 10, label %bb.ae
    i64 11, label %bb.af
    i64 12, label %bb.ag
    i64 13, label %bb.ah
    i64 14, label %bb.ai
    i64 15, label %bb.aj
    i64 16, label %bb.ak
    i64 17, label %bb.al
  ]

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store double %i.cm, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store double 0.000000e+00, ptr %i.z, align 8
  %i.cs = call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br i1 %i.cs, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = call fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2) ; 2 uses
  %i.cu = extractvalue { double, double } %i.ct, 0
  %i.cv = extractvalue { double, double } %i.ct, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.cw = call noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.cu, double noundef %i.cv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.cx = fmul double %i.cm, %i.cw                ; 2 uses
  %i.cy = call double @llvm.fabs.f64(double %i.cx)
  %i.cz = fcmp one double %i.cy, +inf
  %spec.store.select7 = select i1 %i.cz, double %i.cx, double 0.000000e+00 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32832)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32833
  store i64 3, ptr %i.c, align 16, !alias.scope !32834, !noalias !32832
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store double %spec.store.select7, ptr %.sroa.5243.0..sroa_idx, align 8, !alias.scope !32834, !noalias !32832
  call void @llvm.experimental.noalias.scope.decl(metadata !32835)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !32836, !noundef !44 ; 3 uses
  %i.dd = load i64, ptr %i.da, align 8, !range !48, !alias.scope !32836, !noundef !44
  %i.de = icmp eq i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.r, label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit195

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit195 unwind label %bb.s, !noalias !32837

bb.s:                                             ; preds = %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.c) #53
          to label %common.resume unwind label %bb.t, !noalias !32838

bb.t:                                             ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !32838
  unreachable

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit195: ; preds = %bb.q, %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !32836, !nonnull !44, !noundef !44
  %i.dj = getelementptr inbounds nuw [304 x i8], ptr %i.di, i64 %i.dc ; 2 uses
  store i64 3, ptr %i.dj, align 16, !noalias !32832
  %.sroa.5243.0..sroa_idx244 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store double %spec.store.select7, ptr %.sroa.5243.0..sroa_idx244, align 8, !noalias !32832
  %i.dk = add i64 %i.dc, 1
  store i64 %i.dk, ptr %i.db, align 8, !alias.scope !32836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32833
  br label %bb.o

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.ag, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.dl = load i64, ptr %i.ag, align 16, !range !85, !noundef !44 ; 3 uses
  %i.dm = icmp eq i64 %i.dl, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.dq = load i64, ptr %i.dp, align 16           ; 2 uses
  br i1 %i.dm, label %bb.am, label %bb.an

bb.v:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dr, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ds = load i64, ptr %i.ak, align 8, !range !73, !noundef !44 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  br i1 %i.dt, label %bb.ar, label %bb.as

bb.w:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !44, !noundef !44
  %i.ea = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7radical14layout_radical(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(432) %i.dz, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0      ; 2 uses
  %.not176 = icmp eq ptr %i.eb, null
  br i1 %.not176, label %bb.ap, label %bb.bb

bb.x:                                             ; preds = %bb.o
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ee = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6fenced13layout_fenced(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(448) %i.ed, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 2 uses
  %.not175 = icmp eq ptr %i.ef, null
  br i1 %.not175, label %bb.ap, label %bb.bc

bb.y:                                             ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ei = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math8fraction15layout_fraction(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.eh, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ej = extractvalue { ptr, i64 } %i.ei, 0      ; 2 uses
  %.not174 = icmp eq ptr %i.ej, null
  br i1 %.not174, label %bb.ap, label %bb.bd

bb.z:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.em = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math8fraction22layout_skewed_fraction(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(432) %i.el, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.en = extractvalue { ptr, i64 } %i.em, 0      ; 2 uses
  %.not173 = icmp eq ptr %i.en, null
  br i1 %.not173, label %bb.ap, label %bb.be

bb.aa:                                            ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.eq = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.ep, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.er = extractvalue { ptr, i64 } %i.eq, 0      ; 2 uses
  %.not172 = icmp eq ptr %i.er, null
  br i1 %.not172, label %bb.ap, label %bb.bf

bb.ab:                                            ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !44, !noundef !44
  %i.eu = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(1008) %i.et, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  %i.ev = extractvalue { ptr, i64 } %i.eu, 0      ; 2 uses
  %.not171 = icmp eq ptr %i.ev, null
  br i1 %.not171, label %bb.ap, label %bb.bg

bb.ac:                                            ; preds = %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ey = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6accent13layout_accent(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.ex, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ez = extractvalue { ptr, i64 } %i.ey, 0      ; 2 uses
  %.not170 = icmp eq ptr %i.ez, null
  br i1 %.not170, label %bb.ap, label %bb.bh

bb.ad:                                            ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fc = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6cancel13layout_cancel(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(272) %i.fb, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fd = extractvalue { ptr, i64 } %i.fc, 0      ; 2 uses
  %.not169 = icmp eq ptr %i.fd, null
  br i1 %.not169, label %bb.ap, label %bb.bi

bb.ae:                                            ; preds = %bb.o
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fg = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4line11layout_line(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(160) %i.ff, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.fh = extractvalue { ptr, i64 } %i.fg, 0      ; 2 uses
  %.not168 = icmp eq ptr %i.fh, null
  br i1 %.not168, label %bb.ap, label %bb.bj

bb.af:                                            ; preds = %bb.o
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts13layout_primes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fj, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ap

bb.ag:                                            ; preds = %bb.o
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fl = call fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4text11layout_text(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.fk, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fm = extractvalue { ptr, i64 } %i.fl, 0      ; 2 uses
  %.not167 = icmp eq ptr %i.fm, null
  br i1 %.not167, label %bb.ap, label %bb.bk

bb.ah:                                            ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4text13layout_number(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fn, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ap

bb.ai:                                            ; preds = %bb.o
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4text12layout_glyph(ptr noundef nonnull align 8 %i.fp, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ap

bb.aj:                                            ; preds = %bb.o
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 45
  %.val188 = load i8, ptr %i.fr, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 46
  %.val189 = load i8, ptr %i.fs, align 2
  %i.ft = call fastcc { ptr, i64 } @_RNvNtCs7tN9tvpkfrg_12typst_layout4math10layout_box(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.fq, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, i8 %.val188, i8 %.val189) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fu = extractvalue { ptr, i64 } %i.ft, 0      ; 2 uses
  %.not166 = icmp eq ptr %i.fu, null
  br i1 %.not166, label %bb.ap, label %bb.bl

bb.ak:                                            ; preds = %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !44, !noundef !44
  %i.fx = getelementptr i8, ptr %i.fw, i64 144
  %.val190 = load ptr, ptr %i.fx, align 16, !nonnull !44, !align !49, !noundef !44
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val191 = load ptr, ptr %i.fy, align 8, !nonnull !44, !align !49, !noundef !44
  call fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout4math13layout_mathml(ptr nonnull %.val190, ptr nonnull %.val191)
  br label %bb.ap

bb.al:                                            ; preds = %bb.o
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 45
  %.val192 = load i8, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 46
  %.val193 = load i8, ptr %i.gb, align 2
  %i.gc = call fastcc { ptr, i64 } @_RNvNtCs7tN9tvpkfrg_12typst_layout4math15layout_external(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.fz, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, i8 %.val192, i8 %.val193) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gd = extractvalue { ptr, i64 } %i.gc, 0      ; 2 uses
  %.not = icmp eq ptr %i.gd, null
  br i1 %.not, label %bb.ap, label %bb.bm

bb.am:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  br label %bb.bs

bb.an:                                            ; preds = %bb.u
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6159.0..sroa_idx, i64 56, i1 false)
  %.sroa.6159.sroa.4.0..sroa.6159.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ge = load <2 x double>, ptr %.sroa.6159.sroa.4.0..sroa.6159.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %.sroa.6159.sroa.6.0..sroa.6159.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %.sroa.6159.sroa.6.0.copyload = load double, ptr %.sroa.6159.sroa.6.0..sroa.6159.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.6159.sroa.7.0..sroa.6159.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.6159.sroa.7.0..sroa.6159.0..sroa_idx.sroa_idx, i64 160, i1 false)
  %.sroa.6159.sroa.8.0..sroa.6159.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  %.sroa.6159.sroa.8.0.copyload = load double, ptr %.sroa.6159.sroa.8.0..sroa.6159.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6159.sroa.9.0..sroa.6159.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.15, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6159.sroa.9.0..sroa.6159.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.gf = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.gg = call i64 @llvm.usub.sat.i64(i64 %i.dl, i64 1)
  %i.gh = extractelement <2 x double> %i.ge, i64 0 ; 2 uses
  %i.gi = extractelement <2 x double> %i.ge, i64 1 ; 2 uses
  switch i64 %i.gg, label %bb.ao [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread262
    i64 3, label %._crit_edge.i
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread262: ; preds = %bb.an
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.gj = bitcast i64 %i.gf to double
  %i.gk = fmul double %i.gj, 5.000000e-01         ; 3 uses
  %.inv12.i = fcmp ord double %i.gk, 0.000000e+00
  %spec.store.select13.i = select i1 %.inv12.i, double %i.gk, double 0.000000e+00
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.an, %bb.ao
  %spec.store.select14.i = phi double [ %spec.store.select13.i, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %.sroa.09.0.i = phi double [ %i.gk, %bb.ao ], [ 0.000000e+00, %bb.an ] ; 2 uses
  %.inv10.i = fcmp ord double %.sroa.09.0.i, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv10.i, double %.sroa.09.0.i, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread: ; preds = %bb.an, %._crit_edge.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread262
  %.sroa.0.0.i260 = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.gh, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread262 ], [ %.sroa.6159.sroa.8.0.copyload, %bb.an ]
  %.sroa.4.0.i = phi double [ %spec.store.select1.i, %._crit_edge.i ], [ %.sroa.6159.sroa.6.0.copyload, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread262 ], [ %i.gi, %bb.an ]
  %.sroa.0.0.i196 = phi double [ %spec.store.select14.i, %._crit_edge.i ], [ %i.gi, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread262 ], [ %i.gh, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %i.dl, ptr %i.ac, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.gf, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.dq, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  %.sroa.9.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store <2 x double> %i.ge, ptr %.sroa.9.0..sroa_idx268, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store double %.sroa.6159.sroa.6.0.copyload, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.14, i64 160, i1 false)
  %.sroa.14271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  store double %.sroa.6159.sroa.8.0.copyload, ptr %.sroa.14271.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.15, i64 32, i1 false)
  call fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 45
  %.val186 = load i8, ptr %i.gl, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 46
  %.val187 = load i8, ptr %i.gm, align 2
  call fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.ae, i8 %.val186, i8 %.val187, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.ae, i64 98
  %i.gp = load i8, ptr %i.go, align 2, !range !139, !noundef !44
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ae, i64 97
  %i.gr = load i8, ptr %i.gq, align 1, !range !119, !noundef !44
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.gt = load double, ptr %i.gs, align 8, !noundef !44
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.gv = load i8, ptr %i.gu, align 8, !range !57, !noundef !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %i.af, i64 98
  store i8 %i.gp, ptr %i.gx, align 2, !alias.scope !32839
  %i.gy = getelementptr inbounds nuw i8, ptr %i.af, i64 97
  store i8 %i.gr, ptr %i.gy, align 1, !alias.scope !32839
  %i.gz = load <2 x double>, ptr %i.gn, align 8
  store <2 x double> %i.gz, ptr %i.gw, align 8, !alias.scope !32839
  %i.ha = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store double %i.gt, ptr %i.ha, align 8, !alias.scope !32839
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store double %.sroa.0.0.i260, ptr %i.hb, align 8, !alias.scope !32839
  %i.hc = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store double %.sroa.0.0.i196, ptr %i.hc, align 8, !alias.scope !32839
  %i.hd = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store double %.sroa.4.0.i, ptr %i.hd, align 8, !alias.scope !32839
  %i.he = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store i8 %i.gv, ptr %i.he, align 8, !alias.scope !32839
  call fastcc void @_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment13FrameFragmentEB5_(ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.aj, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.ak, %bb.ai, %bb.ah, %bb.af, %bb.at, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hg = load i64, ptr %i.hf, align 16, !range !52, !noundef !44
  %i.hh = trunc nuw i64 %i.hg to i1
  br i1 %i.hh, label %bb.bn, label %bb.bs

bb.aq:                                            ; preds = %bb.ba
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.ar:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bs

bb.as:                                            ; preds = %bb.v
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.10114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10114.0..sroa_idx115, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6149.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.ds, ptr %i.aj, align 8
  %.sroa.6109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.dv, ptr %.sroa.6109.0..sroa_idx110, align 8
  %.sroa.8.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.dx, ptr %.sroa.8.0..sroa_idx112, align 8
  call fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4math3runNtB4_19MathRunFrameBuilder5build(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.aj, i1 noundef zeroext false)
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hk = load i8, ptr %i.hj, align 16, !range !57, !noundef !44
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.ay, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 45
  %.val184 = load i8, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 46
  %.val185 = load i8, ptr %i.hn, align 2
  call fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.ai, i8 %.val184, i8 %.val185, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call fastcc void @_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment13FrameFragmentEB5_(ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ap

bb.au:                                            ; preds = %bb.as
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val181 = load i64, ptr %i.ho, align 8, !noundef !44 ; 2 uses
  %.not.i197 = icmp eq i64 %.val181, 0
  br i1 %.not.i197, label %bb.av, label %bb.aw, !prof !47

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #52
          to label %.noexc unwind label %bb.az

.noexc:                                           ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.hp, align 8, !nonnull !44, !noundef !44
  %i.hq = getelementptr [8 x i8], ptr %.val, i64 %.val181
  %i.hr = getelementptr i8, ptr %i.hq, i64 -8     ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 184 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 192
  %i.hv = load atomic i32, ptr %i.hu acquire, align 4, !noalias !32840
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit200, label %bb.ax, !prof !46

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ht, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hr)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit200 unwind label %bb.az

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit200: ; preds = %bb.aw, %bb.ax
  %i.hx = load ptr, ptr %i.ht, align 8, !nonnull !44, !noundef !44
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load double, ptr %i.hy, align 8, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ia = invoke noundef double @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout2emNtB5_2EmNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %i.hz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ic = load double, ptr %i.ib, align 8, !noundef !44
  %i.id = fmul double %i.ic, 5.000000e-01         ; 2 uses
  %.inv177 = fcmp ord double %i.id, 0.000000e+00
  %spec.store.select2 = select i1 %.inv177, double %i.id, double 0.000000e+00
  %i.ie = fadd double %i.ia, %spec.store.select2  ; 2 uses
  %.inv178 = fcmp ord double %i.ie, 0.000000e+00
  %spec.store.select3 = select i1 %.inv178, double %i.ie, double 0.000000e+00
  store i64 1, ptr %i.al, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store double %spec.store.select3, ptr %i.if, align 8
  br label %bb.at

bb.az:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit200, %bb.ax, %bb.av
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32841)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32842)
  call void @llvm.experimental.noalias.scope.decl(metadata !32843)
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !32844, !nonnull !44, !noundef !44
  %i.ii = atomicrmw add ptr %i.ih, i64 -1 release, align 8, !noalias !32844
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.ba, label %common.resume

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ig) #57
          to label %common.resume unwind label %bb.aq

bb.bb:                                            ; preds = %bb.w
  %i.ik = extractvalue { ptr, i64 } %i.ea, 1
  br label %bb.bs

bb.bc:                                            ; preds = %bb.x
  %i.il = extractvalue { ptr, i64 } %i.ee, 1
end_hunk_2
begin_hunk_3_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run19row_into_line_frame:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1f_(ptr noalias nofree noundef nonnull align 8 %i.bl, i64 noundef %i.bp)
          to label %bb.o unwind label %bb.m, !noalias !41472

bb.m:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %i.x, 0
  br i1 %i.br, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = mul nuw i64 %i.x, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41472
  br label %.body

bb.o:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread
  %i.bt = icmp eq i64 %i.x, 0
  br i1 %i.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1F_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = mul nuw i64 %i.x, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41472
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1F_.exit

.body:                                            ; preds = %bb.n, %bb.m, %.body63
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body63 ], [ %i.bq, %bb.m ], [ %i.bq, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41473)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41474)
  call void @llvm.experimental.noalias.scope.decl(metadata !41475)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !41476, !nonnull !44, !noundef !44
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !41476
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %.noexc

bb.q:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #57
          to label %.noexc unwind label %bb.ak

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1F_.exit: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store double %.sroa.044.0.lcssa, ptr %i.bz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i, %.lr.ph
  %i.ca = phi i1 [ true, %.lr.ph ], [ false, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 4 uses
  %i.cb = phi ptr [ %i.ap, %.lr.ph ], [ %i.ax, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 8 uses
  %.sroa.7.sroa.0.0.copyload176 = phi ptr [ %.sroa.7.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.7.sroa.0.0.copyload168, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 11 uses
  %.sroa.0.0.copyload65167 = phi i64 [ %.sroa.0.0.copyload65296, %.lr.ph ], [ %.sroa.0.0.copyload65159, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 8 uses
  %i.cc = phi ptr [ %i.an, %.lr.ph ], [ %i.ay, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 6 uses
  %.sroa.010.0115158 = phi ptr [ %.sroa.010.0115295, %.lr.ph ], [ %.sroa.010.0115157, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 4 uses
  %.sroa.08.0116156 = phi double [ %.sroa.08.0116294, %.lr.ph ], [ %.sroa.08.0116154, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 7 uses
  %.sroa.0.0117153 = phi i8 [ %.sroa.0.0117293, %.lr.ph ], [ %.sroa.0.0117152, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph ], [ %i.bi, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_3run19row_into_line_frames_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3v_ddNCINvXsq_B3x_B3v_B4w_3sumIB51_B50_B4f_EE0NCINvXs26_B4y_dB4w_3sumIB51_B6m_B5X_EE0E0E0E0B11_.exit.i.i.i.i ] ; 2 uses
  %i.cd = icmp eq ptr %.sroa.010.0115158, %i.u
  br i1 %i.cd, label %.thread78, label %bb.r

.loopexit.jt0:                                    ; preds = %bb.g
  %i.ce = icmp eq ptr %.sroa.010.1.jt0283, %i.u
  br i1 %i.ce, label %.thread78.thread, label %.thread78.jt0

.loopexit.jt2:                                    ; preds = %bb.h
  %i.cf = icmp eq ptr %i.cq, %i.u
  br i1 %i.cf, label %.thread78.thread, label %bb.s

.loopexit.jt1:                                    ; preds = %bb.i
  %i.cg = icmp eq ptr %i.cv, %i.u
  br i1 %i.cg, label %.thread78.thread, label %bb.t

bb.r:                                             ; preds = %.loopexit
  %.inv.i = fcmp ord double %.sroa.0.0.i.i.i.i, 0.000000e+00
  %spec.store.select.i = select i1 %.inv.i, double %.sroa.0.0.i.i.i.i, double 0.000000e+00
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.010.0115158, i64 8 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0115158) ]
  %i.ci = load double, ptr %.sroa.010.0115158, align 8, !noundef !44 ; 4 uses
  switch i8 %.sroa.0.0117153, label %default.unreachable144 [
    i8 0, label %.thread78.jt0.preheader
    i8 1, label %.thread78.jt2
    i8 2, label %.thread78.jt1
  ]

.thread78.jt0.preheader:                          ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.sroa.0.0.copyload176, ptr %i.c, align 8
  store ptr %.sroa.7.sroa.0.0.copyload176, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload65167, ptr %.sroa.518.0..sroa_idx, align 8
  store ptr %i.cb, ptr %.sroa.619.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769)
  br i1 %i.ca, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt0, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.preheader

.thread78.jt0:                                    ; preds = %.loopexit.jt0
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.010.1.jt0283, i64 8
  %i.ck = load double, ptr %.sroa.010.1.jt0283, align 8, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.sroa.0.0.copyload.jt0, ptr %i.c, align 8
  store ptr %.sroa.7.sroa.0.0.copyload.jt0, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload65.jt0, ptr %.sroa.518.0..sroa_idx, align 8
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769)
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt0

bb.s:                                             ; preds = %.loopexit.jt2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cm = load double, ptr %i.cq, align 8, !noundef !44
  br label %.thread78.jt1

bb.t:                                             ; preds = %.loopexit.jt1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.co = load double, ptr %i.cv, align 8, !noundef !44
  br label %.thread78.jt2

.thread78.thread:                                 ; preds = %.loopexit.jt0, %.loopexit.jt2, %.loopexit.jt1
  %.ph184 = phi ptr [ %i.av, %.loopexit.jt1 ], [ %i.at, %.loopexit.jt2 ], [ %i.ar, %.loopexit.jt0 ] ; 2 uses
  %.sroa.7.sroa.0.0.copyload169.ph = phi ptr [ %.sroa.7.sroa.0.0.copyload.jt1, %.loopexit.jt1 ], [ %.sroa.7.sroa.0.0.copyload.jt2, %.loopexit.jt2 ], [ %.sroa.7.sroa.0.0.copyload.jt0, %.loopexit.jt0 ] ; 4 uses
  %.sroa.0.0.copyload65160.ph = phi i64 [ %.sroa.0.0.copyload65.jt1, %.loopexit.jt1 ], [ %.sroa.0.0.copyload65.jt2, %.loopexit.jt2 ], [ %.sroa.0.0.copyload65.jt0, %.loopexit.jt0 ] ; 2 uses
  %.ph185 = phi ptr [ %i.am, %.loopexit.jt1 ], [ %i.al, %.loopexit.jt2 ], [ %i.ak, %.loopexit.jt0 ]
  %.sroa.044.2.ph = phi double [ %i.cu, %.loopexit.jt1 ], [ %i.cp, %.loopexit.jt2 ], [ %.sroa.08.1.jt0284, %.loopexit.jt0 ] ; 2 uses
  %.sroa.0.2.ph = phi i8 [ 1, %.loopexit.jt1 ], [ 2, %.loopexit.jt2 ], [ 0, %.loopexit.jt0 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.sroa.0.0.copyload169.ph, ptr %i.c, align 8
  store ptr %.sroa.7.sroa.0.0.copyload169.ph, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload65160.ph, ptr %.sroa.518.0..sroa_idx, align 8
  store ptr %.ph184, ptr %.sroa.619.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769)
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread

.thread78:                                        ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.sroa.0.0.copyload176, ptr %i.c, align 8
  store ptr %.sroa.7.sroa.0.0.copyload176, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload65167, ptr %.sroa.518.0..sroa_idx, align 8
  store ptr %i.cb, ptr %.sroa.619.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769)
  br i1 %i.ca, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.preheader

.thread78.jt2:                                    ; preds = %bb.r, %bb.t
  %i.cp = phi double [ %i.co, %bb.t ], [ %i.ci, %bb.r ] ; 3 uses
  %i.cq = phi ptr [ %i.cn, %bb.t ], [ %i.ch, %bb.r ] ; 5 uses
  %i.cr = phi i1 [ true, %bb.t ], [ %i.ca, %bb.r ]
  %i.cs = phi ptr [ %i.av, %bb.t ], [ %i.cb, %bb.r ] ; 3 uses
  %.sroa.7.sroa.0.0.copyload170 = phi ptr [ %.sroa.7.sroa.0.0.copyload.jt1, %bb.t ], [ %.sroa.7.sroa.0.0.copyload176, %bb.r ] ; 8 uses
  %.sroa.0.0.copyload65161 = phi i64 [ %.sroa.0.0.copyload65.jt1, %bb.t ], [ %.sroa.0.0.copyload65167, %bb.r ] ; 5 uses
  %i.ct = phi ptr [ %i.am, %bb.t ], [ %i.cc, %bb.r ] ; 6 uses
  %.sroa.08.0116155 = phi double [ %i.cu, %bb.t ], [ %.sroa.08.0116156, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.sroa.0.0.copyload170, ptr %i.c, align 8
  store ptr %.sroa.7.sroa.0.0.copyload170, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload65161, ptr %.sroa.518.0..sroa_idx, align 8
  store ptr %i.cs, ptr %.sroa.619.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769)
  br i1 %i.cr, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt2, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.preheader

.thread78.jt1:                                    ; preds = %bb.r, %bb.s
  %i.cu = phi double [ %i.cm, %bb.s ], [ %i.ci, %bb.r ] ; 5 uses
  %i.cv = phi ptr [ %i.cl, %bb.s ], [ %i.ch, %bb.r ] ; 5 uses
  %spec.store.select.i183 = phi double [ -0.000000e+00, %bb.s ], [ %spec.store.select.i, %bb.r ] ; 2 uses
  %i.cw = phi i1 [ true, %bb.s ], [ %i.ca, %bb.r ]
  %i.cx = phi ptr [ %i.at, %bb.s ], [ %i.cb, %bb.r ] ; 3 uses
  %.sroa.7.sroa.0.0.copyload171 = phi ptr [ %.sroa.7.sroa.0.0.copyload.jt2, %bb.s ], [ %.sroa.7.sroa.0.0.copyload176, %bb.r ] ; 8 uses
  %.sroa.0.0.copyload65162 = phi i64 [ %.sroa.0.0.copyload65.jt2, %bb.s ], [ %.sroa.0.0.copyload65167, %bb.r ] ; 5 uses
  %i.cy = phi ptr [ %i.al, %bb.s ], [ %i.cc, %bb.r ] ; 6 uses
  %i.cz = fneg double %spec.store.select.i183
  %i.da = fcmp uno double %spec.store.select.i183, 0.000000e+00
  %spec.store.select1 = select i1 %i.da, double 0.000000e+00, double %i.cz
  %i.db = fadd double %spec.store.select1, %i.cu  ; 2 uses
  %.inv53 = fcmp ord double %i.db, 0.000000e+00
  %spec.store.select2 = select i1 %.inv53, double %i.db, double 0.000000e+00 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.sroa.0.0.copyload171, ptr %i.c, align 8
  store ptr %.sroa.7.sroa.0.0.copyload171, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload65162, ptr %.sroa.518.0..sroa_idx, align 8
  store ptr %i.cx, ptr %.sroa.619.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769)
  br i1 %i.cw, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt1, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.preheader

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.preheader: ; preds = %.thread78.jt0.preheader, %.thread78.jt2, %.thread78.jt1, %.thread78
  %i.dc = phi ptr [ %i.cb, %.thread78 ], [ %i.cs, %.thread78.jt2 ], [ %i.cx, %.thread78.jt1 ], [ %i.cb, %.thread78.jt0.preheader ] ; 4 uses
  %.sroa.7.sroa.0.0.copyload173 = phi ptr [ %.sroa.7.sroa.0.0.copyload176, %.thread78 ], [ %.sroa.7.sroa.0.0.copyload170, %.thread78.jt2 ], [ %.sroa.7.sroa.0.0.copyload171, %.thread78.jt1 ], [ %.sroa.7.sroa.0.0.copyload176, %.thread78.jt0.preheader ] ; 3 uses
  %.sroa.0.0.copyload65164 = phi i64 [ %.sroa.0.0.copyload65167, %.thread78 ], [ %.sroa.0.0.copyload65161, %.thread78.jt2 ], [ %.sroa.0.0.copyload65162, %.thread78.jt1 ], [ %.sroa.0.0.copyload65167, %.thread78.jt0.preheader ] ; 2 uses
  %i.dd = phi ptr [ %i.cc, %.thread78 ], [ %i.ct, %.thread78.jt2 ], [ %i.cy, %.thread78.jt1 ], [ %i.cc, %.thread78.jt0.preheader ] ; 2 uses
  %.sroa.0.2150 = phi i8 [ %.sroa.0.0117153, %.thread78 ], [ 2, %.thread78.jt2 ], [ 1, %.thread78.jt1 ], [ 0, %.thread78.jt0.preheader ] ; 2 uses
  %.sroa.08.1148 = phi double [ %.sroa.08.0116156, %.thread78 ], [ %i.cp, %.thread78.jt2 ], [ %i.cu, %.thread78.jt1 ], [ %i.ci, %.thread78.jt0.preheader ] ; 2 uses
  %.sroa.010.1146 = phi ptr [ %i.u, %.thread78 ], [ %i.cq, %.thread78.jt2 ], [ %i.cv, %.thread78.jt1 ], [ %i.ch, %.thread78.jt0.preheader ] ; 2 uses
  %.sroa.044.2145 = phi double [ %.sroa.08.0116156, %.thread78 ], [ %.sroa.08.0116155, %.thread78.jt2 ], [ %spec.store.select2, %.thread78.jt1 ], [ %.sroa.08.0116156, %.thread78.jt0.preheader ]
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit

bb.u:                                             ; preds = %bb.ai, %bb.ah
  %i.de = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dg, ptr %.sroa.417.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #53
          to label %.body63 unwind label %bb.ak

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.preheader, %bb.aj
  %.sroa.044.3108 = phi double [ %spec.store.select5, %bb.aj ], [ %.sroa.044.2145, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.preheader ] ; 3 uses
  %i.df = phi ptr [ %i.dg, %bb.aj ], [ %.sroa.7.sroa.0.0.copyload173, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 304 ; 4 uses
  %.sroa.067.0.copyload68 = load i64, ptr %i.df, align 16, !noalias !41477 ; 4 uses
  %.sroa.769.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.769, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.769.0..sroa_idx70, i64 296, i1 false), !noalias !41477
  %.not54 = icmp eq i64 %.sroa.067.0.copyload68, -1
  br i1 %.not54, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.067.0.copyload68, ptr %i.b, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.769.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.769, i64 296, i1 false)
  %i.dh = call i64 @llvm.usub.sat.i64(i64 %.sroa.067.0.copyload68, i64 1)
  switch i64 %i.dh, label %bb.ag [
    i64 0, label %.thread82
    i64 1, label %.thread89
    i64 3, label %bb.ah
  ]

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit, %bb.aj, %.thread78.thread, %.thread78
  %i.di = phi ptr [ %.ph184, %.thread78.thread ], [ %i.cb, %.thread78 ], [ %i.dc, %bb.aj ], [ %i.dc, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ]
  %.sroa.7.sroa.0.0.copyload175 = phi ptr [ %.sroa.7.sroa.0.0.copyload169.ph, %.thread78.thread ], [ %.sroa.7.sroa.0.0.copyload176, %.thread78 ], [ %.sroa.7.sroa.0.0.copyload173, %bb.aj ], [ %.sroa.7.sroa.0.0.copyload173, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ] ; 2 uses
  %.sroa.0.0.copyload65166 = phi i64 [ %.sroa.0.0.copyload65160.ph, %.thread78.thread ], [ %.sroa.0.0.copyload65167, %.thread78 ], [ %.sroa.0.0.copyload65164, %bb.aj ], [ %.sroa.0.0.copyload65164, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ] ; 3 uses
  %i.dj = phi ptr [ %.ph185, %.thread78.thread ], [ %i.cc, %.thread78 ], [ %i.dd, %bb.aj ], [ %i.dd, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ] ; 4 uses
  %.sroa.0.2151 = phi i8 [ %.sroa.0.2.ph, %.thread78.thread ], [ %.sroa.0.0117153, %.thread78 ], [ %.sroa.0.2150, %bb.aj ], [ %.sroa.0.2150, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ]
  %.sroa.08.1149 = phi double [ %.sroa.044.2.ph, %.thread78.thread ], [ %.sroa.08.0116156, %.thread78 ], [ %.sroa.08.1148, %bb.aj ], [ %.sroa.08.1148, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ]
  %.sroa.010.1147 = phi ptr [ %i.u, %.thread78.thread ], [ %i.u, %.thread78 ], [ %.sroa.010.1146, %bb.aj ], [ %.sroa.010.1146, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ]
  %i.dk = phi ptr [ %.sroa.7.sroa.0.0.copyload169.ph, %.thread78.thread ], [ %.sroa.7.sroa.0.0.copyload176, %.thread78 ], [ %i.dg, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ], [ %i.dc, %bb.aj ] ; 3 uses
  %.sroa.044.3.lcssa = phi double [ %.sroa.044.2.ph, %.thread78.thread ], [ %.sroa.08.0116156, %.thread78 ], [ %.sroa.044.3108, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ], [ %spec.store.select5, %bb.aj ] ; 2 uses
  store ptr %i.dk, ptr %.sroa.417.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769)
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub nuw i64 %i.dl, %i.dm
  %i.do = udiv exact i64 %i.dn, 304
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %i.dk, i64 noundef %i.do)
          to label %bb.y unwind label %.loopexit.split-lp, !noalias !41478

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt0: ; preds = %.thread78.jt0.preheader, %.thread78.jt0
  %.sroa.08.1.jt0284 = phi double [ %i.ck, %.thread78.jt0 ], [ %i.ci, %.thread78.jt0.preheader ] ; 3 uses
  %.sroa.010.1.jt0283 = phi ptr [ %i.cj, %.thread78.jt0 ], [ %i.ch, %.thread78.jt0.preheader ] ; 4 uses
  %.sroa.044.2.jt0282 = phi double [ %.sroa.08.1.jt0284, %.thread78.jt0 ], [ %.sroa.08.0116156, %.thread78.jt0.preheader ] ; 2 uses
  %i.dp = phi ptr [ %i.ak, %.thread78.jt0 ], [ %i.cc, %.thread78.jt0.preheader ] ; 5 uses
  %.sroa.0.0.copyload65163281 = phi i64 [ %.sroa.0.0.copyload65.jt0, %.thread78.jt0 ], [ %.sroa.0.0.copyload65167, %.thread78.jt0.preheader ] ; 3 uses
  %.sroa.7.sroa.0.0.copyload172280 = phi ptr [ %.sroa.7.sroa.0.0.copyload.jt0, %.thread78.jt0 ], [ %.sroa.7.sroa.0.0.copyload176, %.thread78.jt0.preheader ] ; 5 uses
  %i.dq = phi ptr [ %i.ar, %.thread78.jt0 ], [ %i.cb, %.thread78.jt0.preheader ]
  store ptr %.sroa.7.sroa.0.0.copyload172280, ptr %.sroa.417.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769)
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %.sroa.7.sroa.0.0.copyload172280 to i64
  %i.dt = sub nuw i64 %i.dr, %i.ds
  %i.du = udiv exact i64 %i.dt, 304
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %.sroa.7.sroa.0.0.copyload172280, i64 noundef %i.du)
          to label %bb.z unwind label %.loopexit193, !noalias !41478

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt2: ; preds = %.thread78.jt2
  store ptr %.sroa.7.sroa.0.0.copyload170, ptr %.sroa.417.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769)
  %i.dv = ptrtoint ptr %i.cs to i64
  %i.dw = ptrtoint ptr %.sroa.7.sroa.0.0.copyload170 to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  %i.dy = udiv exact i64 %i.dx, 304
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %.sroa.7.sroa.0.0.copyload170, i64 noundef %i.dy)
          to label %bb.aa unwind label %.loopexit.split-lp, !noalias !41478

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt1: ; preds = %.thread78.jt1
  store ptr %.sroa.7.sroa.0.0.copyload171, ptr %.sroa.417.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769)
  %i.dz = ptrtoint ptr %i.cx to i64
  %i.ea = ptrtoint ptr %.sroa.7.sroa.0.0.copyload171 to i64
  %i.eb = sub nuw i64 %i.dz, %i.ea
  %i.ec = udiv exact i64 %i.eb, 304
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %.sroa.7.sroa.0.0.copyload171, i64 noundef %i.ec)
          to label %bb.ab unwind label %.loopexit.split-lp, !noalias !41478

.loopexit193:                                     ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt0
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt1, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt2
  %.sroa.7.sroa.0.0.copyload174.ph = phi ptr [ %.sroa.7.sroa.0.0.copyload171, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt1 ], [ %.sroa.7.sroa.0.0.copyload170, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt2 ], [ %.sroa.7.sroa.0.0.copyload175, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread ]
  %.sroa.0.0.copyload65165.ph = phi i64 [ %.sroa.0.0.copyload65162, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt1 ], [ %.sroa.0.0.copyload65161, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt2 ], [ %.sroa.0.0.copyload65166, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit193
  %.sroa.7.sroa.0.0.copyload174 = phi ptr [ %.sroa.7.sroa.0.0.copyload172280, %.loopexit193 ], [ %.sroa.7.sroa.0.0.copyload174.ph, %.loopexit.split-lp ]
  %.sroa.0.0.copyload65165 = phi i64 [ %.sroa.0.0.copyload65163281, %.loopexit193 ], [ %.sroa.0.0.copyload65165.ph, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit193 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ed = icmp eq i64 %.sroa.0.0.copyload65165, 0
  br i1 %i.ed, label %.body63, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = mul nuw i64 %.sroa.0.0.copyload65165, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload174, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 16) #55, !noalias !41478
  br label %.body63

bb.y:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  %i.ef = icmp eq i64 %.sroa.0.0.copyload65166, 0
  br i1 %i.ef, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit, label %bb.ac

bb.z:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt0
  %i.eg = icmp eq i64 %.sroa.0.0.copyload65163281, 0
  br i1 %i.eg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt0, label %bb.ad

bb.aa:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt2
  %i.eh = icmp eq i64 %.sroa.0.0.copyload65161, 0
  br i1 %i.eh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt2, label %bb.ae

bb.ab:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.jt1
  %i.ei = icmp eq i64 %.sroa.0.0.copyload65162, 0
  br i1 %i.ei, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt1, label %bb.af

bb.ac:                                            ; preds = %bb.y
  %i.ej = mul nuw i64 %.sroa.0.0.copyload65166, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload175, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) 16) #55, !noalias !41478
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit

bb.ad:                                            ; preds = %bb.z
  %i.ek = mul nuw i64 %.sroa.0.0.copyload65163281, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload172280, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 16) #55, !noalias !41478
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt0

bb.ae:                                            ; preds = %bb.aa
  %i.el = mul nuw i64 %.sroa.0.0.copyload65161, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload170, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 16) #55, !noalias !41478
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt2

bb.af:                                            ; preds = %bb.ab
  %i.em = mul nuw i64 %.sroa.0.0.copyload65162, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload171, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 16) #55, !noalias !41478
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit: ; preds = %bb.ac, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.en = icmp eq ptr %i.dj, %i.ab
  br i1 %i.en, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt0: ; preds = %bb.ad, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eo = icmp eq ptr %i.dp, %i.ab
  br i1 %i.eo, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.jt0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt2: ; preds = %bb.ae, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ep = icmp eq ptr %i.ct, %i.ab
  br i1 %i.ep, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.jt2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt1: ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eq = icmp eq ptr %i.cy, %i.ab
  br i1 %i.eq, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.jt1

.thread82:                                        ; preds = %bb.v
  %i.er = load double, ptr %i.ag, align 8, !noundef !44
  %i.es = trunc nuw i64 %.sroa.067.0.copyload68 to i1
  %i.et = load double, ptr %.sroa.769.0..sroa_idx, align 8
  %.sroa.050.0 = select i1 %i.es, double %i.et, double %i.er ; 2 uses
  %i.eu = fneg double %.sroa.050.0
  %i.ev = fcmp uno double %.sroa.050.0, 0.000000e+00
  %spec.store.select384 = select i1 %i.ev, double 0.000000e+00, double %i.eu
  %i.ew = fadd double %.sroa.07.0, %spec.store.select384 ; 2 uses
  %.inv5585 = fcmp ord double %i.ew, 0.000000e+00
  %spec.store.select486 = select i1 %.inv5585, double %i.ew, double 0.000000e+00
  %i.ex = load double, ptr %i.ah, align 16, !noundef !44
  br label %bb.ah

.thread89:                                        ; preds = %bb.v
  %i.ey = load i64, ptr %.sroa.769.0..sroa_idx, align 8, !range !52, !noundef !44
  %i.ez = load double, ptr %i.ad, align 8, !noundef !44
  %i.fa = trunc nuw i64 %i.ey to i1
  %i.fb = load double, ptr %i.ae, align 16
  %.sroa.050.2 = select i1 %i.fa, double %i.fb, double %i.ez ; 2 uses
  %i.fc = fneg double %.sroa.050.2
  %i.fd = fcmp uno double %.sroa.050.2, 0.000000e+00
  %spec.store.select391 = select i1 %i.fd, double 0.000000e+00, double %i.fc
  %i.fe = fadd double %.sroa.07.0, %spec.store.select391 ; 2 uses
  %.inv5592 = fcmp ord double %i.fe, 0.000000e+00
  %spec.store.select493 = select i1 %.inv5592, double %i.fe, double 0.000000e+00
  %i.ff = load double, ptr %i.af, align 16, !noundef !44
  br label %bb.ah

bb.ag:                                            ; preds = %bb.v
  %i.fg = load double, ptr %.sroa.769.0..sroa_idx, align 8, !noundef !44
  br label %bb.ah

bb.ah:                                            ; preds = %bb.v, %bb.ag, %.thread89, %.thread82
  %spec.store.select487 = phi double [ %spec.store.select486, %.thread82 ], [ %spec.store.select493, %.thread89 ], [ %spec.store.select4, %bb.ag ], [ %spec.store.select4, %bb.v ]
  %.sroa.051.0 = phi double [ %i.ex, %.thread82 ], [ %i.ff, %.thread89 ], [ %i.fg, %bb.ag ], [ 0.000000e+00, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.b)
          to label %bb.ai unwind label %bb.u

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, double noundef %.sroa.044.3108, double noundef %spec.store.select487, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.aj unwind label %bb.u

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fh = fadd double %.sroa.044.3108, %.sroa.051.0 ; 2 uses
  %.inv60 = fcmp ord double %i.fh, 0.000000e+00
  %spec.store.select5 = select i1 %.inv60, double %i.fh, double 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769)
  %i.fi = icmp eq ptr %i.dg, %i.dc
  br i1 %i.fi, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit

bb.ak:                                            ; preds = %bb.q, %bb.al, %bb.u, %.body63
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

.noexc:                                           ; preds = %bb.q, %.body, %bb.al
  %.pn.pn.pn.pn74 = phi { ptr, i32 } [ %i.fk, %bb.al ], [ %.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn.pn.pn.pn74

bb.al:                                            ; preds = %bb.e, %bb.c
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #53
          to label %.noexc unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run27cumulative_alignment_points(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = icmp samesign ult i64 %2, 2
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = shl nuw nsw i64 %2, 3                    ; 3 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !41485
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41485 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.i, label %bb.j

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #56
  unreachable

.lr.ph.preheader:                                 ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  store i64 %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.j = phi ptr [ %i.t, %bb.g ], [ %i.d, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.v, %bb.g ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.04.023 = phi ptr [ %i.w, %bb.g ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.07.022 = phi double [ %spec.store.select, %bb.g ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.l = load double, ptr %.sroa.04.023, align 8, !noundef !44
  %i.m = fadd double %.sroa.07.022, %i.l          ; 2 uses
  %.inv = fcmp ord double %i.m, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.m, double 0.000000e+00 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41486)
  %i.n = load i64, ptr %i.a, align 8, !range !48, !alias.scope !41486, !noundef !44
  %i.o = icmp eq i64 %i.k, %i.n
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #57
          to label %._crit_edge25 unwind label %bb.e

._crit_edge25:                                    ; preds = %bb.d
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !41486
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %spec.store.select, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41487)
  %.val.i = load i64, ptr %i.a, align 8, !range !48, !alias.scope !41487, !noundef !44 ; 2 uses
  %i.r = icmp eq i64 %.val.i, 0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !41487, !nonnull !44, !noundef !44
  %i.s = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41487
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit

bb.g:                                             ; preds = %._crit_edge25, %.lr.ph
  %i.t = phi ptr [ %.pre, %._crit_edge25 ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.k
  store double %spec.store.select, ptr %i.u, align 8, !noalias !41486
  %i.v = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.v, ptr %i.h, align 8, !alias.scope !41486
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.023, i64 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %._crit_edge, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.j, %._crit_edge
  ret void

bb.i:                                             ; preds = %bb.b
  %i.y = load double, ptr %1, align 8, !noundef !44
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %.sroa.01.0 = phi double [ %i.y, %bb.i ], [ 0.000000e+00, %bb.b ]
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.01.0, ptr %i.z, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4line11layout_line(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 13 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 9 uses
  %i.k = alloca [176 x i8], align 16              ; 16 uses
  %.sroa.0258 = alloca [56 x i8], align 8         ; 5 uses
  %i.l = alloca [112 x i8], align 8               ; 4 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.5.sroa.0 = alloca [56 x i8], align 8     ; 3 uses
  %.sroa.5.sroa.7 = alloca [6 x i8], align 2      ; 2 uses
  %.sroa.9 = alloca [20 x i8], align 4            ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 14 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 12 uses
  %i.u = alloca [304 x i8], align 16              ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 12 uses
  %i.x = alloca [304 x i8], align 16              ; 8 uses
  %i.y = alloca [304 x i8], align 16              ; 35 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !range !56, !noundef !44 ; 2 uses
  %i.ac = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.ac, 0
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %.sink.i.sroa.gep241 = getelementptr inbounds nuw i8, ptr %i.y, i64 232 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.z, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @606, i64 noundef 16, i64 noundef %i.ab)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load i8, ptr %i.ad, align 16, !range !57, !noundef !44
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

end_hunk_3
begin_hunk_4_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table:bb.a
  %i.agz = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.agu, double noundef %.sroa.0198.0)
          to label %bb.hg unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.hk, %bb.hh, %bb.he
  %i.aha = phi i64 [ %.sroa.8.0962, %bb.hh ], [ %.sroa.8.0962, %bb.he ], [ %.val.i, %bb.hk ]
  %i.ahb = phi i64 [ %i.ahe, %bb.hh ], [ %i.agw, %bb.he ], [ %.val.i, %bb.hk ]
  %i.ahc = phi ptr [ @619, %bb.hh ], [ @618, %bb.he ], [ @620, %bb.hk ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aha, i64 noundef %i.ahb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahc) #56
          to label %.cont1393 unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1393:                                        ; preds = %.invoke
  unreachable

bb.hg:                                            ; preds = %bb.hf
  %i.ahd = getelementptr inbounds nuw [16 x i8], ptr %i.agy, i64 %.sroa.8.0962
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ahd, double noundef %i.agz)
          to label %bb.hh unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hh:                                            ; preds = %bb.hg
  %i.ahe = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !44 ; 2 uses
  %i.ahf = icmp ult i64 %.sroa.8.0962, %i.ahe
  br i1 %i.ahf, label %bb.hi, label %.invoke

bb.hi:                                            ; preds = %bb.hh
  %i.ahg = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !44, !noundef !44
  %i.ahh = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.agv, double noundef %.sroa.0199.0)
          to label %bb.hj unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hj:                                            ; preds = %bb.hi
  %i.ahi = getelementptr inbounds nuw [16 x i8], ptr %i.ahg, i64 %.sroa.8.0962
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ahj, double noundef %i.ahh)
          to label %bb.hk unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hk:                                            ; preds = %bb.hj
  %exitcond = icmp eq i64 %.sroa.8545.0960, %.val.i
  br i1 %exitcond, label %.invoke, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ahk = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %.sroa.8545.0960 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43121)
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16 ; 2 uses
  %i.ahm = load i64, ptr %i.ahl, align 8, !alias.scope !43121, !noundef !44 ; 3 uses
  %i.ahn = load i64, ptr %i.ahk, align 8, !range !48, !alias.scope !43121, !noundef !44
  %i.aho = icmp eq i64 %i.ahm, %i.ahn
  br i1 %i.aho, label %bb.hm, label %bb.hp

bb.hm:                                            ; preds = %bb.hl
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ahk)
          to label %bb.hp unwind label %bb.hn, !noalias !43122

bb.hn:                                            ; preds = %bb.hm
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.ap) #53
          to label %.body500 unwind label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ahq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !43123
  unreachable

bb.hp:                                            ; preds = %bb.hm, %bb.hl
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8
  %i.ahs = load ptr, ptr %i.ahr, align 8, !alias.scope !43121, !nonnull !44, !noundef !44
  %i.aht = getelementptr inbounds nuw [40 x i8], ptr %i.ahs, i64 %i.ahm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aht, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false)
  %i.ahu = add i64 %i.ahm, 1
  store i64 %i.ahu, ptr %i.ahl, align 8, !alias.scope !43121
  %i.ahv = icmp eq ptr %i.agf, %i.gl
  br i1 %i.ahv, label %.loopexit726, label %.lr.ph

.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hf, %bb.hg, %bb.hi, %bb.hj, %.invoke
  %lpad.loopexit.split-lp2282 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ap) #53
          to label %.body500 unwind label %bb.ah

bb.hq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit506
  %.val275 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !44, !noundef !44
  %i.ahw = shl nuw i64 %.val274, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val275, i64 noundef %i.ahw, i64 noundef range(i64 1, -9223372036854775807) 8) #55
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit509

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit509: ; preds = %bb.hq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 %i.em, i64 noundef %.val.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i unwind label %bb.hr, !noalias !43124

bb.hr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit509
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !43124
  br label %.body293

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit509
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !43124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ahy)
          to label %bb.ht unwind label %bb.hs

bb.hs:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i
  %i.ahz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aia = load i64, ptr %i.az, align 8, !range !73, !alias.scope !43125, !noundef !44 ; 2 uses
  %i.aib = icmp sgt i64 %i.aia, 0
  br i1 %i.aib, label %.body427.sink.split1916, label %.body427

bb.ht:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !43126)
  %i.aic = load i64, ptr %i.az, align 8, !range !73, !alias.scope !43127, !noundef !44 ; 2 uses
  %i.aid = icmp sgt i64 %i.aic, 0
  br i1 %i.aid, label %bb.hu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit520

bb.hu:                                            ; preds = %bb.ht
  %i.aie = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val1.i1.i517 = load ptr, ptr %i.aie, align 8, !alias.scope !43127, !nonnull !44, !noundef !44
  %i.aif = shl nuw i64 %i.aic, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i517, i64 noundef %i.aif, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !43128
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit520

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit520: ; preds = %bb.hu, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.aig = icmp ugt i64 %i.ej, 1
  br i1 %i.aig, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i521, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit522

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i521: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit520
  %i.aih = shl nuw i64 %i.ej, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.aih, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !43129
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit522

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit522: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i521, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.aii = icmp ugt i64 %i.ek, 1
  br i1 %i.aii, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i523, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit524

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i523: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit522
  %i.aij = shl nuw i64 %i.ek, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.aij, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !43130
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit524

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit524: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i523, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.l

bb.hv:                                            ; preds = %.thread628, %bb.an
  %.pn245633 = phi { ptr, i32 } [ %i.fn, %.thread628 ], [ %.pn243, %bb.an ]
  %.sroa.083.1632 = phi i8 [ 1, %.thread628 ], [ %.sroa.083.3, %bb.an ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #53
          to label %.body293 unwind label %bb.ah

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430
  %.val263 = load i64, ptr %.sroa.3109.0..sroa_idx110, align 8, !alias.scope !43039, !noundef !44 ; 2 uses
  %i.aik = icmp ugt i64 %.val263, 1
  br i1 %i.aik, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread
  %.val262 = load ptr, ptr %i.bb, align 8, !nonnull !44, !noundef !44
  %i.ail = shl nuw i64 %.val263, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val262, i64 noundef %i.ail, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !43131
  br label %.body

bb.hw:                                            ; preds = %bb.s, %bb.x
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(80) %i.be) #53
          to label %.body unwind label %bb.ah

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %.pn255
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6accent13layout_accent(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 14 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [304 x i8], align 16              ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [304 x i8], align 16              ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 12 uses
  %i.o = alloca [304 x i8], align 16              ; 10 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %.sroa.11 = alloca [208 x i8], align 16         ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 13 uses
  %i.t = alloca [304 x i8], align 16              ; 8 uses
  %i.u = alloca [304 x i8], align 16              ; 48 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load i64, ptr %i.w, align 8, !range !56, !noundef !44
  %i.y = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.y, 0
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sink.i.sroa.gep271 = getelementptr inbounds nuw i8, ptr %i.u, i64 232
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.v, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @622, i64 noundef 18, i64 noundef %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load i8, ptr %i.z, align 16, !range !57, !noundef !44
  %i.ab = icmp eq i8 %i.aa, 0                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.t, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.g unwind label %.body

bb.e:                                             ; preds = %.body, %.body.thread, %.noexc201
  %.pn192 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %.pn190310, %.body.thread ], [ %.pn.pn.pn, %.noexc201 ]
  %i.ac = load ptr, ptr %i.v, align 8, !alias.scope !43241, !noundef !44
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.cp

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ae = load i64, ptr %i.t, align 16, !range !85, !noundef !44 ; 4 uses
  %i.af = icmp eq i64 %i.ae, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aj = load i64, ptr %i.ai, align 16           ; 2 uses
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit

bb.i:                                             ; preds = %bb.g
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.640.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.672.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.ae, ptr %i.u, align 16
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 11 uses
  store ptr %i.ah, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ak = load i64, ptr %0, align 16, !range !98, !noundef !44
  %i.al = icmp samesign ult i64 %i.ak, 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sink = select i1 %i.al, ptr %i.am, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val195 = load ptr, ptr %i.an, align 8         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val196 = load i64, ptr %i.ao, align 8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43243
  %i.ap = icmp samesign ult i64 %i.ae, 2
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.ar = load ptr, ptr %i.aq, align 16, !alias.scope !43242, !nonnull !44, !noundef !44 ; 2 uses
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !noalias !43243
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not.i = icmp eq i64 %.val196, 0
  br i1 %.not.i, label %bb.n, label %bb.o, !prof !47

bb.l:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %._crit_edge.i, %bb.j
  %i.au = phi ptr [ %i.ar, %bb.j ], [ %storemerge.pre.i, %._crit_edge.i ] ; 5 uses
  store ptr %i.au, ptr %i.b, align 8, !noalias !43243
  %i.av = call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 1)
  switch i64 %i.av, label %bb.q [
    i64 0, label %bb.s
    i64 1, label %bb.r
  ]

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #52
          to label %.noexc197 unwind label %.body.thread314, !noalias !43243

.noexc197:                                        ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val195) ]
  %i.aw = getelementptr [8 x i8], ptr %.val195, i64 %.val196
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !43243, !nonnull !44, !noundef !44
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !noalias !43243
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  %storemerge.pre.i = load ptr, ptr %i.ax, align 8, !noalias !43243
  br label %bb.m

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.bb = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.v unwind label %bb.t, !noalias !43242 ; 2 uses

bb.r:                                             ; preds = %bb.m
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.r ], [ %.sink.i.sroa.gep271, %bb.m ]
  %.sroa.4.0.i = load double, ptr %.sink.i.sroa.phi, align 8, !alias.scope !43242, !noundef !44
  br label %bb.x

bb.t:                                             ; preds = %bb.v, %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !43244
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.u, label %.body.thread

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #57
          to label %.body.thread unwind label %bb.w, !noalias !43243

bb.v:                                             ; preds = %bb.q
  %i.bf = extractvalue { double, double } %i.bb, 0
  %i.bg = extractvalue { double, double } %i.bb, 1
  %i.bh = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.bf, double noundef %i.bg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.x unwind label %bb.t, !noalias !43242

bb.w:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !43243
  unreachable

.noexc201:                                        ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266
  br i1 %.sroa.068.2, label %.body.thread, label %bb.e

.body.thread314:                                  ; preds = %bb.ar, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.d, %bb.ct, %bb.cu, %bb.cw, %bb.cm
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.x:                                             ; preds = %bb.v, %bb.s
  %.sroa.0.0.i = phi double [ %.sroa.4.0.i, %bb.s ], [ %i.bh, %bb.v ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.au, ptr %i.s, align 8
  %i.bj = load i64, ptr %i.u, align 16, !range !98, !alias.scope !43245, !noundef !44
  %i.bk = call i64 @llvm.usub.sat.i64(i64 %i.bj, i64 1)
  switch i64 %i.bk, label %default.unreachable [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.aa
    i64 3, label %._crit_edge.i198
  ]

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !alias.scope !43245
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.bo = load <2 x double>, ptr %i.bn, align 8, !alias.scope !43245
  br label %bb.ac

default.unreachable:                              ; preds = %bb.bh, %bb.bc, %bb.ay, %bb.as, %bb.ae, %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bp = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !43245, !noundef !44
  %i.bq = fmul double %i.bp, 5.000000e-01         ; 3 uses
  %.inv12.i = fcmp ord double %i.bq, 0.000000e+00
  %spec.store.select13.i = select i1 %.inv12.i, double %i.bq, double 0.000000e+00
  br label %._crit_edge.i198

._crit_edge.i198:                                 ; preds = %bb.x, %bb.aa
  %spec.store.select14.i = phi double [ %spec.store.select13.i, %bb.aa ], [ 0.000000e+00, %bb.x ]
  %.sroa.09.0.i = phi double [ %i.bq, %bb.aa ], [ 0.000000e+00, %bb.x ] ; 2 uses
  %.inv10.i = fcmp ord double %.sroa.09.0.i, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv10.i, double %.sroa.09.0.i, double 0.000000e+00
  %i.br = insertelement <2 x double> poison, double %spec.store.select14.i, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %spec.store.select1.i, i64 1
  br label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266: ; preds = %.body259, %bb.cj, %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.cr, %bb.cq
  %.sroa.068.2 = phi i1 [ false, %bb.cj ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.068.4320, %bb.cq ], [ true, %bb.aw ], [ %.sroa.068.4320, %bb.cr ], [ false, %.body259 ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.kb, %bb.cj ], [ %lpad.thr_comm346, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %.pn321, %bb.cq ], [ %i.ec, %bb.aw ], [ %.pn321, %bb.cr ], [ %lpad.thr_comm.split-lp347, %.body259 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43246)
  call void @llvm.experimental.noalias.scope.decl(metadata !43247)
  call void @llvm.experimental.noalias.scope.decl(metadata !43248)
  %i.bt = load ptr, ptr %i.s, align 8, !alias.scope !43249, !nonnull !44, !noundef !44
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !43249
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ab, label %.noexc201

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #57
          to label %.noexc201 unwind label %bb.cp

bb.ac:                                            ; preds = %._crit_edge.i198, %bb.z, %bb.y
  %i.bw = phi <2 x double> [ %i.bs, %._crit_edge.i198 ], [ %i.bm, %bb.y ], [ %i.bo, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 184 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.bz = load atomic i32, ptr %i.by acquire, align 4, !noalias !43250
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.ad, !prof !46

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.aw

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ac, %bb.ad
  %i.cb = load ptr, ptr %i.bx, align 8, !nonnull !44, !noundef !44
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load double, ptr %i.cc, align 8, !noundef !44
  %i.ce = fmul double %.sroa.0.0.i, %i.cd         ; 2 uses
  %i.cf = call double @llvm.fabs.f64(double %i.ce)
  %i.cg = fcmp one double %i.cf, +inf
  %spec.store.select29 = select i1 %i.cg, double %i.ce, double 0.000000e+00
  store double %spec.store.select29, ptr %i.q, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  br i1 %i.ab, label %bb.ai, label %bb.ae

end_hunk_4
begin_hunk_5_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6accent13layout_accent:bb.a
bb.az:                                            ; preds = %bb.ay
  %i.ek = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.el = load double, ptr %i.ek, align 16, !alias.scope !43259, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224

bb.ba:                                            ; preds = %bb.ay
  %i.em = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.en = load double, ptr %i.em, align 16, !alias.scope !43259, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224

bb.bb:                                            ; preds = %bb.ay
  %i.eo = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !43259, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ep = fneg double %.
  %i.eq = fcmp uno double %., 0.000000e+00
  %spec.store.select4 = select i1 %i.eq, double 0.000000e+00, double %i.ep ; 2 uses
  %i.er = fadd double %spec.store.select4, %.sroa.0.0.i217 ; 2 uses
  %.inv170 = fcmp ord double %i.er, 0.000000e+00
  %spec.store.select7 = select i1 %.inv170, double %i.er, double 0.000000e+00 ; 5 uses
  store double %spec.store.select7, ptr %i.l, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.et = load double, ptr %i.es, align 8, !noundef !44
  %i.eu = load i64, ptr %i.u, align 16, !range !98, !alias.scope !43260, !noundef !44
  %i.ev = call i64 @llvm.usub.sat.i64(i64 %i.eu, i64 1)
  switch i64 %i.ev, label %default.unreachable [
    i64 0, label %bb.bd
    i64 1, label %bb.be
    i64 2, label %bb.bf
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ew = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ex = load double, ptr %i.ew, align 16, !alias.scope !43260, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

bb.be:                                            ; preds = %bb.bc
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ez = load double, ptr %i.ey, align 16, !alias.scope !43260, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

bb.bf:                                            ; preds = %bb.bc
  %i.fa = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !43260, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

.thread:                                          ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230, %bb.bl, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit, %bb.bt
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.sroa.0.0.i222 = phi double [ %i.el, %bb.az ], [ %i.en, %bb.ba ], [ %i.eo, %bb.bb ], [ 0.000000e+00, %bb.ay ]
  %i.fc = fneg double %.sroa.0.0.i217
  %i.fd = fcmp uno double %.sroa.0.0.i217, 0.000000e+00
  %spec.store.select5 = select i1 %i.fd, double 0.000000e+00, double %i.fc
  %i.fe = fadd double %., %spec.store.select5     ; 2 uses
  %.inv = fcmp ord double %i.fe, 0.000000e+00
  %spec.store.select6 = select i1 %.inv, double %i.fe, double 0.000000e+00
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bo, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224
  %.sroa.056.0 = phi double [ %.sroa.056.1, %bb.bo ], [ %spec.store.select6, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  %.sroa.055.0 = phi double [ %spec.store.select15, %bb.bo ], [ %.sroa.0.0.i222, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  %.sroa.0163.0 = phi double [ %.sroa.0163.1, %bb.bo ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  br i1 %i.ab, label %bb.bs, label %bb.bp

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227: ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc
  %.sroa.0.0.i225 = phi double [ %i.ex, %bb.bd ], [ %i.ez, %bb.be ], [ %i.fa, %bb.bf ], [ 0.000000e+00, %bb.bc ]
  %i.ff = fcmp uno double %.sroa.0.0.i217, 0.000000e+00
  %i.fg = fneg double %.sroa.0.0.i217
  %spec.store.select8 = select i1 %i.ff, double 0.000000e+00, double %i.fg
  %i.fh = fadd double %spec.store.select8, %i.et  ; 2 uses
  %.inv171 = fcmp ord double %i.fh, 0.000000e+00
  %spec.store.select9 = select i1 %.inv171, double %i.fh, double 0.000000e+00
  %i.fi = fadd double %spec.store.select4, %.sroa.0.0.i225 ; 2 uses
  %.inv172 = fcmp ord double %i.fi, 0.000000e+00
  %.neg = fneg double %i.fi
  %i.fj = select i1 %.inv172, double %.neg, double -0.000000e+00 ; 2 uses
  %.inv173 = fcmp ord double %i.fj, 0.000000e+00
  %spec.store.select12 = select i1 %.inv173, double %i.fj, double 0.000000e+00
  %i.fk = fadd double %spec.store.select9, %spec.store.select12 ; 2 uses
  %.inv174 = fcmp ord double %i.fk, 0.000000e+00
  %spec.store.select13 = select i1 %.inv174, double %i.fk, double 0.000000e+00
  %i.fl = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select7, double noundef 0.000000e+00)
          to label %bb.bh unwind label %.thread

bb.bh:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227
  %i.fm = load i64, ptr %i.u, align 16, !range !98, !alias.scope !43261, !noundef !44
  %i.fn = call i64 @llvm.usub.sat.i64(i64 %i.fm, i64 1)
  switch i64 %i.fn, label %default.unreachable [
    i64 0, label %bb.bi
    i64 1, label %bb.bj
    i64 2, label %bb.bk
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fo = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.fp = load double, ptr %i.fo, align 16, !alias.scope !43261, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230

bb.bj:                                            ; preds = %bb.bh
  %i.fq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.fr = load double, ptr %i.fq, align 16, !alias.scope !43261, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230

bb.bk:                                            ; preds = %bb.bh
  %i.fs = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !43261, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %.sroa.0.0.i228 = phi double [ %i.fp, %bb.bi ], [ %i.fr, %bb.bj ], [ %i.fs, %bb.bk ], [ 0.000000e+00, %bb.bh ]
  %i.ft = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select13, double noundef 0.000000e+00)
          to label %bb.bl unwind label %.thread

bb.bl:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230
  %i.fu = fadd double %i.fl, %.sroa.0.0.i228      ; 2 uses
  %.inv175 = fcmp ord double %i.fu, 0.000000e+00
  %spec.store.select14 = select i1 %.inv175, double %i.fu, double 0.000000e+00
  %i.fv = fadd double %i.ft, %spec.store.select14 ; 2 uses
  %.inv176 = fcmp ord double %i.fv, 0.000000e+00
  %spec.store.select15 = select i1 %.inv176, double %i.fv, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store double 0.000000e+00, ptr %i.k, align 8
  %i.fw = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.bm unwind label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.fx = icmp slt i8 %i.fw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.fx, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fy = fneg double %spec.store.select7
  %i.fz = fcmp uno double %spec.store.select7, 0.000000e+00
  %spec.store.select16 = select i1 %i.fz, double 0.000000e+00, double %i.fy
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sroa.056.1 = phi double [ %spec.store.select16, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %.sroa.0163.1 = phi double [ 0.000000e+00, %bb.bn ], [ %spec.store.select7, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bg

bb.bp:                                            ; preds = %bb.bg
  %i.ga = load i64, ptr %i.n, align 8, !range !52, !noundef !44
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.gc = load double, ptr %i.gb, align 8, !noundef !44 ; 2 uses
  %i.gd = trunc nuw i64 %i.ga to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gf = load double, ptr %i.ge, align 8
  %.sroa.0165.0 = select i1 %i.gd, double %i.gf, double %i.gc ; 2 uses
  %i.gg = load i64, ptr %i.u, align 16, !range !98, !alias.scope !43262, !noundef !44 ; 2 uses
  %i.gh = call i64 @llvm.usub.sat.i64(i64 %i.gg, i64 1)
  switch i64 %i.gh, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit [
    i64 0, label %bb.bq
    i64 1, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gj = load double, ptr %i.gi, align 8, !alias.scope !43262, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit

bb.br:                                            ; preds = %bb.bp
  %i.gk = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.gl = load double, ptr %i.gk, align 8, !alias.scope !43262, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit

bb.bs:                                            ; preds = %bb.bg
  %i.gm = load ptr, ptr %i.s, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 184 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 192
  %i.gp = load atomic i32, ptr %i.go acquire, align 4, !noalias !43263
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233, label %bb.bt, !prof !46

bb.bt:                                            ; preds = %bb.bs
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233 unwind label %.thread

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit: ; preds = %bb.br, %bb.bq, %bb.bp
  %.sroa.0.0.i231 = phi double [ %i.gl, %bb.br ], [ %i.gj, %bb.bq ], [ 0.000000e+00, %bb.bp ]
  %i.gr = fcmp uno double %.sroa.0165.0, 0.000000e+00
  %i.gs = fneg double %.sroa.0165.0
  %spec.store.select17 = select i1 %i.gr, double 0.000000e+00, double %i.gs ; 2 uses
  %i.gt = fadd double %spec.store.select17, %.sroa.0.0.i231 ; 2 uses
  %.inv177 = fcmp ord double %i.gt, 0.000000e+00
  %spec.store.select18 = select i1 %.inv177, double %i.gt, double 0.000000e+00
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bx, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit
  %i.gu = phi i64 [ %.pre, %bb.bx ], [ %i.gg, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ] ; 5 uses
  %i.gv = phi double [ %i.hp, %bb.bx ], [ %i.gc, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ] ; 3 uses
  %.sroa.0144.0 = phi double [ %spec.store.select25, %bb.bx ], [ %spec.store.select17, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ] ; 3 uses
  %.sroa.362.0 = phi double [ %spec.store.select26, %bb.bx ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ] ; 2 uses
  %.sroa.3.0 = phi double [ 0.000000e+00, %bb.bx ], [ %spec.store.select18, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ]
  %i.gw = call i64 @llvm.usub.sat.i64(i64 %i.gu, i64 1) ; 4 uses
  switch i64 %i.gw, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235 [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread: ; preds = %bb.bu
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gy = load double, ptr %i.gx, align 8, !alias.scope !43264, !noundef !44
  %i.gz = fadd double %.sroa.0144.0, %i.gv        ; 2 uses
  %.inv184323 = fcmp ord double %i.gz, 0.000000e+00
  %spec.store.select19324 = select i1 %.inv184323, double %i.gz, double 0.000000e+00
  %i.ha = fadd double %spec.store.select19324, %i.gy ; 2 uses
  %.inv185325 = fcmp ord double %i.ha, 0.000000e+00
  %spec.store.select27326 = select i1 %.inv185325, double %i.ha, double 0.000000e+00
  %i.hb = trunc nuw i64 %i.gu to i1
  %spec.select.v.i250 = select i1 %i.hb, i64 8, i64 72
  br label %.sink.split.i245

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330: ; preds = %bb.bu
  %i.hc = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.hd = load double, ptr %i.hc, align 8, !alias.scope !43264, !noundef !44
  %i.he = fadd double %.sroa.0144.0, %i.gv        ; 2 uses
  %.inv184332 = fcmp ord double %i.he, 0.000000e+00
  %spec.store.select19333 = select i1 %.inv184332, double %i.he, double 0.000000e+00
  %i.hf = fadd double %spec.store.select19333, %i.hd ; 2 uses
  %.inv185334 = fcmp ord double %i.hf, 0.000000e+00
  %spec.store.select27335 = select i1 %.inv185334, double %i.hf, double 0.000000e+00
  %i.hg = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !range !52, !alias.scope !43265, !noundef !44
  %i.hh = trunc nuw i64 %i.hg to i1
  %spec.select6.v.i244 = select i1 %i.hh, i64 16, i64 40
  br label %.sink.split.i245

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233: ; preds = %bb.bs, %bb.bt
  %i.hi = load ptr, ptr %i.gn, align 8, !nonnull !44, !noundef !44
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load double, ptr %i.hj, align 8, !noundef !44
  %i.hl = fmul double %.sroa.0.0.i, %i.hk         ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp one double %i.hm, +inf
  %spec.store.select30 = select i1 %i.hn, double %i.hl, double 0.000000e+00
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.hp = load double, ptr %i.ho, align 8, !noundef !44 ; 4 uses
  %i.hq = load i64, ptr %i.n, align 8, !range !52, !noundef !44
  %i.hr = trunc nuw i64 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ht = load double, ptr %i.hs, align 8
  %.sroa.0131.0 = select i1 %i.hr, double %i.ht, double %i.hp ; 2 uses
  %i.hu = fneg double %.sroa.0131.0
  %i.hv = fcmp uno double %.sroa.0131.0, 0.000000e+00
  %spec.store.select21 = select i1 %i.hv, double 0.000000e+00, double %i.hu
  %i.hw = fadd double %i.hp, %spec.store.select21 ; 2 uses
  %.inv179 = fcmp ord double %i.hw, 0.000000e+00
  %.neg180 = fneg double %i.hw
  %i.hx = select i1 %.inv179, double %.neg180, double -0.000000e+00 ; 2 uses
  %.inv181 = fcmp ord double %i.hx, 0.000000e+00
  %spec.store.select23 = select i1 %.inv181, double %i.hx, double 0.000000e+00
  %i.hy = load i64, ptr %i.u, align 16, !range !98, !alias.scope !43266, !noundef !44 ; 2 uses
  %i.hz = call i64 @llvm.usub.sat.i64(i64 %i.hy, i64 1)
  switch i64 %i.hz, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243 [
    i64 0, label %bb.bv
    i64 1, label %bb.bw
  ]

bb.bv:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233
  %i.ia = trunc nuw i64 %i.hy to i1
  %spec.select.v.i242 = select i1 %i.ia, i64 8, i64 72
  br label %.sink.split.i237

bb.bw:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233
  %i.ib = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !range !52, !alias.scope !43266, !noundef !44
  %i.ic = trunc nuw i64 %i.ib to i1
  %spec.select6.v.i236 = select i1 %i.ic, i64 16, i64 40
  br label %.sink.split.i237

.sink.split.i237:                                 ; preds = %bb.bw, %bb.bv
  %spec.select6.v.sink.i238 = phi i64 [ %spec.select6.v.i236, %bb.bw ], [ %spec.select.v.i242, %bb.bv ]
  %spec.select6.i239 = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select6.v.sink.i238
  %.sroa.0.2.i240 = load double, ptr %spec.select6.i239, align 8, !alias.scope !43266
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243: ; preds = %.sink.split.i237, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233
  %.sroa.0.1.i241 = phi double [ 0.000000e+00, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233 ], [ %.sroa.0.2.i240, %.sink.split.i237 ]
  %i.id = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3min(double noundef %.sroa.0.1.i241, double noundef %spec.store.select30)
          to label %bb.bx unwind label %.thread   ; 2 uses

bb.bx:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243
  %i.ie = fneg double %i.id
  %i.if = fcmp uno double %i.id, 0.000000e+00
  %spec.store.select24 = select i1 %i.if, double 0.000000e+00, double %i.ie
  %i.ig = fadd double %spec.store.select23, %spec.store.select24 ; 2 uses
  %.inv182 = fcmp ord double %i.ig, 0.000000e+00
  %spec.store.select25 = select i1 %.inv182, double %i.ig, double 0.000000e+00 ; 2 uses
  %i.ih = fadd double %spec.store.select25, %i.hp ; 2 uses
  %.inv183 = fcmp ord double %i.ih, 0.000000e+00
  %spec.store.select26 = select i1 %.inv183, double %i.ih, double 0.000000e+00
  %.pre = load i64, ptr %i.u, align 16, !range !98, !alias.scope !43264
  br label %bb.bu

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235: ; preds = %bb.bu
  %i.ii = fadd double %.sroa.0144.0, %i.gv        ; 2 uses
  %.inv184 = fcmp ord double %i.ii, 0.000000e+00
  %i.ij = fadd double %i.ii, 0.000000e+00
  %i.ik = select i1 %.inv184, double %i.ij, double 0.000000e+00 ; 2 uses
  %.inv185 = fcmp ord double %i.ik, 0.000000e+00
  %spec.store.select27 = select i1 %.inv185, double %i.ik, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251

.sink.split.i245:                                 ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread
  %spec.store.select27327 = phi double [ %spec.store.select27335, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330 ], [ %spec.store.select27326, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread ]
  %spec.select6.v.sink.i246 = phi i64 [ %spec.select6.v.i244, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330 ], [ %spec.select.v.i250, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread ]
  %spec.select6.i247 = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select6.v.sink.i246
  %.sroa.0.2.i248 = load double, ptr %spec.select6.i247, align 8, !alias.scope !43265
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235, %.sink.split.i245
  %spec.store.select27329 = phi double [ %spec.store.select27, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235 ], [ %spec.store.select27327, %.sink.split.i245 ]
  %.sroa.0.1.i249 = phi double [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235 ], [ %.sroa.0.2.i248, %.sink.split.i245 ]
  %i.il = fadd double %.sroa.362.0, %.sroa.0.1.i249 ; 2 uses
  %.inv186 = fcmp ord double %i.il, 0.000000e+00
  %spec.store.select28 = select i1 %.inv186, double %i.il, double 0.000000e+00
  br i1 %i.eh, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit, label %bb.by

bb.by:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251
  switch i64 %i.gw, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread367
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread: ; preds = %bb.by
  %i.im = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  %i.in = load i8, ptr %i.im, align 16, !range !57, !alias.scope !43267, !noundef !44
  %i.io = xor i8 %i.in, 1
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread367: ; preds = %bb.by
  %i.ip = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.iq = load i8, ptr %i.ip, align 8, !range !57, !alias.scope !43267, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251
  switch i64 %i.gw, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit
  %.sroa.064.0365 = phi i8 [ %i.io, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ 0, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.u, i64 264
  %i.is = load double, ptr %i.ir, align 8, !alias.scope !43268, !noundef !44
  %4 = trunc nuw i64 %i.gu to i1
  %spec.select.v.i254 = select i1 %4, i64 8, i64 72
  br label %.sink.split.i255

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread367, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit
  %.sroa.064.0369 = phi i8 [ %i.iq, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread367 ], [ 0, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.iu = load double, ptr %i.it, align 16, !alias.scope !43268, !noundef !44
  br label %.sink.split.i255

.sink.split.i255:                                 ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340
  %.sroa.064.0364 = phi i8 [ %.sroa.064.0365, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340 ], [ %.sroa.064.0369, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread ]
  %.sroa.0.0.i253338 = phi double [ %i.is, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340 ], [ %i.iu, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread ]
  %spec.select.v.sink.i = phi i64 [ %spec.select.v.i254, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340 ], [ 64, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread ]
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select.v.sink.i
  %.sroa.0.1.i256 = load double, ptr %spec.select.i, align 8, !alias.scope !43269
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit: ; preds = %bb.by, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit, %.sink.split.i255
  %.sroa.064.0366 = phi i8 [ %.sroa.064.0364, %.sink.split.i255 ], [ 0, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ], [ 0, %bb.by ]
  %.sroa.0.0.i253339 = phi double [ %.sroa.0.0.i253338, %.sink.split.i255 ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ], [ 0.000000e+00, %bb.by ]
  %.sroa.0.0.i257 = phi double [ %.sroa.0.1.i256, %.sink.split.i255 ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ], [ 0.000000e+00, %bb.by ]
  %5 = icmp eq i64 %i.gu, 2
  br i1 %5, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.iw = load double, ptr %i.iv, align 8, !alias.scope !43270, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit

bb.ca:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit
  switch i64 %i.gw, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit [
    i64 0, label %bb.cb
    i64 1, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ix = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.iy = load double, ptr %i.ix, align 8, !alias.scope !43271, !noundef !44 ; 2 uses
  %i.iz = trunc nuw i64 %i.gu to i1
  %i.ja = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !43271
  %.sroa.022.0.i.i = select i1 %i.iz, double %i.ja, double %i.iy ; 2 uses
  %i.jb = fneg double %.sroa.022.0.i.i
  %i.jc = fcmp uno double %.sroa.022.0.i.i, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.jc, double 0.000000e+00, double %i.jb
  %i.jd = fadd double %i.iy, %spec.store.select.i.i ; 2 uses
  %.inv23.i.i = fcmp ord double %i.jd, 0.000000e+00
  %spec.store.select1.i.i = select i1 %.inv23.i.i, double %i.jd, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit

bb.cc:                                            ; preds = %bb.ca
  %i.je = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.jf = load double, ptr %i.je, align 8, !alias.scope !43271, !noundef !44 ; 2 uses
  %i.jg = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !range !52, !alias.scope !43271, !noundef !44
  %i.jh = trunc nuw i64 %i.jg to i1
  %i.ji = load double, ptr %.sroa.5.0..sroa_idx, align 16, !alias.scope !43271
  %.sroa.012.0.i.i = select i1 %i.jh, double %i.ji, double %i.jf ; 2 uses
  %i.jj = fneg double %.sroa.012.0.i.i
  %i.jk = fcmp uno double %.sroa.012.0.i.i, 0.000000e+00
  %spec.store.select2.i.i = select i1 %i.jk, double 0.000000e+00, double %i.jj
  %i.jl = fadd double %i.jf, %spec.store.select2.i.i ; 2 uses
  %.inv.i.i = fcmp ord double %i.jl, 0.000000e+00
  %spec.store.select3.i.i = select i1 %.inv.i.i, double %i.jl, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %.sroa.0.0.i258 = phi double [ %i.iw, %bb.bz ], [ %spec.store.select3.i.i, %bb.cc ], [ %spec.store.select1.i.i, %bb.cb ], [ 0.000000e+00, %bb.ca ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, double noundef %.sroa.055.0, double noundef %spec.store.select27329, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @624)
          to label %bb.cd unwind label %.thread

bb.cd:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit
  store i64 1, ptr %i.j, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %spec.store.select28, ptr %i.jm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.h, ptr noundef nonnull align 16 dereferenceable(304) %i.u, i64 304, i1 false)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.h)
          to label %bb.ce unwind label %bb.cn

.body259:                                         ; preds = %bb.cg
  %lpad.thr_comm.split-lp347 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, double noundef %.sroa.0163.0, double noundef %.sroa.362.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.i)
          to label %bb.cf unwind label %bb.cn

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, double noundef %.sroa.056.0, double noundef %.sroa.3.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.cg unwind label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 45
  %.val = load i8, ptr %i.jn, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 46
  %.val194 = load i8, ptr %i.jo, align 2
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.f, i8 %.val, i8 %.val194, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ch unwind label %.body259

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jp, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.jr = load double, ptr %i.jq, align 8, !alias.scope !43273, !noundef !44
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 98
  %i.jt = load i8, ptr %i.js, align 2, !range !139, !alias.scope !43273, !noundef !44
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 97
  %i.jv = load i8, ptr %i.ju, align 1, !range !119, !alias.scope !43273, !noundef !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !43274)
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43275)
  call void @llvm.experimental.noalias.scope.decl(metadata !43276)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.jr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !43277, !noalias !43274
  %.sroa.5.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %.sroa.0.0.i257, ptr %.sroa.5.0..sroa_idx272, align 16, !alias.scope !43277, !noalias !43274
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store double %.sroa.0.0.i258, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !43277, !noalias !43274
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %.sroa.0.0.i253339, ptr %.sroa.7.0..sroa_idx, align 16, !alias.scope !43277, !noalias !43274
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x double> %i.bw, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !43277, !noalias !43274
  %.sroa.10273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 %.sroa.064.0366, ptr %.sroa.10273.0..sroa_idx, align 8, !alias.scope !43277, !noalias !43274
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 105
  store i8 %i.jv, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !43277, !noalias !43274
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 %i.jt, ptr %.sroa.12.0..sroa_idx, align 2, !alias.scope !43277, !noalias !43274
  store i64 2, ptr %i.a, align 16, !alias.scope !43278, !noalias !43272
  call void @llvm.experimental.noalias.scope.decl(metadata !43279)
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !alias.scope !43280, !noundef !44 ; 3 uses
  %i.jz = load i64, ptr %i.jw, align 8, !range !48, !alias.scope !43280, !noundef !44
  %i.ka = icmp eq i64 %i.jy, %i.jz
  br i1 %i.ka, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jw)
          to label %bb.cl unwind label %bb.cj, !noalias !43281

bb.cj:                                            ; preds = %bb.ci
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #53
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266 unwind label %bb.ck, !noalias !43282

bb.ck:                                            ; preds = %bb.cj
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !43282
  unreachable

bb.cl:                                            ; preds = %bb.ci, %bb.ch
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !43280, !nonnull !44, !noundef !44
  %i.kf = getelementptr inbounds nuw [304 x i8], ptr %i.ke, i64 %i.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.kf, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !43282
  %i.kg = add i64 %i.jy, 1
  store i64 %i.kg, ptr %i.jx, align 8, !alias.scope !43280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !43283)
  call void @llvm.experimental.noalias.scope.decl(metadata !43284)
  call void @llvm.experimental.noalias.scope.decl(metadata !43285)
  %i.kh = load ptr, ptr %i.s, align 8, !alias.scope !43286, !nonnull !44, !noundef !44
  %i.ki = atomicrmw add ptr %i.kh, i64 -1 release, align 8, !noalias !43286
  %i.kj = icmp eq i64 %i.ki, 1
  br i1 %i.kj, label %bb.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262

bb.cm:                                            ; preds = %bb.cl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 unwind label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.kk = load ptr, ptr %i.v, align 8, !alias.scope !43287, !noundef !44
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  %.sroa.4.0.ph = phi i64 [ %.sroa.4.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ]
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  %.sroa.4.0 = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ], [ %.sroa.4.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ %.sroa.4.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.km = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.kn = insertvalue { ptr, i64 } %i.km, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.kn

bb.cn:                                            ; preds = %bb.ce, %bb.cd, %bb.cf
  %.sroa.066.1.ph = phi i1 [ false, %bb.cf ], [ true, %bb.cd ], [ true, %bb.ce ]
  %lpad.thr_comm346 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43288)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43289)
  call void @llvm.experimental.noalias.scope.decl(metadata !43290)
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !43291, !nonnull !44, !noundef !44
  %i.kq = atomicrmw add ptr %i.kp, i64 -1 release, align 8, !noalias !43291
  %i.kr = icmp eq i64 %i.kq, 1
  br i1 %i.kr, label %bb.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.cp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.co, %bb.cn
  br i1 %.sroa.066.1.ph, label %bb.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

bb.cp:                                            ; preds = %bb.cr, %bb.co, %bb.ab, %bb.f, %.body.thread
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.cq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %.thread
  %.pn321 = phi { ptr, i32 } [ %i.fb, %.thread ], [ %lpad.thr_comm346, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.sroa.068.4320 = phi i1 [ true, %.thread ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43292)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43293)
  call void @llvm.experimental.noalias.scope.decl(metadata !43294)
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !43295, !nonnull !44, !noundef !44
  %i.kv = atomicrmw add ptr %i.ku, i64 -1 release, align 8, !noalias !43295
  %i.kw = icmp eq i64 %i.kv, 1
  br i1 %i.kw, label %bb.cr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

bb.cr:                                            ; preds = %bb.cq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kt) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266 unwind label %bb.cp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !43296)
  %i.kx = load i64, ptr %i.u, align 16, !range !98, !alias.scope !43296, !noundef !44
  %i.ky = call i64 @llvm.usub.sat.i64(i64 %i.kx, i64 1)
  switch i64 %i.ky, label %bb.cs [
    i64 0, label %bb.cu
    i64 1, label %bb.cv
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  ]

bb.cs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210
  %i.kz = load i8, ptr %.sroa.5.0..sroa_idx, align 16, !range !57, !alias.scope !43297, !noundef !44
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.ct, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.640.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %.body

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %.body

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210
  call void @llvm.experimental.noalias.scope.decl(metadata !43298)
  call void @llvm.experimental.noalias.scope.decl(metadata !43299)
  call void @llvm.experimental.noalias.scope.decl(metadata !43300)
  call void @llvm.experimental.noalias.scope.decl(metadata !43301)
  %i.lb = load ptr, ptr %.sroa.640.0..sroa_idx, align 8, !alias.scope !43302, !nonnull !44, !noundef !44
  %i.lc = atomicrmw add ptr %i.lb, i64 -1 release, align 8, !noalias !43302
  %i.ld = icmp eq i64 %i.lc, 1
  br i1 %i.ld, label %bb.cw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.640.0..sroa_idx) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit: ; preds = %bb.cv, %bb.cs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210, %bb.ct, %bb.cu, %bb.cw, %bb.h
  %.sroa.4.1 = phi i64 [ %i.aj, %bb.h ], [ %i.dr, %bb.cw ], [ %i.dr, %bb.cu ], [ %i.dr, %bb.ct ], [ %i.dr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210 ], [ %i.dr, %bb.cs ], [ %i.dr, %bb.cv ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.ah, %bb.h ], [ %i.dp, %bb.cw ], [ %i.dp, %bb.cu ], [ %i.dp, %bb.ct ], [ %i.dp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210 ], [ %i.dp, %bb.cs ], [ %i.dp, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.le = load ptr, ptr %i.v, align 8, !alias.scope !43303, !noundef !44
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split

.body.thread:                                     ; preds = %bb.t, %bb.u, %.body.thread314, %.noexc201
  %.pn190310 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread314 ], [ %.pn.pn.pn, %.noexc201 ], [ %i.bc, %bb.u ], [ %i.bc, %bb.t ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.u) #53
          to label %bb.e unwind label %bb.cp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %.pn192
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6cancel13layout_cancel(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [304 x i8], align 16              ; 15 uses
  %i.l = alloca [48 x i8], align 8                ; 11 uses
  %i.m = alloca [304 x i8], align 16              ; 16 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %.sroa.15 = alloca [159 x i8], align 1          ; 5 uses
  %.sroa.16 = alloca [16 x i8], align 16          ; 5 uses
  %.sroa.17 = alloca [15 x i8], align 1           ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load i64, ptr %i.o, align 8, !range !56, !noundef !44 ; 3 uses
  %i.q = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.n, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @625, i64 noundef 18, i64 noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.m, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.f unwind label %.body

.body.thread:                                     ; preds = %.body, %bb.x, %bb.ae, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ad ], [ %lpad.thr_comm, %bb.ae ], [ %i.ce, %bb.x ], [ %lpad.thr_comm.split-lp, %.body ]
  %i.r = load ptr, ptr %i.n, align 8, !alias.scope !43336, !noundef !44
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %.body.thread
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.af

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load i64, ptr %i.m, align 16, !range !85, !noundef !44 ; 3 uses
  %i.u = icmp eq i64 %i.t, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.y = load i64, ptr %i.x, align 16             ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ac

bb.h:                                             ; preds = %bb.f
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.637.0..sroa_idx, i64 56, i1 false)
  %.sroa.637.sroa.4.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.z = load <2 x double>, ptr %.sroa.637.sroa.4.0..sroa.637.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %.sroa.637.sroa.6.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.637.sroa.6.0.copyload = load double, ptr %.sroa.637.sroa.6.0..sroa.637.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.637.sroa.7.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %.sroa.637.sroa.7.0.copyload = load i8, ptr %.sroa.637.sroa.7.0..sroa.637.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.637.sroa.8.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.637.sroa.8.0..sroa.637.0..sroa_idx.sroa_idx, i64 159, i1 false)
  %.sroa.637.sroa.9.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %.sroa.637.sroa.9.0.copyload = load double, ptr %.sroa.637.sroa.9.0..sroa.637.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.637.sroa.10.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.637.sroa.10.0..sroa.637.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.637.sroa.11.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %.sroa.637.sroa.11.0.copyload = load i8, ptr %.sroa.637.sroa.11.0..sroa.637.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.637.sroa.12.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.17, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.637.sroa.12.0..sroa.637.0..sroa_idx.sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.aa = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ab = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 1)
  %i.ac = extractelement <2 x double> %i.z, i64 0 ; 2 uses
  %i.ad = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  switch i64 %i.ab, label %bb.i [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85
    i64 3, label %._crit_edge.i
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread: ; preds = %bb.h
  %i.ae = xor i8 %.sroa.637.sroa.11.0.copyload, 1
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85

bb.i:                                             ; preds = %bb.h
  %i.af = bitcast i64 %i.aa to double
  %i.ag = fmul double %i.af, 5.000000e-01         ; 3 uses
  %.inv12.i = fcmp ord double %i.ag, 0.000000e+00
  %spec.store.select13.i = select i1 %.inv12.i, double %i.ag, double 0.000000e+00
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.i
  %spec.store.select14.i = phi double [ %spec.store.select13.i, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.09.0.i = phi double [ %i.ag, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %.inv10.i = fcmp ord double %.sroa.09.0.i, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv10.i, double %.sroa.09.0.i, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85: ; preds = %bb.h, %._crit_edge.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread
  %.sroa.0.0.i5892 = phi double [ 0.000000e+00, %._crit_edge.i ], [ %.sroa.637.sroa.9.0.copyload, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ %i.ac, %bb.h ]
  %.sroa.0.0.i8490 = phi i8 [ 0, %._crit_edge.i ], [ %i.ae, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ %.sroa.637.sroa.7.0.copyload, %bb.h ]
  %.sroa.4.0.i = phi double [ %spec.store.select1.i, %._crit_edge.i ], [ %i.ad, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ %.sroa.637.sroa.6.0.copyload, %bb.h ]
  %.sroa.0.0.i59 = phi double [ %spec.store.select14.i, %._crit_edge.i ], [ %i.ac, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.t, ptr %i.k, align 16
  %.sroa.5.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx106, align 8
  %.sroa.7.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.y, ptr %.sroa.7.0..sroa_idx107, align 16
  %.sroa.8.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx108, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  %.sroa.9.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <2 x double> %i.z, ptr %.sroa.9.0..sroa_idx109, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store double %.sroa.637.sroa.6.0.copyload, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i8 %.sroa.637.sroa.7.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.15, i64 159, i1 false)
  %.sroa.15113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store double %.sroa.637.sroa.9.0.copyload, ptr %.sroa.15113.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  %.sroa.16114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  store i8 %.sroa.637.sroa.11.0.copyload, ptr %.sroa.16114.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.17, i64 15, i1 false)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.k)
          to label %bb.j unwind label %.body

bb.j:                                             ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ai = load double, ptr %i.ah, align 8, !noundef !44 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ak = load double, ptr %i.aj, align 8, !noundef !44 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !44, !align !49, !noundef !44
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ao = load double, ptr %i.an, align 16, !noundef !44 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aq = load double, ptr %i.ap, align 8, !noundef !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  invoke fastcc void @_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ar)
          to label %bb.k unwind label %bb.ad

.body:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85, %bb.ab, %bb.d, %bb.p
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.at = load i8, ptr %i.as, align 1, !range !57, !noundef !44
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6cancel16draw_cancel_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef align 8 dereferenceable(200) %i.am, double noundef %i.ao, double noundef %i.aq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.i, i1 noundef zeroext %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, double noundef %i.ai, double noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %i.p)
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aw = load i64, ptr %i.j, align 8, !range !55, !noundef !44 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.1020.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1020.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.641.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.aw, ptr %i.h, align 8
  %.sroa.614.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.az, ptr %.sroa.614.0..sroa_idx15, align 8
  %.sroa.817.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bb, ptr %.sroa.817.0..sroa_idx18, align 8
  %i.bc = fmul double %i.ai, 5.000000e-01         ; 2 uses
  %.inv = fcmp ord double %i.bc, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.bc, double 0.000000e+00 ; 2 uses
  %i.bd = fmul double %i.ak, 5.000000e-01         ; 2 uses
  %.inv54 = fcmp ord double %i.bd, 0.000000e+00
  %spec.store.select1 = select i1 %.inv54, double %i.bd, double 0.000000e+00 ; 2 uses
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, double noundef %spec.store.select, double noundef %spec.store.select1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bf = load i8, ptr %i.be, align 8, !range !57, !noundef !44
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.u, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 45
  %.val = load i8, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 46
  %.val57 = load i8, ptr %i.bi, align 2
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.d, i8 %.val, i8 %.val57, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.v unwind label %.body

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bj = load ptr, ptr %i.al, align 8, !nonnull !44, !align !49, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ar)
          to label %bb.r unwind label %bb.ad

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6cancel16draw_cancel_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef align 8 dereferenceable(200) %i.bj, double noundef %i.ao, double noundef %i.aq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.f, i1 noundef zeroext true, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, double noundef %i.ai, double noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %i.p)
          to label %bb.s unwind label %bb.ad

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bk = load i64, ptr %i.g, align 8, !range !55, !noundef !44 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.1030.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1030.0..sroa_idx31, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.bk, ptr %i.e, align 8
  %.sroa.624.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bn, ptr %.sroa.624.0..sroa_idx25, align 8
  %.sroa.827.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bp, ptr %.sroa.827.0..sroa_idx28, align 8
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, double noundef %spec.store.select, double noundef %spec.store.select1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.p unwind label %bb.ad

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  %i.bt = load i8, ptr %i.bs, align 2, !range !139, !alias.scope !43338, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 97
  %i.bv = load i8, ptr %i.bu, align 1, !range !119, !alias.scope !43338, !noundef !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bx = load double, ptr %i.bw, align 8, !alias.scope !43338, !noundef !44
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bz = load <2 x double>, ptr %i.br, align 8, !alias.scope !43338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !43339)
  call void @llvm.experimental.noalias.scope.decl(metadata !43340)
  call void @llvm.experimental.noalias.scope.decl(metadata !43341)
  store <2 x double> %i.bz, ptr %.sroa.4.0..sroa_idx65, align 8, !alias.scope !43342, !noalias !43339
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store double %i.bx, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !43342, !noalias !43339
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %.sroa.0.0.i5892, ptr %.sroa.7.0..sroa_idx, align 16, !alias.scope !43342, !noalias !43339
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double %.sroa.0.0.i59, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !43342, !noalias !43339
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %.sroa.4.0.i, ptr %.sroa.9.0..sroa_idx, align 16, !alias.scope !43342, !noalias !43339
  %.sroa.1066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 %.sroa.0.0.i8490, ptr %.sroa.1066.0..sroa_idx, align 8, !alias.scope !43342, !noalias !43339
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 105
  store i8 %i.bv, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !43342, !noalias !43339
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 %i.bt, ptr %.sroa.12.0..sroa_idx, align 2, !alias.scope !43342, !noalias !43339
  store i64 2, ptr %i.a, align 16, !alias.scope !43343, !noalias !43337
  call void @llvm.experimental.noalias.scope.decl(metadata !43344)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !43345, !noundef !44 ; 3 uses
  %i.cc = load i64, ptr %i.by, align 8, !range !48, !alias.scope !43345, !noundef !44
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
end_hunk_5
begin_hunk_6_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts13layout_primes:bb.a
  store i8 %i.bi, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !43991, !noalias !43988
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 %i.bg, ptr %.sroa.12.0..sroa_idx, align 2, !alias.scope !43991, !noalias !43988
  store i64 2, ptr %i.a, align 16, !alias.scope !43992, !noalias !43986
  call void @llvm.experimental.noalias.scope.decl(metadata !43993)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !43994, !noundef !44 ; 3 uses
  %i.br = load i64, ptr %i.bl, align 8, !range !48, !alias.scope !43994, !noundef !44
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.s unwind label %bb.q, !noalias !43995

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #53
          to label %.body.thread unwind label %bb.r, !noalias !43996

bb.r:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !43996
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !43994, !nonnull !44, !noundef !44
  %i.bx = getelementptr inbounds nuw [304 x i8], ptr %i.bw, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.bx, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !43996
  %i.by = add i64 %i.bq, 1
  store i64 %i.by, ptr %i.bp, align 8, !alias.scope !43994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !43997)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43998)
  call void @llvm.experimental.noalias.scope.decl(metadata !43999)
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !44000, !nonnull !44, !noundef !44
  %i.cb = atomicrmw add ptr %i.ca, i64 -1 release, align 8, !noalias !44000
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30 unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cd = load ptr, ptr %i.i, align 8, !alias.scope !44001, !noundef !44
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30, %bb.h
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.u:                                             ; preds = %bb.m
  %i.cf = trunc nuw i64 %i.ax to i1
  %.sroa.5.0.i = select i1 %i.cf, double %i.ay, double undef
  %i.cg = load i8, ptr %i.ao, align 8, !range !57, !alias.scope !43984, !noundef !44
  store <2 x double> %i.aw, ptr %i.ap, align 8, !alias.scope !43983
  store i64 %i.ax, ptr %i.d, align 8, !alias.scope !43983
  store double %.sroa.5.0.i, ptr %i.aq, align 8, !alias.scope !43983
  store ptr %i.az, ptr %i.ar, align 8, !alias.scope !43983
  store i8 %i.cg, ptr %i.as, align 8, !alias.scope !43983
  %i.ch = uitofp i64 %.sroa.015.036 to double
  %i.ci = fmul nnan double %i.ch, 5.000000e-01
  %i.cj = extractelement <2 x double> %i.aw, i64 0
  %i.ck = fmul double %i.ci, %i.cj                ; 2 uses
  %.inv23 = fcmp ord double %i.ck, 0.000000e+00
  %spec.store.select2 = select i1 %.inv23, double %i.ck, double 0.000000e+00
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, double noundef %spec.store.select2, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.av, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.m

bb.w:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44002)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44003)
  call void @llvm.experimental.noalias.scope.decl(metadata !44004)
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !44005, !nonnull !44, !noundef !44
  %i.co = atomicrmw add ptr %i.cn, i64 -1 release, align 8, !noalias !44005
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.x, label %.body.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm) #57
          to label %.body.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.k, %bb.e
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.e
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1008) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [304 x i8], align 16              ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [304 x i8], align 16              ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [304 x i8], align 16              ; 6 uses
  %i.q = alloca [304 x i8], align 16              ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [304 x i8], align 16              ; 6 uses
  %i.t = alloca [304 x i8], align 16              ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [304 x i8], align 16              ; 6 uses
  %i.w = alloca [304 x i8], align 16              ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [304 x i8], align 16              ; 6 uses
  %i.z = alloca [304 x i8], align 16              ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [304 x i8], align 16             ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 14 uses
  %i.ae = alloca [8 x i8], align 8                ; 25 uses
  %i.af = alloca [304 x i8], align 16             ; 26 uses
  %i.ag = alloca [304 x i8], align 16             ; 21 uses
  %i.ah = alloca [304 x i8], align 16             ; 26 uses
  %i.ai = alloca [304 x i8], align 16             ; 27 uses
  %i.aj = alloca [304 x i8], align 16             ; 19 uses
  %i.ak = alloca [304 x i8], align 16             ; 24 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [304 x i8], align 16             ; 7 uses
  %i.at = alloca [304 x i8], align 16             ; 7 uses
  %i.au = alloca [304 x i8], align 16             ; 7 uses
  %i.av = alloca [304 x i8], align 16             ; 7 uses
  %i.aw = alloca [304 x i8], align 16             ; 7 uses
  %i.ax = alloca [304 x i8], align 16             ; 7 uses
  %i.ay = alloca [304 x i8], align 16             ; 42 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.8254 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11243 = alloca [280 x i8], align 8       ; 5 uses
  %i.ba = alloca [304 x i8], align 16             ; 11 uses
  %.sroa.8213 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11202 = alloca [280 x i8], align 8       ; 5 uses
  %i.bb = alloca [304 x i8], align 16             ; 13 uses
  %.sroa.8172 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11161 = alloca [280 x i8], align 8       ; 5 uses
  %i.bc = alloca [304 x i8], align 16             ; 17 uses
  %i.bd = alloca [304 x i8], align 16             ; 26 uses
  %.sroa.8131 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11120 = alloca [280 x i8], align 8       ; 5 uses
  %i.be = alloca [304 x i8], align 16             ; 19 uses
  %.sroa.0 = alloca [1520 x i8], align 16         ; 10 uses
  %.sroa.18 = alloca [280 x i8], align 8          ; 6 uses
  %i.bf = alloca [304 x i8], align 16             ; 8 uses
  %i.bg = alloca [304 x i8], align 16             ; 15 uses
  %.sroa.869 = alloca [280 x i8], align 8         ; 5 uses
  %.sroa.1158 = alloca [280 x i8], align 8        ; 5 uses
  %i.bh = alloca [304 x i8], align 16             ; 17 uses
  %.sroa.830 = alloca [280 x i8], align 8         ; 5 uses
  %.sroa.11 = alloca [280 x i8], align 8          ; 5 uses
  %i.bi = alloca [304 x i8], align 16             ; 14 uses
  %i.bj = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !range !56, !noundef !44
  %i.bm = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.bm, 0
  %.sink.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %.sink.i.i.sroa.gep468 = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %.sink36.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 13 uses
  %.sink36.i.i.i.i.sroa.gep469 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 4 uses
  %.sink19.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 80 ; 2 uses
  %.sink19.i.i.i.i.sroa.gep471 = getelementptr inbounds nuw i8, ptr %i.ay, i64 264 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.bj, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @637, i64 noundef 19, i64 noundef %i.bl)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.830)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 16, !range !85, !noundef !44
  %.not365 = icmp eq i64 %i.bo, -1
  br i1 %.not365, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !44431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !44432
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.h unwind label %.thread495, !noalias !44433, !inline_history !44011

bb.f:                                             ; preds = %bb.d, %bb.j
  %.sroa.915.0 = phi i64 [ %.sroa.727.0.copyload, %bb.j ], [ undef, %bb.d ]
  %.sroa.7.0 = phi ptr [ %.sroa.624.0.copyload, %bb.j ], [ undef, %bb.d ]
  %.sroa.08.0 = phi i64 [ %.sroa.022.0.copyload, %bb.j ], [ -1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.634.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.08.0, ptr %i.bi, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 %.sroa.915.0, ptr %.sroa.5.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1158)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 16, !range !85, !noundef !44
  %.not366 = icmp eq i64 %i.bq, -1
  br i1 %.not366, label %bb.l, label %bb.k

.thread503:                                       ; preds = %bb.lc, %bb.le, %.thread495, %bb.om, %bb.m
  %.pn390 = phi { ptr, i32 } [ %.pn243.i, %bb.lc ], [ %.pn388, %bb.om ], [ %.pn388, %bb.m ], [ %lpad.thr_comm.split-lp, %.thread495 ], [ %.pn243.i, %bb.le ]
  %i.br = load ptr, ptr %i.bj, align 8, !alias.scope !44434, !noundef !44
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.g

bb.g:                                             ; preds = %.thread503
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.mq

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !44431
  %.sroa.022.0.copyload = load i64, ptr %i.ax, align 16 ; 2 uses
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.624.0.copyload = load ptr, ptr %.sroa.624.0..sroa_idx, align 8 ; 3 uses
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.727.0.copyload = load i64, ptr %.sroa.727.0..sroa_idx, align 16 ; 2 uses
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.bt = icmp eq i64 %.sroa.022.0.copyload, -1
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.624.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830, i64 280, i1 false)
  br label %bb.f

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !44435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !44436
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.o unwind label %bb.n, !noalias !44437, !inline_history !44019

bb.l:                                             ; preds = %bb.f, %bb.q
  %i.bu = phi i64 [ %.pre, %bb.q ], [ %.sroa.08.0, %bb.f ] ; 2 uses
  %.sroa.953.0 = phi i64 [ %.sroa.766.0.copyload, %bb.q ], [ undef, %bb.f ]
  %.sroa.748.0 = phi ptr [ %.sroa.663.0.copyload, %bb.q ], [ undef, %bb.f ] ; 2 uses
  %.sroa.045.0 = phi i64 [ %.sroa.061.0.copyload, %bb.q ], [ -1, %bb.f ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869)
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.675.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1158, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1158)
  store i64 %.sroa.045.0, ptr %i.bh, align 16
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.748.0, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  store i64 %.sroa.953.0, ptr %.sroa.574.0..sroa_idx, align 16
  %.not367 = icmp eq i64 %i.bu, -1
  %i.bv = ptrtoint ptr %.sroa.748.0 to i64
  %i.bw = bitcast i64 %i.bv to double
  br i1 %.not367, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit, label %bb.r

bb.m:                                             ; preds = %bb.ol, %bb.v, %bb.n
  %.sroa.0261.0 = phi i8 [ %.sroa.0261.1, %bb.n ], [ %.sroa.0261.2474, %bb.ol ], [ %.sroa.0261.4484, %bb.v ]
  %.pn388 = phi { ptr, i32 } [ %i.by, %bb.n ], [ %.pn386475, %bb.ol ], [ %.pn384485, %bb.v ] ; 2 uses
  %i.bx = trunc nuw i8 %.sroa.0261.0 to i1
  br i1 %i.bx, label %bb.om, label %.thread503

bb.n:                                             ; preds = %bb.od, %bb.ob, %bb.oa, %bb.ai, %bb.ag, %bb.af, %bb.k
  %.sroa.0261.1 = phi i8 [ 1, %bb.ai ], [ %.sroa.0261.7, %bb.od ], [ 1, %bb.k ], [ 1, %bb.af ], [ 1, %bb.ag ], [ %.sroa.0261.7, %bb.oa ], [ %.sroa.0261.7, %bb.ob ]
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !44435
  %.sroa.061.0.copyload = load i64, ptr %i.aw, align 16 ; 2 uses
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.663.0.copyload = load ptr, ptr %.sroa.663.0..sroa_idx, align 8 ; 3 uses
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.766.0.copyload = load i64, ptr %.sroa.766.0..sroa_idx, align 16 ; 2 uses
  %.sroa.869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.bz = icmp eq i64 %.sroa.061.0.copyload, -1
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.663.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1158)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1158, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869, i64 280, i1 false)
  %.pre = load i64, ptr %i.bi, align 16, !range !85
  br label %bb.l

bb.r:                                             ; preds = %bb.l
  %i.ca = call i64 @llvm.usub.sat.i64(i64 %i.bu, i64 1)
  switch i64 %i.ca, label %default.unreachable.i [
    i64 0, label %bb.s
    i64 1, label %bb.t
    i64 2, label %bb.u
    i64 3, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit
  ]

default.unreachable.i:                            ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.cc = load double, ptr %i.cb, align 16, !alias.scope !44438, !noundef !44
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

bb.t:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ce = load double, ptr %i.cd, align 16, !alias.scope !44438, !noundef !44
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

bb.u:                                             ; preds = %bb.r
  %i.cf = load double, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !44438, !noundef !44
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.l
  %.sroa.076.0 = phi double [ 0.000000e+00, %bb.l ], [ %i.cc, %bb.s ], [ %i.ce, %bb.t ], [ %i.cf, %bb.u ], [ 0.000000e+00, %bb.r ]
  %.not368 = icmp eq i64 %.sroa.045.0, -1
  br i1 %.not368, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit, label %bb.w

bb.v:                                             ; preds = %.thread
  br i1 %.sroa.0260.2483, label %bb.ol, label %bb.m

.split.thread:                                    ; preds = %bb.nw, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit, %bb.nt, %bb.nu
  %.sroa.0261.3.ph = phi i8 [ %.sroa.0261.7, %bb.nu ], [ %.sroa.0261.7, %bb.nt ], [ 1, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit ], [ 1, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit ], [ %.sroa.0261.7, %bb.nw ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ol

.thread495:                                       ; preds = %bb.e, %bb.oh, %bb.oi, %bb.ok, %bb.mm, %bb.mn, %bb.mp
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread503

bb.w:                                             ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit
  %i.cg = call i64 @llvm.usub.sat.i64(i64 %.sroa.045.0, i64 1)
  switch i64 %i.cg, label %default.unreachable.i395 [
    i64 0, label %bb.x
    i64 1, label %bb.y
    i64 2, label %bb.z
    i64 3, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit
  ]

default.unreachable.i395:                         ; preds = %bb.w
end_hunk_6
begin_hunk_7_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts:bb.a
          to label %.noexc275.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44497, !inline_history !44128

.noexc275.i:                                      ; preds = %bb.cp
  %i.gn = load i128, ptr %i.g, align 16, !noalias !44498, !noundef !44
  %i.go = icmp eq i128 %i.gn, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44498
  br i1 %i.go, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.cq, !prof !46

bb.cq:                                            ; preds = %.noexc275.i
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 13) 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gf) #56
          to label %.noexc276.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44496

.noexc276.i:                                      ; preds = %bb.cq
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc275.i
  %i.gp = load i8, ptr %i.gg, align 1, !range !57, !alias.scope !44499, !noalias !44500, !noundef !44
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = select i1 %i.gq, i64 72, i64 64
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh8_ECs7tN9tvpkfrg_12typst_layout.exit.i

.thread136.i:                                     ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.kr, %.thread120.i, %bb.kn, %bb.il
  %.pn.pn.i = phi { ptr, i32 } [ %i.agq, %bb.kn ], [ %lpad.thr_comm.split-lp.i, %bb.il ], [ %.pn129.i, %.thread120.i ], [ %.pn129.i, %bb.kr ], [ %lpad.loopexit.split-lp561, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.082.2.i = phi i1 [ false, %bb.kn ], [ false, %bb.il ], [ false, %.thread120.i ], [ false, %bb.kr ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.081.2.i = phi i1 [ %.not235.i, %bb.kn ], [ %.not235.i, %bb.il ], [ %.sroa.081.3130.i, %.thread120.i ], [ %.sroa.081.3130.i, %bb.kr ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.080.2.i = phi i1 [ %.not239.i, %bb.kn ], [ %.not239.i, %bb.il ], [ %.sroa.080.3131.i, %.thread120.i ], [ %.sroa.080.3131.i, %bb.kr ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.079.2.i = phi i1 [ %.not237.i, %bb.kn ], [ %.not237.i, %bb.il ], [ %.sroa.079.3132.i, %.thread120.i ], [ %.sroa.079.3132.i, %bb.kr ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.078.2.i = phi i1 [ %.not236.i, %bb.kn ], [ %.not236.i, %bb.il ], [ %.sroa.078.3133.i, %.thread120.i ], [ %.sroa.078.3133.i, %bb.kr ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.077.2.i = phi i1 [ %.not240.i, %bb.kn ], [ %.not240.i, %bb.il ], [ %.sroa.077.3134.i, %.thread120.i ], [ %.sroa.077.3134.i, %bb.kr ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.076.2.i = phi i1 [ %.not238.i, %bb.kn ], [ %.not238.i, %bb.il ], [ %.sroa.076.3135.i, %.thread120.i ], [ %.sroa.076.3135.i, %bb.kr ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44501)
  call void @llvm.experimental.noalias.scope.decl(metadata !44502)
  call void @llvm.experimental.noalias.scope.decl(metadata !44503)
  %i.gs = load ptr, ptr %i.ae, align 8, !alias.scope !44504, !noalias !44479, !nonnull !44, !noundef !44
  %i.gt = atomicrmw add ptr %i.gs, i64 -1 release, align 8, !noalias !44505
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.cr, label %.body.i

bb.cr:                                            ; preds = %.thread136.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #57
          to label %.body.i unwind label %bb.iw, !noalias !44479

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc311.i.i, %.noexc310.i.i, %.noexc.i.i, %bb.eq, %bb.ek, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.ib, %bb.ia, %_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widths.exit.i, %bb.hu, %bb.hq, %bb.hl, %bb.hh, %bb.hg, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit343.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit333.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit323.i, %bb.fx, %bb.fs, %bb.fn, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shiftss_0B7_.exit.i.i.i, %bb.fd, %bb.fc, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.i.i.i, %bb.ev, %bb.eu, %.noexc309.i.i, %bb.dz, %bb.dv, %bb.dt, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i, %bb.dg, %bb.dd, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i, %bb.cq, %bb.cp, %bb.co
  %lpad.loopexit.split-lp561 = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh8_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs7tN9tvpkfrg_12typst_layout.exit.i.i, %.noexc274.i
  %.sroa.0.1.i.i = phi i64 [ %i.gr, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 64, %.noexc274.i ]
  %i.gv = load i64, ptr %i.ak, align 16, !range !85, !noalias !44506, !noundef !44
  %.not.i.i278.i = icmp eq i64 %i.gv, -1
  %i.gw = load i64, ptr %i.ai, align 16, !range !85, !noalias !44479
  %.not.i.i278.1.i = icmp eq i64 %i.gw, -1
  %or.cond239.i = select i1 %.not.i.i278.i, i1 %.not.i.i278.1.i, i1 false
  %i.gx = load i64, ptr %i.ah, align 16, !range !85, !noalias !44479
  %.not.i.i278.2.i = icmp eq i64 %i.gx, -1
  %or.cond240.i = select i1 %or.cond239.i, i1 %.not.i.i278.2.i, i1 false
  %i.gy = load i64, ptr %i.af, align 16, !range !85, !noalias !44479
  %.not.i.i278.3.i = icmp eq i64 %i.gy, -1
  %or.cond241.i = select i1 %or.cond240.i, i1 %.not.i.i278.3.i, i1 false
  br i1 %or.cond241.i, label %bb.es, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRINtNtBb_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtB1h_7scripts18layout_attachments0EB1j_.exit.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRINtNtBb_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtB1h_7scripts18layout_attachments0EB1j_.exit.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh8_ECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !44507)
  call void @llvm.experimental.noalias.scope.decl(metadata !44508)
  %i.gz = load ptr, ptr %i.ae, align 8, !alias.scope !44507, !noalias !44479, !nonnull !44, !noundef !44 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 184 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 192
  %i.hc = load atomic i32, ptr %i.hb acquire, align 4, !noalias !44509
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i, !prof !46

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRINtNtBb_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtB1h_7scripts18layout_attachments0EB1j_.exit.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ha, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRINtNtBb_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtB1h_7scripts18layout_attachments0EB1j_.exit.i
  %i.he = load ptr, ptr %i.ha, align 8, !noalias !44510, !nonnull !44, !noundef !44
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.0.1.i.i
  %.sroa.0232.0.i.i = load double, ptr %i.hf, align 8, !noalias !44510, !noundef !44
  %i.hg = fmul double %.sroa.0.0.i.i, %.sroa.0232.0.i.i ; 2 uses
  %i.hh = call double @llvm.fabs.f64(double %i.hg)
  %i.hi = fcmp one double %i.hh, +inf
  %spec.store.select33.i.i = select i1 %i.hi, double %i.hg, double 0.000000e+00
  %i.hj = load ptr, ptr %i.ae, align 8, !alias.scope !44507, !noalias !44479, !nonnull !44, !noundef !44 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 184 ; 14 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 192 ; 7 uses
  %i.hm = load atomic i32, ptr %i.hl acquire, align 4, !noalias !44511
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i, label %bb.cs, !prof !46

bb.cs:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i: ; preds = %bb.cs, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.ho = load ptr, ptr %i.hk, align 8, !noalias !44510, !nonnull !44, !noundef !44
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hq = load double, ptr %i.hp, align 8, !noalias !44510, !noundef !44
  %i.hr = fmul double %.sroa.0.0.i.i, %i.hq       ; 2 uses
  %i.hs = call double @llvm.fabs.f64(double %i.hr)
  %i.ht = fcmp one double %i.hs, +inf
  %spec.store.select37.i.i = select i1 %i.ht, double %i.hr, double 0.000000e+00 ; 2 uses
  %i.hu = load atomic i32, ptr %i.hl acquire, align 8, !noalias !44512
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i, label %bb.ct, !prof !46

bb.ct:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i: ; preds = %bb.ct, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i
  %i.hw = load ptr, ptr %i.hk, align 8, !noalias !44510, !nonnull !44, !noundef !44
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 104
  %i.hy = load double, ptr %i.hx, align 8, !noalias !44510, !noundef !44
  %i.hz = fmul double %.sroa.0.0.i.i, %i.hy       ; 2 uses
  %i.ia = call double @llvm.fabs.f64(double %i.hz)
  %i.ib = fcmp one double %i.ia, +inf
  %spec.store.select34.i.i = select i1 %i.ib, double %i.hz, double 0.000000e+00
  %i.ic = load atomic i32, ptr %i.hl acquire, align 8, !noalias !44513
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i, label %bb.cu, !prof !46

bb.cu:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i: ; preds = %bb.cu, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i
  %i.ie = load ptr, ptr %i.hk, align 8, !noalias !44510, !nonnull !44, !noundef !44
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 88
  %i.ig = load double, ptr %i.if, align 8, !noalias !44510, !noundef !44
  %i.ih = fmul double %.sroa.0.0.i.i, %i.ig       ; 2 uses
  %i.ii = call double @llvm.fabs.f64(double %i.ih)
  %i.ij = fcmp one double %i.ii, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44509
  %i.ik = load atomic i32, ptr %i.hl acquire, align 8, !noalias !44514
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i, label %bb.cv, !prof !46

bb.cv:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i: ; preds = %bb.cv, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i
  %i.im = load ptr, ptr %i.hk, align 8, !noalias !44510, !nonnull !44, !noundef !44
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 96
  %i.io = load double, ptr %i.in, align 8, !noalias !44510, !noundef !44
  %i.ip = fmul double %.sroa.0.0.i.i, %i.io       ; 2 uses
  %i.iq = call double @llvm.fabs.f64(double %i.ip)
  %i.ir = fcmp one double %i.iq, +inf
  %spec.store.select35.i.i = select i1 %i.ir, double %i.ip, double 0.000000e+00 ; 2 uses
  store double %spec.store.select35.i.i, ptr %i.f, align 8, !noalias !44509
  %i.is = load atomic i32, ptr %i.hl acquire, align 8, !noalias !44515
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i, label %bb.cw, !prof !46

bb.cw:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i: ; preds = %bb.cw, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i
  %i.iu = load ptr, ptr %i.hk, align 8, !noalias !44510, !nonnull !44, !noundef !44
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.iw = load double, ptr %i.iv, align 8, !noalias !44510, !noundef !44
  %i.ix = fmul double %.sroa.0.0.i.i, %i.iw       ; 2 uses
  %i.iy = call double @llvm.fabs.f64(double %i.ix)
  %i.iz = fcmp one double %i.iy, +inf
  %spec.store.select38.i.i = select i1 %i.iz, double %i.ix, double 0.000000e+00
  %i.ja = load atomic i32, ptr %i.hl acquire, align 8, !noalias !44516
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i, label %bb.cx, !prof !46

bb.cx:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i: ; preds = %bb.cx, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i
  %i.jc = load ptr, ptr %i.hk, align 8, !noalias !44510, !nonnull !44, !noundef !44
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  %i.je = load double, ptr %i.jd, align 8, !noalias !44510, !noundef !44
  %i.jf = fmul double %.sroa.0.0.i.i, %i.je       ; 2 uses
  %i.jg = call double @llvm.fabs.f64(double %i.jf)
  %i.jh = fcmp one double %i.jg, +inf
  %i.ji = load atomic i32, ptr %i.hl acquire, align 8, !noalias !44517
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i, label %bb.cy, !prof !46

bb.cy:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i: ; preds = %bb.cy, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i
  %i.jk = load ptr, ptr %i.hk, align 8, !noalias !44510, !nonnull !44, !noundef !44
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 56
  %i.jm = load double, ptr %i.jl, align 8, !noalias !44510, !noundef !44
  %i.jn = fmul double %.sroa.0.0.i.i, %i.jm       ; 2 uses
  %i.jo = call double @llvm.fabs.f64(double %i.jn)
  %i.jp = fcmp one double %i.jo, +inf
  %spec.store.select40.i.i = select i1 %i.jp, double %i.jn, double 0.000000e+00
  %i.jq = load i64, ptr %i.ay, align 16, !range !98, !alias.scope !44518, !noundef !44 ; 5 uses
  %i.jr = call i64 @llvm.usub.sat.i64(i64 %i.jq, i64 1) ; 3 uses
  switch i64 %i.jr, label %bb.db [
    i64 0, label %bb.cz
    i64 1, label %bb.da
  ]

bb.cz:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %i.jt = load i8, ptr %i.js, align 16, !range !57, !alias.scope !44518, !noundef !44
  %i.ju = xor i8 %i.jt, 1
  br label %bb.db

bb.da:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.jw = load i8, ptr %i.jv, align 8, !range !57, !alias.scope !44518, !noundef !44
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i
  %.sroa.044.0.i.i = phi i8 [ %i.jw, %bb.da ], [ %i.ju, %bb.cz ], [ 0, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i ] ; 2 uses
  %i.jx = load i64, ptr %i.ak, align 16, !range !85, !noalias !44510, !noundef !44
  %.not.i279.i = icmp eq i64 %i.jx, -1
  %i.jy = load i64, ptr %i.ai, align 16, !range !85, !noalias !44479
  %.not242.i.i = icmp eq i64 %i.jy, -1
  %or.cond159.i = select i1 %.not.i279.i, i1 %.not242.i.i, i1 false
  br i1 %or.cond159.i, label %.noexc292.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  switch i64 %i.jr, label %bb.dd [
    i64 1, label %.sink.split.i.i
    i64 0, label %bb.de
  ]

.noexc292.i:                                      ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i, %bb.db
  %.sroa.0218.0.i.i = phi double [ 0.000000e+00, %bb.db ], [ %i.le, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i ]
  %i.jz = load i64, ptr %i.ah, align 16, !range !85, !noalias !44510, !noundef !44
  %.not248.i.i = icmp eq i64 %i.jz, -1
  %i.ka = load i64, ptr %i.af, align 16, !range !85, !noalias !44479
  %.not249.i.i = icmp eq i64 %i.ka, -1
  %or.cond160.i = select i1 %.not248.i.i, i1 %.not249.i.i, i1 false
  br i1 %or.cond160.i, label %.noexc296.i, label %bb.dn

.sink.split.i.i:                                  ; preds = %bb.de, %bb.dc
  %spec.select.v.sink.i.i = phi i64 [ %spec.select.v.i.i.a, %bb.de ], [ 64, %bb.dc ]
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.v.sink.i.i
  %.sroa.0238.1.i.i = load double, ptr %spec.select.i.i, align 8, !alias.scope !44518
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split.i.i, %bb.dc
  %.sroa.0238.0.i.i = phi double [ 0.000000e+00, %bb.dc ], [ %.sroa.0238.1.i.i, %.sink.split.i.i ]
  %i.kb = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef 0.000000e+00, double noundef %spec.store.select33.i.i)
          to label %.noexc289.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

.noexc289.i:                                      ; preds = %bb.dd
  %i.kc = trunc nuw i8 %.sroa.044.0.i.i to i1
  br i1 %i.kc, label %bb.dg, label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.kd = trunc nuw i64 %i.jq to i1
  %spec.select.v.i.i.a = select i1 %i.kd, i64 8, i64 72
  br label %.sink.split.i.i

bb.df:                                            ; preds = %.noexc289.i
  %.neg.i.i = fneg double %i.ih
  %i.ke = select i1 %i.ij, double %.neg.i.i, double -0.000000e+00 ; 2 uses
  %.inv.i.i = fcmp ord double %i.ke, 0.000000e+00
  %spec.store.select8.i.i = select i1 %.inv.i.i, double %i.ke, double 0.000000e+00
  %i.kf = fadd double %spec.store.select8.i.i, %.sroa.0238.0.i.i ; 2 uses
  %.inv243.i.i = fcmp ord double %i.kf, 0.000000e+00
  %spec.store.select9.i.i = select i1 %.inv243.i.i, double %i.kf, double 0.000000e+00
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.noexc289.i
  %.sroa.046.0.i.i = phi double [ %spec.store.select9.i.i, %bb.df ], [ 0.000000e+00, %.noexc289.i ]
  %i.kg = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.kb, double noundef %.sroa.046.0.i.i)
          to label %.noexc290.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

.noexc290.i:                                      ; preds = %bb.dg
  %i.kh = load i64, ptr %i.ak, align 16, !range !85, !noalias !44510, !noundef !44 ; 3 uses
  %.not244.i.i = icmp eq i64 %i.kh, -1
  br i1 %.not244.i.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %.noexc290.i
  %i.ki = call i64 @llvm.usub.sat.i64(i64 %i.kh, i64 1)
  switch i64 %i.ki, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i [
    i64 0, label %bb.di
    i64 1, label %bb.dj
  ]

bb.di:                                            ; preds = %bb.dh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.kl = load i64, ptr %.sink368.i.sroa.gep65.i, align 8, !range !52, !alias.scope !44519, !noalias !44510, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i: ; preds = %bb.dj, %bb.di
  %.sink369.i.i = phi i64 [ %i.kl, %bb.dj ], [ %i.kh, %bb.di ]
  %.sink368.i.sroa.phi.i = phi ptr [ %.sink368.i.sroa.gep.i, %bb.dj ], [ %.sink368.i.sroa.gep65.i, %bb.di ]
  %.sink366.in.i.i = phi ptr [ %i.kk, %bb.dj ], [ %i.kj, %bb.di ]
  %.sink366.i.i = load double, ptr %.sink366.in.i.i, align 8, !alias.scope !44519, !noalias !44510, !noundef !44 ; 2 uses
  %i.km = trunc nuw i64 %.sink369.i.i to i1
  %i.kn = load double, ptr %.sink368.i.sroa.phi.i, align 8, !alias.scope !44519, !noalias !44510
  %.sroa.012.0.i.i.i = select i1 %i.km, double %i.kn, double %.sink366.i.i ; 2 uses
  %i.ko = fneg double %.sroa.012.0.i.i.i
  %i.kp = fcmp uno double %.sroa.012.0.i.i.i, 0.000000e+00
  %spec.store.select2.i.i.i = select i1 %i.kp, double 0.000000e+00, double %i.ko
  %i.kq = fadd double %.sink366.i.i, %spec.store.select2.i.i.i ; 2 uses
  %.inv.i.i.i = fcmp ord double %i.kq, 0.000000e+00
  %spec.store.select3.i.i.i = select i1 %.inv.i.i.i, double %i.kq, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i, %bb.dh, %.noexc290.i
  %.sroa.0233.0.i.i = phi double [ 0.000000e+00, %.noexc290.i ], [ 0.000000e+00, %bb.dh ], [ %spec.store.select3.i.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i ]
  %i.kr = fadd double %spec.store.select37.i.i, %.sroa.0233.0.i.i ; 2 uses
  %.inv245.i.i = fcmp ord double %i.kr, 0.000000e+00
  %spec.store.select10.i.i = select i1 %.inv245.i.i, double %i.kr, double 0.000000e+00
  %i.ks = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.kg, double noundef %spec.store.select10.i.i)
          to label %.noexc291.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

.noexc291.i:                                      ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i
  %i.kt = load i64, ptr %i.ai, align 16, !range !85, !noalias !44510, !noundef !44 ; 3 uses
  %.not246.i.i = icmp eq i64 %i.kt, -1
  br i1 %.not246.i.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i, label %bb.dk

bb.dk:                                            ; preds = %.noexc291.i
  %i.ku = call i64 @llvm.usub.sat.i64(i64 %i.kt, i64 1)
  switch i64 %i.ku, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i [
    i64 0, label %bb.dl
    i64 1, label %bb.dm
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.kx = load i64, ptr %.sink377.i.sroa.gep59.i, align 8, !range !52, !alias.scope !44520, !noalias !44510, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i: ; preds = %bb.dm, %bb.dl
  %.sink378.i.i = phi i64 [ %i.kx, %bb.dm ], [ %i.kt, %bb.dl ]
  %.sink377.i.sroa.phi.i = phi ptr [ %.sink377.i.sroa.gep.i, %bb.dm ], [ %.sink377.i.sroa.gep59.i, %bb.dl ]
  %.sink375.in.i.i = phi ptr [ %i.kw, %bb.dm ], [ %i.kv, %bb.dl ]
  %.sink375.i.i = load double, ptr %.sink375.in.i.i, align 8, !alias.scope !44520, !noalias !44510, !noundef !44 ; 2 uses
  %i.ky = trunc nuw i64 %.sink378.i.i to i1
  %i.kz = load double, ptr %.sink377.i.sroa.phi.i, align 8, !alias.scope !44520, !noalias !44510
  %.sroa.012.0.i286.i.i = select i1 %i.ky, double %i.kz, double %.sink375.i.i ; 2 uses
  %i.la = fneg double %.sroa.012.0.i286.i.i
  %i.lb = fcmp uno double %.sroa.012.0.i286.i.i, 0.000000e+00
  %spec.store.select2.i287.i.i = select i1 %i.lb, double 0.000000e+00, double %i.la
  %i.lc = fadd double %.sink375.i.i, %spec.store.select2.i287.i.i ; 2 uses
  %.inv.i288.i.i = fcmp ord double %i.lc, 0.000000e+00
  %spec.store.select3.i289.i.i = select i1 %.inv.i288.i.i, double %i.lc, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i, %bb.dk, %.noexc291.i
  %.sroa.0234.0.i.i = phi double [ 0.000000e+00, %.noexc291.i ], [ 0.000000e+00, %bb.dk ], [ %spec.store.select3.i289.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i ]
  %i.ld = fadd double %spec.store.select37.i.i, %.sroa.0234.0.i.i ; 2 uses
  %.inv247.i.i = fcmp ord double %i.ld, 0.000000e+00
  %spec.store.select11.i.i = select i1 %.inv247.i.i, double %i.ld, double 0.000000e+00
  %i.le = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.ks, double noundef %spec.store.select11.i.i)
          to label %.noexc292.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

bb.dn:                                            ; preds = %.noexc292.i
  %i.lf = icmp eq i64 %i.jq, 2
  br i1 %i.lf, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.lh = load double, ptr %i.lg, align 8, !alias.scope !44521, !noundef !44
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i

bb.dp:                                            ; preds = %bb.dn
  switch i64 %i.jr, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i [
    i64 0, label %bb.dq
    i64 1, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.li = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.lj = load double, ptr %i.li, align 8, !alias.scope !44522, !noundef !44 ; 2 uses
  %i.lk = trunc nuw i64 %i.jq to i1
  %i.ll = load double, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !alias.scope !44522
  %.sroa.022.0.i.i.i.i = select i1 %i.lk, double %i.ll, double %i.lj ; 2 uses
  %i.lm = fneg double %.sroa.022.0.i.i.i.i
  %i.ln = fcmp uno double %.sroa.022.0.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.ln, double 0.000000e+00, double %i.lm
  %i.lo = fadd double %i.lj, %spec.store.select.i.i.i.i ; 2 uses
  %.inv23.i.i.i.i = fcmp ord double %i.lo, 0.000000e+00
  %spec.store.select1.i.i.i.i = select i1 %.inv23.i.i.i.i, double %i.lo, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.lq = load double, ptr %i.lp, align 8, !alias.scope !44522, !noundef !44 ; 2 uses
  %i.lr = load i64, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !range !52, !alias.scope !44522, !noundef !44
  %i.ls = trunc nuw i64 %i.lr to i1
  %i.lt = load double, ptr %.sink36.i.i.i.i.sroa.gep469, align 16, !alias.scope !44522
  %.sroa.012.0.i.i.i.i = select i1 %i.ls, double %i.lt, double %i.lq ; 2 uses
  %i.lu = fneg double %.sroa.012.0.i.i.i.i
  %i.lv = fcmp uno double %.sroa.012.0.i.i.i.i, 0.000000e+00
  %spec.store.select2.i.i.i.i = select i1 %i.lv, double 0.000000e+00, double %i.lu
  %i.lw = fadd double %i.lq, %spec.store.select2.i.i.i.i ; 2 uses
  %.inv.i.i.i.i = fcmp ord double %i.lw, 0.000000e+00
  %spec.store.select3.i.i.i.i = select i1 %.inv.i.i.i.i, double %i.lw, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.do
  %.sroa.0.0.i296.i.i = phi double [ %i.lh, %bb.do ], [ %spec.store.select3.i.i.i.i, %bb.dr ], [ %spec.store.select1.i.i.i.i, %bb.dq ], [ 0.000000e+00, %bb.dp ]
  %i.lx = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef 0.000000e+00, double noundef %spec.store.select38.i.i)
          to label %.noexc293.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

.noexc293.i:                                      ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i
  %i.ly = trunc nuw i8 %.sroa.044.0.i.i to i1
  br i1 %i.ly, label %bb.dt, label %bb.ds

.noexc296.i:                                      ; preds = %bb.dz, %.noexc292.i
  %.sroa.0225.0.i.i = phi double [ 0.000000e+00, %.noexc292.i ], [ %i.mt, %bb.dz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44509
  %.sroa.5164.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.ak, ptr %.sroa.5164.0..sroa_idx.i.i, align 8, !noalias !44509
  %.sroa.6165.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ah, ptr %.sroa.6165.0..sroa_idx.i.i, align 8, !noalias !44509
  %.sroa.7166.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ai, ptr %.sroa.7166.0..sroa_idx.i.i, align 8, !noalias !44509
  %.sroa.8167.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.af, ptr %.sroa.8167.0..sroa_idx.i.i, align 8, !noalias !44509
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.mb = insertelement <2 x double> poison, double %.sroa.0225.0.i.i, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %.sroa.0218.0.i.i, i64 1
  %i.md = insertelement <2 x double> poison, double %spec.store.select35.i.i, i64 0
  %i.me = insertelement <2 x double> %i.md, double %spec.store.select34.i.i, i64 1
  br label %.lr.ph.i.i

bb.ds:                                            ; preds = %.noexc293.i
  %i.mf = fadd double %spec.store.select40.i.i, %.sroa.0.0.i296.i.i ; 2 uses
  %.inv250.i.i = fcmp ord double %i.mf, 0.000000e+00
  %spec.store.select12.i.i = select i1 %.inv250.i.i, double %i.mf, double 0.000000e+00
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.noexc293.i
  %.sroa.052.0.i.i = phi double [ %spec.store.select12.i.i, %bb.ds ], [ 0.000000e+00, %.noexc293.i ]
  %i.mg = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.lx, double noundef %.sroa.052.0.i.i)
          to label %.noexc294.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44510

.noexc294.i:                                      ; preds = %bb.dt
  %i.mh = load i64, ptr %i.ah, align 16, !range !85, !noalias !44510, !noundef !44 ; 3 uses
  %.not251.i.i = icmp eq i64 %i.mh, -1
  br i1 %.not251.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.noexc294.i
  %i.mi = call i64 @llvm.usub.sat.i64(i64 %i.mh, i64 1)
  switch i64 %i.mi, label %bb.dv [
    i64 0, label %bb.dw
    i64 1, label %bb.dx
end_hunk_7
begin_hunk_8_@_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphENtNtB7_5clone5Clone5cloneBS_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.20.304..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %i.aj, i64 24, i1 false), !alias.scope !48642
  store i64 %i.b, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.03.0.i.i, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.55.sroa.0.0.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.55.sroa.4.0.i.i, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ah, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.e, ptr %.sroa.91.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> %i.k, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.i, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ak = load <2 x double>, ptr %i.ai, align 16, !alias.scope !48636
  store <2 x double> %i.ak, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.q, ptr %.sroa.17.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 %i.m, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 290
  store i8 %i.o, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(37) %.sroa.20, i64 37, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvXs2_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB5_12PlannedGlyphNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentENtNtB7_5clone5Clone5cloneBS_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(304) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 5 uses
  %i.b = load i64, ptr %1, align 16, !range !55, !noundef !44 ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48650
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  call fastcc void @_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library4text4itemNtB5_8TextItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.c) #58, !noalias !48651
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load <2 x double>, ptr %i.d, align 16, !alias.scope !48649
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !alias.scope !48649
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.i = load double, ptr %i.h, align 8, !alias.scope !48649, !noundef !44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load <2 x double>, ptr %i.j, align 16, !alias.scope !48649
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.m = load i8, ptr %i.l, align 1, !range !119, !alias.scope !48649, !noundef !44
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 290
  %i.o = load i8, ptr %i.n, align 2, !range !139, !alias.scope !48649, !noundef !44
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.q = load i8, ptr %i.p, align 16, !range !57, !alias.scope !48649, !noundef !44
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 16, !range !61, !alias.scope !48649, !noundef !44 ; 2 uses
  %.not.i = icmp eq i64 %i.s, -1
  br i1 %.not.i, label %_RNvXs1_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB5_13GlyphFragmentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, label %bb.d

bb.c:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4item8TextItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a) #53
          to label %bb.k unwind label %bb.j, !noalias !48650

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48653)
  switch i64 %i.s, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !48654, !noundef !44
  %.not.i.i = icmp slt i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !48654 ; 4 uses
  %.val23.i.i = load i64, ptr %i.x, align 16, !alias.scope !48654
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.8.copyload11.i = load ptr, ptr %i.y, align 8, !alias.scope !48655
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.9.8.copyload12.i = load i128, ptr %.sroa.9.8..sroa_idx.i, align 16, !alias.scope !48655
  br label %_RNvXs1_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB5_13GlyphFragmentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i128, ptr %i.z, align 16, !alias.scope !48654, !noundef !44
  br label %_RNvXs1_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB5_13GlyphFragmentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !48656
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i, !prof !47

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.val.i.i) #56
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.i
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.e, %bb.h
  %.sroa.9.16.insert.ext.i = zext i64 %.val23.i.i to i128
  br label %_RNvXs1_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB5_13GlyphFragmentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !48650
  unreachable

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs1_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB5_13GlyphFragmentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.b, %bb.f, %bb.g, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.55.sroa.4.0.i = phi i128 [ undef, %bb.b ], [ %.sroa.9.16.insert.ext.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.9.8.copyload12.i, %bb.f ], [ %i.aa, %bb.g ]
  %.sroa.55.sroa.0.0.i = phi ptr [ undef, %bb.b ], [ %.val.i.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.6.8.copyload11.i, %bb.f ], [ undef, %bb.g ]
  %.sroa.03.0.i = phi i64 [ -1, %bb.b ], [ 0, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 1, %bb.f ], [ 2, %bb.g ]
  %i.af = trunc nuw i64 %i.b to i1
  %.sroa.5.0.i = select i1 %i.af, double %i.g, double undef
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load i8, ptr %i.ag, align 16, !range !57, !alias.scope !48649, !noundef !44
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48650
  store i64 %i.b, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.03.0.i, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.55.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.55.sroa.4.0.i, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ah, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.e, ptr %.sroa.91.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> %i.k, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.i, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aj = load <2 x double>, ptr %i.ai, align 16, !alias.scope !48649
  store <2 x double> %i.aj, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.q, ptr %.sroa.17.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 %i.m, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 290
  store i8 %i.o, ptr %.sroa.19.0..sroa_idx, align 2
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvXs1_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB5_13GlyphFragmentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB5_17LineBreakIteratorNtNtB7_14rule_segmenter4Utf8ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 18 uses
  %i.c = load i32, ptr %i.b, align 8, !range !125, !noundef !44 ; 3 uses
  %.not165 = icmp eq i32 %i.c, -1
  br i1 %.not165, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !44 ; 4 uses
  %.not166 = icmp eq i64 %i.f, 0
  br i1 %.not166, label %.lr.ph323, label %bb.f

.lr.ph323:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48746)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !48747, !nonnull !44, !noundef !44 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !alias.scope !48747, !nonnull !44, !noundef !44 ; 7 uses
  %i.r = ptrtoint ptr %i.q to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48748)
  %i.s = icmp eq ptr %i.q, %i.p
  br i1 %i.s, label %bb.bz, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 4 uses
  store ptr %i.t, ptr %i.n, align 8, !alias.scope !48749
  %i.u = load i8, ptr %i.q, align 1, !noalias !48750, !noundef !44 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.e, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.d
  %i.w = and i8 %i.u, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = icmp ne ptr %i.t, %i.p
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 4 uses
  store ptr %i.z, ptr %i.n, align 8, !alias.scope !48751
  %i.aa = load i8, ptr %i.t, align 1, !noalias !48750, !noundef !44
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.u, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = zext nneg i8 %i.u to i32
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %i.ah = icmp ne ptr %i.z, %i.p
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 3 ; 4 uses
  store ptr %i.ai, ptr %i.n, align 8, !alias.scope !48752
  %i.aj = load i8, ptr %i.z, align 1, !noalias !48750, !noundef !44
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.u, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i
  %i.ar = icmp ne ptr %i.ai, %i.p
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.as, ptr %i.n, align 8, !alias.scope !48753
  %i.at = load i8, ptr %i.ai, align 1, !noalias !48750, !noundef !44
  %i.au = shl nuw nsw i32 %i.x, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.an, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i, %bb.e, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i
  %i.bb = phi ptr [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %i.as, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %i.z, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ], [ %i.t, %bb.e ]
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %i.ba, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ], [ %i.ag, %bb.e ] ; 2 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !48746, !noundef !44 ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.bf, %i.r
  %i.bh = add i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bd, align 8, !alias.scope !48746
  store i64 %i.be, ptr %i.a, align 8
  store i32 %.sroa.4.0.i.ph.i, ptr %i.b, align 8
  br label %.loopexit268

bb.f:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !44 ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !48754, !nonnull !44, !noundef !44 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.promoted312 = load ptr, ptr %i.bm, align 8, !alias.scope !48755
  %.promoted313 = load i64, ptr %i.bp, align 8
  br label %bb.bp

bb.g:                                             ; preds = %.lr.ph323, %.backedge
  %i.bq = phi i32 [ %i.c, %.lr.ph323 ], [ %i.dt, %.backedge ] ; 3 uses
  %.sroa.042.0322 = phi i1 [ false, %.lr.ph323 ], [ %.sroa.042.0.be, %.backedge ] ; 2 uses
  %.sroa.083.0321 = phi i1 [ false, %.lr.ph323 ], [ %.sroa.083.0.be, %.backedge ] ; 2 uses
  %.sroa.585.0320 = phi i8 [ undef, %.lr.ph323 ], [ %.sroa.585.0.be, %.backedge ]
  br i1 %.sroa.083.0321, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = tail call noundef i8 @_RNvXs6_NtCselBS6QMlFOX_13icu_segmenter4lineNtNtB7_14rule_segmenter4Utf8NtB5_13LineBreakType32get_linebreak_property_with_rule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, i32 noundef %i.bq)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.048.0 = phi i8 [ %i.br, %bb.h ], [ %.sroa.585.0320, %bb.g ] ; 11 uses
  %brmerge = or i1 %.sroa.083.0321, %.sroa.042.0322
  %i.bs = icmp eq i8 %.sroa.048.0, 54
  %.sroa.063.0.v = select i1 %brmerge, i1 %.sroa.042.0322, i1 %i.bs ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48756)
  %i.bt = load ptr, ptr %i.h, align 8, !alias.scope !48757, !nonnull !44, !noundef !44 ; 4 uses
  %i.bu = load ptr, ptr %i.g, align 8, !alias.scope !48757, !nonnull !44, !noundef !44 ; 7 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48758)
  %i.bw = icmp eq ptr %i.bu, %i.bt
  br i1 %i.bw, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 4 uses
  store ptr %i.bx, ptr %i.g, align 8, !alias.scope !48759
  %i.by = load i8, ptr %i.bu, align 1, !noalias !48760, !noundef !44 ; 5 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i188

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i188: ; preds = %bb.j
  %i.ca = and i8 %i.by, 31
  %i.cb = zext nneg i8 %i.ca to i32               ; 3 uses
  %i.cc = icmp ne ptr %i.bx, %i.bt
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 4 uses
  store ptr %i.cd, ptr %i.g, align 8, !alias.scope !48761
  %i.ce = load i8, ptr %i.bx, align 1, !noalias !48760, !noundef !44
  %i.cf = shl nuw nsw i32 %i.cb, 6
  %i.cg = and i8 %i.ce, 63
  %i.ch = zext nneg i8 %i.cg to i32               ; 2 uses
  %i.ci = or disjoint i32 %i.cf, %i.ch
  %i.cj = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i192, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = zext nneg i8 %i.by to i32
  br label %bb.l

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i192: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i188
  %i.cl = icmp ne ptr %i.cd, %i.bt
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 3 ; 4 uses
  store ptr %i.cm, ptr %i.g, align 8, !alias.scope !48762
  %i.cn = load i8, ptr %i.cd, align 1, !noalias !48760, !noundef !44
  %i.co = shl nuw nsw i32 %i.ch, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.co, %i.cq            ; 2 uses
  %i.cs = shl nuw nsw i32 %i.cb, 12
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i193, label %bb.l

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i193: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i192
  %i.cv = icmp ne ptr %i.cm, %i.bt
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  store ptr %i.cw, ptr %i.g, align 8, !alias.scope !48763
  %i.cx = load i8, ptr %i.cm, align 1, !noalias !48760, !noundef !44
  %i.cy = shl nuw nsw i32 %i.cb, 18
  %i.cz = and i32 %i.cy, 1835008
  %i.da = shl nuw nsw i32 %i.cr, 6
  %i.db = and i8 %i.cx, 63
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = or disjoint i32 %i.da, %i.dc
  %i.de = or disjoint i32 %i.dd, %i.cz
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i193, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i192, %bb.k, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i188
  %i.df = phi ptr [ %i.cm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i192 ], [ %i.cw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i193 ], [ %i.cd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i188 ], [ %i.bx, %bb.k ]
  %.sroa.4.0.i.ph.i189 = phi i32 [ %i.ct, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i192 ], [ %i.de, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i193 ], [ %i.ci, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i188 ], [ %i.ck, %bb.k ] ; 11 uses
  %i.dg = icmp samesign ult i32 %.sroa.4.0.i.ph.i189, 1114112
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = load i64, ptr %i.i, align 8, !alias.scope !48756, !noundef !44 ; 2 uses
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.di, %i.bv
  %i.dk = add i64 %i.dj, %i.dh
end_hunk_8
begin_hunk_9_@_RNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB5_17LineBreakIteratorNtNtB7_14rule_segmenter4Utf8ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout:bb.a
bb.bc:                                            ; preds = %bb.aw, %bb.aw
  switch i8 %.sroa.070.0, label %bb.at [
    i8 53, label %bb.bd
    i8 47, label %bb.bd
    i8 33, label %bb.bd
    i8 32, label %bb.bd
    i8 16, label %bb.bd
    i8 10, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.aw
  %.not173.le = icmp ugt i8 %.sroa.092.1.ph, %i.hh
  %i.ie = load ptr, ptr %i.m, align 8, !nonnull !44, !align !49, !noundef !44 ; 3 uses
  %i.if = zext i8 %.sroa.092.1.ph to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 120
  %i.ih = load i8, ptr %i.ig, align 8, !noundef !44
  %i.ii = zext i8 %i.ih to i64
  %i.ij = mul nuw nsw i64 %i.ii, %i.if
  %i.ik = zext i8 %i.hi to i64
  %i.il = add nuw nsw i64 %i.ij, %i.ik            ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.in = load i64, ptr %i.im, align 8, !noundef !44
  %i.io = icmp ult i64 %i.il, %i.in
  br i1 %i.io, label %bb.be, label %.backedgethread-pre-split

bb.be:                                            ; preds = %bb.bd
  %i.ip = load ptr, ptr %i.ie, align 8, !nonnull !44, !noundef !44
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.il
  %i.ir = load i8, ptr %i.iq, align 1, !noundef !44
  %i.is = tail call { i8, i8 } @_RNvXs0_NtCselBS6QMlFOX_13icu_segmenter8providerNtB5_10BreakStateNtNtCscNnlIRywYVk_7zerovec3ule5AsULE14from_unaligned(i8 noundef %i.ir) ; 2 uses
  %i.it = extractvalue { i8, i8 } %i.is, 0
  %i.iu = extractvalue { i8, i8 } %i.is, 1        ; 2 uses
  switch i8 %i.it, label %.loopexit267 [
    i8 0, label %bb.bf
    i8 1, label %.backedgethread-pre-split
    i8 2, label %bb.bg
    i8 3, label %bb.bh
    i8 4, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.be
  %i.iv = icmp eq i8 %.sroa.070.0, 54
  br i1 %i.iv, label %.backedgethread-pre-split, label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.iw = icmp eq i8 %.sroa.070.0, 54
  store <2 x ptr> %.ph, ptr %i.g, align 8
  store i64 %.sroa.9.0.ph.ph, ptr %i.i, align 8
  store i64 %.sroa.096.0.ph.ph, ptr %i.a, align 8
  store i32 %.sroa.598.0.ph.ph, ptr %i.b, align 8
  br i1 %i.iw, label %bb.bl, label %bb.bk

bb.bh:                                            ; preds = %bb.be
  %i.ix = icmp eq i8 %.sroa.070.0, 54
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bh, %bb.bo
  %i.iy = phi i1 [ %i.ix, %bb.bh ], [ %i.jb, %bb.bo ]
  br label %.outer.outer

bb.bi:                                            ; preds = %bb.be
  br i1 %.not173.le, label %.outer, label %bb.bo

bb.bj:                                            ; preds = %bb.bf
  %i.iz = load i32, ptr %i.b, align 8, !range !125, !noundef !44
  %.not178 = icmp ne i32 %i.iz, -1                ; 2 uses
  %i.ja = load i64, ptr %i.a, align 8
  %.sroa.27.7 = select i1 %.not178, i64 %i.ja, i64 undef
  br label %.loopexit268

bb.bk:                                            ; preds = %bb.bg
  br i1 %.sroa.063.1.ph.ph.in, label %.backedge, label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %or.cond6 = select i1 %i.fm, i1 true, i1 %.sroa.063.1.ph.ph.in
  br i1 %or.cond6, label %.backedge, label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %.not176 = icmp ne i32 %.sroa.598.0.ph.ph, -1   ; 2 uses
  %.sroa.27.9 = select i1 %.not176, i64 %.sroa.096.0.ph.ph, i64 undef
  br label %.loopexit268

bb.bn:                                            ; preds = %bb.bl
  %.not177 = icmp ne i32 %.sroa.598.0.ph.ph, -1   ; 2 uses
  %.sroa.27.10 = select i1 %.not177, i64 %.sroa.096.0.ph.ph, i64 undef
  br label %.loopexit268

bb.bo:                                            ; preds = %bb.bi
  %i.jb = icmp eq i8 %.sroa.070.0, 54
  br label %.outer.outer.backedge

.loopexit268.split.loop.exit315:                  ; preds = %bb.ao
  %i.jc = extractvalue { i64, i64 } %i.ey, 1
  br label %.loopexit268

.loopexit268:                                     ; preds = %.backedge, %.loopexit268.split.loop.exit315, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit, %bb.bb, %bb.bn, %bb.bm, %bb.bj, %bb.az, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, %bb.bz, %bb.ca, %bb.ar, %bb.m, %bb.ah, %bb.ak, %bb.ai
  %.sroa.27.11 = phi i64 [ undef, %bb.bz ], [ 0, %bb.ca ], [ %i.id, %bb.az ], [ %.sroa.27.13, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.27.1, %bb.ai ], [ %i.ma, %bb.by ], [ %.sroa.27.2, %bb.ak ], [ %.sroa.27.3, %bb.ah ], [ %i.dn, %bb.m ], [ %.sroa.27.4, %bb.ar ], [ 0, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.sroa.27.7, %bb.bj ], [ %.sroa.27.10, %bb.bn ], [ %.sroa.27.9, %bb.bm ], [ %.sroa.27.6, %bb.bb ], [ %i.jc, %.loopexit268.split.loop.exit315 ], [ undef, %.backedge ]
  %.sroa.0.11.shrunk = phi i1 [ false, %bb.bz ], [ true, %bb.ca ], [ true, %bb.az ], [ %.not183, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit ], [ %.not180, %bb.ai ], [ true, %bb.by ], [ %.not170, %bb.ak ], [ %.not169, %bb.ah ], [ true, %bb.m ], [ %.not179, %bb.ar ], [ true, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.not178, %bb.bj ], [ %.not177, %bb.bn ], [ %.not176, %bb.bm ], [ %.not175, %bb.bb ], [ true, %.loopexit268.split.loop.exit315 ], [ false, %.backedge ]
  %.sroa.0.11 = zext i1 %.sroa.0.11.shrunk to i64
  %i.jd = insertvalue { i64, i64 } poison, i64 %.sroa.0.11, 0
  %i.je = insertvalue { i64, i64 } %i.jd, i64 %.sroa.27.11, 1
  ret { i64, i64 } %i.je

bb.bp:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209, %.lr.ph
  %i.jf = phi i64 [ %.promoted313, %.lr.ph ], [ %i.la, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 2 uses
  %i.jg = phi ptr [ %.promoted312, %.lr.ph ], [ %i.kw, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 7 uses
  %.sroa.0.0311 = phi i64 [ 0, %.lr.ph ], [ %i.jl, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ]
  %i.jh = phi i32 [ %i.c, %.lr.ph ], [ %.sroa.4.0.i.ph.i204, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 3 uses
  %i.ji = icmp samesign ult i32 %i.jh, 128
  br i1 %i.ji, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jj = icmp samesign ult i32 %i.jh, 2048
  br i1 %i.jj, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jk = icmp samesign ult i32 %i.jh, 65536
  %..i.i.i = select i1 %i.jk, i64 3, i64 4
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bp, %bb.bq, %bb.br
  %.sroa.02.0.i = phi i64 [ 1, %bb.bp ], [ 2, %bb.bq ], [ %..i.i.i, %bb.br ]
  %i.jl = add i64 %.sroa.02.0.i, %.sroa.0.0311    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48755)
  %i.jm = ptrtoint ptr %i.jg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48772)
  %i.jn = icmp eq ptr %i.jg, %i.bo
  br i1 %i.jn, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 4 uses
  store ptr %i.jo, ptr %i.bm, align 8, !alias.scope !48773
  %i.jp = load i8, ptr %i.jg, align 1, !noalias !48774, !noundef !44 ; 5 uses
  %i.jq = icmp sgt i8 %i.jp, -1
  br i1 %i.jq, label %bb.bt, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203: ; preds = %bb.bs
  %i.jr = and i8 %i.jp, 31
  %i.js = zext nneg i8 %i.jr to i32               ; 3 uses
  %i.jt = icmp ne ptr %i.jo, %i.bo
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jg, i64 2 ; 4 uses
  store ptr %i.ju, ptr %i.bm, align 8, !alias.scope !48775
  %i.jv = load i8, ptr %i.jo, align 1, !noalias !48774, !noundef !44
  %i.jw = shl nuw nsw i32 %i.js, 6
  %i.jx = and i8 %i.jv, 63
  %i.jy = zext nneg i8 %i.jx to i32               ; 2 uses
  %i.jz = or disjoint i32 %i.jw, %i.jy
  %i.ka = icmp samesign ugt i8 %i.jp, -33
  br i1 %i.ka, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

bb.bt:                                            ; preds = %bb.bs
  %i.kb = zext nneg i8 %i.jp to i32
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203
  %i.kc = icmp ne ptr %i.ju, %i.bo
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jg, i64 3 ; 4 uses
  store ptr %i.kd, ptr %i.bm, align 8, !alias.scope !48776
  %i.ke = load i8, ptr %i.ju, align 1, !noalias !48774, !noundef !44
  %i.kf = shl nuw nsw i32 %i.jy, 6
  %i.kg = and i8 %i.ke, 63
  %i.kh = zext nneg i8 %i.kg to i32
  %i.ki = or disjoint i32 %i.kf, %i.kh            ; 2 uses
  %i.kj = shl nuw nsw i32 %i.js, 12
  %i.kk = or disjoint i32 %i.ki, %i.kj
  %i.kl = icmp samesign ugt i8 %i.jp, -17
  br i1 %i.kl, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207
  %i.km = icmp ne ptr %i.kd, %i.bo
  tail call void @llvm.assume(i1 %i.km)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  store ptr %i.kn, ptr %i.bm, align 8, !alias.scope !48777
  %i.ko = load i8, ptr %i.kd, align 1, !noalias !48774, !noundef !44
  %i.kp = shl nuw nsw i32 %i.js, 18
  %i.kq = and i32 %i.kp, 1835008
  %i.kr = shl nuw nsw i32 %i.ki, 6
  %i.ks = and i8 %i.ko, 63
  %i.kt = zext nneg i8 %i.ks to i32
  %i.ku = or disjoint i32 %i.kr, %i.kt
  %i.kv = or disjoint i32 %i.ku, %i.kq
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203, %bb.bt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208
  %i.kw = phi ptr [ %i.kd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207 ], [ %i.kn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208 ], [ %i.ju, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203 ], [ %i.jo, %bb.bt ] ; 2 uses
  %.sroa.4.0.i.ph.i204 = phi i32 [ %i.kk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207 ], [ %i.kv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208 ], [ %i.jz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203 ], [ %i.kb, %bb.bt ] ; 3 uses
  %i.kx = icmp samesign ult i32 %.sroa.4.0.i.ph.i204, 1114112
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = sub i64 %i.ky, %i.jm
  %i.la = add i64 %i.kz, %i.jf                    ; 2 uses
  store i64 %i.la, ptr %i.bp, align 8, !alias.scope !48755
  store i64 %i.jf, ptr %i.a, align 8
  store i32 %.sroa.4.0.i.ph.i204, ptr %i.b, align 8
  %i.lb = icmp eq i64 %i.jl, %i.bk
  br i1 %i.lb, label %._crit_edge, label %bb.bp

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209, %bb.f
  %i.lc = add i64 %i.f, -1                        ; 5 uses
  %i.ld = shl nuw nsw i64 %i.lc, 3                ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.lc, 1152921504606846975
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.bu, !prof !64

bb.bu:                                            ; preds = %._crit_edge
  %.not.i.i.not = icmp eq i64 %i.f, 1
  br i1 %.not.i.i.not, label %.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

.thread:                                          ; preds = %bb.bu
  %i.le = icmp eq i64 %i.lc, 0
  tail call void @llvm.assume(i1 %i.le)
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.bu
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !48778
  %i.lf = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ld, i64 noundef range(i64 1, 17) 8) #55, !noalias !48778 ; 5 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %._crit_edge
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.ld, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %._crit_edge ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %._crit_edge ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #56, !noalias !48779
  unreachable

bb.bw:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.li = add nuw nsw i64 %i.f, 2305843009213693951 ; 2 uses
  %i.lj = and i64 %i.li, 2305843009213693951      ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.lj, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bw
  %n.vec = and i64 %i.li, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %index ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load = load <2 x i64>, ptr %i.lk, align 8, !noalias !48780
  %wide.load483 = load <2 x i64>, ptr %i.ll, align 8, !noalias !48780
  %i.lm = sub <2 x i64> %wide.load, %broadcast.splat
  %i.ln = sub <2 x i64> %wide.load483, %broadcast.splat
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <2 x i64> %i.lm, ptr %i.lo, align 8, !noalias !48781
  store <2 x i64> %i.ln, ptr %i.lp, align 8, !noalias !48781
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !48744

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lj, %n.vec
  br i1 %cmp.n, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bw, %middle.block
  %.ph535 = phi i64 [ 0, %bb.bw ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.lr = phi i64 [ %i.lv, %scalar.ph ], [ %.ph535, %scalar.ph.preheader ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lr
  %.val15.i.i.i.i.i.i.i.i = load i64, ptr %i.ls, align 8, !noalias !48780, !noundef !44
  %i.lt = sub i64 %.val15.i.i.i.i.i.i.i.i, %i.bk
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lr
  store i64 %i.lt, ptr %i.lu, align 8, !noalias !48781
  %i.lv = add nuw i64 %i.lr, 1                    ; 2 uses
  %i.lw = icmp eq i64 %i.lv, %i.lj
  br i1 %i.lw, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph, !llvm.loop !48745

_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %scalar.ph, %middle.block, %.thread
  %.sroa.4.0.i.i.i402 = phi i64 [ 0, %.thread ], [ %i.lc, %middle.block ], [ %i.lc, %scalar.ph ]
  %.sroa.10.0.i.i.i401 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.lf, %middle.block ], [ %i.lf, %scalar.ph ]
  %.sroa.5.0.copyload.sink.i.i.i.i.i.i = phi i64 [ 0, %.thread ], [ %i.lj, %middle.block ], [ %i.lj, %scalar.ph ]
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.lx = icmp eq i64 %.val, 0
  br i1 %i.lx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bx

bb.bx:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  %.val185 = load ptr, ptr %i.bi, align 8, !nonnull !44, !noundef !44
  %i.ly = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val185, i64 noundef %i.ly, i64 noundef range(i64 1, -9223372036854775807) 8) #55
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit

bb.by:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  store i32 -1, ptr %i.b, align 8
  store i64 0, ptr %i.e, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ma = load i64, ptr %i.lz, align 8, !noundef !44
  br label %.loopexit268

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bx, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  store i64 %.sroa.4.0.i.i.i402, ptr %i.d, align 8
  store ptr %.sroa.10.0.i.i.i401, ptr %i.bi, align 8
  store i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, ptr %i.e, align 8
  %i.mb = load i32, ptr %i.b, align 8, !range !125, !noundef !44
  %.not183 = icmp ne i32 %i.mb, -1                ; 2 uses
  %i.mc = load i64, ptr %i.a, align 8
  %.sroa.27.13 = select i1 %.not183, i64 %i.mc, i64 undef
  br label %.loopexit268

bb.bz:                                            ; preds = %bb.c
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !noundef !44
  %i.mf = icmp eq i64 %i.me, 0
  br i1 %i.mf, label %bb.ca, label %.loopexit268

bb.ca:                                            ; preds = %bb.bz
  store i64 1, ptr %i.md, align 8
  br label %.loopexit268
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 5 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %..i
  store ptr %i.g, ptr %i.a, align 8
  %i.h = icmp eq ptr %.val3, %.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48796)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48798)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !48799, !nonnull !44, !noundef !44
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !48800
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.o = icmp eq i64 %i.j, %..i
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.j, %..i
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.110.i
  %i.s = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48801)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48803)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !48804, !nonnull !44, !noundef !44
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !48805
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.x = icmp eq i64 %i.s, %..i
  br i1 %i.x, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i, %bb.c
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.a
  %i.z = sub nuw i64 %1, %..i
  ret i64 %i.z
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB9_9visualize6stroke11FixedStrokeEENtNtB16_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
end_hunk_9
