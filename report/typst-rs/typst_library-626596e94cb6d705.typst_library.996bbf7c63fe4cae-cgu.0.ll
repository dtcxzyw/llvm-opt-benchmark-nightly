Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_library-626596e94cb6d705.typst_library.996bbf7c63fe4cae-cgu.0?download=true
inline.NumInlined: 84061
inline.NumDeleted: 35720
loop-unroll.NumCompletelyUnrolled: 240
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 371
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RNvMsc_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8Gradient5sharp:bb.a
  store ptr %.sroa.5201.0, ptr %.sroa.011.sroa.4.0..sroa_idx, align 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.7202.0, ptr %.sroa.011.sroa.5.0..sroa_idx, align 8
  %.sroa.011.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.011.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8203, i64 20, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store double %i.dn, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i8 0, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 97
  store i8 %i.fo, ptr %.sroa.7.0..sroa_idx, align 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !168239
  %i.fr = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !168239 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.bb, label %bb.be, !prof !225

bb.bb:                                            ; preds = %_RNvXs17_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_10ColorSpaceNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #99
          to label %.noexc159 unwind label %bb.bc

.noexc159:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(88) %i.fq)
          to label %common.resume unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102
  unreachable

bb.be:                                            ; preds = %_RNvXs17_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_10ColorSpaceNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fr, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bq, %bb.bl, %bb.be
  %.sroa.6.0 = phi ptr [ %i.fr, %bb.be ], [ %i.gd, %bb.bl ], [ %i.gm, %bb.bq ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dj, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0, ptr %i.fw, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.br

bb.bg:                                            ; preds = %bb.ck, %bb.cg, %bb.ce, %bb.bs, %bb.bm, %bb.bh, %bb.ba
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102
  unreachable

bb.bh:                                            ; preds = %bb.as
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtB1f_6layout5ratio5RatioEEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #101
          to label %common.resume unwind label %bb.bg

_RNvXs17_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_10ColorSpaceNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit141: ; preds = %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i127, %bb.an
  %.sroa.5206.0 = phi ptr [ %i.em, %bb.an ], [ %.sroa.5.sroa.0.0.i129, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i127 ]
  %.sroa.7207.0 = phi i64 [ undef, %bb.an ], [ %.sroa.5.sroa.4.0.i128, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i127 ]
  %.sroa.0205.0 = phi i64 [ -1, %bb.an ], [ %.sroa.0.0.i130, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i127 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dl, i64 137
  %i.ga = load i8, ptr %i.fz, align 1, !range !7436, !noundef !12
  %.sroa.013.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 1, ptr %i.f, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %.sroa.0205.0, ptr %i.gc, align 8
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.5206.0, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.7207.0, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8
  %.sroa.013.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.013.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8208, i64 20, i1 false)
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store double %i.dn, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store <2 x double> %i.ed, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store <2 x double> %i.ef, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store double %i.eh, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 137
  store i8 %i.ga, ptr %.sroa.12.0..sroa_idx, align 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !168242
  %i.gd = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !168242 ; 3 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.bi, label %bb.bl, !prof !225

bb.bi:                                            ; preds = %_RNvXs17_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_10ColorSpaceNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit141
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #99
          to label %.noexc161 unwind label %bb.bj

.noexc161:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(128) %i.gc)
          to label %common.resume unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102
  unreachable

bb.bl:                                            ; preds = %_RNvXs17_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_10ColorSpaceNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.gd, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bf

bb.bm:                                            ; preds = %bb.az
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtB1f_6layout5ratio5RatioEEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #101
          to label %common.resume unwind label %bb.bg

_RNvXs17_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_10ColorSpaceNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit158: ; preds = %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i144, %bb.au
  %.sroa.0210.0 = phi i64 [ -1, %bb.au ], [ %.sroa.0.0.i147, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i144 ]
  %.sroa.7212.0 = phi i64 [ undef, %bb.au ], [ %.sroa.5.sroa.4.0.i145, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i144 ]
  %.sroa.5211.0 = phi ptr [ %i.fc, %bb.au ], [ %.sroa.5.sroa.0.0.i146, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i144 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dl, i64 113
  %i.gj = load i8, ptr %i.gi, align 1, !range !7436, !noundef !12
  %.sroa.018.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 1, ptr %i.e, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %.sroa.0210.0, ptr %i.gl, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.5211.0, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.7212.0, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.018.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.018.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8213, i64 20, i1 false)
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store double %i.dn, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store <2 x double> %i.ex, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i8 0, ptr %.sroa.822.0..sroa_idx, align 8
  %.sroa.923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 113
  store i8 %i.gj, ptr %.sroa.923.0..sroa_idx, align 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !168245
  %i.gm = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !168245 ; 3 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.bn, label %bb.bq, !prof !225

bb.bn:                                            ; preds = %_RNvXs17_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_10ColorSpaceNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit158
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #99
          to label %.noexc164 unwind label %bb.bo

.noexc164:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(104) %i.gl)
          to label %common.resume unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102
  unreachable

bb.bq:                                            ; preds = %_RNvXs17_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_10ColorSpaceNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.gm, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bf

bb.br:                                            ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_.exit170, %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_.exit, %bb.bf
  ret void

bb.bs:                                            ; preds = %bb.ad
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtB1f_6layout5ratio5RatioEEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #101
          to label %common.resume unwind label %bb.bg

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.ca
  %.sroa.085.0262 = phi i64 [ %i.gr, %bb.ca ], [ 1, %.peel.next.preheader ] ; 3 uses
  %i.gr = add nuw i64 %.sroa.085.0262, 1          ; 3 uses
  %i.gs = shl nuw nsw i64 %.sroa.085.0262, 1      ; 4 uses
  %i.gt = uitofp i64 %.sroa.085.0262 to double
  %i.gu = load i64, ptr %i.m, align 8, !noundef !12
  %i.gv = uitofp i64 %i.gu to double
  %i.gw = fdiv double %i.gt, %i.gv
  %i.gx = load i64, ptr %i.bd, align 8, !alias.scope !168248, !noundef !12 ; 3 uses
  %i.gy = load i64, ptr %i.j, align 8, !range !33, !alias.scope !168248, !noundef !12
  %i.gz = icmp eq i64 %i.gx, %i.gy
  br i1 %i.gz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.peel.next
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs4oTdlQb0Chk_6moxcms(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #105
          to label %bb.bu unwind label %.loopexit

bb.bu:                                            ; preds = %bb.bt, %.peel.next
  %i.ha = load ptr, ptr %i.bc, align 8, !alias.scope !168248, !nonnull !12, !noundef !12
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gx
  store double %i.gw, ptr %i.hb, align 8
  %i.hc = add i64 %i.gx, 1                        ; 3 uses
  store i64 %i.hc, ptr %i.bd, align 8, !alias.scope !168248
  %i.hd = icmp ult i64 %i.gs, %i.hc
  br i1 %i.hd, label %bb.bw, label %.loopexit281.invoke

.loopexit281.invoke:                              ; preds = %bb.bz, %bb.bu
  %i.he = phi i64 [ %i.gs, %bb.bu ], [ %i.hl, %bb.bz ]
  %i.hf = phi i64 [ %i.hc, %bb.bu ], [ %i.hu, %bb.bz ]
  %i.hg = phi ptr [ @5486, %bb.bu ], [ @5487, %bb.bz ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.he, i64 noundef %i.hf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hg) #99
          to label %.loopexit281.cont unwind label %.loopexit.split-lp

.loopexit281.cont:                                ; preds = %.loopexit281.invoke
  unreachable

bb.bv:                                            ; preds = %bb.s
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.hh = load ptr, ptr %i.bc, align 8, !nonnull !12, !noundef !12
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gs ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !noundef !12
  %i.hk = fadd double %i.bg, %i.hj
  store double %i.hk, ptr %i.hi, align 8
  %.pre = load i64, ptr %i.bd, align 8, !alias.scope !168134 ; 3 uses
  %i.hl = or disjoint i64 %i.gs, 1                ; 4 uses
  %i.hm = uitofp i64 %i.gr to double
  %i.hn = load i64, ptr %i.m, align 8, !noundef !12
  %i.ho = uitofp i64 %i.hn to double
  %i.hp = fdiv double %i.hm, %i.ho
  %i.hq = load i64, ptr %i.j, align 8, !range !33, !alias.scope !168134, !noundef !12
  %i.hr = icmp eq i64 %.pre, %i.hq
  br i1 %i.hr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs4oTdlQb0Chk_6moxcms(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #105
          to label %bb.by unwind label %.loopexit

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.hs = load ptr, ptr %i.bc, align 8, !alias.scope !168134, !nonnull !12, !noundef !12
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.pre
  store double %i.hp, ptr %i.ht, align 8
  %i.hu = add i64 %.pre, 1                        ; 3 uses
  store i64 %i.hu, ptr %i.bd, align 8, !alias.scope !168134
  %i.hv = icmp ult i64 %i.hl, %i.bk
  br i1 %i.hv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.hw = icmp ult i64 %i.hl, %i.hu
  br i1 %i.hw, label %bb.cb, label %.loopexit281.invoke

bb.ca:                                            ; preds = %bb.by, %bb.cb
  %exitcond.not = icmp eq i64 %i.gr, %3
  br i1 %exitcond.not, label %.loopexit283, label %.peel.next, !llvm.loop !168251

bb.cb:                                            ; preds = %bb.bz
  %i.hx = load ptr, ptr %i.bc, align 8, !nonnull !12, !noundef !12
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hl ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !noundef !12
  %i.ia = fsub double %i.hz, %i.bg
  store double %i.ia, ptr %i.hy, align 8
  br label %bb.ca

.loopexit:                                        ; preds = %bb.bt, %bb.bx
  %lpad.loopexit278 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp:                               ; preds = %.loopexit281.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit278, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val112 = load i64, ptr %i.j, align 8          ; 2 uses
  %i.ib = icmp eq i64 %.val112, 0
  br i1 %i.ib, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.val113 = load ptr, ptr %i.bc, align 8, !nonnull !12, !noundef !12
  %i.ic = shl nuw i64 %.val112, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val113, i64 noundef %i.ic, i64 noundef range(i64 1, -9223372036854775807) 8) #96
  br label %bb.ce

bb.ce:                                            ; preds = %bb.r, %bb.cc, %bb.cd
  %.pn101.ph = phi { ptr, i32 } [ %i.bb, %bb.r ], [ %lpad.phi, %bb.cc ], [ %lpad.phi, %bb.cd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #101
          to label %common.resume unwind label %bb.bg

bb.cf:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.n, i8 0, i64 15, i1 false)
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  store i8 -128, ptr %.sroa.451.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5488, i64 noundef 34)
          to label %bb.ch unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #101
          to label %common.resume unwind label %bb.bg

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ie = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %4)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_.exit unwind label %bb.cj, !noalias !168252 ; 2 uses

bb.ci:                                            ; preds = %bb.cj
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !noalias !168252
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.o) #101
          to label %common.resume unwind label %bb.ci, !noalias !168256

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_.exit: ; preds = %bb.ch
  %i.ih = extractvalue { i64, i64 } %i.ie, 1
  %i.ii = extractvalue { i64, i64 } %i.ie, 0
  %.sroa.7183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7183.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.ii, ptr %i.p, align 8
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ih, ptr %.sroa.2178.0..sroa_idx, align 8
  %.sroa.3179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.3179.0..sroa_idx, align 8
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %.sroa.4180.0..sroa_idx, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5181.0..sroa_idx, align 8
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %.sroa.6182.0..sroa_idx, align 8
  %.sroa.8184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i8 0, ptr %.sroa.8184.0..sroa_idx, align 8
  %i.ij = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromBL_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.p) ; 2 uses
  %i.ik = extractvalue { ptr, i64 } %i.ij, 0
  %i.il = extractvalue { ptr, i64 } %i.ij, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ik, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.il, ptr %i.in, align 8
  store i64 1, ptr %0, align 8
  br label %bb.br

bb.ck:                                            ; preds = %bb.c
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #101
          to label %common.resume unwind label %bb.bg

bb.cl:                                            ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ip = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %2)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_.exit170 unwind label %bb.cn, !noalias !168257 ; 2 uses

bb.cm:                                            ; preds = %bb.cn
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !noalias !168257
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.r) #101
          to label %common.resume unwind label %bb.cm, !noalias !168261

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_.exit170: ; preds = %bb.cl
  %i.is = extractvalue { i64, i64 } %i.ip, 1
  %i.it = extractvalue { i64, i64 } %i.ip, 0
  %.sroa.7.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx175, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
end_hunk_0
