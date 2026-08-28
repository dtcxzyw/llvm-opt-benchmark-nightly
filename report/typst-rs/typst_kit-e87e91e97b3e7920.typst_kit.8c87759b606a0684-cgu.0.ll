Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3956
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages7package:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.en, ptr %i.eo, align 8, !alias.scope !7511, !noalias !7508
  store i8 3, ptr %i.f, align 8, !alias.scope !7511, !noalias !7508
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %bb.bd unwind label %.body86

bb.bd:                                            ; preds = %bb.bb, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.au

bb.be:                                            ; preds = %bb.cn, %.body116, %bb.bj, %bb.bg, %bb.bf, %bb.ay
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.bf:                                            ; preds = %bb.ay
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #46
          to label %.thread unwind label %bb.be

bb.bg:                                            ; preds = %bb.bj, %bb.bh
  %.pn69 = phi { ptr, i32 } [ %i.eq, %bb.bh ], [ %.pn, %bb.bj ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #46
          to label %.thread unwind label %bb.be

bb.bh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit, %bb.ax
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %bb.ax
  invoke void @_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages14latest_version(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %.body116, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.er, %bb.bk ], [ %eh.lpad-body117, %.body116 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package22VersionlessPackageSpecECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #46
          to label %bb.bg unwind label %bb.be

bb.bk:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.ch, %bb.bi
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  %i.es = load i32, ptr %i.x, align 8, !range !180, !noundef !28 ; 2 uses
  %i.et = trunc nuw i32 %i.es to i1
  br i1 %i.et, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !7514)
  call void @llvm.experimental.noalias.scope.decl(metadata !7517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7519
  br i1 %.not.i.i, label %bb.bn, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98

bb.bn:                                            ; preds = %bb.bm
  %.not.i.i.i114 = icmp eq ptr %i.aj, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i114, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eu = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.ev = atomicrmw add ptr %i.eu, i64 1 monotonic, align 8, !noalias !7519
  %i.ew = icmp slt i64 %i.ev, 0
  br i1 %i.ew, label %.invoke, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98, !prof !74

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98: ; preds = %bb.bm, %bb.bo, %bb.bn
  %.sroa.06.0.i100 = phi ptr [ %i.aj, %bb.bo ], [ inttoptr (i64 16 to ptr), %bb.bn ], [ %i.aj, %bb.bm ] ; 2 uses
  store ptr %.sroa.06.0.i100, ptr %i.e, align 8, !noalias !7519
  %.sroa.58.0..sroa_idx9.i101 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ah, ptr %.sroa.58.0..sroa_idx9.i101, align 8, !noalias !7519
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !7517, !noalias !7514, !noundef !28
  %.not44.i102 = icmp sgt i8 %i.ey, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = ptrtoint ptr %.sroa.06.0.i100 to i64
  %.val.i108 = load ptr, ptr %i.at, align 8, !alias.scope !7517, !noalias !7514 ; 5 uses
  %.val45.i109 = load i64, ptr %i.ez, align 8, !alias.scope !7517, !noalias !7514
  br i1 %.not44.i102, label %bb.bp, label %bb.ci

bb.bp:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98
  %.not.i.i48.i110 = icmp eq ptr %.val.i108, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i110, label %bb.ci, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fb = getelementptr inbounds i8, ptr %.val.i108, i64 -16
  %i.fc = atomicrmw add ptr %i.fb, i64 1 monotonic, align 8, !noalias !7519
  %i.fd = icmp slt i64 %i.fc, 0
  br i1 %i.fd, label %bb.br, label %bb.ci, !prof !74

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %.val.i108) #45
          to label %.noexc.i111 unwind label %bb.bs

.noexc.i111:                                      ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #46
          to label %.body116 unwind label %bb.bt, !noalias !7519

bb.bt:                                            ; preds = %bb.bs
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !7519
  unreachable

bb.bu:                                            ; preds = %bb.bl
  %i.fg = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.0177.0.copyload = load i32, ptr %i.fg, align 4
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4178.0.copyload = load i64, ptr %.sroa.4178.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7520)
  call void @llvm.experimental.noalias.scope.decl(metadata !7523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7525
  br i1 %.not.i.i, label %bb.bv, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122

bb.bv:                                            ; preds = %bb.bu
  %.not.i.i.i138 = icmp eq ptr %i.aj, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i138, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fh = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.fi = atomicrmw add ptr %i.fh, i64 1 monotonic, align 8, !noalias !7525
  %i.fj = icmp slt i64 %i.fi, 0
  br i1 %i.fj, label %.invoke, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122, !prof !74

.invoke:                                          ; preds = %bb.bw, %bb.bo
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %i.aj) #45
          to label %.cont unwind label %bb.cc

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122: ; preds = %bb.bu, %bb.bw, %bb.bv
  %.sroa.06.0.i124 = phi ptr [ %i.aj, %bb.bw ], [ inttoptr (i64 16 to ptr), %bb.bv ], [ %i.aj, %bb.bu ] ; 2 uses
  store ptr %.sroa.06.0.i124, ptr %i.d, align 8, !noalias !7525
  %.sroa.58.0..sroa_idx9.i125 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ah, ptr %.sroa.58.0..sroa_idx9.i125, align 8, !noalias !7525
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !7523, !noalias !7520, !noundef !28
  %.not44.i126 = icmp sgt i8 %i.fl, -1
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fn = ptrtoint ptr %.sroa.06.0.i124 to i64
  %i.fo = inttoptr i64 %i.ah to ptr
  %.val.i132 = load ptr, ptr %i.at, align 8, !alias.scope !7523, !noalias !7520 ; 5 uses
  %.val45.i133 = load i64, ptr %i.fm, align 8, !alias.scope !7523, !noalias !7520
  br i1 %.not44.i126, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122
  %.not.i.i48.i134 = icmp eq ptr %.val.i132, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i134, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fp = getelementptr inbounds i8, ptr %.val.i132, i64 -16
  %i.fq = atomicrmw add ptr %i.fp, i64 1 monotonic, align 8, !noalias !7525
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.bz, label %bb.cd, !prof !74

bb.bz:                                            ; preds = %bb.by
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %.val.i132) #45
          to label %.noexc.i135 unwind label %bb.ca

.noexc.i135:                                      ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #46
          to label %.body116 unwind label %bb.cb, !noalias !7525

bb.cb:                                            ; preds = %bb.ca
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !7525
  unreachable

bb.cc:                                            ; preds = %.invoke
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.body116:                                         ; preds = %bb.cc, %bb.ca, %bb.bs
  %eh.lpad-body117 = phi { ptr, i32 } [ %i.fe, %bb.bs ], [ %i.fu, %bb.cc ], [ %i.fs, %bb.ca ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #46
          to label %bb.bj unwind label %bb.be

bb.cd:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122, %bb.by, %bb.bx
  %.sroa.027.0.i129 = phi ptr [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val.i132, %bb.by ], [ %.val.i132, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122 ]
  %.sroa.6165.sroa.0.0.copyload = load i64, ptr %i.au, align 8, !alias.scope !7525
  %.sroa.6165.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6165.sroa.4.0.copyload = load i32, ptr %.sroa.6165.sroa.4.0..sroa_idx, align 8, !alias.scope !7525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7525
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ci, %bb.cd
  %.sroa.53.sroa.8.sroa.5.0 = phi i32 [ undef, %bb.ci ], [ %.sroa.6165.sroa.4.0.copyload, %bb.cd ]
  %.sroa.53.sroa.8.sroa.0.0 = phi i64 [ %.sroa.9.sroa.0.0.insert.ext, %bb.ci ], [ %.sroa.6165.sroa.0.0.copyload, %bb.cd ]
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0 = phi i64 [ %i.fa, %bb.ci ], [ %.sroa.4178.0.copyload, %bb.cd ]
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.0.0 = phi i32 [ undef, %bb.ci ], [ %.sroa.0177.0.copyload, %bb.cd ]
  %.sroa.53.sroa.0.sroa.0.sroa.5.0 = phi i64 [ %i.ah, %bb.ci ], [ %i.fn, %bb.cd ]
  %.sroa.53.sroa.0.sroa.6.0 = phi ptr [ %.sroa.027.0.i105, %bb.ci ], [ %i.fo, %bb.cd ]
  %.sroa.53.sroa.7.0 = phi i64 [ %.sroa.7170.32.copyload, %bb.ci ], [ %.val45.i133, %bb.cd ]
  %.sroa.53.sroa.6.0 = phi ptr [ %i.gg, %bb.ci ], [ %.sroa.027.0.i129, %bb.cd ]
  %.sroa.02.0 = phi i32 [ 0, %bb.ci ], [ 1, %bb.cd ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.02.0, ptr %i.fv, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.0.0, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0, ptr %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.53.sroa.0.sroa.0.sroa.5.0, ptr %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.53.sroa.0.sroa.6.0, ptr %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.53.sroa.6.0, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.53.sroa.7.0, ptr %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.53.sroa.8.sroa.0.0, ptr %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.8.sroa.5.0..sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.53.sroa.8.sroa.5.0, ptr %.sroa.53.sroa.8.sroa.5.0..sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 2, ptr %i.fw, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !7526)
  %i.fx = icmp eq i32 %i.es, 0
  br i1 %i.fx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fy = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7529)
  %.val.i.i143 = load ptr, ptr %i.fy, align 8, !alias.scope !7532 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  %.val1.i.i144 = load i8, ptr %i.fz, align 1, !alias.scope !7532, !noundef !28
  %.not.i.i.i.i = icmp sgt i8 %.val1.i.i144, -1
  br i1 %.not.i.i.i.i, label %bb.cg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i143) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i143, inttoptr (i64 16 to ptr)
  %i.ga = getelementptr inbounds i8, ptr %.val.i.i143, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.cg
  %i.gb = atomicrmw sub ptr %i.ga, i64 1 release, align 8, !noalias !7532
  %.not.i.i.i.i.i = icmp eq i64 %i.gb, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7532
  %i.gc = getelementptr i8, ptr %.val.i.i143, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !7532, !noundef !28 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.ch, !prof !24

bb.ch:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #45
          to label %.noexc145 unwind label %bb.bk

.noexc145:                                        ; preds = %bb.ch
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  %i.gd = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ga, ptr %i.ge, align 8, !noalias !7532
  store i64 8, ptr %i.c, align 8, !noalias !7532
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.gd, ptr %i.gf, align 8, !noalias !7532
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc146 unwind label %bb.bk

.noexc146:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7532
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

bb.ci:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98, %bb.bq, %bb.bp
  %.sroa.027.0.i105 = phi ptr [ inttoptr (i64 16 to ptr), %bb.bp ], [ %.val.i108, %bb.bq ], [ %.val.i108, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98 ]
  %.sroa.7170.32.copyload = load i64, ptr %i.au, align 8, !alias.scope !7519
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.32..sroa_idx, align 8, !alias.scope !7519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7519
  %i.gg = inttoptr i64 %.val45.i109 to ptr
  %.sroa.9.sroa.0.0.insert.ext = zext i32 %.sroa.9.0.copyload to i64
  br label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit: ; preds = %.noexc146, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.cg, %bb.cf, %bb.ce
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package22VersionlessPackageSpecECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w)
          to label %bb.cj unwind label %bb.bh

bb.cj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7533
  switch i64 %i.bz, label %default.unreachable [
    i64 2, label %bb.cm
    i64 3, label %bb.ck
    i64 0, label %bb.cm
    i64 1, label %bb.cl
  ], !prof !191

bb.ck:                                            ; preds = %bb.cj
  %i.gh = icmp ult ptr %.val75, inttoptr (i64 188978561024 to ptr)
  %i.gi = and i64 %i.by, 1095216660480
  %i.gj = icmp ne i64 %i.gi, 1095216660480
  call void @llvm.assume(i1 %i.gh)
  call void @llvm.assume(i1 %i.gj)
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.gk = getelementptr i8, ptr %.val75, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.gk, ptr %i.gl, align 8, !alias.scope !7536, !noalias !7533
  store i8 3, ptr %i.b, align 8, !alias.scope !7536, !noalias !7533
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gl)
          to label %bb.cm unwind label %.body86

bb.cm:                                            ; preds = %bb.ck, %bb.cj, %bb.cj, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.au

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit91: ; preds = %bb.av, %bb.au, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  ret void

bb.cn:                                            ; preds = %.noexc77, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.gm = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gm) #46
          to label %.thread unwind label %bb.be
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4growCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !64, !noundef !28 ; 4 uses
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs1SAYzCH86J4_12vello_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7539)
  %i.b = load i64, ptr %0, align 8, !range !64, !alias.scope !7539, !noundef !28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7539, !noundef !28 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7539, !noundef !28 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !7539, !nonnull !28, !noundef !28 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.q = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !7539
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !7539
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7539, !nonnull !28, !noundef !28 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.a
  %i.u = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !7539
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 121) %3) unnamed_addr #13 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !215
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !215

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #42
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #42
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsc4241EHy6Do_9typst_kit10downloaderNtB5_14ProgressReader3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, i64 noundef range(i64 0, 2) %1, i64 %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %4, i64 noundef %5, i32 noundef range(i32 0, 1000000000) %6, ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %8) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !7542
  %i.a = tail call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !7542 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadEL_EECsc4241EHy6Do_9typst_kit(ptr nonnull %3, ptr nonnull %4) #46
          to label %bb.i unwind label %bb.g

bb.c:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 200) #45
          to label %bb.h unwind label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.d = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.f unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.f = extractvalue { i64, i32 } %i.d, 0
  %i.g = extractvalue { i64, i32 } %i.d, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %4, ptr %i.i, align 8
  store i64 %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
