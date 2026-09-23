Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNCNvNtCs9gmjTwvRRSu_10typst_html5typed16create_func_data0B5_:bb.a
  store i64 %i.eo, ptr %i.bo, align 8, !alias.scope !11653, !noalias !11652
  %.not.i17.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i17.i.i.i, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bo, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !11652
  %i.eu = load i64, ptr %i.bq, align 8, !alias.scope !11655, !noalias !11656, !noundef !57 ; 5 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !11655, !noalias !11656 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %i.ev = icmp ult i64 %.promoted.i.i.i.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bk
  %i.ew = load i8, ptr %i.br, align 8, !range !69, !alias.scope !11655, !noalias !11657, !noundef !57
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = load ptr, ptr %i.o, align 8, !alias.scope !11655, !noalias !11657, !nonnull !57, !noundef !57 ; 2 uses
  %i.ez = load i64, ptr %i.bs, align 8, !noalias !11652
  br i1 %i.ex, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.us.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.bn
  %i.fa = phi i64 [ %i.fb, %bb.bn ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11658
  %i.fb = add i64 %i.fa, 1                        ; 4 uses
  %i.fc = getelementptr inbounds nuw [72 x i8], ptr %i.ey, i64 %i.fa ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.fc, i64 72, i1 false), !noalias !11659
  %.sroa.56.0.copyload8.us.i.i.i.i = load i8, ptr %.sroa.56.0..sroa_idx7.i.i.i.i, align 8, !noalias !11660 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11658
  %.not2.us.i.i.i.i = icmp eq i8 %.sroa.56.0.copyload8.us.i.i.i.i, 2
  br i1 %.not2.us.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.us.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.fc, i64 64, i1 false), !noalias !11661
  store i8 %.sroa.56.0.copyload8.us.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !noalias !11652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.fd, i64 7, i1 false), !noalias !11661
  call void @llvm.experimental.noalias.scope.decl(metadata !11662)
  %i.fe = load i64, ptr %i.ak, align 8, !alias.scope !11663, !noalias !11664, !noundef !57
  %.val.i.us.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !11663, !noalias !11664, !nonnull !57, !noundef !57 ; 2 uses
  %.not.i.i.us.i.i.i.i = icmp eq ptr %.val.i.us.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.us.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ff = getelementptr i8, ptr %.val.i.us.i.i.i.i, i64 -8
  %.val.i.i.us.i.i.i.i = load i64, ptr %i.ff, align 8, !noalias !11665, !noundef !57
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.us.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.us.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.02.0.i.i.us.i.i.i.i = phi i64 [ %.val.i.i.us.i.i.i.i, %bb.bm ], [ 0, %bb.bl ]
  %i.fg = icmp eq i64 %i.fe, %.sroa.02.0.i.i.us.i.i.i.i
  %i.fh = zext i1 %i.fg to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.fh)
          to label %bb.bn unwind label %.split.us.i.i.i.i, !noalias !11666, !inline_history !48

bb.bn:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.us.i.i.i.i
  %i.fi = load ptr, ptr %i.ag, align 8, !alias.scope !11663, !noalias !11664, !nonnull !57, !noundef !57
  %i.fj = load i64, ptr %i.ak, align 8, !alias.scope !11663, !noalias !11664, !noundef !57 ; 2 uses
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fk, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !11667
  %i.fl = add i64 %i.fj, 1
  store i64 %i.fl, ptr %i.ak, align 8, !alias.scope !11663, !noalias !11664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11652
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %exitcond27.not.i.i.i.i = icmp eq i64 %i.fb, %i.eu
  br i1 %exitcond27.not.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.us.i.i.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bo:                                            ; preds = %bb.bj
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.eo)
          to label %bb.bk unwind label %bb.bw, !noalias !11619

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %bb.bu
  %i.fn = phi i64 [ %i.fo, %bb.bu ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11658
  %i.fo = add nuw i64 %i.fn, 1                    ; 5 uses
  %i.fp = icmp ult i64 %i.fn, %i.ez
  call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds nuw [72 x i8], ptr %i.ey, i64 %i.fn
  invoke fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fq) #52
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i unwind label %bb.bp, !noalias !11661

bb.bp:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  store i64 %i.fo, ptr %i.bp, align 8, !noalias !11652
  br label %.body.i.i16.i.i

.body.i.i16.i.i:                                  ; preds = %bb.br, %bb.bp
  %eh.lpad-body.i.i17.i.i = phi { ptr, i32 } [ %i.fr, %bb.bp ], [ %.us-phi20.i.i.i.i, %bb.br ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #49
          to label %.body.i unwind label %bb.bv, !noalias !11661

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.05.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !11660
  %.sroa.56.0.copyload8.i.i.i.i = load i8, ptr %.sroa.56.0..sroa_idx7.i.i.i.i, align 8, !noalias !11660 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx9.i.i.i.i, i64 7, i1 false), !noalias !11660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11658
  %.not2.i.i.i.i = icmp eq i8 %.sroa.56.0.copyload8.i.i.i.i, 2
  br i1 %.not2.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.05.i.i.i.i, i64 64, i1 false), !noalias !11652
  store i8 %.sroa.56.0.copyload8.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !noalias !11652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i.i, i64 7, i1 false), !noalias !11652
  call void @llvm.experimental.noalias.scope.decl(metadata !11662)
  %i.fs = load i64, ptr %i.ak, align 8, !alias.scope !11663, !noalias !11664, !noundef !57
  %.val.i.i.i18.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !11663, !noalias !11664, !nonnull !57, !noundef !57 ; 2 uses
  %.not.i.i.i18.i.i.i = icmp eq ptr %.val.i.i.i18.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i18.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, label %bb.bs

.split.i.i.i.i:                                   ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %.split.i.i.i.i, %.split.us.i.i.i.i
  %.us-phi19.i.i.i.i = phi i64 [ %i.fo, %.split.i.i.i.i ], [ %i.fb, %.split.us.i.i.i.i ]
  %.us-phi20.i.i.i.i = phi { ptr, i32 } [ %i.ft, %.split.i.i.i.i ], [ %i.fm, %.split.us.i.i.i.i ]
  store i64 %.us-phi19.i.i.i.i, ptr %i.bp, align 8, !noalias !11652
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.n) #49
          to label %.body.i.i16.i.i unwind label %bb.bt, !noalias !11667, !inline_history !48

bb.bs:                                            ; preds = %bb.bq
  %i.fu = getelementptr i8, ptr %.val.i.i.i18.i.i, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !noalias !11665, !noundef !57
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %bb.bs, %bb.bq
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i, %bb.bs ], [ 0, %bb.bq ]
  %i.fv = icmp eq i64 %i.fs, %.sroa.02.0.i.i.i.i.i.i
  %i.fw = zext i1 %i.fv to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.fw)
          to label %bb.bu unwind label %.split.i.i.i.i, !noalias !11666, !inline_history !48

bb.bt:                                            ; preds = %bb.br
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !11665, !inline_history !48
  unreachable

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i: ; preds = %bb.bu, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, %bb.bn, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.us.i.i.i.i, %bb.bk
  %i.fy = phi i64 [ %.promoted.i.i.i.i, %bb.bk ], [ %i.fb, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.us.i.i.i.i ], [ %i.eu, %bb.bn ], [ %i.fo, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i ], [ %i.eu, %bb.bu ]
  store i64 %i.fy, ptr %i.bp, align 8, !noalias !11652
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o)
          to label %.noexc49.i unwind label %.loopexit.i, !noalias !11607

.noexc49.i:                                       ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11652
  br label %bb.ck

bb.bu:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  %i.fz = load ptr, ptr %i.ag, align 8, !alias.scope !11663, !noalias !11664, !nonnull !57, !noundef !57
  %i.ga = load i64, ptr %i.ak, align 8, !alias.scope !11663, !noalias !11664, !noundef !57 ; 2 uses
  %i.gb = getelementptr inbounds nuw [72 x i8], ptr %i.fz, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !11667
  %i.gc = add i64 %i.ga, 1
  store i64 %i.gc, ptr %i.ak, align 8, !alias.scope !11663, !noalias !11664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11652
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fo, %i.eu
  br i1 %exitcond.not.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i, label %.lr.ph.split.i.i.i.i

bb.bv:                                            ; preds = %bb.bw, %.body.i.i16.i.i
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !11661
  unreachable

bb.bw:                                            ; preds = %bb.bo
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p) #49
          to label %.body.i unwind label %bb.bv, !noalias !11661

bb.bx:                                            ; preds = %bb.bh
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !11619, !nonnull !57, !noundef !57 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !11619, !noundef !57 ; 3 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %.invoke.i.i.i, label %.preheader.i.i.i.i, !prof !60

.invoke.i.i.i:                                    ; preds = %bb.bx, %bb.ca, %bb.cb, %.preheader.i.i.i.i
  %5 = phi ptr [ @1389, %bb.ca ], [ @1389, %.preheader.i.i.i.i ], [ @1389, %bb.cb ], [ @1386, %bb.bx ]
  %6 = phi ptr [ inttoptr (i64 99 to ptr), %bb.ca ], [ inttoptr (i64 99 to ptr), %.preheader.i.i.i.i ], [ inttoptr (i64 99 to ptr), %bb.cb ], [ inttoptr (i64 65 to ptr), %bb.bx ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @880) #51
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !11619

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.by:                                            ; preds = %bb.cb
  %i.gk = add nuw i64 %.sroa.0.06.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i22.i.i.i = icmp eq i64 %i.gk, %i.gi
  br i1 %exitcond.not.i22.i.i.i, label %bb.bz, label %.preheader.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.gl = invoke noundef range(i64 1, 0) i64 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr8constant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef %i.gi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @880)
          to label %_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr8constant.exit.i.i.i unwind label %.loopexit.i.i, !noalias !11619

.preheader.i.i.i.i:                               ; preds = %bb.bx, %bb.by
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.gk, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.0.06.i.i.i.i
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !11668, !noalias !11669, !noundef !57 ; 5 uses
  %i.go = icmp sgt i8 %i.gn, -1
  br i1 %i.go, label %bb.ca, label %.invoke.i.i.i, !prof !59

bb.ca:                                            ; preds = %.preheader.i.i.i.i
  %7 = icmp ult i8 %i.gn, 63
  %switch.maskindex = zext nneg i8 %i.gn to i64
  %switch.shifted = lshr i64 6917670336360087553, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %7, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.invoke.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gp = icmp samesign ult i8 %i.gn, 32
  %i.gq = icmp eq i8 %i.gn, 127
  %or.cond.i.i.i.i.i = or i1 %i.gp, %i.gq
  br i1 %or.cond.i.i.i.i.i, label %.invoke.i.i.i, label %bb.by, !prof !135

_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr8constant.exit.i.i.i: ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !11670)
  call void @llvm.experimental.noalias.scope.decl(metadata !11671)
  %i.gr = load i64, ptr %i.aj, align 8, !alias.scope !11672, !noalias !11673, !noundef !57
  %.val.i.i27.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !11672, !noalias !11673, !nonnull !57, !noundef !57 ; 2 uses
  %.not.i.i.i28.i.i.i = icmp eq ptr %.val.i.i27.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i28.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i.i, label %bb.cd

bb.cc:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  %i.gt = lshr i64 %i.dv, 56
  %i.gu = trunc nuw i64 %i.gt to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_(ptr %i.du, i8 %i.gu) #49
          to label %.body.i unwind label %bb.ce, !noalias !11674, !inline_history !0

bb.cd:                                            ; preds = %_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr8constant.exit.i.i.i
  %i.gv = getelementptr i8, ptr %.val.i.i27.i.i.i, i64 -8
  %.val.i.i.i29.i.i.i = load i64, ptr %i.gv, align 8, !noalias !11674, !noundef !57
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i.i: ; preds = %bb.cd, %_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr8constant.exit.i.i.i
  %.sroa.02.0.i.i.i30.i.i.i = phi i64 [ %.val.i.i.i29.i.i.i, %bb.cd ], [ 0, %_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr8constant.exit.i.i.i ]
  %i.gw = icmp eq i64 %i.gr, %.sroa.02.0.i.i.i30.i.i.i
  %i.gx = zext i1 %i.gw to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB6_6string9EcoStringEE7reserveBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef %i.gx)
          to label %bb.cf unwind label %bb.cc, !noalias !11675, !inline_history !0

bb.ce:                                            ; preds = %bb.cc
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !11674, !inline_history !0
  unreachable

bb.cf:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i.i
  %i.gz = load ptr, ptr %i.ah, align 8, !alias.scope !11672, !noalias !11673, !nonnull !57, !noundef !57
  %i.ha = load i64, ptr %i.aj, align 8, !alias.scope !11672, !noalias !11673, !noundef !57 ; 2 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.gz, i64 %i.ha ; 3 uses
  store i64 %i.gl, ptr %i.hb, align 8, !noalias !11676
  %.sroa.4.0..sroa_idx.i31.i.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.du, ptr %.sroa.4.0..sroa_idx.i31.i.i.i, align 8, !noalias !11676
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 %i.dv, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !11619
  %i.hc = add i64 %i.ha, 1
  store i64 %i.hc, ptr %i.aj, align 8, !alias.scope !11672, !noalias !11673
  br label %bb.ck

.loopexit.i.i:                                    ; preds = %bb.bz
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 4 uses
  %.not.i.i.i.i.i = icmp sgt i64 %i.dv, -1
  br i1 %.not.i.i.i.i.i, label %bb.ch, label %.body.i

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.du) ], !noalias !11677
  %.not.i.i.i.i.i21.i.i = icmp eq ptr %i.du, inttoptr (i64 16 to ptr)
  %i.hd = getelementptr inbounds i8, ptr %i.du, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i21.i.i, label %.body.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i: ; preds = %bb.ch
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !11678
  %.not.i.i.i.i22.i.i = icmp eq i64 %i.he, 1
  br i1 %.not.i.i.i.i22.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, label %.body.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  fence acquire, !noalias !11677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11679
  %i.hf = getelementptr i8, ptr %i.du, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.hf, align 8, !noalias !11678, !noundef !57 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, label %bb.ci, !prof !59

bb.ci:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #54
          to label %.noexc.i.i unwind label %bb.cj, !noalias !11680

.noexc.i.i:                                       ; preds = %bb.ci
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  %i.hg = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.hd, ptr %i.hh, align 8, !noalias !11679
  store i64 8, ptr %i.l, align 8, !noalias !11679
  %i.hi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.hg, ptr %i.hi, align 8, !noalias !11679
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc23.i.i unwind label %bb.cj, !noalias !11680

.noexc23.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11679
  br label %.body.i

bb.cj:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, %bb.ci
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !11619
  unreachable

._crit_edge.invoke.i:                             ; preds = %bb.cn, %.backedge.i, %.lr.ph.i.i
  %i.hk = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ho, %bb.cn ], [ %i.av, %.backedge.i ]
  %i.hl = phi ptr [ @64, %.lr.ph.i.i ], [ @65, %bb.cn ], [ @64, %.backedge.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.hk, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #51
          to label %._crit_edge.cont.i unwind label %.loopexit.split-lp.i, !noalias !11607

._crit_edge.cont.i:                               ; preds = %._crit_edge.invoke.i
  unreachable

bb.ck:                                            ; preds = %bb.cf, %.noexc49.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.hm = add i64 %.sroa.0.099.i177.i, 1
  br label %bb.cm

bb.cl:                                            ; preds = %.noexc45.i, %.lr.ph.i
  %.not10.i.i = icmp eq i64 %.sroa.0.099.i177.i, 0
  br i1 %.not10.i.i, label %.thread.i, label %bb.cn

bb.cm:                                            ; preds = %bb.co, %bb.ck
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.099.i177.i, %bb.co ], [ %i.hm, %bb.ck ] ; 3 uses
  %exitcond151.not.i.i = icmp eq i64 %i.de, %i.an
  br i1 %exitcond151.not.i.i, label %._crit_edge.i.i, label %.backedge.i

.backedge.i:                                      ; preds = %.thread.i, %bb.cm
  %.sroa.0.099.i.be.i = phi i64 [ %.sroa.0.1.i.i, %bb.cm ], [ 0, %.thread.i ]
  %i.hn = add nuw i64 %i.de, 1
  %exitcond.not.i.i = icmp eq i64 %i.de, %i.av
  br i1 %exitcond.not.i.i, label %._crit_edge.invoke.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.cl
  %exitcond151.not.i119.i = icmp eq i64 %i.de, %i.an
  br i1 %exitcond151.not.i119.i, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE6retainNCNvNtCs9gmjTwvRRSu_10typst_html5typed9construct0EB1Q_.exit.i, label %.backedge.i

bb.cn:                                            ; preds = %bb.cl
  %i.ho = sub i64 %.sroa.06.098.i178.i, %.sroa.0.099.i177.i ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %i.av
  br i1 %i.hp, label %bb.co, label %._crit_edge.invoke.i

bb.co:                                            ; preds = %bb.cn
  %i.hq = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %i.ho ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.hq, i64 72, i1 false), !noalias !11680
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hq, ptr noundef nonnull align 8 dereferenceable(72) %i.df, i64 72, i1 false), !noalias !11680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.df, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false), !noalias !11680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cm

.body.i:                                          ; preds = %bb.m, %.body.i.i.i.i, %.body65.thread.i, %.body65.i, %.loopexit.split-lp.i, %.loopexit.i, %.noexc23.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, %bb.ch, %bb.cg, %bb.cc, %bb.bw, %.body.i.i16.i.i, %.body.thread.i.i.i.i, %bb.p, %bb.c
  %.sroa.018.0.i = phi i8 [ %.sroa.018.2.i, %.body65.thread.i ], [ %.sroa.018.2.i, %.body65.i ], [ %.sroa.018.1.ph.i, %.loopexit.split-lp.i ], [ 1, %.noexc23.i.i ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i ], [ 1, %bb.ch ], [ 1, %bb.cg ], [ 1, %bb.cc ], [ 1, %bb.bw ], [ 1, %.body.i.i16.i.i ], [ 1, %.body.thread.i.i.i.i ], [ 1, %bb.p ], [ 1, %bb.c ], [ 1, %.loopexit.i ], [ 1, %.body.i.i.i.i ], [ 1, %bb.m ]
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body84125.i, %.body65.thread.i ], [ %lpad.thr_comm.split-lp.i, %.body65.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.phi.i.i, %.noexc23.i.i ], [ %lpad.phi.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i ], [ %lpad.phi.i.i, %bb.ch ], [ %lpad.phi.i.i, %bb.cg ], [ %i.gs, %bb.cc ], [ %i.ge, %bb.bw ], [ %eh.lpad-body.i.i17.i.i, %.body.i.i16.i.i ], [ %eh.lpad-body4.i.i.i.i, %.body.thread.i.i.i.i ], [ %i.dd, %bb.p ], [ %i.au, %bb.c ], [ %lpad.loopexit.i, %.loopexit.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.m ]
  %.val41.i = load ptr, ptr %i.ag, align 8, !noalias !11600, !nonnull !57, !noundef !57
  %.val42.i = load i64, ptr %i.ak, align 8, !noalias !11600
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.val41.i, i64 %.val42.i) #49
          to label %bb.en unwind label %bb.ex, !noalias !11607

.loopexit.i:                                      ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i, %.noexc47.i, %.noexc.i.i.i, %bb.ar, %.noexc44.i, %bb.r
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ej, %bb.cs, %.invoke.i, %._crit_edge.invoke.i, %bb.g, %bb.b
  %.sroa.018.1.ph.i = phi i8 [ 1, %.invoke.i ], [ 1, %._crit_edge.invoke.i ], [ 1, %bb.g ], [ 1, %bb.b ], [ %.sroa.018.2.i, %bb.ej ], [ 1, %bb.cs ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE6retainNCNvNtCs9gmjTwvRRSu_10typst_html5typed9construct0EB1Q_.exit.i: ; preds = %.thread.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE9is_unique0ECs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i, %bb.q, %bb.e, %._crit_edge.i.i, %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE11make_uniqueCs9gmjTwvRRSu_10typst_html.exit.i.i
  %i.hr = load i64, ptr %i.ak, align 8, !noalias !11600, !noundef !57 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE6retainNCNvNtCs9gmjTwvRRSu_10typst_html5typed9construct0EB1Q_.exit.i
  %i.ht = load ptr, ptr %i.ag, align 8, !noalias !11600, !nonnull !57, !noundef !57
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ht, ptr %i.hu, align 8, !alias.scope !11597, !noalias !11681
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hr, ptr %i.hv, align 8, !alias.scope !11597, !noalias !11681
  store i64 -1, ptr %0, align 8, !alias.scope !11597, !noalias !11681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11600
  br label %bb.cu

bb.cq:                                            ; preds = %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE6retainNCNvNtCs9gmjTwvRRSu_10typst_html5typed9construct0EB1Q_.exit.i
  %i.hw = load ptr, ptr %i.ai, align 8, !alias.scope !11598, !noalias !11607, !nonnull !57, !noundef !57 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
end_hunk_0
