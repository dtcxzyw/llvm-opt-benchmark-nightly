Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvMNtCs9fPPV5zPXBl_5typst7compileNtB2_13CompileConfig8new_impl:bb.a
  %i.dd = tail call fastcc noundef zeroext i1 @_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr20eq_ignore_ascii_caseReECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 4)
  br i1 %i.dd, label %_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr20eq_ignore_ascii_caseReECs9fPPV5zPXBl_5typst.exit, label %bb.p

bb.u:                                             ; preds = %bb.w, %bb.p
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ar) #62
          to label %bb.fy unwind label %bb.z

bb.v:                                             ; preds = %bb.p
  br i1 %i.cg, label %bb.w, label %bb.x, !prof !38

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @537) #65
          to label %.noexc327 unwind label %bb.u

.noexc327:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.df = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.v)
          to label %bb.y unwind label %bb.j       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.dg = extractvalue { ptr, i64 } %i.df, 0
  %i.dh = extractvalue { ptr, i64 } %i.df, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %i.dj, align 8
  store i64 -1, ptr %0, align 8
  %i.dk = load i64, ptr %i.as, align 8, !range !55, !alias.scope !28651, !noundef !28 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, 0
  br i1 %i.dl, label %.thread697.sink.split, label %.thread697

.thread697.sink.split:                            ; preds = %bb.y, %bb.fv
  %.sink786 = phi i64 [ %i.qh, %bb.fv ], [ %i.dk, %bb.y ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val1.i = load ptr, ptr %i.dm, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.sink786, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !28
  br label %.thread697

.thread697:                                       ; preds = %.thread697.sink.split, %bb.y, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsdaEETE4DqmE_13typst_library4diag12HintedStringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w)
  br label %bb.fr

bb.z:                                             ; preds = %bb.dn, %.thread655, %bb.ch, %bb.gb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args5InputEBF_.exit488, %bb.eq, %bb.em, %bb.ef, %bb.da, %bb.cx, %bb.ci, %bb.bz, %bb.bv, %.body407, %bb.u
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.aa:                                            ; preds = %_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr20eq_ignore_ascii_caseReECs9fPPV5zPXBl_5typst.exit
  %i.do = load i64, ptr %i.as, align 8, !range !55, !alias.scope !28652, !noalias !28653, !noundef !28
  %.not.i388 = icmp eq i64 %i.do, -1
  br i1 %.not.i388, label %bb.ac, label %bb.ab, !prof !38

bb.ab:                                            ; preds = %bb.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !28652, !noalias !28653, !nonnull !28, !noundef !28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !28652, !noalias !28653, !noundef !28
  switch i8 %.sroa.0.0, label %default.unreachable [
    i8 0, label %bb.ah
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.af
    i8 4, label %bb.ag
  ]

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @396, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #65
          to label %.noexc389 unwind label %bb.j

.noexc389:                                        ; preds = %bb.ac
  unreachable

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.sroa.8.0.i = phi i64 [ 0, %bb.ag ], [ 3, %bb.ad ], [ 3, %bb.ae ], [ 4, %bb.af ], [ 3, %bb.ab ]
  %.sroa.0.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.ag ], [ @394, %bb.ad ], [ @395, %bb.ae ], [ @248, %bb.af ], [ @393, %bb.ab ]
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path15__with_extension(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %i.ds, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, 5) %.sroa.8.0.i)
          to label %_RNCNvMNtCs9fPPV5zPXBl_5typst7compileNtB4_13CompileConfig8new_impl0B6_.exit unwind label %bb.j

_RNCNvMNtCs9fPPV5zPXBl_5typst7compileNtB4_13CompileConfig8new_impl0B6_.exit: ; preds = %bb.ah, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit394
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.du = load i64, ptr %i.dt, align 8, !range !55, !noundef !28
  %.not283 = icmp eq i64 %i.du, -1
  br i1 %.not283, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit, label %bb.al

bb.ai:                                            ; preds = %_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr20eq_ignore_ascii_caseReECs9fPPV5zPXBl_5typst.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.val332 = load ptr, ptr %i.dv, align 8, !nonnull !28, !noundef !28
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val333 = load i64, ptr %i.dw, align 8, !noundef !28 ; 6 uses
  %i.dx = icmp eq i64 %.val333, 0
  br i1 %i.dx, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit394, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i391

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i391: ; preds = %bb.ai
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !28654
  %i.dy = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val333, i64 noundef range(i64 1, 17) 1) #56, !noalias !28654 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i391
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val333) #61
          to label %.noexc393 unwind label %bb.j

.noexc393:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i391
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull readonly align 1 %.val332, i64 range(i64 0, -9223372036854775808) %.val333, i1 false), !noalias !28655
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit394

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit394: ; preds = %_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr20eq_ignore_ascii_caseReECs9fPPV5zPXBl_5typst.exit, %bb.ai, %bb.ak
  %.sroa.597.sroa.4.0 = phi i64 [ undef, %_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr20eq_ignore_ascii_caseReECs9fPPV5zPXBl_5typst.exit ], [ %.val333, %bb.ak ], [ 0, %bb.ai ]
  %.sroa.597.sroa.0.0 = phi ptr [ undef, %_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr20eq_ignore_ascii_caseReECs9fPPV5zPXBl_5typst.exit ], [ %i.dy, %bb.ak ], [ inttoptr (i64 1 to ptr), %bb.ai ]
  %.sroa.095.0 = phi i64 [ %i.bf, %_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr20eq_ignore_ascii_caseReECs9fPPV5zPXBl_5typst.exit ], [ %.val333, %bb.ak ], [ 0, %bb.ai ]
  store i64 %.sroa.095.0, ptr %i.ao, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.597.sroa.0.0, ptr %.sroa.4100.0..sroa_idx, align 8
  %.sroa.4100.sroa.4.0..sroa.4100.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.sroa.597.sroa.4.0, ptr %.sroa.4100.sroa.4.0..sroa.4100.0..sroa_idx.sroa_idx, align 8
  br label %_RNCNvMNtCs9fPPV5zPXBl_5typst7compileNtB4_13CompileConfig8new_impl0B6_.exit

bb.al:                                            ; preds = %_RNCNvMNtCs9fPPV5zPXBl_5typst7compileNtB4_13CompileConfig8new_impl0B6_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !28 ; 10 uses
  %.idx = mul nuw nsw i64 %i.ed, 24               ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.al
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !28656
  %i.ef = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 17) 8) #56, !noalias !28656 ; 6 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.am, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %xtraiter = and i64 %i.ed, 1
  %i.eh = icmp eq i64 %i.ed, 1
  br i1 %i.eh, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.ed, -2
  br label %.preheader.i.i.i

bb.am:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #61
          to label %.noexc395 unwind label %bb.an

.noexc395:                                        ; preds = %bb.am
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.ei = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.eu, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.ei ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28657)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i8, ptr %i.ek, align 8, !range !53, !alias.scope !28658, !noalias !28659, !noundef !28
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ei ; 2 uses
  %i.en = load <2 x i64>, ptr %i.ej, align 8, !alias.scope !28658, !noalias !28659
  store <2 x i64> %i.en, ptr %i.em, align 8, !noalias !28660
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i8 %i.el, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !28660
  %i.eo = or disjoint i64 %i.ei, 1                ; 2 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.eo ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28661)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i8, ptr %i.eq, align 8, !range !53, !alias.scope !28662, !noalias !28659, !noundef !28
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.eo ; 2 uses
  %i.et = load <2 x i64>, ptr %i.ep, align 8, !alias.scope !28662, !noalias !28659
  store <2 x i64> %i.et, ptr %i.es, align 8, !noalias !28663
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i8 %i.er, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !28663
  %i.eu = add nuw nsw i64 %i.ei, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.eu, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod820 = trunc i64 %i.ed to i1
  tail call void @llvm.assume(i1 %lcmp.mod820)
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28657)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i8, ptr %i.ew, align 8, !range !53, !alias.scope !28658, !noalias !28659, !noundef !28
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %.epil.init ; 2 uses
  %i.ez = load <2 x i64>, ptr %i.ev, align 8, !alias.scope !28658, !noalias !28659
  store <2 x i64> %i.ez, ptr %i.ey, align 8, !noalias !28660
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i8 %i.ex, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !28660
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit.loopexit.unr-lcssa, %bb.al, %_RNCNvMNtCs9fPPV5zPXBl_5typst7compileNtB4_13CompileConfig8new_impl0B6_.exit
  %.sroa.12517.0 = phi i64 [ undef, %_RNCNvMNtCs9fPPV5zPXBl_5typst7compileNtB4_13CompileConfig8new_impl0B6_.exit ], [ 0, %bb.al ], [ %i.ed, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit.loopexit.unr-lcssa ], [ %i.ed, %.preheader.i.i.i.epil.preheader ]
  %.sroa.10.0 = phi ptr [ undef, %_RNCNvMNtCs9fPPV5zPXBl_5typst7compileNtB4_13CompileConfig8new_impl0B6_.exit ], [ inttoptr (i64 8 to ptr), %bb.al ], [ %i.ef, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit.loopexit.unr-lcssa ], [ %i.ef, %.preheader.i.i.i.epil.preheader ] ; 9 uses
  %.sroa.0512.0 = phi i64 [ -1, %_RNCNvMNtCs9fPPV5zPXBl_5typst7compileNtB4_13CompileConfig8new_impl0B6_.exit ], [ 0, %bb.al ], [ %i.ed, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit.loopexit.unr-lcssa ], [ %i.ed, %.preheader.i.i.i.epil.preheader ] ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 393
  %i.fb = load i8, ptr %i.fa, align 1, !range !53, !noundef !28
  %i.fc = trunc nuw i8 %i.fb to i1                ; 3 uses
  %.not284 = icmp eq i64 %.sroa.0512.0, -1        ; 2 uses
  %not. = xor i1 %i.fc, true
  %narrow = and i1 %.not284, %not.                ; 2 uses
  %.sroa.09.0 = zext i1 %narrow to i8
  %i.fd = icmp ne i8 %.sroa.0.0, 0
  %or.cond = or i1 %.not284, %i.fc
  %or.cond710 = select i1 %i.fd, i1 true, i1 %or.cond
  br i1 %or.cond710, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.ao:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsdaEETE4DqmE_13typst_library4diag12HintedStringE8push_mutCs9fPPV5zPXBl_5typst.exit, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit
  %i.ff = phi ptr [ %i.he, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsdaEETE4DqmE_13typst_library4diag12HintedStringE8push_mutCs9fPPV5zPXBl_5typst.exit ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit ]
  %i.fg = phi i64 [ 1, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsdaEETE4DqmE_13typst_library4diag12HintedStringE8push_mutCs9fPPV5zPXBl_5typst.exit ], [ 0, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit ] ; 3 uses
  %.phi.trans.insert733 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.pre734 = load ptr, ptr %.phi.trans.insert733, align 8 ; 13 uses
  %.pre734803 = ptrtoaddr ptr %.pre734 to i64
  %.phi.trans.insert735 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.pre736 = load i64, ptr %.phi.trans.insert735, align 8 ; 23 uses
  br i1 %narrow, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre734, i64 %.pre736 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr getelementptr inbounds nuw (i8, ptr @545, i64 8), ptr %i.am, align 8
  %.not.not.not.i.not.not.not.i.not796 = icmp samesign eq i64 %.pre736, 0
  br i1 %.not.not.not.i.not.not.not.i.not796, label %_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtB5_13SliceContains14slice_containsBG_.exit, label %.lr.ph

bb.ap:                                            ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtB1a_6option6OptionINtNtNtB1a_3num7nonzero7NonZerojEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args5PagesENCNCNvMNtB4o_7compileNtB51_13CompileConfig8new_impls_00EE9from_iterB4o_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !28664
  store ptr inttoptr (i64 16 to ptr), ptr %i.l, align 8, !noalias !28664
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 0, ptr %i.fi, align 8, !noalias !28664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28665)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, i64 noundef range(i64 0, -9223372036854775808) 35)
          to label %bb.at unwind label %bb.aq, !noalias !28664

bb.aq:                                            ; preds = %bb.ap
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.l, align 8, !noalias !28664, !nonnull !28, !noundef !28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs9fPPV5zPXBl_5typst(ptr nonnull %.val.i.i) #62
          to label %.thread651 unwind label %bb.ar, !noalias !28664

bb.ar:                                            ; preds = %bb.aq
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !28664
  unreachable

.body:                                            ; preds = %bb.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB11_.exit, %bb.dn, %bb.as
  %.sroa.064.0 = phi i8 [ %.sroa.064.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB11_.exit ], [ %.sroa.064.4, %bb.dm ], [ %.sroa.064.1, %bb.as ], [ %.sroa.064.4, %bb.dn ]
  %.pn308 = phi { ptr, i32 } [ %.pn301.pn.pn.pn.pn.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB11_.exit ], [ %.pn301.pn.pn.pn.pn.pn, %bb.dm ], [ %i.fm, %bb.as ], [ %.pn301.pn.pn.pn.pn.pn, %bb.dn ] ; 2 uses
  %i.fl = trunc nuw i8 %.sroa.064.0 to i1
  br i1 %i.fl, label %.thread651, label %bb.ga

bb.as:                                            ; preds = %.invoke, %bb.fk, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i449, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %bb.bo, %bb.cl, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit326, %bb.at
  %.sroa.064.1 = phi i8 [ 1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit326 ], [ %.sroa.064.8691, %bb.fk ], [ 1, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i449 ], [ 1, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ 1, %bb.at ], [ 1, %bb.bo ], [ 1, %bb.cl ], [ 1, %.invoke ]
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.ap
  %i.fn = load ptr, ptr %i.l, align 8, !alias.scope !28665, !noalias !28666, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.fi, align 8, !alias.scope !28665, !noalias !28666 ; 2 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.fn, i64 %.promoted.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %scevgep.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(35) @538, i64 range(i64 0, -9223372036854775808) 35, i1 false), !noalias !28667
  %i.fo = add i64 %.promoted.i.i.i, 35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !28664
  store ptr %i.fn, ptr %i.u, align 8
  %.sroa.4604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.fo, ptr %.sroa.4604.0..sroa_idx, align 8
  %i.fp = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.u)
          to label %bb.au unwind label %bb.as     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.fq = extractvalue { ptr, i64 } %i.fp, 0      ; 4 uses
  %i.fr = extractvalue { ptr, i64 } %i.fp, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !28668
  store ptr inttoptr (i64 16 to ptr), ptr %i.k, align 8, !noalias !28668
  %i.fs = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 0, ptr %i.fs, align 8, !noalias !28668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28669)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef range(i64 0, -9223372036854775808) 38)
          to label %bb.ax unwind label %bb.av, !noalias !28668

bb.av:                                            ; preds = %bb.au
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %.val.i.i396 = load ptr, ptr %i.k, align 8, !noalias !28668, !nonnull !28, !noundef !28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs9fPPV5zPXBl_5typst(ptr nonnull %.val.i.i396) #62
          to label %.thread655 unwind label %bb.aw, !noalias !28668

bb.aw:                                            ; preds = %bb.av
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !28668
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.fv = load ptr, ptr %i.k, align 8, !alias.scope !28669, !noalias !28670, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i397 = load i64, ptr %i.fs, align 8, !alias.scope !28669, !noalias !28670 ; 2 uses
  %scevgep.i.i.i398 = getelementptr nuw i8, ptr %i.fv, i64 %.promoted.i.i.i397
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %scevgep.i.i.i398, ptr noundef nonnull readonly align 1 dereferenceable(38) @539, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !28671
  %i.fw = add i64 %.promoted.i.i.i397, 38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28668
  store ptr %i.fv, ptr %i.an, align 8
  %.sroa.4606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.fw, ptr %.sroa.4606.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !28672
  store ptr inttoptr (i64 16 to ptr), ptr %i.j, align 8, !noalias !28672
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 0, ptr %i.fx, align 8, !noalias !28672
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28673)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef range(i64 0, -9223372036854775808) 41)
          to label %bb.ba unwind label %bb.ay, !noalias !28672

bb.ay:                                            ; preds = %bb.ax
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %.val.i.i403 = load ptr, ptr %i.j, align 8, !noalias !28672, !nonnull !28, !noundef !28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs9fPPV5zPXBl_5typst(ptr nonnull %.val.i.i403) #62
          to label %.body407 unwind label %bb.az, !noalias !28672

bb.az:                                            ; preds = %bb.ay
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !28672
  unreachable

.body407:                                         ; preds = %bb.ay
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an) #62
          to label %.thread655 unwind label %bb.z

bb.ba:                                            ; preds = %bb.ax
  %i.ga = load ptr, ptr %i.j, align 8, !alias.scope !28673, !noalias !28674, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i404 = load i64, ptr %i.fx, align 8, !alias.scope !28673, !noalias !28674 ; 2 uses
  %scevgep.i.i.i405 = getelementptr nuw i8, ptr %i.ga, i64 %.promoted.i.i.i404
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %scevgep.i.i.i405, ptr noundef nonnull readonly align 1 dereferenceable(41) @540, i64 range(i64 0, -9223372036854775808) 41, i1 false), !noalias !28675
  %i.gb = add i64 %.promoted.i.i.i404, 41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28672
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.fq, ptr %i.i, align 8, !noalias !28677
  %i.gc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store i64 %i.fr, ptr %i.gc, align 8, !noalias !28677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28679)
  store i64 0, ptr %i.h, align 8, !alias.scope !28680, !noalias !28681
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !alias.scope !28680, !noalias !28681
  %.sroa.4612.0..sroa.56.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.ga, ptr %.sroa.4612.0..sroa.56.0..sroa_idx.i.i.i.sroa_idx, align 8, !alias.scope !28682, !noalias !28678
  %.sroa.5613.0..sroa.56.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.gb, ptr %.sroa.5613.0..sroa.56.0..sroa_idx.i.i.i.sroa_idx, align 8, !alias.scope !28682, !noalias !28678
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtB6_6string9EcoStringE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef 2)
          to label %bb.bb unwind label %bb.bj, !noalias !28683

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !28676
end_hunk_0
