Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvNtCs9fPPV5zPXBl_5typst5query5query:bb.a
  unreachable

.thread.i.i:                                      ; preds = %bb.cr
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9fPPV5zPXBl_5typst(ptr nonnull %i.lp, i64 %i.lr) #62
          to label %.body.i161 unwind label %bb.dn, !noalias !33754

bb.do:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.i, ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i64 16, i1 false), !noalias !33751
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !33751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.i, i64 16, i1 false), !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  store i64 %i.lm, ptr %i.bh, align 8, !noalias !33751
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.0..sroa_idx10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i, i64 16, i1 false), !noalias !33751
  %.sroa.811.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %.sroa.527.0.copyload.i, ptr %.sroa.811.0..sroa_idx12.i, align 8, !noalias !33751
  invoke void @_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB5_17LocatableSelectorNtNtB7_4cast9FromValue10from_value(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.br, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bh)
          to label %bb.dp unwind label %bb.co, !noalias !33751

bb.dp:                                            ; preds = %bb.do
  %i.nm = load i64, ptr %i.br, align 16, !range !7020, !noalias !33751, !noundef !8 ; 2 uses
  %i.nn = icmp eq i64 %i.nm, -1
  %i.no = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !noalias !33751 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.nr = load i64, ptr %i.nq, align 16, !noalias !33751 ; 2 uses
  br i1 %i.nn, label %bb.eq, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.622.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.634.0..sroa_idx.i, i64 40, i1 false), !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !33751
  store i64 %i.nm, ptr %i.bs, align 16, !noalias !33751
  %.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.np, ptr %.sroa.4.0..sroa_idx.i162, align 8, !noalias !33751
  %.sroa.5.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.nr, ptr %.sroa.5.0..sroa_idx.i163, align 16, !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !33751
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library6engine4SinkECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bn)
          to label %bb.ds unwind label %bb.dr, !noalias !33751

bb.dr:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i, %bb.ds, %bb.dq
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

.body40.i:                                        ; preds = %bb.eo, %.body.i.i, %bb.dr
  %eh.lpad-body41.i = phi { ptr, i32 } [ %i.ns, %bb.dr ], [ %.pn.ph.i.i, %bb.eo ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bs)
          to label %.body178 unwind label %bb.ep, !noalias !33751

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !33751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !33751
  %i.nt = invoke { ptr, i64 } %.val105(ptr noundef nonnull %i.kq, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bs)
          to label %bb.dt unwind label %bb.dr, !noalias !33751 ; 2 uses

bb.dt:                                            ; preds = %bb.ds
  %i.nu = extractvalue { ptr, i64 } %i.nt, 0      ; 5 uses
  %i.nv = extractvalue { ptr, i64 } %i.nt, 1      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33782)
  %.not.i.i.i.i164 = icmp eq ptr %i.nu, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i164, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nw = getelementptr inbounds i8, ptr %i.nu, i64 -16
  %i.nx = load atomic i64, ptr %i.nw acquire, align 8, !noalias !33785
  %i.ny = icmp eq i64 %i.nx, 1
  %i.nz = zext i1 %i.ny to i8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.nz, %bb.du ], [ 1, %bb.dt ] ; 2 uses
  store ptr %i.nu, ptr %i.bg, align 8, !alias.scope !33782, !noalias !33751
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.nv, ptr %i.oa, align 8, !alias.scope !33782, !noalias !33751
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i8 %.sroa.02.0.i.i.i.i, ptr %i.ob, align 8, !alias.scope !33782, !noalias !33751
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store i64 0, ptr %i.oc, align 8, !alias.scope !33782, !noalias !33751
  %i.od = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %i.nv, ptr %i.od, align 8, !alias.scope !33782, !noalias !33751
  call void @llvm.experimental.noalias.scope.decl(metadata !33786)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !33789
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !33791)
  %.not.i = icmp eq i64 %i.nv, 0
  br i1 %.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !33794
  store i64 1, ptr %i.oc, align 8, !alias.scope !33799, !noalias !33800
  %i.oe = trunc nuw i8 %.sroa.02.0.i.i.i.i to i1
  br i1 %i.oe, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nu)
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.dz, !noalias !33789

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i64 24, i1 false), !noalias !33804
  br label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.dy, %bb.dx
  %.sroa.0.0.copyload9.i.i = load ptr, ptr %i.ax, align 8, !noalias !33805 ; 2 uses
  %.sroa.7.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i.i, i64 16, i1 false), !noalias !33805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !33794
  %.not.i38.i = icmp eq ptr %.sroa.0.0.copyload9.i.i, null
  br i1 %.not.i38.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i, label %bb.eb

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !33789
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bg)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_18SpecFromIterNestedB11_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit.i unwind label %bb.dr, !noalias !33751

bb.ea:                                            ; preds = %bb.ed
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.eo unwind label %bb.en, !noalias !33789

bb.eb:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !33789
  store ptr %.sroa.0.0.copyload9.i.i, ptr %i.az, align 8, !noalias !33789
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !33789
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.nv, i64 4) ; 3 uses
  %i.oh = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.nv, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.ed, label %bb.ec, !prof !5898

bb.ec:                                            ; preds = %bb.eb
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.ee, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.ec
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !33806
  %i.oj = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.oh, i64 noundef range(i64 1, 17) 8) #56, !noalias !33806 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.eb
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.eb ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.oh) #61
          to label %.noexc6.i.i unwind label %bb.ea, !noalias !33789

.noexc6.i.i:                                      ; preds = %bb.ed
  unreachable

bb.ee:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.ec
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ec ], [ %i.oj, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.ec ], [ %..i.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %i.ol = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.ol)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !33789
  store i64 %.sroa.4.0.i.i.i, ptr %i.ba, align 8, !noalias !33789
  %.sroa.4.0..sroa_idx.i.i165 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i165, align 8, !noalias !33789
  %.sroa.6.0..sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i39.i, align 8, !noalias !33789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !33789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !33789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !noalias !33809
  call void @llvm.experimental.noalias.scope.decl(metadata !33810)
  call void @llvm.experimental.noalias.scope.decl(metadata !33813)
  call void @llvm.experimental.noalias.scope.decl(metadata !33815)
  call void @llvm.experimental.noalias.scope.decl(metadata !33818)
  %i.om = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !33820, !noalias !33823, !noundef !8 ; 7 uses
  %.promoted.i.i.i.i = load i64, ptr %i.om, align 8, !alias.scope !33825, !noalias !33826 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %i.op = icmp ult i64 %.promoted.i.i.i.i, %i.oo
  br i1 %i.op, label %.lr.ph.i.i.i.i170, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i

.lr.ph.i.i.i.i170:                                ; preds = %bb.ee
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.or = load i8, ptr %i.oq, align 8, !range !4841, !alias.scope !33820, !noalias !33827, !noundef !8
  %i.os = trunc nuw i8 %i.or to i1
  %i.ot = load ptr, ptr %i.ay, align 8, !alias.scope !33820, !noalias !33827, !nonnull !8, !noundef !8 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !33825, !noalias !33826
  %.sroa.7.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  br i1 %i.os, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i: ; preds = %.lr.ph.i.i.i.i170, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i
  %i.ow = phi ptr [ %i.pf, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.i170 ]
  %i.ox = phi i64 [ %i.ph, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i170 ] ; 6 uses
  %.val1112.us.i.i.i.i = phi i64 [ %i.oy, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i170 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !33835
  %i.oy = add nuw i64 %.val1112.us.i.i.i.i, 1     ; 5 uses
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %.val1112.us.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.oz, i64 24, i1 false), !noalias !33836
  %.sroa.0.0.copyload6.us.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !33837 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !33835
  %.not.us.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload6.us.i.i.i.i, null
  br i1 %.not.us.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, label %bb.ef

bb.ef:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !33838
  store ptr %.sroa.0.0.copyload6.us.i.i.i.i, ptr %i.aw, align 8, !noalias !33838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pa, i64 16, i1 false), !noalias !33838
  %i.pb = icmp samesign ult i64 %i.ox, 384307168202282326
  call void @llvm.assume(i1 %i.pb)
  %i.pc = load i64, ptr %i.ba, align 8, !range !613, !alias.scope !33839, !noalias !33840, !noundef !8
  %i.pd = icmp eq i64 %i.ox, %i.pc
  br i1 %i.pd, label %bb.eg, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.pe = sub i64 %i.oo, %i.oy
  %0 = call i64 @llvm.uadd.sat.i64(i64 %i.pe, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.ox, i64 noundef range(i64 1, 0) %0, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i_crit_edge.i.i unwind label %.split.us.i.i.i.i, !noalias !33840

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i_crit_edge.i.i: ; preds = %bb.eg
  %.pre27.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i165, align 8, !alias.scope !33839, !noalias !33840
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i_crit_edge.i.i, %bb.ef
  %i.pf = phi ptr [ %.pre27.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i_crit_edge.i.i ], [ %i.ow, %bb.ef ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %i.pf, i64 %i.ox
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !33838
  %i.ph = add nuw nsw i64 %i.ox, 1                ; 3 uses
  store i64 %i.ph, ptr %.sroa.6.0..sroa_idx.i39.i, align 8, !alias.scope !33839, !noalias !33840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !33838
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %exitcond14.not.i.i.i.i = icmp eq i64 %i.oy, %i.oo
  br i1 %exitcond14.not.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.eg
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i170, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %i.pj = phi ptr [ %i.ps, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.i170 ]
  %i.pk = phi i64 [ %i.pu, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i170 ] ; 6 uses
  %.val1112.i.i.i.i = phi i64 [ %i.pl, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i170 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !33835
  %i.pl = add nuw i64 %.val1112.i.i.i.i, 1        ; 6 uses
  %i.pm = icmp ult i64 %.val1112.i.i.i.i, %i.ov
  call void @llvm.assume(i1 %i.pm)
  %i.pn = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %.val1112.i.i.i.i
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pn)
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i unwind label %bb.eh, !noalias !33838

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.ej, %bb.eh
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.po, %bb.eh ], [ %.us-phi.i.i.i.i, %bb.ej ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ay) #62
          to label %.body.i.i unwind label %bb.el, !noalias !33826

bb.eh:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.po = landingpad { ptr, i32 }
          cleanup
  store i64 %i.pl, ptr %i.om, align 8, !alias.scope !33820, !noalias !33827
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i
  %.sroa.0.0.copyload6.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !33837 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i.i.i, i64 16, i1 false), !noalias !33837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !33835
  %.not.i.i7.i.i = icmp eq ptr %.sroa.0.0.copyload6.i.i.i.i, null
  br i1 %.not.i.i7.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, label %bb.ei

bb.ei:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !33838
  store ptr %.sroa.0.0.copyload6.i.i.i.i, ptr %i.aw, align 8, !noalias !33838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i, i64 16, i1 false), !noalias !33838
  %i.pp = icmp samesign ult i64 %i.pk, 384307168202282326
  call void @llvm.assume(i1 %i.pp)
  %i.pq = load i64, ptr %i.ba, align 8, !range !613, !alias.scope !33839, !noalias !33840, !noundef !8
  %i.pr = icmp eq i64 %i.pk, %i.pq
  br i1 %i.pr, label %bb.ek, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i, %bb.ei
  %i.ps = phi ptr [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i ], [ %i.pj, %bb.ei ] ; 2 uses
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pt, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !33838
  %i.pu = add nuw nsw i64 %i.pk, 1                ; 3 uses
  store i64 %i.pu, ptr %.sroa.6.0..sroa_idx.i39.i, align 8, !alias.scope !33839, !noalias !33840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !33838
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.pl, %i.oo
  br i1 %exitcond.not.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, label %.lr.ph.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ek
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ej:                                            ; preds = %.split.i.i.i.i, %.split.us.i.i.i.i
  %storemerge.i.i171 = phi i64 [ %i.pl, %.split.i.i.i.i ], [ %i.oy, %.split.us.i.i.i.i ]
  %.us-phi.i.i.i.i = phi { ptr, i32 } [ %i.pv, %.split.i.i.i.i ], [ %i.pi, %.split.us.i.i.i.i ]
  store i64 %storemerge.i.i171, ptr %i.om, align 8, !alias.scope !33820, !noalias !33827
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i unwind label %bb.el, !noalias !33838

bb.ek:                                            ; preds = %bb.ei
  %i.pw = sub i64 %i.oo, %i.pl
  %1 = call i64 @llvm.uadd.sat.i64(i64 %i.pw, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.pk, i64 noundef range(i64 1, 0) %1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i unwind label %.split.i.i.i.i, !noalias !33840

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i: ; preds = %bb.ek
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i165, align 8, !alias.scope !33839, !noalias !33840
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i

bb.el:                                            ; preds = %bb.ej, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !33838
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i
  %.sroa.6.0.copyload661.i = phi i64 [ %i.ph, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %i.ox, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %i.pk, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %i.pu, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ]
  %.lcssa25.sink.i.i = phi i64 [ %i.oo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %i.oy, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %i.pl, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %i.oo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ]
  store i64 %.lcssa25.sink.i.i, ptr %i.om, align 8, !alias.scope !33820, !noalias !33827
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, %bb.ee
  %.sroa.6.0.copyload6.i = phi i64 [ %.sroa.6.0.copyload661.i, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i ], [ 1, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ay)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.em, !noalias !33789

bb.em:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.em, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.py, %bb.em ], [ %.pn.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #62
          to label %.body40.i unwind label %bb.en, !noalias !33789

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !33789
  %.sroa.0.0.copyload1.i = load i64, ptr %i.ba, align 8, !noalias !33841
  %.sroa.5.0.copyload4.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i165, align 8, !noalias !33841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !33789
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_18SpecFromIterNestedB11_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit.i

bb.en:                                            ; preds = %bb.eo, %.body.i.i, %bb.ea
  %i.pz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !33789
  unreachable

bb.eo:                                            ; preds = %bb.ea, %bb.dz
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.of, %bb.dz ], [ %i.og, %bb.ea ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bg) #62
          to label %.body40.i unwind label %bb.en, !noalias !33809

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_18SpecFromIterNestedB11_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i
  %.sroa.6.0.i166 = phi i64 [ %.sroa.6.0.copyload6.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i ], [ 0, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i ] ; 6 uses
  %.sroa.5.0.i167 = phi ptr [ %.sroa.5.0.copyload4.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i168 = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i ], [ 0, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !33751
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bs)
          to label %bb.et unwind label %bb.cm

bb.ep:                                            ; preds = %.body40.i, %.body.i161
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !33751
  unreachable

bb.eq:                                            ; preds = %bb.dp, %bb.es
  %.sroa.12.0 = phi i64 [ %i.qd, %bb.es ], [ %i.nr, %bb.dp ]
  %.sroa.710.0 = phi ptr [ %i.qc, %bb.es ], [ %i.np, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !33751
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library6engine4SinkECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bn)
          to label %.thread unwind label %bb.cm

.thread:                                          ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.eu

bb.er:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !33754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !33754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !33751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.i, i64 16, i1 false), !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  %i.qb = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %.sroa.69.i)
          to label %bb.es unwind label %bb.co, !noalias !33751 ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.qc = extractvalue { ptr, i64 } %i.qb, 0
  %i.qd = extractvalue { ptr, i64 } %i.qb, 1
  br label %bb.eq

bb.et:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_18SpecFromIterNestedB11_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !33751
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.qe = icmp eq i64 %.sroa.0.0.i168, -1
  br i1 %i.qe, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %.thread, %bb.et
  %.sroa.710.127 = phi ptr [ %.sroa.710.0, %.thread ], [ %.sroa.5.0.i167, %bb.et ] ; 2 uses
  %.sroa.12.126 = phi i64 [ %.sroa.12.0, %.thread ], [ %.sroa.6.0.i166, %bb.et ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.127) ]
  br label %bb.je

bb.ev:                                            ; preds = %bb.et
  store i64 %.sroa.0.0.i168, ptr %i.dj, align 8
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %.sroa.5.0.i167, ptr %.sroa.631.0..sroa_idx32, align 8
  %.sroa.834.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %.sroa.6.0.i166, ptr %.sroa.834.0..sroa_idx35, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.experimental.noalias.scope.decl(metadata !33842)
  %i.qf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 272), align 8, !range !4841, !noalias !33845, !noundef !8
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %bb.fr, label %._crit_edge76.i

._crit_edge76.i:                                  ; preds = %bb.fr, %bb.ev
  %i.qh = phi i64 [ 1, %bb.fr ], [ %.sroa.6.0.i166, %bb.ev ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !33845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !33845
  %i.qi = icmp ult i64 %i.qh, 384307168202282326
  call void @llvm.assume(i1 %i.qi)
  %.idx.i = mul nuw nsw i64 %i.qh, 24
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i167, i64 %.idx.i ; 3 uses
  store ptr %.sroa.5.0.i167, ptr %i.aq, align 8, !noalias !33845
  %.sroa.4.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 6 uses
  store ptr %.sroa.5.0.i167, ptr %.sroa.4.0..sroa_idx.i181, align 8, !noalias !33845
  %.sroa.5.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.0.0.i168, ptr %.sroa.5.0..sroa_idx.i182, align 8, !noalias !33845
  %.sroa.6.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.qj, ptr %.sroa.6.0..sroa_idx.i183, align 8, !noalias !33845
  %i.qk = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 8), ptr %i.qk, align 8, !noalias !33845
  call void @llvm.experimental.noalias.scope.decl(metadata !33847)
  call void @llvm.experimental.noalias.scope.decl(metadata !33850)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !33852
  call void @llvm.experimental.noalias.scope.decl(metadata !33853)
  call void @llvm.experimental.noalias.scope.decl(metadata !33856)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !33859)
  %.not12.i.i.i.i.i = icmp eq i64 %i.qh, 0
  br i1 %.not12.i.i.i.i.i, label %.loopexit20.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge76.i, %.noexc5.i.i
  %i.ql = phi ptr [ %i.qm, %.noexc5.i.i ], [ %.sroa.5.0.i167, %._crit_edge76.i ] ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !33862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i64 24, i1 false), !noalias !33870
  %i.qn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 248), align 8, !range !5171, !noalias !33871, !noundef !8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.qn, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst5query6format0INtB7_5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE8call_mutBU_.exit.thread.i.i.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !33871
  %i.qo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 256), align 8, !noalias !33871, !nonnull !8, !noundef !8
  %i.qp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 264), align 8, !noalias !33871, !noundef !8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content11get_by_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qo, i64 noundef %i.qp)
          to label %bb.ey unwind label %bb.ex, !noalias !33878

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst5query6format0INtB7_5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE8call_mutBU_.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.qm, ptr %.sroa.4.0..sroa_idx.i181, align 8, !alias.scope !33879, !noalias !33880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i64 24, i1 false), !noalias !33881
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i186

bb.ex:                                            ; preds = %bb.ew
  %i.qq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.qm, ptr %.sroa.4.0..sroa_idx.i181, align 8, !alias.scope !33879, !noalias !33880
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.fq unwind label %bb.ez, !noalias !33878

bb.ey:                                            ; preds = %bb.ew
  %i.qr = load i64, ptr %i.ak, align 8, !range !6302, !noalias !33871, !noundef !8 ; 2 uses
  %i.qs = icmp eq i64 %i.qr, -1
  br i1 %i.qs, label %bb.fa, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst5query6format0INtB7_5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE8call_mutBU_.exit.i.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !33878
  unreachable

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst5query6format0INtB7_5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE8call_mutBU_.exit.i.i.i.i.i.i: ; preds = %bb.ey
  store ptr %i.qm, ptr %.sroa.4.0..sroa_idx.i181, align 8, !alias.scope !33879, !noalias !33880
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx2.i.i.i.i.i.i, i64 24, i1 false), !noalias !33881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !33871
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i186 unwind label %.loopexit.split-lp.i.i, !noalias !33852

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !33871
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.noexc5.i.i unwind label %.loopexit.i.i206, !noalias !33852
end_hunk_0
