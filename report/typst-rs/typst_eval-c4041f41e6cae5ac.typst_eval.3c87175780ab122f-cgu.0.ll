Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtCs5cbCQMMIObr_10typst_eval6import6import:bb.a

bb.m:                                             ; preds = %bb.c
  %i.dd = extractvalue { i64, i64 } %i.cm, 1
  %i.de = extractvalue { i64, i64 } %i.cm, 0
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !16369
  store i64 %i.de, ptr %i.bz, align 8, !noalias !16371
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.dd, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !16371
  %i.df = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.bz), !noalias !16371 ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { ptr, i64 } %i.df, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !16371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %i.dj, align 8
  store i64 2, ptr %0, align 8
  br label %_RNvNtCs5cbCQMMIObr_10typst_eval6import14import_package.exit

bb.n:                                             ; preds = %bb.b
  %.sroa.5.8.copyload = load ptr, ptr %i.cl, align 8, !alias.scope !16371 ; 6 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !alias.scope !16371 ; 3 uses
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.11.8..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.8..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.8..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  store ptr %.sroa.5.8.copyload, ptr %i.cd, align 8
  %.sroa.9.8..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %.sroa.9.8.copyload, ptr %.sroa.9.8..sroa_idx2, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !16376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !16376
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16377), !noalias !16373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !16378
  %.not.i.i = icmp sgt i64 %.sroa.9.8.copyload, -1
  br i1 %.not.i.i, label %bb.o, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i57 = icmp eq ptr %.sroa.5.8.copyload, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i57, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds i8, ptr %.sroa.5.8.copyload, i64 -16
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !16379
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %bb.q, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i, !prof !40

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.sroa.5.8.copyload) #42
          to label %.noexc119.i unwind label %bb.w

.noexc119.i:                                      ; preds = %bb.q
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.n, %bb.p, %bb.o
  %.sroa.06.0.i.i = phi ptr [ %.sroa.5.8.copyload, %bb.p ], [ inttoptr (i64 16 to ptr), %bb.o ], [ %.sroa.5.8.copyload, %bb.n ]
  store ptr %.sroa.06.0.i.i, ptr %i.be, align 8, !noalias !16378
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.sroa.9.8.copyload, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !16378
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 31
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !16380, !noalias !16373, !noundef !35
  %.not44.i.i = icmp sgt i8 %i.do, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %.val.i.i = load ptr, ptr %.sroa.11.8..sroa_idx4, align 8, !alias.scope !16380, !noalias !16373 ; 5 uses
  %.val45.i.i = load i64, ptr %i.dp, align 8, !alias.scope !16380, !noalias !16373
  br i1 %.not44.i.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i
  %.not.i.i48.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.dr = atomicrmw add ptr %i.dq, i64 1 monotonic, align 8, !noalias !16379
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.t, label %bb.x, !prof !40

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i.i) #42
          to label %.noexc.i.i56 unwind label %bb.u

.noexc.i.i56:                                     ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be) #44
          to label %.body.i unwind label %bb.v, !noalias !16379

bb.v:                                             ; preds = %bb.u
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16379
  unreachable

.body.i:                                          ; preds = %bb.bj, %.body150.i, %bb.bg, %bb.ba, %.body124.i, %bb.w, %bb.u
  %.pn117.i = phi { ptr, i32 } [ %i.hv, %bb.ba ], [ %i.ig, %bb.bg ], [ %i.dt, %bb.u ], [ %.pn115.i, %.body150.i ], [ %i.dv, %bb.w ], [ %eh.lpad-body125.i, %.body124.i ], [ %.pn115.i, %bb.bj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.cd) #44
          to label %common.resume unwind label %bb.gc, !noalias !16381

bb.w:                                             ; preds = %bb.q, %.invoke.i, %.noexc133.i, %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanINtB5_4IntoNtBA_8DiagSpanE4intoCs5cbCQMMIObr_10typst_eval.exit.i.i.i, %bb.az, %bb.ay, %.loopexit.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i, %bb.s, %bb.r
  %.sroa.027.0.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.r ], [ %.val.i.i, %bb.s ], [ %.val.i.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.sroa.6.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx.i41, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.dw, i64 12, i1 false), !noalias !16381
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !noalias !16376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !16378
  %.sroa.4.0..sroa_idx425.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %.sroa.027.0.i.i, ptr %.sroa.4.0..sroa_idx425.i, align 8, !noalias !16376
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i64 %.val45.i.i, ptr %.sroa.5.0..sroa_idx.i42, align 8, !noalias !16376
  store i64 1, ptr %i.bt, align 8, !noalias !16376
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7428.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !16382
  invoke void @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path10components(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 10)
          to label %.noexc120.i unwind label %bb.av, !noalias !16381

.noexc120.i:                                      ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !16383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !16382
  invoke void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bd)
          to label %.noexc121.i unwind label %bb.av, !noalias !16381

.noexc121.i:                                      ; preds = %.noexc120.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bc, i64 89 ; 2 uses
  %.promoted69.i.i.i = load i8, ptr %i.ea, align 1, !alias.scope !16384, !noalias !16382 ; 2 uses
  %.promoted70.i.i.i = load i64, ptr %i.dz, align 8, !noalias !16382 ; 4 uses
  %.promoted76.i.i.i = load i64, ptr %i.dy, align 8, !noalias !16382 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !16382, !nonnull !35 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !16382 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !16382 ; 8 uses
  %.not.i.i.i.i.i.i.i.i43 = icmp ugt i64 %i.ee, %.val1.i.i.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.eh = load i8, ptr %i.eg, align 8, !noalias !16382 ; 2 uses
  %i.ei = zext nneg i8 %i.eh to i64               ; 4 uses
  %i.ej = icmp ult i8 %i.eh, 5
  %i.ek = getelementptr i8, ptr %i.ef, i64 %i.ei
  %i.el = getelementptr i8, ptr %i.ek, i64 -1
  %i.em = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.en = load i8, ptr %i.em, align 8, !range !44, !noalias !16382
  %i.eo = trunc nuw i8 %i.en to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.pre2.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !noalias !16382 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val.i.i.i.i44 = load i64, ptr %i.ep, align 8, !noalias !16382
  %i.eq = icmp eq i64 %.val.i.i.i.i44, 0          ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %.sroa.610.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 9 ; 2 uses
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.not.i.i.i.i.i.fr.i.i.i = freeze i1 %.not.i.i.i.i.i.i.i.i43
  br i1 %.not.i.i.i.i.i.fr.i.i.i, label %.split.us.i.i.i, label %.split.i.preheader.i.i

.split.i.preheader.i.i:                           ; preds = %.noexc121.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %.promoted81.i.i.i = load i64, ptr %i.et, align 8, !noalias !16382
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %.noexc121.i
  %i.eu = trunc nuw i8 %.promoted69.i.i.i to i1
  br i1 %i.eu, label %.loopexit.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.lr.ph.i.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.lr.ph.i.i.i: ; preds = %.split.us.i.i.i
  %.not.i3.i.i.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i.i, %.promoted70.i.i.i
  %or.cond.not.i.i.i.i.i.us.i.i.i = select i1 %i.eo, i1 true, i1 %.not.i3.i.i.i.i.us.i.i.i
  %i.ev = sub nuw i64 %.pre2.i.i.i.i.i.i.i.i, %.promoted70.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.promoted70.i.i.i ; 3 uses
  br i1 %or.cond.not.i.i.i.i.i.us.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i, label %.loopexit.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16385), !noalias !16373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16386), !noalias !16373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16387), !noalias !16373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16388), !noalias !16373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16389), !noalias !16373
  switch i64 %i.ev, label %bb.ab [
    i64 0, label %bb.aa
    i64 1, label %bb.z
    i64 2, label %bb.y
  ]

bb.y:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i
  %i.ew = load i16, ptr %.sroa.0.1.i.i.i.i.us.i.i.i, align 1
  %i.ex = icmp ne i16 %i.ew, 11822
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %.thread.us.us.i.i.i, label %bb.ab

bb.z:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i
  %lhsc1.i.i.us.us.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.us.i.i.i, align 1, !noalias !16390
  %i.fa = icmp eq i8 %lhsc1.i.i.us.us.i.i.i, 46
  br i1 %i.fa, label %.thread.us.us.i.i.i, label %bb.ab

bb.aa:                                            ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i
  %i.fb = icmp ne i64 %.promoted76.i.i.i, 0
  %or.cond.i.i.us.us.i.i.i = select i1 %i.fb, i1 true, i1 %i.eq
  %spec.select.i.us.us.i.i.i = zext i1 %or.cond.i.i.us.us.i.i.i to i64
  br label %.thread.us.us.i.i.i

bb.ab:                                            ; preds = %bb.z, %bb.y, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !16391
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i.i.i, i64 noundef %i.ev)
          to label %.noexc24.us.us.i.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16392

.noexc24.us.us.i.i.i:                             ; preds = %bb.ab
  %i.fc = load i64, ptr %i.ba, align 8, !range !36, !noalias !16391, !noundef !35
  %i.fd = trunc nuw i64 %i.fc to i1
  br i1 %i.fd, label %.split95.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc24.us.us.i.i.i
  %i.fe = load ptr, ptr %i.er, align 8, !noalias !16391, !nonnull !35, !noundef !35
  %i.ff = load i64, ptr %i.es, align 8, !noalias !16391, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !16391
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %.sroa.829.0.extract.trunc.us.us.i.i.i = trunc i64 %i.fg to i8
  %.sroa.829.1.extract.shift.us.us.i.i.i = lshr i64 %i.fg, 8
  %.sroa.829.1.extract.trunc.us.us.i.i.i = trunc nuw i64 %.sroa.829.1.extract.shift.us.us.i.i.i to i56
  br label %.thread.us.us.i.i.i

.thread.us.us.i.i.i:                              ; preds = %bb.ac, %bb.aa, %bb.z, %bb.y
  %.sroa.829.1.extract.trunc46.us.us.i.i.i = phi i56 [ %.sroa.829.1.extract.trunc.us.us.i.i.i, %bb.ac ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ]
  %.sroa.829.0.extract.trunc45.us.us.i.i.i = phi i8 [ %.sroa.829.0.extract.trunc.us.us.i.i.i, %bb.ac ], [ undef, %bb.y ], [ undef, %bb.aa ], [ undef, %bb.z ]
  %.sroa.0.0.ph44.us.us.i.i.i = phi i64 [ 3, %bb.ac ], [ 2, %bb.y ], [ %spec.select.i.us.us.i.i.i, %bb.aa ], [ 1, %bb.z ]
  %.sroa.11.0.ph43.us.us.i.i.i = phi i64 [ %i.ff, %bb.ac ], [ undef, %bb.y ], [ undef, %bb.aa ], [ undef, %bb.z ]
  store i64 %.sroa.0.0.ph44.us.us.i.i.i, ptr %i.bb, align 8, !noalias !16382
  store i8 %.sroa.829.0.extract.trunc45.us.us.i.i.i, ptr %.sroa.610.0..sroa_idx11.i.i.i, align 8, !noalias !16382
  store i56 %.sroa.829.1.extract.trunc46.us.us.i.i.i, ptr %.sroa.8.0..sroa_idx13.i.i.i, align 1, !noalias !16382
  store i64 %.sroa.11.0.ph43.us.us.i.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i.i, align 8, !noalias !16382
  %i.fh = invoke noundef i8 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments14push_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bb)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16392 ; 2 uses

bb.ad:                                            ; preds = %.thread.us.us.i.i.i
  %.not20.us.us.i.i.i = icmp eq i8 %i.fh, 2
  br i1 %.not20.us.us.i.i.i, label %.loopexit.i, label %.split100.i.i.i

.split.i.i.i:                                     ; preds = %bb.ar, %.split.i.preheader.i.i
  %.lcssa6884.i.i.i = phi i64 [ %.lcssa6882.i.i.i, %bb.ar ], [ %.promoted81.i.i.i, %.split.i.preheader.i.i ] ; 3 uses
  %i.fi = phi i64 [ %i.gg, %bb.ar ], [ %.promoted76.i.i.i, %.split.i.preheader.i.i ] ; 2 uses
  %.lcssa6072.i.i.i = phi i64 [ %.lcssa6071.i.i.i, %bb.ar ], [ %.promoted70.i.i.i, %.split.i.preheader.i.i ] ; 4 uses
  %i.fj = phi i8 [ %i.gf, %bb.ar ], [ %.promoted69.i.i.i, %.split.i.preheader.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16385), !noalias !16373
  call void @llvm.experimental.noalias.scope.decl(metadata !16386), !noalias !16373
  call void @llvm.experimental.noalias.scope.decl(metadata !16387), !noalias !16373
  call void @llvm.experimental.noalias.scope.decl(metadata !16388), !noalias !16373
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %.loopexit.i, label %bb.ae

bb.ae:                                            ; preds = %.split.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16389), !noalias !16373
  %i.fl = icmp ult i64 %i.ee, %.lcssa6884.i.i.i
  br i1 %i.fl, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i.i:           ; preds = %bb.ae
  call void @llvm.assume(i1 %i.ej), !noalias !16373
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.el, align 1, !alias.scope !16393, !noalias !16382 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %bb.ah, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i
  %i.fm = phi i64 [ %i.ga, %bb.ah ], [ %.lcssa6884.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.fn = sub nuw i64 %i.ee, %i.fm                ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.fm ; 2 uses
  %i.fp = icmp samesign ult i64 %i.fn, 16
  br i1 %i.fp, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.af

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ee, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.fq = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef range(i64 0, -9223372036854775808) %i.fn)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16392 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.af
  %i.fr = extractvalue { i64, i64 } %i.fq, 0
  %i.fs = extractvalue { i64, i64 } %i.fq, 1
  %i.ft = trunc nuw i64 %i.fr to i1
  br i1 %i.ft, label %.loopexit.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.04.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fx, %bb.ag ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !16394, !noalias !16395, !noundef !35
  %i.fw = icmp eq i8 %i.fv, %.pre.i.i.i.i.i.i.i.i
  br i1 %i.fw, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fx = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fx, %i.fn
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %.noexc.i.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fy = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, %i.fn
  call void @llvm.assume(i1 %i.fy), !noalias !16373
  %i.fz = add i64 %i.fm, 1
  %i.ga = add i64 %i.fz, %.sroa.5.0.i.i.i.i.i.i.i.i.i ; 8 uses
  %.not11.i.i.i.i.i.i.i.i = icmp ult i64 %i.ga, %i.ei
  %.not12.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ga, %.val1.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i.i.i, %.not12.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %.loopexit.i.i.i.i.i.i.i.i
  %i.gb = icmp ult i64 %i.ee, %i.ga
  br i1 %i.gb, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.gc = sub nuw i64 %i.ga, %i.ei                ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.gc
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.gd, ptr nonnull %i.ef, i64 %i.ei), !noalias !16396
  %i.ge = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ge, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i, label %bb.ah

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %.noexc.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ae
  %.lcssa6883.i.i.i = phi i64 [ %i.ee, %bb.ag ], [ %.lcssa6884.i.i.i, %bb.ae ], [ %i.ee, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ee, %.noexc.i.i.i ], [ %i.ga, %bb.ah ]
  store i8 1, ptr %i.ea, align 1, !alias.scope !16397, !noalias !16382
  %.not.i3.i.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i.i, %.lcssa6072.i.i.i
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.eo, i1 true, i1 %.not.i3.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i, label %.loopexit.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i
  %.lcssa6882.i.i.i = phi i64 [ %.lcssa6883.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ %i.ga, %bb.ai ]
  %.lcssa6071.i.i.i = phi i64 [ %.lcssa6072.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ %i.ga, %bb.ai ]
  %i.gf = phi i8 [ 1, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ 0, %bb.ai ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ %i.gc, %bb.ai ]
  %.sroa.4.1.i.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa6072.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.lcssa6072.i.i.i ; 3 uses
  %i.gg = add i64 %i.fi, 1
  switch i64 %.sroa.4.1.i.i.i.i.i.i.i, label %bb.am [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ]

bb.aj:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  %i.gh = icmp ne i64 %i.fi, 0
  %or.cond.i.i.i.i.i = select i1 %i.gh, i1 true, i1 %i.eq
  %spec.select.i.i.i.i = zext i1 %or.cond.i.i.i.i.i to i64
  br label %.thread.i.i.i

bb.ak:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  %lhsc1.i.i.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.i.i.i, align 1, !noalias !16390
  %i.gi = icmp eq i8 %lhsc1.i.i.i.i.i, 46
  br i1 %i.gi, label %.thread.i.i.i, label %bb.am

bb.al:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  %i.gj = load i16, ptr %.sroa.0.1.i.i.i.i.i.i.i, align 1
  %i.gk = icmp ne i16 %i.gj, 11822
  %i.gl = zext i1 %i.gk to i32
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.thread.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !16391
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16392

.noexc24.i.i.i:                                   ; preds = %bb.am
  %i.gn = load i64, ptr %i.ba, align 8, !range !36, !noalias !16391, !noundef !35
  %i.go = trunc nuw i64 %i.gn to i1
  br i1 %i.go, label %.split95.i.i.i, label %bb.ap

.split95.i.i.i:                                   ; preds = %.noexc24.i.i.i, %.noexc24.us.us.i.i.i
  %i.gp = load i64, ptr %i.es, align 8, !noalias !16391, !noundef !35
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %bb.an, label %bb.ao, !prof !37

bb.an:                                            ; preds = %.split95.i.i.i
  %i.gr = load ptr, ptr %i.er, align 8, !noalias !16391, !nonnull !35, !noundef !35
  %lhsc.i.i.i.i.i = load i8, ptr %i.gr, align 1, !noalias !16390
  %i.gs = icmp eq i8 %lhsc.i.i.i.i.i, 92
  br i1 %i.gs, label %bb.aq, label %bb.ao, !prof !37

bb.ao:                                            ; preds = %bb.an, %.split95.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #47
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16392
end_hunk_0
