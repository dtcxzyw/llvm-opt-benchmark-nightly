Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8939
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionE5queryCs9gmjTwvRRSu_10typst_html:bb.a
  %i.ex = icmp ugt i64 %i.ew, 1                   ; 2 uses
  %i.ey = load ptr, ptr %i.eu, align 8, !alias.scope !13727, !noalias !13718, !nonnull !52
  %i.ez = getelementptr inbounds i8, ptr %i.ek, i64 -16
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !13727, !noalias !13718
  %.sink11.i.i.i.i = select i1 %i.ex, ptr %i.ey, ptr %i.eu ; 2 uses
  %.sink10.i.i.i.i = select i1 %i.ex, i64 %i.fa, i64 %i.ew ; 4 uses
  %.idx = shl nuw nsw i64 %.sink10.i.i.i.i, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13726
  store ptr inttoptr (i64 16 to ptr), ptr %i.ab, align 8, !noalias !13726
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store i64 0, ptr %i.fc, align 8, !noalias !13726
  %.not.i.i = icmp eq i64 %.sink10.i.i.i.i, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCs9gmjTwvRRSu_10typst_html.exit
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ab, i64 noundef %.sink10.i.i.i.i)
          to label %.lr.ph.i.i unwind label %bb.y, !noalias !13726

bb.y:                                             ; preds = %bb.x
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.ab, align 8, !noalias !13726, !nonnull !52, !noundef !52
  %.val3.i.i = load i64, ptr %i.fc, align 8, !noalias !13726
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.val.i.i, i64 %.val3.i.i) #49
          to label %common.resume unwind label %bb.z, !noalias !13726

bb.z:                                             ; preds = %bb.y
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !13726
  unreachable

.thread.i.i:                                      ; preds = %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCs9gmjTwvRRSu_10typst_html.exit.thread, %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCs9gmjTwvRRSu_10typst_html.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13728
  br label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position12HtmlPositionE5querys_0EECs9gmjTwvRRSu_10typst_html.exit

.lr.ph.i.i:                                       ; preds = %bb.x
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !noalias !13726
  %.pre4.i.i = load i64, ptr %i.fc, align 8, !noalias !13726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13726
  store ptr %.pre.i.i, ptr %i.ac, align 8, !noalias !13726
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store i64 %.pre4.i.i, ptr %i.ff, align 8, !noalias !13726
  call void @llvm.experimental.noalias.scope.decl(metadata !13729)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sink10.i.i.i.i)
          to label %.noexc.i211 unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13730

.noexc.i211:                                      ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13728
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i217, %.noexc.i211
  %.sroa.012.020.i.i = phi ptr [ %.sink11.i.i.i.i, %.noexc.i211 ], [ %i.fi, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i217 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 8 ; 2 uses
  %.val2.i.i.i = load i64, ptr %.sroa.012.020.i.i, align 8, !noalias !13731, !noundef !52 ; 3 uses
  %i.fj = load i64, ptr %i.fg, align 8, !noalias !13732, !noundef !52 ; 2 uses
  %i.fk = icmp ult i64 %.val2.i.i.i, %i.fj
  br i1 %i.fk, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorNtNtB1y_8position12HtmlPositionE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.i.i, i64 noundef %i.fj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @582) #51
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13732

.noexc6.i:                                        ; preds = %bb.ab
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorNtNtB1y_8position12HtmlPositionE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %bb.aa
  %i.fl = load ptr, ptr %i.fh, align 8, !noalias !13732, !nonnull !52, !noundef !52
  %i.fm = getelementptr inbounds nuw [64 x i8], ptr %i.fl, i64 %.val2.i.i.i
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fm)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13733

.noexc7.i:                                        ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorNtNtB1y_8position12HtmlPositionE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i
  %.pr.i.i212 = load ptr, ptr %i.aa, align 8, !noalias !13728
  %.not1.i.i213 = icmp eq ptr %.pr.i.i212, null
  %.pre.pre.i = load ptr, ptr %i.ac, align 8, !noalias !13726 ; 3 uses
  %.pre32.pre.i = load i64, ptr %i.ff, align 8, !noalias !13726 ; 2 uses
  br i1 %.not1.i.i213, label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position12HtmlPositionE5querys_0EECs9gmjTwvRRSu_10typst_html.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !13728
  call void @llvm.experimental.noalias.scope.decl(metadata !13734)
  %.not.i.i.i.i214 = icmp eq ptr %.pre.pre.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i214, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i215, label %bb.ae

bb.ad:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i215
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body.i207 unwind label %bb.af, !noalias !13735, !inline_history !40

bb.ae:                                            ; preds = %bb.ac
  %i.fo = getelementptr i8, ptr %.pre.pre.i, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.fo, align 8, !noalias !13736, !noundef !52
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i215

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i215: ; preds = %bb.ae, %bb.ac
  %.sroa.02.0.i.i.i.i216 = phi i64 [ %.val.i.i.i.i, %bb.ae ], [ 0, %bb.ac ]
  %i.fp = icmp eq i64 %.pre32.pre.i, %.sroa.02.0.i.i.i.i216
  %i.fq = zext i1 %i.fp to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %i.fq)
          to label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i217 unwind label %bb.ad, !noalias !13737, !inline_history !40

bb.af:                                            ; preds = %bb.ad
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !13735, !inline_history !40
  unreachable

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i217: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i215
  %i.fs = load ptr, ptr %i.ac, align 8, !alias.scope !13738, !noalias !13726, !nonnull !52, !noundef !52 ; 2 uses
  %i.ft = load i64, ptr %i.ff, align 8, !alias.scope !13738, !noalias !13726, !noundef !52 ; 2 uses
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !13728
  %i.fv = add i64 %i.ft, 1                        ; 2 uses
  store i64 %i.fv, ptr %i.ff, align 8, !alias.scope !13738, !noalias !13726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !13728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13728
  %i.fw = icmp eq ptr %i.fi, %i.fb
  br i1 %i.fw, label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position12HtmlPositionE5querys_0EECs9gmjTwvRRSu_10typst_html.exit, label %bb.aa

.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB1w_19ElementIntrospectorNtNtB1y_8position12HtmlPositionE5querys_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i, %bb.ab, %.lr.ph.i.i
  %lpad.loopexit.split-lp2062 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i207

.body.i207:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad
  %eh.lpad-body.i208 = phi { ptr, i32 } [ %i.fn, %bb.ad ], [ %lpad.loopexit.split-lp2062, %.loopexit.split-lp.loopexit.split-lp.i206.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val.i209 = load ptr, ptr %i.ac, align 8, !noalias !13726, !nonnull !52, !noundef !52
  %.val2.i210 = load i64, ptr %i.ff, align 8, !noalias !13726
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.val.i209, i64 %.val2.i210) #49
          to label %common.resume unwind label %bb.ag, !noalias !13726

bb.ag:                                            ; preds = %.body.i207
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !13726
  unreachable

_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorNtNtB44_8position12HtmlPositionE5querys_0EECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.noexc7.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i217, %.thread.i.i
  %i.fy = phi i64 [ 0, %.thread.i.i ], [ %i.fv, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i217 ], [ %.pre32.pre.i, %.noexc7.i ]
  %i.fz = phi ptr [ inttoptr (i64 16 to ptr), %.thread.i.i ], [ %i.fs, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs9gmjTwvRRSu_10typst_html.exit.i.i217 ], [ %.pre.pre.i, %.noexc7.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13726
  br label %bb.da

bb.ah:                                            ; preds = %bb.b
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !52, !noundef !52 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load i64, ptr %i.gc, align 16, !noundef !52
  %i.ge = getelementptr inbounds nuw [64 x i8], ptr %i.gb, i64 %i.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13739
  store ptr %0, ptr %i.e, align 8, !alias.scope !13740, !noalias !13741
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gb, ptr %.sroa.4539.0..sroa_idx, align 8, !alias.scope !13740, !noalias !13741
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ge, ptr %.sroa.5540.0..sroa_idx, align 8, !alias.scope !13740, !noalias !13741
  %.sroa.6541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %.sroa.6541.0..sroa_idx, align 8, !alias.scope !13740, !noalias !13741
  %.sroa.7542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.8543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  store i8 2, ptr %.sroa.8543.0..sroa_idx, align 8, !alias.scope !13740, !noalias !13741
  %.sroa.10545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  store i8 2, ptr %.sroa.10545.0..sroa_idx, align 8, !alias.scope !13740, !noalias !13741
  call void @llvm.experimental.noalias.scope.decl(metadata !13742)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13743
  %i.gf = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position12HtmlPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %bb.ai unwind label %bb.az, !noalias !13744, !inline_history !13294 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gg = extractvalue { i64, i64 } %i.gf, 0
  %i.gh = extractvalue { i64, i64 } %i.gf, 1
  %i.gi = trunc nuw i64 %i.gg to i1
  br i1 %i.gi, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position12HtmlPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i, label %bb.aj

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position12HtmlPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.ai
  %i.gj = load i8, ptr %.sroa.8543.0..sroa_idx, align 8, !range !57, !alias.scope !13745, !noalias !13746, !noundef !52
  %.not.i.i.i.i410 = icmp eq i8 %i.gj, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !13745, !noalias !13746
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.val3.i.i.i.i.i = load i64, ptr %i.gl, align 8, !alias.scope !13745, !noalias !13746
  %i.gm = sub i64 %.val3.i.i.i.i.i, %.val.i.i.i.i.i
  %i.gn = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !57, !alias.scope !13745, !noalias !13746, !noundef !52
  %.not53.i.i.i.i = icmp eq i8 %i.gn, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.val.i61.i.i.i.i = load i64, ptr %i.go, align 8, !alias.scope !13745, !noalias !13746
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val3.i62.i.i.i.i = load i64, ptr %i.gp, align 8, !alias.scope !13745, !noalias !13746
  %i.gq = sub i64 %.val3.i62.i.i.i.i, %.val.i61.i.i.i.i
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %i.gq ; 2 uses
  %i.gr = call i64 @llvm.uadd.sat.i64(i64 %i.gm, i64 %.sroa.8.0.i.i.i.i)
  %i.gs = select i1 %.not.i.i.i.i410, i64 %.sroa.8.0.i.i.i.i, i64 %i.gr ; 2 uses
  %i.gt = call i64 @llvm.uadd.sat.i64(i64 %i.gs, i64 1)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.gt, i64 4) ; 3 uses
  %i.gu = shl i64 %..i.i, 3                       ; 4 uses
  %i.gv = icmp ugt i64 %i.gs, 2305843009213693950
  %.not.i.i.i411 = icmp ugt i64 %i.gu, 9223372036854775800
  %or.cond.i.i.i412 = or i1 %i.gv, %.not.i.i.i411
  br i1 %or.cond.i.i.i412, label %bb.ap, label %2, !prof !70

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13743
  call void @llvm.experimental.noalias.scope.decl(metadata !13747), !noalias !13748
  call void @llvm.experimental.noalias.scope.decl(metadata !13749), !noalias !13746
  call void @llvm.experimental.noalias.scope.decl(metadata !13750), !noalias !13746
  %i.gw = load i8, ptr %.sroa.8543.0..sroa_idx, align 8, !range !57, !alias.scope !13751, !noalias !13746, !noundef !52
  %i.gx = icmp eq i8 %i.gw, 2
  br i1 %i.gx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.sroa.7542.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i unwind label %bb.al, !noalias !13744, !inline_history !13309

bb.al:                                            ; preds = %bb.ak
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !57, !alias.scope !13752, !noalias !13746, !noundef !52
  %i.ha = icmp eq i8 %i.gz, 2
  br i1 %i.ha, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hb)
          to label %common.resume unwind label %bb.ao, !noalias !13744, !inline_history !13309

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.hc = load i8, ptr %.sroa.10545.0..sroa_idx, align 8, !range !57, !alias.scope !13753, !noalias !13746, !noundef !52
  %i.hd = icmp eq i8 %i.hc, 2
  br i1 %i.hd, label %.thread579, label %bb.an

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.he), !noalias !13744, !inline_history !13309
  br label %.thread579

bb.ao:                                            ; preds = %bb.am
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !13754, !inline_history !13309
  unreachable

2:                                                ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position12HtmlPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i
  %3 = icmp eq i64 %i.gu, 0
  br i1 %3, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i414, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413: ; preds = %2
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !13755, !inline_history !13309
  %i.hg = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.gu, i64 noundef range(i64 1, 9) 8) #53, !noalias !13755, !inline_history !13309 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.ap, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i414

bb.ap:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position12HtmlPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i
  %.sroa.4.0.ph.i.i422 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413 ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position12HtmlPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i422, i64 %i.gu) #54
          to label %.noexc.i423 unwind label %bb.az, !noalias !13744, !inline_history !13309

.noexc.i423:                                      ; preds = %bb.ap
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i414: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413, %2
  %.sroa.10.0.i.i415 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.hg, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413 ] ; 3 uses
  %.sroa.4.0.i.i416 = phi i64 [ 0, %2 ], [ %..i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i413 ] ; 2 uses
  %4 = icmp ule i64 %..i.i, %.sroa.4.0.i.i416
  call void @llvm.assume(i1 %4), !noalias !13746
  store i64 %i.gh, ptr %.sroa.10.0.i.i415, align 8, !noalias !13744
  store i64 %.sroa.4.0.i.i416, ptr %i.c, align 8, !noalias !13743
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i415, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !13743
  %.sroa.6.0..sroa_idx.i.i417 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i417, align 8, !noalias !13743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !13744
  call void @llvm.experimental.noalias.scope.decl(metadata !13756), !noalias !13748
  call void @llvm.experimental.noalias.scope.decl(metadata !13757), !noalias !13746
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i414
  %i.ho = phi ptr [ %i.ie, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit ], [ %.sroa.10.0.i.i415, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i414 ] ; 16 uses
  %i.hp = phi i64 [ %i.ig, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i414 ] ; 11 uses
  %i.hq = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1O_7content7ContentENCNvMs0_NtNtB1Q_13introspection12introspectorINtB3V_19ElementIntrospectorNtNtB3X_8position12HtmlPositionE5querys0_0ENCB3P_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.ar unwind label %bb.au, !noalias !13758, !inline_history !13320 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.hr = extractvalue { i64, i64 } %i.hq, 0
  %i.hs = extractvalue { i64, i64 } %i.hq, 1
  %i.ht = trunc nuw i64 %i.hr to i1
  br i1 %i.ht, label %bb.as, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorNtNtB4R_8position12HtmlPositionE5querys0_0ENCB4J_s1_0EECs9gmjTwvRRSu_10typst_html.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.hu = icmp samesign ult i64 %i.hp, 1152921504606846976
  call void @llvm.assume(i1 %i.hu), !noalias !13746
  %i.hv = load i64, ptr %i.c, align 8, !range !67, !alias.scope !13759, !noalias !13760, !noundef !52
  %i.hw = icmp eq i64 %i.hp, %i.hv
  br i1 %i.hw, label %bb.at, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit

bb.at:                                            ; preds = %bb.as
  %i.hx = load i8, ptr %i.hi, align 8, !range !57, !alias.scope !13761, !noalias !13758, !noundef !52
  %.not.i.i.i425 = icmp eq i8 %i.hx, 2
  %.val.i.i.i.i426 = load i64, ptr %i.hj, align 8, !alias.scope !13761, !noalias !13758
  %.val3.i.i.i.i = load i64, ptr %i.hk, align 8, !alias.scope !13761, !noalias !13758
  %i.hy = sub i64 %.val3.i.i.i.i, %.val.i.i.i.i426
  %i.hz = load i8, ptr %i.hl, align 8, !range !57, !alias.scope !13761, !noalias !13758, !noundef !52
  %.not53.i.i.i = icmp eq i8 %i.hz, 2
  %.val.i61.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !13761, !noalias !13758
  %.val3.i62.i.i.i = load i64, ptr %i.hn, align 8, !alias.scope !13761, !noalias !13758
  %i.ia = sub i64 %.val3.i62.i.i.i, %.val.i61.i.i.i
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %i.ia ; 2 uses
  %i.ib = call i64 @llvm.uadd.sat.i64(i64 %i.hy, i64 %.sroa.8.0.i.i.i)
  %i.ic = select i1 %.not.i.i.i425, i64 %.sroa.8.0.i.i.i, i64 %i.ib
  %i.id = call i64 @llvm.uadd.sat.i64(i64 %i.ic, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hp, i64 noundef range(i64 1, 0) %i.id, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit_crit_edge unwind label %bb.au, !noalias !13744

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit_crit_edge: ; preds = %bb.at
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !13759, !noalias !13760
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit_crit_edge, %bb.as
  %i.ie = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs9gmjTwvRRSu_10typst_html.exit_crit_edge ], [ %i.ho, %bb.as ] ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.hp
  store i64 %i.hs, ptr %i.if, align 8, !noalias !13758
  %i.ig = add nuw nsw i64 %i.hp, 1                ; 2 uses
  store i64 %i.ig, ptr %.sroa.6.0..sroa_idx.i.i417, align 8, !alias.scope !13759, !noalias !13760
  br label %bb.aq

bb.au:                                            ; preds = %bb.at, %bb.aq
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorNtNtB4a_8position12HtmlPositionE5querys0_0ENCB42_s1_0EECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b) #49
          to label %.body.i418 unwind label %bb.av, !noalias !13758, !inline_history !13320

bb.av:                                            ; preds = %bb.au
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !13758, !inline_history !13320
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorNtNtB4R_8position12HtmlPositionE5querys0_0ENCB4J_s1_0EECs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %bb.ar
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorNtNtB4a_8position12HtmlPositionE5querys0_0ENCB42_s1_0EECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.ba unwind label %bb.aw, !noalias !13758, !inline_history !13320

bb.aw:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorNtNtB4R_8position12HtmlPositionE5querys0_0ENCB4J_s1_0EECs9gmjTwvRRSu_10typst_html.exit.i.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body.i418

.body.i418:                                       ; preds = %bb.au, %bb.aw
  %eh.lpad-body.i419 = phi { ptr, i32 } [ %i.ij, %bb.aw ], [ %i.ih, %bb.au ] ; 2 uses
  %.val.i.i420 = load i64, ptr %i.c, align 8, !noalias !13743 ; 2 uses
  %i.ik = icmp eq i64 %.val.i.i420, 0
  br i1 %i.ik, label %common.resume, label %bb.ax

bb.ax:                                            ; preds = %.body.i418
  %.val6.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !13743, !nonnull !52, !noundef !52
  br label %common.resume.sink.split

bb.ay:                                            ; preds = %bb.az
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !13744, !inline_history !13294
  unreachable

bb.az:                                            ; preds = %bb.ap, %bb.ah
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB21_7content7ContentENCNvMs0_NtNtB23_13introspection12introspectorINtB48_19ElementIntrospectorNtNtB4a_8position12HtmlPositionE5querys0_0ENCB42_s1_0EECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e) #49
          to label %common.resume unwind label %bb.ay, !noalias !13744, !inline_history !13294

.thread579:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13739
  br label %_RINvXsd_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB6_8BTreeSetjEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtB1h_8adapters3map3MapINtNtB2r_7flatten7FlatMapINtNtNtB1j_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3I_7content7ContentENCNvMs0_NtNtB3K_13introspection12introspectorINtB5P_19ElementIntrospectorNtNtB5R_8position12HtmlPositionE5querys0_0ENCB5J_s1_0EECs9gmjTwvRRSu_10typst_html.exit

bb.ba:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2I_7content7ContentENCNvMs0_NtNtB2K_13introspection12introspectorINtB4P_19ElementIntrospectorNtNtB4R_8position12HtmlPositionE5querys0_0ENCB4J_s1_0EECs9gmjTwvRRSu_10typst_html.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13743
  %.sroa.0534.0.copyload = load i64, ptr %i.c, align 8, !noalias !13762 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13739
  %i.in = icmp samesign ult i64 %i.hp, 1152921504606846976
  call void @llvm.assume(i1 %i.in)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  %i.io = icmp eq i64 %i.hp, 1
  br i1 %i.io, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit, label %bb.bb, !prof !54

bb.bb:                                            ; preds = %bb.ba
  %i.ip = icmp samesign ult i64 %i.hp, 21
  br i1 %i.ip, label %bb.bd, label %bb.bc, !prof !54

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainjNvYjNtNtB8_3cmp10PartialOrd2ltINtNtCs1xwejQucwHj_5alloc3vec3VecjEECsfxLd0MUuIWi_4usvg(ptr noalias nofree noundef nonnull align 8 %i.ho, i64 noundef range(i64 1, 1152921504606846976) %i.hp, ptr noalias nofree noundef nonnull %i.a) #55
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit unwind label %bb.by, !noalias !13763

bb.bd:                                            ; preds = %bb.bb
  %.idx.i.i395 = shl nuw nsw i64 %i.hp, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i.i395
  %.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  br label %.lr.ph.i.i396

.lr.ph.i.i396:                                    ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit.i.i, %bb.bd
  %.sroa.0.04.i.i = phi ptr [ %.sroa.0.0.i.i397, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %.sroa.0.01.i.i, %bb.bd ] ; 4 uses
  %.pn3.i.i = phi ptr [ %.sroa.0.04.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.ho, %bb.bd ] ; 3 uses
  %.val9.i.i.i = load i64, ptr %.sroa.0.04.i.i, align 8, !alias.scope !13764, !noalias !13763, !noundef !52 ; 3 uses
  %.val10.i.i.i = load i64, ptr %.pn3.i.i, align 8, !alias.scope !13765, !noalias !13763, !noundef !52 ; 2 uses
  %i.ir = icmp ult i64 %.val9.i.i.i, %.val10.i.i.i
  br i1 %i.ir, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i396
  store i64 %.val10.i.i.i, ptr %.sroa.0.04.i.i, align 8, !alias.scope !13766, !noalias !13763
  %i.is = icmp eq ptr %.pn3.i.i, %i.ho
  br i1 %i.is, label %._crit_edge, label %.lr.ph2039

.preheader.i.i:                                   ; preds = %.lr.ph2039
  store i64 %.val8.i.i.i, ptr %.sroa.0.0.i.i.i4002038, align 8, !alias.scope !13766, !noalias !13763
  %i.it = icmp eq ptr %i.iu, %i.ho
  br i1 %i.it, label %._crit_edge, label %.lr.ph2039

.lr.ph2039:                                       ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i.i.i4002038 = phi ptr [ %i.iu, %.preheader.i.i ], [ %.pn3.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i4002038, i64 -8 ; 3 uses
  %.val8.i.i.i = load i64, ptr %i.iu, align 8, !alias.scope !13765, !noalias !13763, !noundef !52 ; 2 uses
  %i.iv = icmp ult i64 %.val9.i.i.i, %.val8.i.i.i
  br i1 %i.iv, label %.preheader.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i.i, %.lr.ph2039, %.preheader.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %i.ho, %.preheader.i.i.preheader ], [ %i.ho, %.preheader.i.i ], [ %.sroa.0.0.i.i.i4002038, %.lr.ph2039 ]
  store i64 %.val9.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i, align 8, !alias.scope !13766, !noalias !13767
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %._crit_edge, %.lr.ph.i.i396
  %.sroa.0.0.i.i397 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8 ; 2 uses
  %.not.i.i398 = icmp eq ptr %.sroa.0.0.i.i397, %i.iq
  br i1 %.not.i.i398, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit, label %.lr.ph.i.i396

_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit.i.i, %bb.ba, %bb.bc
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hp ; 4 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !13768
  %i.ix = call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !13768 ; 5 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.be, label %.loopexit79.i.i.i, !prof !55

bb.be:                                            ; preds = %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #54
          to label %.noexc.i.i389 unwind label %bb.bx, !noalias !13768

.noexc.i.i389:                                    ; preds = %bb.be
  unreachable

.loopexit79.i.i.i:                                ; preds = %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortjNvYjNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs9gmjTwvRRSu_10typst_html.exit
  store ptr null, ptr %i.ix, align 8, !noalias !13768
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 98
  store i16 0, ptr %i.iz, align 2, !noalias !13768
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
  store i16 %i.jb, ptr %i.jm, align 2, !noalias !13769
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.ja
  store i64 %.sroa.6.019.i.peel.i99.i.i, ptr %i.jc, align 8, !noalias !13769
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ], !noalias !13711
  %i.jd = add i64 %.sroa.014.297.i.i, 1           ; 2 uses
  %i.je = icmp eq ptr %.sroa.9.3.ph.jt1.i.i.i, %i.iw
  br i1 %i.je, label %.loopexit105.jt0.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_TjNtNtNtNtCs1xwejQucwHj_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoIterjENCINvMse_NtBS_3setINtB47_8BTreeSetjE16from_sorted_iterB3p_E0EE4peek0ECs9gmjTwvRRSu_10typst_html.exit.i.peel.i.i.i

.peel.begin.jt0.i.i.i:                            ; preds = %.loopexit105.jt0.i.i.i
  %i.jf = zext nneg i16 %i.jy to i64
end_hunk_0
begin_hunk_1_@_RNvXsb_NtCs9gmjTwvRRSu_10typst_html3domNtB5_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles4Fold4fold:bb.a
bb.l:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.741.23.extract.shift.le = lshr i64 %.sroa.741.0, 56
  %.sroa.741.23.extract.trunc.le = trunc nuw i64 %.sroa.741.23.extract.shift.le to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_(ptr %.sroa.540.0, i8 %.sroa.741.23.extract.trunc.le) #49
          to label %.body unwind label %bb.n, !noalias !21614, !inline_history !0

bb.m:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsb_BT_NtBT_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles4Fold4fold0EBV_.exit
  %i.ah = getelementptr i8, ptr %i.aa, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !21614, !noundef !52
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i: ; preds = %bb.m, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsb_BT_NtBT_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles4Fold4fold0EBV_.exit
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.m ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsb_BT_NtBT_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles4Fold4fold0EBV_.exit ]
  %i.ai = icmp eq i64 %i.ab, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB6_6string9EcoStringEE7reserveBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.aj)
          to label %bb.r unwind label %bb.l, !noalias !21615, !inline_history !0

bb.n:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !21614, !inline_history !0
  unreachable

bb.o:                                             ; preds = %.lr.ph92
  %.not.i.i.i.i = icmp sgt i64 %.sroa.741.0, -1
  br i1 %.not.i.i.i.i, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.540.0) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.540.0, inttoptr (i64 16 to ptr)
  %i.al = getelementptr inbounds i8, ptr %.sroa.540.0, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %bb.p
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !21616
  %.not.i.i.i.i.i13 = icmp eq i64 %i.am, 1
  br i1 %.not.i.i.i.i.i13, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21616
  %i.an = getelementptr i8, ptr %.sroa.540.0, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !21616, !noundef !52 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, label %bb.q, !prof !54

bb.q:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #54
          to label %.noexc14 unwind label %.loopexit.split-lp, !noalias !21616

.noexc14:                                         ; preds = %bb.q
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  %i.ao = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  store ptr %i.al, ptr %i.k, align 8, !noalias !21616
  store i64 8, ptr %i.a, align 8, !noalias !21616
  store i64 %i.ao, ptr %i.l, align 8, !noalias !21616
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc15 unwind label %.loopexit, !noalias !21616

.noexc15:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21616
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i
  %i.ap = load ptr, ptr %i.c, align 8, !alias.scope !21613, !nonnull !52, !noundef !52
  %i.aq = load i64, ptr %i.d, align 8, !alias.scope !21613, !noundef !52 ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  store i64 %.sroa.039.0, ptr %i.ar, align 8, !noalias !21613
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.540.0, ptr %.sroa.436.0..sroa_idx, align 8, !noalias !21613
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.741.0, ptr %.sroa.637.0..sroa_idx, align 8, !noalias !21613
  %i.as = add i64 %i.aq, 1
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !21613
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit: ; preds = %.noexc15, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, %bb.p, %bb.o, %bb.r
  %exitcond.not = icmp eq i64 %i.n, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

bb.s:                                             ; preds = %bb.t, %.thread, %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

.thread:                                          ; preds = %.body, %bb.b, %bb.t
  %.pn.pn44 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.au, %bb.t ], [ %.pn, %.body ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #49
          to label %bb.u unwind label %bb.s

bb.t:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEEB1f_(ptr nonnull %2, i64 %3) #49
          to label %.thread unwind label %bb.s

bb.u:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn.pn44
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCs9gmjTwvRRSu_10typst_html5typedcNtB5_8IntoAttr9into_attr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.e = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @47, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #49
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit, !prof !55

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @921, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1623) #51
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB5_5ToCss4emit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load double, ptr %0, align 8, !noundef !52
  %i.e = fdiv double %i.d, 1.270000e+02
  %i.f = tail call noundef double @_RNvNtCs6xpQEr8gLsQ_11typst_utils5round20round_with_precision(double noundef %i.e, i16 noundef 4), !noalias !21627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21627
  store double %i.f, ptr %i.c, align 8, !noalias !21628
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21628
  store ptr %i.c, ptr %i.b, align 8, !noalias !21628
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !21628
  %i.h = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @47, ptr noundef nonnull %i.b)
  br i1 %i.h, label %bb.b, label %_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter4emitINtB6_6NumberdEEBa_.exit, !prof !55

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @921, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #51
  unreachable

_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter4emitINtB6_6NumberdEEBa_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21627
  call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1624, i64 noundef 2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB5_8SelectorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !100, !noundef !52 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1) ; 2 uses
  %i.c = load i64, ptr %1, align 16, !range !100, !noundef !52 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 1)
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.f = phi i64 [ %i.cp, %tailrecurse.backedge ], [ %i.c, %bb.a ] ; 5 uses
  %i.g = phi i64 [ %i.co, %tailrecurse.backedge ], [ %i.b, %bb.a ]
  %i.h = phi i64 [ %i.cn, %tailrecurse.backedge ], [ %i.a, %bb.a ]
  %.tr1865 = phi ptr [ %i.cm, %tailrecurse.backedge ], [ %1, %bb.a ] ; 17 uses
  %.tr64 = phi ptr [ %i.cj, %tailrecurse.backedge ], [ %0, %bb.a ] ; 17 uses
  switch i64 %i.g, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
  ]

_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.s, %bb.j, %bb.t, %bb.k, %bb.l, %.lr.ph72, %.lr.ph77, %bb.a, %bb.r, %bb.q, %bb.f, %bb.e, %bb.i, %bb.h, %bb.n, %bb.b, %bb.o, %bb.p, %bb.g, %bb.d, %bb.c
  %.sroa.0.0 = phi i1 [ %i.bj, %bb.p ], [ false, %bb.b ], [ %i.bg, %bb.o ], [ false, %bb.i ], [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.bq, %.lr.ph77 ], [ %i.ac, %bb.g ], [ false, %bb.e ], [ false, %bb.n ], [ %i.by, %.lr.ph72 ], [ false, %bb.h ], [ %i.z, %bb.f ], [ true, %bb.q ], [ false, %bb.a ], [ true, %bb.r ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.t ], [ false, %bb.j ], [ false, %bb.s ], [ false, %tailrecurse.backedge ]
  ret i1 %.sroa.0.0

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp samesign ult i64 %i.f, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.tr64, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %.tr1865, i64 56
  %.val9 = load ptr, ptr %i.j, align 8, !nonnull !52, !align !58, !noundef !52
  %.val10 = load ptr, ptr %i.k, align 8, !nonnull !52, !align !58, !noundef !52
  %i.l = icmp eq ptr %.val9, %.val10
  br i1 %i.l, label %bb.m, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr64, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1865, i64 16
  %.val = load i128, ptr %i.m, align 16, !noundef !52
  %.val6 = load i128, ptr %i.n, align 16, !noundef !52
  %i.o = icmp eq i128 %.val, %.val6
  br label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr64, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1865, i64 8
  %.val7 = load i64, ptr %i.p, align 8, !range !61, !noundef !52
  %.val8 = load i64, ptr %i.q, align 8, !range !61, !noundef !52
  %i.r = icmp eq i64 %.val7, %.val8
  br label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr64, i64 32
  %.val12 = load i64, ptr %i.s, align 8, !noundef !52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1865, i64 32
  %.val14 = load i64, ptr %i.t, align 8, !noundef !52
  %i.u = icmp eq i64 %.val12, %.val14
  br i1 %i.u, label %bb.f, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.tr1865, i64 24
  %.val13 = load ptr, ptr %i.v, align 8, !nonnull !52, !noundef !52
  %i.w = getelementptr inbounds nuw i8, ptr %.tr64, i64 24
  %.val11 = load ptr, ptr %i.w, align 8, !nonnull !52, !noundef !52
  %i.x = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.y, ptr nonnull readonly %i.x, i64 %.val12)
  %i.z = icmp eq i32 %bcmp.i, 0
  br label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr64, i64 8
  %.sroa.01.0.copyload = load i128, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr1865, i64 8
  %.sroa.02.0.copyload = load i128, ptr %i.ab, align 8
  %i.ac = icmp eq i128 %.sroa.01.0.copyload, %.sroa.02.0.copyload
  br label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr64, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !52 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1865, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !52
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.q, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr64, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !52 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr1865, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !52
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.r, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  %2 = icmp eq i64 %i.f, 8
  tail call void @llvm.assume(i1 %2)
  %i.an = getelementptr inbounds nuw i8, ptr %.tr64, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !range !64, !noundef !52
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr1865, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !range !64, !noundef !52
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br i1 %i.ar, label %bb.s, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %3 = icmp eq i64 %i.f, 9
  tail call void @llvm.assume(i1 %3)
  %i.as = getelementptr inbounds nuw i8, ptr %.tr64, i64 24
  %i.at = load i8, ptr %i.as, align 8, !range !64, !noundef !52
  %i.au = getelementptr inbounds nuw i8, ptr %.tr1865, i64 24
  %i.av = load i8, ptr %i.au, align 8, !range !64, !noundef !52
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %bb.t, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  %4 = icmp eq i64 %i.f, 10
  tail call void @llvm.assume(i1 %4)
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr64, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !52, !noundef !52
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr1865, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !52, !noundef !52
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = tail call fastcc noundef zeroext i1 @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB5_8SelectorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.az, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bc) #52
  br i1 %i.bd, label %tailrecurse.backedge, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.be = trunc nuw i64 %i.h to i1
  %i.bf = trunc nuw i64 %i.f to i1                ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.bf, label %bb.p, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = xor i1 %i.bf, true
  br label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr64, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr1865, i64 8
  %i.bj = tail call fastcc noundef zeroext i1 @_RNvXsz_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi) #52
  br label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr1865, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !52, !noundef !52
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr64, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !52, !noundef !52
  %.not1775.not = icmp eq i64 %i.ae, 0
  br i1 %.not1775.not, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.q, %.lr.ph77
  %.sroa.01.0.i76 = phi i64 [ %i.br, %.lr.ph77 ], [ 0, %bb.q ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %.sroa.01.0.i76
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.bl, i64 %.sroa.01.0.i76
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB5_8SelectorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bo, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bp) #52, !inline_history !21629 ; 2 uses
  %i.br = add nuw i64 %.sroa.01.0.i76, 1          ; 2 uses
  %exitcond126.not = icmp ne i64 %i.br, %i.ae
  %or.cond.not = select i1 %i.bq, i1 %exitcond126.not, i1 false
  br i1 %or.cond.not, label %.lr.ph77, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr1865, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !52, !noundef !52
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr64, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !52, !noundef !52
  %.not70.not = icmp eq i64 %i.aj, 0
  br i1 %.not70.not, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.r, %.lr.ph72
  %.sroa.01.0.i1571 = phi i64 [ %i.bz, %.lr.ph72 ], [ 0, %bb.r ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.bv, i64 %.sroa.01.0.i1571
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.bt, i64 %.sroa.01.0.i1571
  %i.by = tail call fastcc noundef zeroext i1 @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB5_8SelectorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bw, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bx) #52, !inline_history !21629 ; 2 uses
  %i.bz = add nuw i64 %.sroa.01.0.i1571, 1        ; 2 uses
  %exitcond.not = icmp ne i64 %i.bz, %i.aj
  %or.cond207.not = select i1 %i.by, i1 %exitcond.not, i1 false
  br i1 %or.cond207.not, label %.lr.ph72, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr64, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !52, !noundef !52
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr1865, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !52, !noundef !52
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = tail call fastcc noundef zeroext i1 @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB5_8SelectorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cc, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cf) #52
  br i1 %i.cg, label %tailrecurse.backedge, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

tailrecurse.backedge:                             ; preds = %bb.s, %bb.l, %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr64, i64 16
  %i.ci = load ptr, ptr %i.ch, align 16, !nonnull !52, !noundef !52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr1865, i64 16
  %i.cl = load ptr, ptr %i.ck, align 16, !nonnull !52, !noundef !52
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cj, align 16, !range !100, !noundef !52 ; 2 uses
  %i.co = tail call i64 @llvm.usub.sat.i64(i64 %i.cn, i64 1) ; 2 uses
  %i.cp = load i64, ptr %i.cm, align 16, !range !100, !noundef !52 ; 2 uses
  %i.cq = tail call i64 @llvm.usub.sat.i64(i64 %i.cp, i64 1)
  %i.cr = icmp eq i64 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr64, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !52, !noundef !52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr1865, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !52, !noundef !52
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = tail call fastcc noundef zeroext i1 @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB5_8SelectorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cx) #52
  br i1 %i.cy, label %tailrecurse.backedge, label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_5RegexNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NvCs9gmjTwvRRSu_10typst_html1__NtB7_8HtmlElemNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element3Set3set(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 13 uses
  %i.b = alloca [128 x i8], align 16              ; 13 uses
  %i.c = alloca [128 x i8], align 16              ; 13 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr inttoptr (i64 16 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args5namedNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.y

.body:                                            ; preds = %bb.z, %bb.y, %bb.p, %bb.q, %bb.s, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.u, %bb.h ], [ %i.bf, %bb.z ], [ %i.s, %bb.f ], [ %i.am, %bb.q ], [ %i.am, %bb.p ], [ %i.bc, %bb.y ]
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECs9gmjTwvRRSu_10typst_html.exit unwind label %bb.af, !inline_history !10

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !range !60, !noundef !52
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noundef !52 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.k, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21663
  store ptr %i.m, ptr %i.d, align 8, !noalias !21663
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !21663
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !21663, !inline_history !21632
  %i.q = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !21663, !inline_history !21632 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i, !prof !55

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #54
          to label %.noexc.i unwind label %bb.f, !noalias !21663, !inline_history !21632

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #49
          to label %.body unwind label %bb.g, !noalias !21663, !inline_history !21632

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !21663, !inline_history !21632
  unreachable

bb.h:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %i.c) #49
          to label %.body unwind label %bb.i, !noalias !21664, !inline_history !21638

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i: ; preds = %bb.d
  store ptr %i.m, ptr %i.q, align 8, !noalias !21663
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.o, ptr %i.v, align 8, !noalias !21663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21663
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21665)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21666
  store i128 0, ptr %i.c, align 16, !noalias !21666
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 3, ptr %i.w, align 16, !noalias !21666
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !21667
  %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @17, ptr %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !21667
  %.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvNvXs0_NvCs9gmjTwvRRSu_10typst_html1__NtB9_8HtmlElemNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element13NativeElement4ELEM6VTABLE, ptr %.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !21667
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 1, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !21667
  %.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 1, ptr %.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !21667
  %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  store i8 0, ptr %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !21667
  %.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  store i8 0, ptr %.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !21667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21668)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 1)
          to label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB3_6Styles3setNtCs9gmjTwvRRSu_10typst_html8HtmlElemKh1_EB1c_.exit unwind label %bb.h, !noalias !21669, !inline_history !21638

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !21664, !inline_history !21638
  unreachable

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB3_6Styles3setNtCs9gmjTwvRRSu_10typst_html8HtmlElemKh1_EB1c_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %i.y = load ptr, ptr %i.h, align 8, !alias.scope !21670, !nonnull !52, !noundef !52 ; 2 uses
  %i.z = load i64, ptr %i.i, align 8, !alias.scope !21670, !noundef !52 ; 2 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.y, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aa, ptr noundef nonnull align 16 dereferenceable(128) %i.c, i64 128, i1 false), !noalias !21664
  %i.ab = add i64 %i.z, 1                         ; 2 uses
end_hunk_1
