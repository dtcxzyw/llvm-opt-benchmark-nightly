Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_frame:bb.a
_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  %i.tj = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  store ptr %i.tg, ptr %i.bs, align 8, !noalias !7656
  store i64 8, ptr %i.w, align 8, !noalias !7656
  store i64 %i.tj, ptr %i.bt, align 8, !noalias !7656
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc21.i unwind label %.loopexit92, !noalias !7614

.noexc21.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7656
  br label %bb.ci

.loopexit92:                                      ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  %lpad.loopexit94 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp93:                             ; preds = %bb.ch
  %lpad.loopexit.split-lp95 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ci:                                            ; preds = %.noexc21.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7614
  br label %bb.bf

bb.cj:                                            ; preds = %bb.cn, %bb.cd, %.body.i
  %i.tk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7616
  unreachable

bb.ck:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !7657)
  call void @llvm.experimental.noalias.scope.decl(metadata !7658), !noalias !7614
  %.val.i1.i = load ptr, ptr %i.bq, align 8, !alias.scope !7659, !noalias !7614 ; 4 uses
  %.val1.i2.i = load i8, ptr %i.bu, align 1, !alias.scope !7659, !noalias !7614, !noundef !12
  %.not.i.i.i3.i = icmp sgt i8 %.val1.i2.i, -1
  br i1 %.not.i.i.i3.i, label %bb.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECsl4q486LaARA_9typst_svg.exit

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i1.i) ], !noalias !7614
  %.not.i.i.i.i.i4.i = icmp eq ptr %.val.i1.i, inttoptr (i64 16 to ptr)
  %i.tl = getelementptr inbounds i8, ptr %.val.i1.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i4.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECsl4q486LaARA_9typst_svg.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i5.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i5.i: ; preds = %bb.cl
  %i.tm = atomicrmw sub ptr %i.tl, i64 1 release, align 8, !noalias !7660
  %.not.i.i.i.i6.i = icmp eq i64 %i.tm, 1
  br i1 %.not.i.i.i.i6.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i7.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECsl4q486LaARA_9typst_svg.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i7.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i5.i
  fence acquire, !noalias !7614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7660
  %i.tn = getelementptr i8, ptr %.val.i1.i, i64 -8
  %.val.i.i.i.i.i8.i = load i64, ptr %i.tn, align 8, !noalias !7660, !noundef !12 ; 2 uses
  %narrow.i.i.i.i.i.i9.i = icmp ult i64 %.val.i.i.i.i.i8.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i9.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i10.i, label %bb.cm, !prof !20

bb.cm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i7.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36
          to label %.noexc61 unwind label %.loopexit.split-lp88

.noexc61:                                         ; preds = %bb.cm
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i10.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i7.i
  %i.to = add nuw nsw i64 %.val.i.i.i.i.i8.i, 16
  store ptr %i.tl, ptr %i.bv, align 8, !noalias !7660
  store i64 8, ptr %i.a, align 8, !noalias !7660
  store i64 %i.to, ptr %i.bw, align 8, !noalias !7660
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc62 unwind label %.loopexit87

.noexc62:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7660
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECsl4q486LaARA_9typst_svg.exit: ; preds = %.noexc62, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i5.i, %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7614
  br label %bb.bf

_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i: ; preds = %bb.bf
  %i.tp = fdiv double %i.lk, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7614
  store double %i.tp, ptr %i.v, align 8, !noalias !7661
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v) #35
          to label %bb.co unwind label %bb.cn, !noalias !7616

bb.cn:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i
  %i.tq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5) #35
          to label %.body.i unwind label %bb.cj, !noalias !7616

bb.co:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7614
  %i.tr = fdiv double %i.lm, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7614
  store double %i.tr, ptr %i.u, align 8, !noalias !7662
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u) #35
          to label %bb.cp unwind label %bb.cn, !noalias !7616

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7614
  store ptr @221, ptr %i.t, align 8, !noalias !7663
  store i64 11, ptr %i.bz, align 8, !noalias !7663
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t) #35
          to label %bb.cq unwind label %bb.cn, !noalias !7616

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7614
  store ptr @153, ptr %i.s, align 8, !noalias !7664
  store i64 4, ptr %i.ca, align 8, !noalias !7664
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s) #35
          to label %bb.cr unwind label %bb.cn, !noalias !7616

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7614
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5) #35
          to label %_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer11render_link.exit unwind label %.loopexit87, !noalias !7616

_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer11render_link.exit: ; preds = %bb.cr
  call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5) #35, !noalias !7665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write11LazySvgElemEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write11LazySvgElemEBF_.exit: ; preds = %bb.at, %_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_group.exit, %_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer11render_link.exit, %bb.bb, %bb.ba, %_RNvMNtCsl4q486LaARA_9typst_svg4textNtB4_11SVGRenderer11render_text.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.ts = icmp eq ptr %i.cy, %i.ay
  br i1 %i.ts, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer13render_anchor(ptr nonnull %.0.val, double noundef %0, double noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  tail call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef range(i64 1, 15) 1) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !7672
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !7672
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #35
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 1.000000e+00, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %1, ptr %.sroa.8.0..sroa_idx, align 8
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB19_12SvgTransformE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b) #35
          to label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit unwind label %bb.b

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35, !noalias !7673
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer8finalize(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(480) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 16               ; 5 uses
  %i.k = alloca [48 x i8], align 16               ; 6 uses
  %i.l = alloca [48 x i8], align 16               ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 16              ; 5 uses
  %i.ae = alloca [32 x i8], align 16              ; 5 uses
  %i.af = alloca [32 x i8], align 16              ; 5 uses
  %i.ag = alloca [32 x i8], align 16              ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [32 x i8], align 16              ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 8 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [32 x i8], align 16              ; 5 uses
  %i.ao = alloca [64 x i8], align 8               ; 9 uses
  %i.ap = alloca [64 x i8], align 8               ; 7 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [64 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7851)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !7851, !nonnull !12, !noundef !12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !7851, !noundef !12 ; 2 uses
  %.idx = mul nuw nsw i64 %i.av, 192
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %.not.not.not.i.not.i106 = icmp eq i64 %i.av, 0
  br i1 %.not.not.not.i.not.i106, label %_RNvMNtCsl4q486LaARA_9typst_svg4textNtB4_11SVGRenderer16write_glyph_defs.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 192 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.not.not.i.not.i, label %_RNvMNtCsl4q486LaARA_9typst_svg4textNtB4_11SVGRenderer16write_glyph_defs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.ay = phi ptr [ %i.ax, %bb.b ], [ %i.at, %bb.a ] ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !range !28, !alias.scope !7852, !noalias !7853, !noundef !12
  %.not.i.i.i.not.i.i = icmp eq i64 %i.az, -3
  br i1 %.not.i.i.i.not.i.i, label %bb.b, label %bb.e

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i, %bb.d
  %.pn23.pn.i = phi { ptr, i32 } [ %.pn23.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i ], [ %i.ba, %bb.d ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %.body unwind label %bb.w

bb.d:                                             ; preds = %._crit_edge.thread.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %.lr.ph
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef range(i64 1, 15) 4) #35
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !7851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(480) %0, i64 64, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !7851
  store ptr inttoptr (i64 16 to ptr), ptr %i.as, align 8, !alias.scope !7851
  store i64 0, ptr %i.au, align 8, !alias.scope !7851
  %.sroa.04.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @32, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7851
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !7851, !nonnull !12, !noundef !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noalias !7851, !noundef !12 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.be, 192
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !range !22, !noalias !7851, !noundef !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  br label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit41.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn23.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit41.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsl4q486LaARA_9typst_svg12DeduplicatorINtNtB4_6option6OptionNtNtBE_4text13RenderedGlyphEEEBE_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ar) #32
          to label %bb.c unwind label %bb.w

.loopexit.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit42.i, %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.02.014.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.bt, %.backedge.i ] ; 14 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.014.i, i64 192 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.014.i, i64 160
  %i.bv = load i128, ptr %i.bu, align 16, !noundef !12
  %i.bw = load i64, ptr %.sroa.02.014.i, align 16, !range !28, !noundef !12
  %.not21.i = icmp eq i64 %i.bw, -3
  br i1 %.not21.i, label %.backedge.i, label %bb.j

._crit_edge.i:                                    ; preds = %.backedge.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !7851
  %i.bx = icmp eq i64 %.pre.i, 0
  br i1 %i.bx, label %._crit_edge.thread.i, label %bb.g, !prof !7854

bb.g:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #36
          to label %bb.h unwind label %.loopexit.split-lp.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.noexc
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsl4q486LaARA_9typst_svg12DeduplicatorINtNtB4_6option6OptionNtNtBE_4text13RenderedGlyphEEEBE_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ar)
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !7851
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg4textNtB4_11SVGRenderer16write_glyph_defs.exit unwind label %bb.x

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !7851
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef range(i64 1, 15) 6) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i unwind label %.loopexit.i

_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i: ; preds = %bb.j
  store ptr %1, ptr %i.aq, align 8, !noalias !7851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !7851
  store i128 %i.bv, ptr %i.an, align 16, !noalias !7855
  store i32 %i.bi, ptr %i.bj, align 16, !noalias !7855
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB1b_7DedupIdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.an) #35
          to label %bb.l unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit41.i: ; preds = %bb.u, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.by, %bb.k ], [ %i.cm, %bb.u ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i unwind label %bb.w

bb.k:                                             ; preds = %bb.v, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit41.i

bb.l:                                             ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !7851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !7851
  store ptr @143, ptr %i.am, align 8, !noalias !7856
  store i64 7, ptr %i.bk, align 8, !noalias !7856
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am) #35
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !7851
  %i.bz = load i64, ptr %.sroa.02.014.i, align 16, !range !44, !noundef !12
  %i.ca = icmp eq i64 %i.bz, -2
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef range(i64 1, 15) 4) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit39.i unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !7851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !7851
  %i.cb = invoke { double, double } @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library4text4font5colorNtB2_10GlyphFrame4size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.02.014.i)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cc = extractvalue { double, double } %i.cb, 0 ; 2 uses
  %i.cd = extractvalue { double, double } %i.cb, 1 ; 2 uses
  store double 1.000000e+00, ptr %i.ao, align 8, !noalias !7851
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !7851
  store double 1.000000e+00, ptr %.sroa.617.0..sroa_idx.i, align 8, !noalias !7851
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.718.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !7851
  store double %i.cc, ptr %i.bl, align 8, !noalias !7851
  store double %i.cd, ptr %i.bm, align 8, !noalias !7851
end_hunk_0
begin_hunk_1_@_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer8finalize:bb.a

.body24.i.i:                                      ; preds = %bb.bk, %.loopexit.split-lp12.i, %.loopexit11.i
  %eh.lpad-body25.i.i = phi { ptr, i32 } [ %i.gu, %bb.bk ], [ %lpad.loopexit13.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp14.i, %.loopexit.split-lp12.i ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %.body.i31 unwind label %bb.bp, !noalias !7870

bb.bi:                                            ; preds = %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7877
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i27111, i64 24
  invoke void @_RNvMsz_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5Color6to_hex(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt)
          to label %bb.bj unwind label %.loopexit11.i, !noalias !7870

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !7888)
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %bb.bl unwind label %bb.bk, !noalias !7889

bb.bk:                                            ; preds = %bb.bj
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.w) #32
          to label %.body24.i.i unwind label %bb.bo, !noalias !7889

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !7890)
  %.val.i.i12.i.i = load ptr, ptr %i.w, align 8, !alias.scope !7891, !noalias !7892 ; 4 uses
  %.val1.i.i13.i.i = load i8, ptr %i.fg, align 1, !alias.scope !7891, !noalias !7892, !noundef !12
  %.not.i.i.i.i14.i.i = icmp sgt i8 %.val1.i.i13.i.i, -1
  br i1 %.not.i.i.i.i14.i.i, label %bb.bm, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i12.i.i) ]
  %.not.i.i.i.i.i.i15.i.i = icmp eq ptr %.val.i.i12.i.i, inttoptr (i64 16 to ptr)
  %i.gv = getelementptr inbounds i8, ptr %.val.i.i12.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i15.i.i, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i16.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i16.i.i: ; preds = %bb.bm
  %i.gw = atomicrmw sub ptr %i.gv, i64 1 release, align 8, !noalias !7893
  %.not.i.i.i.i.i17.i.i = icmp eq i64 %i.gw, 1
  br i1 %.not.i.i.i.i.i17.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i18.i.i, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i18.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i16.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7894
  %i.gx = getelementptr i8, ptr %.val.i.i12.i.i, i64 -8
  %.val.i.i.i.i.i.i19.i.i = load i64, ptr %i.gx, align 8, !noalias !7893, !noundef !12 ; 2 uses
  %narrow.i.i.i.i.i.i.i20.i.i = icmp ult i64 %.val.i.i.i.i.i.i19.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i20.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i21.i.i, label %bb.bn, !prof !20

bb.bn:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i18.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36
          to label %.noexc22.i.i unwind label %.loopexit.split-lp12.i, !noalias !7870

.noexc22.i.i:                                     ; preds = %bb.bn
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i21.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i18.i.i
  %i.gy = add nuw nsw i64 %.val.i.i.i.i.i.i19.i.i, 16
  store ptr %i.gv, ptr %i.fh, align 8, !noalias !7894
  store i64 8, ptr %i.s, align 8, !noalias !7894
  store i64 %i.gy, ptr %i.fi, align 8, !noalias !7894
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc23.i.i unwind label %.loopexit11.i, !noalias !7870

.noexc23.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7894
  br label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i

bb.bo:                                            ; preds = %bb.bk
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7895
  unreachable

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i: ; preds = %.noexc23.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i16.i.i, %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7877
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RNCNvMNtCsl4q486LaARA_9typst_svg5paintNtB6_11SVGRenderer18write_subgradients0B6_.exit.i unwind label %bb.au, !noalias !7870

bb.bp:                                            ; preds = %.body24.i.i, %.body.i.i
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7870
  unreachable

_RNCNvMNtCsl4q486LaARA_9typst_svg5paintNtB6_11SVGRenderer18write_subgradients0B6_.exit.i: ; preds = %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i unwind label %bb.ap, !noalias !7870

bb.bq:                                            ; preds = %.body.i31, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit20.i
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7870
  unreachable

_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer18write_subgradients.exit: ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer19write_gradient_refs.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !7896)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !7896, !noundef !12
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer13write_tilings.exit, label %bb.br

bb.br:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer18write_subgradients.exit
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef range(i64 1, 15) 4) #35
          to label %.noexc53 unwind label %bb.x

.noexc53:                                         ; preds = %bb.br
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !7896, !nonnull !12, !noundef !12 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !7896, !noundef !12 ; 3 uses
  %.idx.i42 = shl nuw nsw i64 %i.hi, 5            ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx.i42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7897
  %i.hk = icmp eq i64 %i.hi, 0
  br i1 %i.hk, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %.noexc53
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %.val3.i.i.i.i = load i128, ptr %i.hg, align 16, !noalias !7898, !noundef !12
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ho = load i32, ptr %i.hn, align 8, !range !22, !alias.scope !7896, !noalias !7899, !noundef !12 ; 2 uses
  %i.hp = load ptr, ptr %i.hm, align 8, !noalias !7900, !nonnull !12, !noundef !12
  %i.hq = atomicrmw add ptr %i.hp, i64 1 monotonic, align 8, !noalias !7900
  %i.hr = icmp slt i64 %i.hq, 0
  br i1 %i.hr, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.trap()
  unreachable

bb.bu:                                            ; preds = %bb.ca
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = atomicrmw sub ptr %i.hv, i64 1 release, align 8, !noalias !7901
  %i.hu = icmp eq i64 %i.ht, 1
  br i1 %i.hu, label %bb.bv, label %.body.i48

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.87.0..sroa_idx.i.i) #35
          to label %.body.i48 unwind label %bb.cj, !noalias !7897

bb.bw:                                            ; preds = %bb.bs
  %i.hv = load ptr, ptr %i.hm, align 8, !noalias !7900, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7897
  store i128 %.val3.i.i.i.i, ptr %i.l, align 16, !noalias !7897
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %i.ho, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !7897
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.hv, ptr %.sroa.87.0..sroa_idx.i.i, align 16, !noalias !7897
  %i.hw = ptrtoint ptr %i.hj to i64
  %gepdiff.i = add nsw i64 %.idx.i42, -32         ; 2 uses
  %i.hx = lshr exact i64 %gepdiff.i, 5
  %i.hy = call i64 @llvm.umax.i64(i64 %i.hx, i64 3) ; 2 uses
  %..i.i.i = add nuw nsw i64 %i.hy, 1             ; 2 uses
  %i.hz = mul i64 %..i.i.i, 48                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %gepdiff.i, 6148914691236517152
  br i1 %or.cond.i.i.i.i, label %bb.ca, label %bb.bx, !prof !15

bb.bx:                                            ; preds = %bb.bw
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7902
  %i.ib = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hz, i64 noundef range(i64 1, 17) 16) #31, !noalias !7902 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.id = ptrtoint ptr %i.ib to i64
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by, %bb.bw
  %.sroa.4.0.ph.i.i.i = phi i64 [ 16, %bb.by ], [ 0, %bb.bw ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.hz) #36
          to label %.noexc6.i.i unwind label %bb.bu, !noalias !7897

.noexc6.i.i:                                      ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.bz, %bb.bx
  %.sroa.10.0.i.i.i = phi i64 [ %i.id, %bb.bz ], [ 16, %bb.bx ]
  %.sroa.4.0.i.i.i = phi i64 [ %..i.i.i, %bb.bz ], [ 0, %bb.bx ] ; 3 uses
  %i.ie = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 4 uses
  %i.if = icmp samesign ult i64 %i.hy, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.if)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ie, ptr noundef nonnull align 16 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !7897
  store i64 %.sroa.4.0.i.i.i, ptr %i.m, align 8, !noalias !7897
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ie, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7897
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !7897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7897
  call void @llvm.experimental.noalias.scope.decl(metadata !7903)
  call void @llvm.experimental.noalias.scope.decl(metadata !7904)
  %i.ig = icmp eq i64 %i.hi, 1
  br i1 %i.ig, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cb
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.84.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ih = phi ptr [ %i.ie, %.lr.ph.i.i.i.i ], [ %i.it, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i ]
  %i.ii = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.iv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i ] ; 5 uses
  %i.ij = phi ptr [ %i.hl, %.lr.ph.i.i.i.i ], [ %i.ik, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 24 ; 2 uses
  %.val3.i.i.i.i.i.i = load i128, ptr %i.ij, align 16, !noalias !7905, !noundef !12
  %i.im = load ptr, ptr %i.il, align 8, !noalias !7906, !nonnull !12, !noundef !12
  %i.in = atomicrmw add ptr %i.im, i64 1 monotonic, align 8, !noalias !7906
  %i.io = icmp slt i64 %i.in, 0
  br i1 %i.io, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.trap()
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.ip = load ptr, ptr %i.il, align 8, !noalias !7906, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7907
  store i128 %.val3.i.i.i.i.i.i, ptr %i.k, align 16, !noalias !7907
  store i32 %i.ho, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 16, !noalias !7907
  store ptr %i.ip, ptr %.sroa.84.0..sroa_idx.i.i.i.i, align 16, !noalias !7907
  %i.iq = icmp samesign ult i64 %i.ii, 192153584101141163
  call void @llvm.assume(i1 %i.iq)
  %i.ir = load i64, ptr %i.m, align 8, !range !21, !alias.scope !7908, !noalias !7909, !noundef !12
  %i.is = icmp eq i64 %i.ii, %i.ir
  br i1 %i.is, label %bb.ch, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i_crit_edge.i.i, %bb.ce
  %i.it = phi ptr [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i_crit_edge.i.i ], [ %i.ih, %bb.ce ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [48 x i8], ptr %i.it, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.iu, ptr noundef nonnull align 16 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !7907
  %i.iv = add nuw nsw i64 %i.ii, 1                ; 3 uses
  store i64 %i.iv, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !7908, !noalias !7909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7907
  %i.iw = icmp eq ptr %i.ik, %i.hj
  br i1 %i.iw, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i, label %bb.cc

bb.cf:                                            ; preds = %bb.ch
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = atomicrmw sub ptr %i.ip, i64 1 release, align 8, !noalias !7910
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.cg, label %.body.i.i52

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.84.0..sroa_idx.i.i.i.i) #35
          to label %.body.i.i52 unwind label %bb.ci, !noalias !7907

bb.ch:                                            ; preds = %bb.ce
  %i.ja = ptrtoint ptr %i.ik to i64
  %i.jb = sub nuw i64 %i.hw, %i.ja
  %i.jc = lshr exact i64 %i.jb, 5
  %i.jd = add nuw nsw i64 %i.jc, 1
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.ii, i64 noundef range(i64 1, 0) %i.jd, i64 noundef 16, i64 noundef 48)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i_crit_edge.i.i unwind label %bb.cf, !noalias !7909

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i_crit_edge.i.i: ; preds = %bb.ch
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !7908, !noalias !7909
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7907
  unreachable

.body.i.i52:                                      ; preds = %bb.cg, %bb.cf
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #32
          to label %.body.i48 unwind label %bb.cj, !noalias !7897

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i
  %.sroa.01.0.copyload.pre.i = load i64, ptr %i.m, align 8, !noalias !7911
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i

bb.cj:                                            ; preds = %.body.i.i52, %bb.bv
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7897
  unreachable

.body.i48:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i, %bb.ck, %.body.i.i52, %bb.bv, %bb.bu
  %.pn18.pn.i = phi { ptr, i32 } [ %.pn18.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i ], [ %i.jg, %bb.ck ], [ %i.ix, %.body.i.i52 ], [ %i.hs, %bb.bv ], [ %i.hs, %bb.bu ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %.body unwind label %bb.da

bb.ck:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i48

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i, %bb.cb, %.noexc53
  %.sroa.7.0.i = phi i64 [ 0, %.noexc53 ], [ %i.iv, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i ], [ 1, %bb.cb ] ; 3 uses
  %.sroa.5.0.i43 = phi ptr [ inttoptr (i64 16 to ptr), %.noexc53 ], [ %i.it, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i ], [ %i.ie, %bb.cb ] ; 5 uses
  %.sroa.01.0.i44 = phi i64 [ 0, %.noexc53 ], [ %.sroa.01.0.copyload.pre.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i ], [ %.sroa.4.0.i.i.i, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7897
  %2 = icmp samesign ult i64 %.sroa.7.0.i, 192153584101141163
  call void @llvm.assume(i1 %2)
  %.idx22.i = mul nuw nsw i64 %.sroa.7.0.i, 48
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i43, i64 %.idx22.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7896
  store ptr %.sroa.5.0.i43, ptr %i.r, align 8, !noalias !7896
  %.sroa.4.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store ptr %.sroa.5.0.i43, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7896
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.01.0.i44, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7896
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %3, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7896
  %4 = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %4, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph.i: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.co, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46, %bb.cl
  %.pn18.i = phi { ptr, i32 } [ %i.jm, %bb.cl ], [ %.pn.i47, %bb.co ], [ %.pn.i47, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #32
          to label %.body.i48 unwind label %bb.da

bb.cl:                                            ; preds = %bb.cz
  %i.jm = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jn, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7896
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph.i
  %.sroa.5.8.620.i = phi ptr [ %.sroa.5.0.i43, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph.i ], [ %i.jn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i ] ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.5.8.620.i, i64 48 ; 7 uses
  %.sroa.07.0.copyload.i = load i128, ptr %.sroa.5.8.620.i, align 16, !noalias !7912
  %.sroa.58.0..sroa.5.8.6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.8.620.i, i64 16
  %.sroa.58.0.copyload.i = load i32, ptr %.sroa.58.0..sroa.5.8.6.sroa_idx.i, align 16, !noalias !7912 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.58.0.copyload.i, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i, label %bb.cm

bb.cm:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i
  %.sroa.710.0..sroa.5.8.6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.8.620.i, i64 32
  %.sroa.710.0.copyload.i = load ptr, ptr %.sroa.710.0..sroa.5.8.6.sroa_idx.i, align 16, !noalias !7912, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7896
  store ptr %.sroa.710.0.copyload.i, ptr %i.q, align 8, !noalias !7896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7896
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload.i, i64 80
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload.i, i64 96
  %i.jq = load <2 x double>, ptr %i.jo, align 16
  %i.jr = load <2 x double>, ptr %i.jp, align 16
  %i.js = fadd <2 x double> %i.jq, %i.jr          ; 2 uses
  %i.jt = fcmp ord <2 x double> %i.js, zeroinitializer
  %i.ju = select <2 x i1> %i.jt, <2 x double> %i.js, <2 x double> zeroinitializer ; 2 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 0 ; 3 uses
  store double %i.jv, ptr %i.p, align 8, !noalias !7896
  %i.jw = extractelement <2 x double> %i.ju, i64 1 ; 3 uses
  store double %i.jw, ptr %i.jh, align 8, !noalias !7896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7896
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef range(i64 1, 15) 7) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i50 unwind label %bb.cp

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i
  %i.jx = phi ptr [ %.sroa.5.0.i43, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i ], [ %i.jn, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i ], [ %i.jn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i ]
  store ptr %i.jx, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7896
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
          to label %bb.cn unwind label %bb.ck

bb.cn:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7896
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer13write_tilings.exit unwind label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46: ; preds = %bb.cq, %bb.cp
  %.pn.i47 = phi { ptr, i32 } [ %i.kb, %bb.cp ], [ %i.kc, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7913)
  call void @llvm.experimental.noalias.scope.decl(metadata !7914)
  call void @llvm.experimental.noalias.scope.decl(metadata !7915)
  %i.jy = load ptr, ptr %i.q, align 8, !alias.scope !7916, !noalias !7896, !nonnull !12, !noundef !12
  %i.jz = atomicrmw sub ptr %i.jy, i64 1 release, align 8, !noalias !7916
  %i.ka = icmp eq i64 %i.jz, 1
  br i1 %i.ka, label %bb.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i

bb.co:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i unwind label %bb.da

bb.cp:                                            ; preds = %bb.cy, %bb.cm
  %i.kb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jn, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7896
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46

_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i50: ; preds = %bb.cm
  store ptr %1, ptr %i.o, align 8, !noalias !7896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7896
  store i128 %.sroa.07.0.copyload.i, ptr %i.j, align 16, !noalias !7917
  store i32 %.sroa.58.0.copyload.i, ptr %i.ji, align 16, !noalias !7917
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB1b_7DedupIdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j) #35
          to label %bb.cr unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i50
  %i.kc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jn, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7896
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46 unwind label %bb.da

bb.cr:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7896
  %i.kd = fdiv double %i.jv, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7896
  store double %i.kd, ptr %i.i, align 8, !noalias !7918
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i) #35
          to label %bb.cs unwind label %bb.cq

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7896
  %i.ke = fdiv double %i.jw, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7896
  store double %i.ke, ptr %i.h, align 8, !noalias !7919
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h) #35
          to label %bb.ct unwind label %bb.cq

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7896
  %i.kf = load ptr, ptr %i.q, align 8, !noalias !7896, !nonnull !12, !noundef !12
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 112
  %i.kh = load double, ptr %i.kg, align 16, !noundef !12
  %i.ki = fdiv double %i.kh, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7896
  store double %i.ki, ptr %i.g, align 8, !noalias !7920
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g) #35
          to label %bb.cu unwind label %bb.cq

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7896
  %i.kj = load ptr, ptr %i.q, align 8, !noalias !7896, !nonnull !12, !noundef !12
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 120
  %i.kl = load double, ptr %i.kk, align 8, !noundef !12
  %i.km = fdiv double %i.kl, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7896
  store double %i.km, ptr %i.f, align 8, !noalias !7921
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #35
          to label %bb.cv unwind label %bb.cq

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7896
  store ptr @162, ptr %i.e, align 8, !noalias !7922
  store i64 14, ptr %i.jj, align 8, !noalias !7922
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #35
          to label %bb.cw unwind label %bb.cq

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7896
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCNvMNtB1b_5paintNtB1b_11SVGRenderer13write_tilingss_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jh)
          to label %bb.cx unwind label %bb.cq

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7896
  store double 1.000000e+00, ptr %i.n, align 8, !noalias !7896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !7896
  store double 1.000000e+00, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !7896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !7896
  store double %i.jv, ptr %i.jk, align 8, !noalias !7896
  store double %i.jw, ptr %i.jl, align 8, !noalias !7896
  %i.kn = load ptr, ptr %i.q, align 8, !noalias !7896, !nonnull !12, !noundef !12
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  invoke fastcc void @_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(480) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ko)
          to label %bb.cy unwind label %bb.cq

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7896
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i51 unwind label %bb.cp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i51: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7896
  call void @llvm.experimental.noalias.scope.decl(metadata !7923)
  call void @llvm.experimental.noalias.scope.decl(metadata !7924)
  call void @llvm.experimental.noalias.scope.decl(metadata !7925)
  %i.kp = load ptr, ptr %i.q, align 8, !alias.scope !7926, !noalias !7896, !nonnull !12, !noundef !12
  %i.kq = atomicrmw sub ptr %i.kp, i64 1 release, align 8, !noalias !7926
  %i.kr = icmp eq i64 %i.kq, 1
  br i1 %i.kr, label %bb.cz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i

bb.cz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i51
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i unwind label %bb.cl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i: ; preds = %bb.cz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7896
  %i.ks = icmp eq ptr %i.jn, %3
  br i1 %i.ks, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i

bb.da:                                            ; preds = %bb.cq, %bb.co, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i, %.body.i48
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer13write_tilings.exit: ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer18write_subgradients.exit, %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !7927)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.kv = load i64, ptr %i.ku, align 8, !alias.scope !7927, !noundef !12
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer17write_tiling_refs.exit, label %bb.db

bb.db:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer13write_tilings.exit
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef range(i64 1, 15) 4) #35
          to label %.noexc63 unwind label %bb.x

.noexc63:                                         ; preds = %bb.db
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !7927, !nonnull !12, !noundef !12 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.la = load i64, ptr %i.kz, align 8, !alias.scope !7927, !noundef !12 ; 2 uses
  %.idx118 = mul nuw nsw i64 %i.la, 112
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.idx118
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ld = load i32, ptr %i.lc, align 8, !range !22, !alias.scope !7927
  %i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lh = icmp eq i64 %i.la, 0
  br i1 %i.lh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit21.i57._crit_edge, label %.lr.ph114

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit21.i57: ; preds = %bb.dg
  %i.li = icmp eq ptr %i.lk, %i.lb
  br i1 %i.li, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit21.i57._crit_edge, label %.lr.ph114

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit19.i: ; preds = %bb.dd, %bb.dc
  %.pn.i59 = phi { ptr, i32 } [ %i.lj, %bb.dc ], [ %i.ln, %bb.dd ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %.body unwind label %bb.dh, !noalias !7927

bb.dc:                                            ; preds = %bb.dg, %.lr.ph114
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit19.i

.lr.ph114:                                        ; preds = %.noexc63, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit21.i57
  %.sroa.01.0.i58113 = phi ptr [ %i.lk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit21.i57 ], [ %i.ky, %.noexc63 ] ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i58113, i64 112 ; 2 uses
  %i.ll = load i128, ptr %.sroa.01.0.i58113, align 16, !noalias !7927, !noundef !12
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef range(i64 1, 15) 7) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i61 unwind label %bb.dc, !noalias !7927

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit21.i57._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit21.i57, %.noexc63
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer17write_tiling_refs.exit unwind label %bb.x

_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i61: ; preds = %.lr.ph114
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i58113, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.lm, i64 48, i1 false), !noalias !7927
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB19_12SvgTransformE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d) #35
          to label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i62 unwind label %bb.dd, !noalias !7927

bb.dd:                                            ; preds = %bb.df, %bb.de, %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i62, %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i61
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit19.i unwind label %bb.dh, !noalias !7927

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i62: ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7927
  store i128 %i.ll, ptr %i.c, align 16, !noalias !7928
  store i32 %i.ld, ptr %i.le, align 16, !noalias !7928
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB1b_7DedupIdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.c) #35
          to label %bb.de unwind label %bb.dd, !noalias !7927

bb.de:                                            ; preds = %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7927
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i58113, i64 64
  %i.lp = load i128, ptr %i.lo, align 16, !noalias !7927, !noundef !12 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i58113, i64 80
  %i.lr = load i32, ptr %i.lq, align 16, !range !22, !noalias !7927, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7927
  store i128 %i.lp, ptr %i.b, align 16, !noalias !7929
  store i32 %i.lr, ptr %i.lf, align 16, !noalias !7929
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrINtB19_8SvgIdRefNtB1b_7DedupIdEE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.b) #35
          to label %bb.df unwind label %bb.dd, !noalias !7927

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7927
  store i128 %i.lp, ptr %i.a, align 16, !noalias !7930
  store i32 %i.lr, ptr %i.lg, align 16, !noalias !7930
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrINtB19_8SvgIdRefNtB1b_7DedupIdEE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.a) #35
          to label %bb.dg unwind label %bb.dd, !noalias !7927

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7927
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit21.i57 unwind label %bb.dc, !noalias !7927

bb.dh:                                            ; preds = %bb.dd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit19.i
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7927
end_hunk_1
