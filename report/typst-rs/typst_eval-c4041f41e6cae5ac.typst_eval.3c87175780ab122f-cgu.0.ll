Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtCs5cbCQMMIObr_10typst_eval4code12access_field:bb.a

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !16514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16519
  br label %_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit

bb.r:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16519
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.an, %bb.am, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit: ; preds = %bb.q, %bb.n
  %i.be = load ptr, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null                 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bj = load i64, ptr %i.bi, align 8            ; 5 uses
  br i1 %i.bf, label %bb.s, label %bb.aj

bb.s:                                             ; preds = %_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %i.bh, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !16520
  %i.bm = icmp eq i64 %i.bl, 1
  %i.bn = zext i1 %i.bm to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.bn, %bb.t ], [ 1, %bb.s ] ; 2 uses
  store ptr %i.bh, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bj, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %.sroa.02.0.i.i.i.i, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.bj, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not8.i = icmp eq i64 %i.bj, 0
  br i1 %.not8.i, label %bb.u, label %bb.v, !prof !84

bb.u:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #42
          to label %bb.w unwind label %.body.thread5.i

bb.v:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i
  store i64 1, ptr %i.bq, align 8
  %i.bs = trunc nuw i8 %.sroa.02.0.i.i.i.i to i1
  br i1 %i.bs, label %bb.y, label %bb.x

.body.thread5.i:                                  ; preds = %bb.ab, %bb.u
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 15
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !4
  %.not.i42 = icmp sgt i8 %i.bu, -1
  %i.bv = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  br i1 %.not.i42, label %bb.z, label %bb.ac

bb.y:                                             ; preds = %bb.v
  %.sroa.013.0.copyload.i = load ptr, ptr %i.bh, align 8
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.515.0.copyload.i = load i64, ptr %.sroa.515.0..sroa_idx.i, align 8
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %.val.i = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.val27.i = load i64, ptr %i.bv, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.bx = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.ab, label %bb.ad, !prof !84

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i) #42
          to label %.noexc.i unwind label %.body.thread5.i

.noexc.i:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.x
  %.sroa.019.0.copyload.i = load ptr, ptr %i.bh, align 1
  %.sroa.420.0.copyload.i = load i64, ptr %i.bv, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.z, %bb.y
  %.sroa.515.0.i = phi i64 [ %.sroa.515.0.copyload.i, %bb.y ], [ %.sroa.420.0.copyload.i, %bb.ac ], [ %.val27.i, %bb.aa ], [ %.val27.i, %bb.z ]
  %.sroa.013.0.i = phi ptr [ %.sroa.013.0.copyload.i, %bb.y ], [ %.sroa.019.0.copyload.i, %bb.ac ], [ %.val.i, %bb.aa ], [ inttoptr (i64 16 to ptr), %bb.z ]
  store ptr %.sroa.013.0.i, ptr %i.d, align 8
  %.sroa.3.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.515.0.i, ptr %.sroa.3.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !16523)
  call void @llvm.experimental.noalias.scope.decl(metadata !16526)
  %i.bz = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %5)
          to label %bb.ag unwind label %bb.af, !noalias !16528 ; 2 uses

bb.ae:                                            ; preds = %bb.af
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16528
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.d) #44
          to label %.body.thread.i unwind label %bb.ae, !noalias !16523

bb.ag:                                            ; preds = %bb.ad
  %i.cc = extractvalue { i64, i64 } %i.bz, 1
  %i.cd = extractvalue { i64, i64 } %i.bz, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.ce, align 8, !alias.scope !16523, !noalias !16526
  store i64 %i.cd, ptr %i.c, align 8, !alias.scope !16523, !noalias !16526
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cc, ptr %i.cf, align 8, !alias.scope !16523, !noalias !16526
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !16528
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.ch, align 8, !alias.scope !16523, !noalias !16526
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ci, align 8, !alias.scope !16523, !noalias !16526
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.cj, align 8, !alias.scope !16523, !noalias !16526
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.ck, align 8, !alias.scope !16523, !noalias !16526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic10with_hintsINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1k_6string9EcoStringEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.b)
          to label %.noexc43 unwind label %bb.j

.noexc43:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cl = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.ai unwind label %bb.j      ; 2 uses

.body.thread.i:                                   ; preds = %bb.af, %.body.thread5.i
  %eh.lpad-body4.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread5.i ], [ %i.cb, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #44
          to label %.body40 unwind label %bb.ah

bb.ah:                                            ; preds = %.body.thread.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ai:                                            ; preds = %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cn = extractvalue { ptr, i64 } %i.cl, 0
  %i.co = extractvalue { ptr, i64 } %i.cl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr inttoptr (i64 16 to ptr), ptr %i.h, align 8, !alias.scope !16529, !noalias !16534
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false), !alias.scope !16529, !noalias !16534
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainRINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBN_4diag16SourceDiagnosticEE17unwrap_or_defaultCs5cbCQMMIObr_10typst_eval.exit

bb.aj:                                            ; preds = %_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !16534)
  store ptr %i.be, ptr %i.h, align 8, !alias.scope !16536
  %.sroa.6.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bh, ptr %.sroa.6.0..sroa_idx60, align 8, !alias.scope !16536
  %.sroa.762.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bj, ptr %.sroa.762.0..sroa_idx63, align 8, !alias.scope !16536
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainRINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBN_4diag16SourceDiagnosticEE17unwrap_or_defaultCs5cbCQMMIObr_10typst_eval.exit

bb.ak:                                            ; preds = %bb.ap
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body40

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainRINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBN_4diag16SourceDiagnosticEE17unwrap_or_defaultCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.aj, %bb.ai
  %.sroa.9.0.in = phi ptr [ %i.cn, %bb.ai ], [ %i.bh, %bb.aj ] ; 3 uses
  %.sroa.13.0 = phi i64 [ %i.co, %bb.ai ], [ %i.bj, %bb.aj ] ; 3 uses
  invoke void @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7elementNtB2_7Element17field_from_styles(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, i8 noundef %i.ar, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainRINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBN_4diag16SourceDiagnosticEE17unwrap_or_defaultCs5cbCQMMIObr_10typst_eval.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cr = load i64, ptr %i.i, align 8, !range !20, !noundef !4
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.bf, label %bb.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %.sroa.9.0.in, i64 %.sroa.13.0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit unwind label %bb.j

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br i1 %i.bf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %.sroa.9.0.in, ptr %i.ae, align 8
  store i64 %.sroa.13.0, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.ar unwind label %bb.ak

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %i.ad, i64 %i.ac)
          to label %bb.as unwind label %bb.b

bb.as:                                            ; preds = %_RNvXs7_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB7_11foundations5value5ValueNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtB5_2AtB1h_E2atCs5cbCQMMIObr_10typst_eval.exit, %bb.ar, %bb.h
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %2)
  ret void

bb.at:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainRINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBN_4diag16SourceDiagnosticEE17unwrap_or_defaultCs5cbCQMMIObr_10typst_eval.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bf, label %bb.au, label %.body40

bb.au:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %.sroa.9.0.in, i64 %.sroa.13.0)
          to label %.body40 unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %.body40, %.body
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.aw:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 2 uses
  %i.a = tail call { i64, ptr } @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.tr) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 5 uses
  switch i64 %i.b, label %.preheader [
    i64 46, label %bb.g
    i64 20, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariantEB2r_.exit
    i64 30, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariantEB2r_.exit
    i64 45, label %bb.f
  ]

.preheader:                                       ; preds = %tailrecurse, %bb.c
  %.sroa.03.0.i = phi ptr [ %i.n, %bb.c ], [ %.tr, %tailrecurse ] ; 3 uses
  %i.d = load i8, ptr %.sroa.03.0.i, align 8, !range !2204, !noundef !4
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 1, label %bb.b
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noalias !16537, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noalias !16537, !noundef !4
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.j
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit

bb.c:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.preheader

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit: ; preds = %.preheader, %.preheader, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.k, %bb.b ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit ], [ %i.p, %bb.e ] ; 3 uses
  %i.o = icmp eq ptr %.sroa.0.0, %.sroa.3.0.i     ; 3 uses
  br i1 %i.o, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariantEB2r_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.q = tail call fastcc noundef zeroext i1 @_RNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0), !noalias !16540, !inline_history !16543
  br i1 %i.q, label %bb.d, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariantEB2r_.exit

bb.f:                                             ; preds = %tailrecurse
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.r = tail call { i64, ptr } @_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess6target(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  %i.u = tail call noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef %i.s, ptr noundef %i.t)
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.f, %bb.h
  %.tr.be = phi ptr [ %i.u, %bb.f ], [ %i.aa, %bb.h ]
  br label %tailrecurse

bb.g:                                             ; preds = %tailrecurse
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.v = tail call { i64, ptr } @_RNvMsW_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_8FuncCall6callee(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  %i.y = tail call noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef %i.w, ptr noundef %i.x)
  %i.z = tail call fastcc noundef zeroext i1 @_RNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
  br i1 %i.z, label %bb.h, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariantEB2r_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtCs5cbCQMMIObr_10typst_eval4flow12is_invariantEB2r_.exit: ; preds = %bb.g, %tailrecurse, %tailrecurse, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ false, %tailrecurse ], [ false, %tailrecurse ], [ false, %bb.g ]
  ret i1 %.sroa.0.0.shrunk

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMsW_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_8FuncCall4args(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  br label %tailrecurse.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5cbCQMMIObr_10typst_eval6access11access_dict(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = tail call { i64, ptr } @_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess6target(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1
  call void @_RNvXNtCs5cbCQMMIObr_10typst_eval6accessNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB2_6Access6access(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, i64 noundef %i.t, ptr noundef %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %1)
  %i.v = load ptr, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.w, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.v, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.w, align 8, !nonnull !4, !align !462, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.aa = load i64, ptr %i.z, align 8, !range !94, !noundef !4 ; 2 uses
  %i.ab = icmp ne i64 %i.aa, 30
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, 26
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.af = tail call noundef nonnull align 8 ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value2ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
  store ptr %i.af, ptr %i.q, align 8
  %i.ag = tail call { i64, ptr } @_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess6target(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  %i.aj = tail call noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef %i.ah, ptr noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !range !19, !noundef !4 ; 3 uses
  %i.am = load i64, ptr %i.z, align 8, !range !94, !noundef !4 ; 3 uses
  %i.an = icmp ne i64 %i.am, 30
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %i.am, -2
  %i.ap = icmp samesign ugt i64 %i.am, 1
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 28
  switch i64 %i.aq, label %bb.f [
    i64 13, label %bb.g
    i64 21, label %bb.g
    i64 25, label %bb.g
    i64 26, label %bb.g
    i64 28, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.q, align 8, !nonnull !4, !align !462, !noundef !4 ; 5 uses
  %i.as = icmp eq ptr %i.ar, @_RNvNvXs7_NtNtCsdaEETE4DqmE_13typst_library11foundations7versionNtB7_7VersionNtNtB9_2ty10NativeType4data4DATA
  %i.at = icmp eq ptr %i.ar, @_RNvNvXsd_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB7_6LengthNtNtNtBb_11foundations2ty10NativeType4data4DATA
  %or.cond = or i1 %i.as, %i.at
  %i.au = icmp eq ptr %i.ar, @_RNvNvXso_NtNtCsdaEETE4DqmE_13typst_library6layout3relNtB7_3RelNtNtNtBb_11foundations2ty10NativeType4data4DATA
  %or.cond104 = or i1 %i.au, %or.cond
  %i.av = icmp eq ptr %i.ar, @_RNvNvXsf_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB7_6StrokeNtNtNtBb_11foundations2ty10NativeType4data4DATA
  %or.cond105 = or i1 %i.av, %or.cond104
  %i.aw = icmp eq ptr %i.ar, @_RNvNvXsB_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB7_9AlignmentNtNtNtBb_11foundations2ty10NativeType4data4DATA
  %or.cond106 = or i1 %i.aw, %or.cond105
  br i1 %or.cond106, label %select.unfold, label %bb.o

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
end_hunk_0
begin_hunk_1_@_RNvXs4_NtCs5cbCQMMIObr_10typst_eval4flowNtNtCs5PEMdK7bMAG_12typst_syntax3ast10FuncReturnNtB7_4Eval4eval:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !range !19, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.n, ptr %.sroa.545.0..sroa_idx46, align 8
  %.sroa.648.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %.sroa.648.0..sroa_idx49, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.g, %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs5cbCQMMIObr_10typst_eval4mathNtNtCs5PEMdK7bMAG_12typst_syntax3ast13MathShorthandNtB7_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(384) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13MathShorthand3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations6symbolNtB2_6Symbol12runtime_char(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx, i32 noundef %i.a)
  store i64 15, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs5cbCQMMIObr_10typst_eval6markupNtNtCs5PEMdK7bMAG_12typst_syntax3ast9ShorthandNtB7_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(384) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9Shorthand3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations6symbolNtB2_6Symbol12runtime_char(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx, i32 noundef %i.a)
  store i64 15, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 5)
  %i.b = load i64, ptr %0, align 8, !range !862, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 6, ptr noundef nonnull @340, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @341) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !862, !noundef !4
  %.not1 = icmp eq i64 %i.f, -1
  br i1 %.not1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 6, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 6, ptr noundef nonnull @340, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @341) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast5FloatNtB7_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(384) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_RNvMsD_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_5Float3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store i64 6, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs5cbCQMMIObr_10typst_eval4mathNtNtCs5PEMdK7bMAG_12typst_syntax3ast14MathAlignPointNtB7_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(384) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMNtCsdaEETE4DqmE_13typst_library4mathNtB2_14AlignPointElem6shared()
  tail call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs5cbCQMMIObr_10typst_eval6markupNtNtCs5PEMdK7bMAG_12typst_syntax3ast10SmartQuoteNtB7_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 16              ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 8 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store i8 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 81
  store i8 2, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 82
  store i8 2, ptr %i.g, align 2
  store i64 -1, ptr %i.c, align 8
  %i.h = invoke noundef zeroext i1 @_RNvMs8_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_10SmartQuote6double(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text10smartquote14SmartQuoteElemECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c) #44
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = zext i1 %i.h to i8
  store i8 %i.j, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18987
  invoke void @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.h, !noalias !18987

bb.d:                                             ; preds = %bb.c
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !18987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18987
  store i128 0, ptr %i.a, align 16, !noalias !18987
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.68.0..sroa_idx.i, align 16, !noalias !18987
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i128 0, ptr %.sroa.8.0..sroa_idx.i, align 16, !noalias !18987
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 1, ptr %.sroa.9.0..sroa_idx.i, align 16, !noalias !18987
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !18991
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !18992
  %i.l = tail call noundef align 16 dereferenceable_or_null(192) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !18992 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtNtB9_4text10smartquote14SmartQuoteElemECs5cbCQMMIObr_10typst_eval.exit, !prof !84

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 192) #42
          to label %.noexc.i unwind label %bb.f, !noalias !18987

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtNtBK_4text10smartquote14SmartQuoteElemEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 16 dereferenceable(192) %i.a) #44
          to label %common.resume unwind label %bb.g, !noalias !18987

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18987
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.p, %bb.h ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text10smartquote14SmartQuoteElemECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.d) #44
          to label %common.resume unwind label %bb.i, !noalias !18991

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18987
  unreachable

_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtNtB9_4text10smartquote14SmartQuoteElemECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.l, ptr noundef nonnull align 16 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !18987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text10smartquote1__NtB9_14SmartQuoteElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.57.0..sroa_idx, align 8
  ret void

bb.j:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast7NumericNtB7_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.4 = alloca i64, align 8                  ; 12 uses
  %.sroa.13 = alloca i64, align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.a = tail call { double, i8 } @_RNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_7Numeric3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { double, i8 } %i.a, 0      ; 12 uses
  %i.c = extractvalue { double, i8 } %i.a, 1
  switch i8 %i.c, label %default.unreachable50.i [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
  ]

default.unreachable50.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = fmul double %i.b, 1.270000e+02           ; 2 uses
  %.inv49.i = fcmp ord double %i.d, 0.000000e+00
  %3 = bitcast double %i.d to i64
  %4 = select i1 %.inv49.i, i64 %3, i64 0
  store i64 %4, ptr %.sroa.4, align 8, !alias.scope !18995
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

bb.c:                                             ; preds = %bb.a
  %i.e = fmul double %i.b, 3.600000e+02           ; 2 uses
  %.inv48.i = fcmp ord double %i.e, 0.000000e+00
  %5 = bitcast double %i.e to i64
  %6 = select i1 %.inv48.i, i64 %5, i64 0
  store i64 %6, ptr %.sroa.4, align 8, !alias.scope !18995
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

bb.d:                                             ; preds = %bb.a
  %i.f = fmul double %i.b, 3.600000e+03           ; 2 uses
  %.inv47.i = fcmp ord double %i.f, 0.000000e+00
  %7 = bitcast double %i.f to i64
  %8 = select i1 %.inv47.i, i64 %7, i64 0
  store i64 %8, ptr %.sroa.4, align 8, !alias.scope !18995
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

bb.e:                                             ; preds = %bb.a
  %i.g = fmul double %i.b, 9.144000e+03           ; 2 uses
  %.inv46.i = fcmp ord double %i.g, 0.000000e+00
  %9 = bitcast double %i.g to i64
  %10 = select i1 %.inv46.i, i64 %9, i64 0
  store i64 %10, ptr %.sroa.4, align 8, !alias.scope !18995
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

bb.f:                                             ; preds = %bb.a
  %.inv45.i = fcmp ord double %i.b, 0.000000e+00
  %spec.store.select4.i = select i1 %.inv45.i, double %i.b, double 0.000000e+00
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

bb.g:                                             ; preds = %bb.a
  %i.h = fmul double %i.b, f0x3F91DF46A2529D39    ; 2 uses
  %.inv44.i = fcmp ord double %i.h, 0.000000e+00
  %spec.store.select5.i = select i1 %.inv44.i, double %i.h, double 0.000000e+00
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

bb.h:                                             ; preds = %bb.a
  %.inv43.i = fcmp ord double %i.b, 0.000000e+00
  %spec.store.select6.i = select i1 %.inv43.i, double %i.b, double 0.000000e+00
  store i64 0, ptr %.sroa.4, align 8, !alias.scope !18995
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

bb.i:                                             ; preds = %bb.a
  %.inv42.i = fcmp ord double %i.b, 0.000000e+00
  %spec.store.select7.i = select i1 %.inv42.i, double %i.b, double 0.000000e+00
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

bb.j:                                             ; preds = %bb.a
  %i.i = fdiv double %i.b, 1.000000e+02           ; 2 uses
  %.inv.i = fcmp ord double %i.i, 0.000000e+00
  %spec.store.select8.i = select i1 %.inv.i, double %i.i, double 0.000000e+00
  br label %_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit

_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7numeric.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sink52.i.sroa.phi = phi ptr [ %.sroa.4, %bb.j ], [ %.sroa.4, %bb.i ], [ %.sroa.13, %bb.h ], [ %.sroa.4, %bb.g ], [ %.sroa.4, %bb.f ], [ %.sroa.13, %bb.e ], [ %.sroa.13, %bb.d ], [ %.sroa.13, %bb.c ], [ %.sroa.13, %bb.b ]
  %spec.store.select8.sink.i = phi double [ %spec.store.select8.i, %bb.j ], [ %spec.store.select7.i, %bb.i ], [ %spec.store.select6.i, %bb.h ], [ %spec.store.select5.i, %bb.g ], [ %spec.store.select4.i, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sink.i = phi i64 [ 9, %bb.j ], [ 11, %bb.i ], [ 7, %bb.h ], [ 8, %bb.g ], [ 8, %bb.f ], [ 7, %bb.e ], [ 7, %bb.d ], [ 7, %bb.c ], [ 7, %bb.b ]
  store double %spec.store.select8.sink.i, ptr %.sink52.i.sroa.phi, align 8, !alias.scope !18995
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload = load i64, ptr %.sroa.4, align 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0.copyload = load i64, ptr %.sroa.13, align 8
  store i64 %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCs5cbCQMMIObr_10typst_eval4mathNtNtCs5PEMdK7bMAG_12typst_syntax3ast13MathDelimitedNtB7_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(384) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.q = tail call { i64, ptr } @_RNvMsu_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13MathDelimited4open(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1
  store i64 %i.r, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8
  call void @_RNvXsb_NtCs5cbCQMMIObr_10typst_eval4mathNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB5_7ExprExt12eval_display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
  %i.u = load ptr, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.ab, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  store ptr %i.u, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ac = invoke noundef nonnull align 8 ptr @_RNvMsu_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13MathDelimited4body(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.f, %.noexc, %bb.e, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18998
  %i.ae = invoke { ptr, ptr } @_RNvMsl_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4Math5exprs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %.noexc unwind label %bb.d, !inline_history !13701 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.af = extractvalue { ptr, ptr } %i.ae, 0
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1
  store ptr %i.af, ptr %i.b, align 8, !noalias !18998
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !18998
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.ai, align 8, !noalias !18998
  invoke fastcc void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENvMs2_NtB24_3astNtB2U_4Expr15cast_with_spaceENCNvXs_NtCs5cbCQMMIObr_10typst_eval4mathNtB2U_4MathNtB3G_4Eval4eval0ENtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentINtNtB6_6result6ResultzINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4K_4diag16SourceDiagnosticEENCINvXso_B5J_IB5H_INtNtCs1xwejQucwHj_5alloc3vec3VecB4E_EB63_EINtNtNtB4_6traits7collect12FromIteratorIB5H_B4E_B63_EE9from_iterBQ_E0B7r_EB3G_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %.noexc50 unwind label %bb.d, !inline_history !13701

.noexc50:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18998
  %i.aj = load i64, ptr %i.c, align 8, !range !802, !noalias !18998, !noundef !4 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !18998 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !18998 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18998
  br i1 %i.ak, label %.thread64, label %bb.f

.thread64:                                        ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %.noexc50
  store i64 %i.aj, ptr %i.a, align 8, !noalias !18998
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.am, ptr %.sroa.6.0..sroa_idx2.i, align 8, !noalias !18998
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ao, ptr %.sroa.8.0..sroa_idx4.i, align 8, !noalias !18998
  invoke fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtCs1xwejQucwHj_5alloc3vec3VecBV_EECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.d, !inline_history !13701

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !noalias !19003 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !19003 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !19003 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread64, %bb.g
  %.sroa.6.069 = phi ptr [ %i.am, %.thread64 ], [ %.sroa.6.0.copyload, %bb.g ]
  %.sroa.9.068 = phi i64 [ %i.ao, %.thread64 ], [ %.sroa.9.0.copyload, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.069, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.068, ptr %i.ar, align 8
  store ptr null, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit

bb.i:                                             ; preds = %bb.g
  store ptr %.sroa.0.0.copyload, ptr %i.m, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.517.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.as = invoke { i64, ptr } @_RNvMsu_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13MathDelimited5close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.j unwind label %bb.r       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1
  store i64 %i.at, ptr %i.j, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.au, ptr %i.av, align 8
  invoke void @_RNvXsb_NtCs5cbCQMMIObr_10typst_eval4mathNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB5_7ExprExt12eval_display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.bd, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit unwind label %bb.d

end_hunk_1
