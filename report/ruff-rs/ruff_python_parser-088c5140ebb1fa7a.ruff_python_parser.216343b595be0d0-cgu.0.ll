inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_stmtNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_:bb.a

bb.cq:                                            ; preds = %.lr.ph188
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i149187, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !noalias !3393, !align !78, !noundef !18
  %.not.i.i150 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i150, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i153.sink.split, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store i32 1, ptr %0, align 4, !alias.scope !3393
  %i.mp = load <2 x i32>, ptr %.sroa.0.0.i149187, align 8, !noalias !3393
  store <2 x i32> %i.mp, ptr %.sroa.4.0..sroa_idx.i.i151, align 4, !alias.scope !3393
  br label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i153.sink.split

_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i153.sink.split: ; preds = %.lr.ph188, %bb.cq, %bb.cr
  tail call fastcc void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_stmtNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_(ptr noalias noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 %.sroa.0.0.i149187)
  br label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i153

_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i153: ; preds = %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i153.sink.split, %.lr.ph188, %.lr.ph188
  %i.mq = icmp eq ptr %i.mg, %i.me
  br i1 %i.mq, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit154.loopexit, label %.lr.ph188

bb.cs:                                            ; preds = %bb.ad
  tail call void @_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 %i.eu)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.ad
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !align !78, !noundef !18 ; 2 uses
  %.not31 = icmp eq ptr %i.ms, null
  br i1 %.not31, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit84, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit84.sink.split

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160.loopexit: ; preds = %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor19walk_except_handlerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEB16_.exit
  %i.mt = icmp eq ptr %i.mu, %i.fr
  br i1 %i.mt, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160._crit_edge, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph182, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160.loopexit
  %.sroa.020.0181 = phi ptr [ %i.fo, %.lr.ph182 ], [ %i.mu, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160.loopexit ] ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.020.0181, i64 64 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.020.0181, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !noalias !3394, !align !78, !noundef !18 ; 2 uses
  %.not.i129 = icmp eq ptr %i.mw, null
  br i1 %.not.i129, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor19walk_except_handlerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEB16_.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 %i.mw), !inline_history !3397
  br label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor19walk_except_handlerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEB16_.exit

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor19walk_except_handlerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEB16_.exit: ; preds = %bb.cu, %bb.cv
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.020.0181, i64 16
  %.val.i130 = load ptr, ptr %i.mx, align 8, !noalias !3394, !nonnull !18, !noundef !18 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.val.i130, i64 16 ; 2 uses
  %i.mz = load i64, ptr %.val.i130, align 8, !noalias !3394, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3398)
  %.idx233 = mul nuw nsw i64 %i.mz, 88
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 %.idx233
  %i.nb = icmp eq i64 %i.mz, 0
  br i1 %i.nb, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160.loopexit, label %.lr.ph180

.lr.ph180:                                        ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor19walk_except_handlerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEB16_.exit, %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159
  %.sroa.0.0.i155179 = phi ptr [ %i.nc, %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159 ], [ %i.my, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor19walk_except_handlerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEB16_.exit ] ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i155179, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i155179, i64 84
  %i.ne = load i8, ptr %i.nd, align 4, !range !2378, !noalias !3404, !noundef !18 ; 2 uses
  %i.nf = icmp samesign ugt i8 %i.ne, 1
  %i.ng = zext nneg i8 %i.ne to i64
  %i.nh = add nsw i64 %i.ng, -1
  %i.ni = select i1 %i.nf, i64 %i.nh, i64 0
  switch i64 %i.ni, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159.sink.split [
    i64 0, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159
    i64 1, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159
    i64 2, label %bb.cw
  ]

bb.cw:                                            ; preds = %.lr.ph180
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i155179, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !noalias !3404, !align !78, !noundef !18
  %.not.i.i156 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i156, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159.sink.split, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 1, ptr %0, align 4, !alias.scope !3404
  %i.nl = load <2 x i32>, ptr %.sroa.0.0.i155179, align 8, !noalias !3404
  store <2 x i32> %i.nl, ptr %.sroa.4.0..sroa_idx.i.i157, align 4, !alias.scope !3404
  br label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159.sink.split

_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159.sink.split: ; preds = %.lr.ph180, %bb.cw, %bb.cx
  tail call fastcc void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_stmtNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_(ptr noalias noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 %.sroa.0.0.i155179)
  br label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159

_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159: ; preds = %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i159.sink.split, %.lr.ph180, %.lr.ph180
  %i.nm = icmp eq ptr %i.nc, %i.na
  br i1 %i.nm, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160.loopexit, label %.lr.ph180

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160._crit_edge: ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160.loopexit, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit108
  %.val39 = load ptr, ptr %i.ew, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.val39, i64 16 ; 2 uses
  %i.no = load i64, ptr %.val39, align 8, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3405)
  %.idx234 = mul nuw nsw i64 %i.no, 88
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.idx234
  %i.nq = icmp eq i64 %i.no, 0
  br i1 %i.nq, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit136, label %.lr.ph184

.lr.ph184:                                        ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160._crit_edge
  %.sroa.4.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph184, %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135
  %.sroa.0.0.i131183 = phi ptr [ %i.nn, %.lr.ph184 ], [ %i.nr, %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135 ] ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i131183, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3408)
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i131183, i64 84
  %i.nt = load i8, ptr %i.ns, align 4, !range !2378, !noalias !3411, !noundef !18 ; 2 uses
  %i.nu = icmp samesign ugt i8 %i.nt, 1
  %i.nv = zext nneg i8 %i.nt to i64
  %i.nw = add nsw i64 %i.nv, -1
  %i.nx = select i1 %i.nu, i64 %i.nw, i64 0
  switch i64 %i.nx, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135.sink.split [
    i64 0, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135
    i64 1, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135
    i64 2, label %bb.cz
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i131183, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !noalias !3411, !align !78, !noundef !18
  %.not.i.i132 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i132, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135.sink.split, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 1, ptr %0, align 4, !alias.scope !3411
  %i.oa = load <2 x i32>, ptr %.sroa.0.0.i131183, align 8, !noalias !3411
  store <2 x i32> %i.oa, ptr %.sroa.4.0..sroa_idx.i.i133, align 4, !alias.scope !3411
  br label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135.sink.split

_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135.sink.split: ; preds = %bb.cy, %bb.cz, %bb.da
  tail call fastcc void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_stmtNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_(ptr noalias noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 %.sroa.0.0.i131183)
  br label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135

_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135: ; preds = %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135.sink.split, %bb.cy, %bb.cy
  %i.ob = icmp eq ptr %i.nr, %i.np
  br i1 %i.ob, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit136, label %bb.cy

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit136: ; preds = %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i135, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit160._crit_edge
  %.val = load ptr, ptr %i.ex, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.od = load i64, ptr %.val, align 8, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %.idx235 = mul nuw nsw i64 %i.od, 88
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.idx235
  %i.of = icmp eq i64 %i.od, 0
  br i1 %i.of, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit84, label %.lr.ph186

.lr.ph186:                                        ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit136
  %.sroa.4.0..sroa_idx.i.i139 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph186, %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141
  %.sroa.0.0.i137185 = phi ptr [ %i.oc, %.lr.ph186 ], [ %i.og, %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141 ] ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i137185, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3415)
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i137185, i64 84
  %i.oi = load i8, ptr %i.oh, align 4, !range !2378, !noalias !3418, !noundef !18 ; 2 uses
  %i.oj = icmp samesign ugt i8 %i.oi, 1
  %i.ok = zext nneg i8 %i.oi to i64
  %i.ol = add nsw i64 %i.ok, -1
  %i.om = select i1 %i.oj, i64 %i.ol, i64 0
  switch i64 %i.om, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141.sink.split [
    i64 0, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141
    i64 1, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141
    i64 2, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i137185, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !noalias !3418, !align !78, !noundef !18
  %.not.i.i138 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i138, label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141.sink.split, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i32 1, ptr %0, align 4, !alias.scope !3418
  %i.op = load <2 x i32>, ptr %.sroa.0.0.i137185, align 8, !noalias !3418
  store <2 x i32> %i.op, ptr %.sroa.4.0..sroa_idx.i.i139, align 4, !alias.scope !3418
  br label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141.sink.split

_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141.sink.split: ; preds = %bb.db, %bb.dc, %bb.dd
  tail call fastcc void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_stmtNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_(ptr noalias noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 %.sroa.0.0.i137185)
  br label %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141

_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141: ; preds = %_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.exit.i141.sink.split, %bb.db, %bb.db
  %i.oq = icmp eq ptr %i.og, %i.oe
  br i1 %i.oq, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorEBV_.exit84, label %bb.db
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0INtNtB1b_3vec3VecBZ_EECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i11, 512 ; 3 uses
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, label %bb.c

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  %3 = shl nuw nsw i64 %.sroa.0.0.i12, 3          ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3419
  %i.e = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 4) #42, !noalias !3419 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %3) #41
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit13, label %bb.f

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.e, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %.sroa.0.0.i12, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.e, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %i.h = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.h, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.d
  %i.i = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #42
  br label %bb.e

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit13, %bb.b
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit13: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #42
  br label %bb.f
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i8, ptr %.sroa.0.0, align 4, !noundef !18 ; 2 uses
  %.sroa.04.0.val14 = load i8, ptr %.sroa.04.0, align 4, !noundef !18 ; 2 uses
  %i.n = icmp ult i8 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i8, ptr %.sroa.08.0, align 4, !noundef !18 ; 2 uses
  %i.o = icmp ult i8 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i8 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2a_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 64)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load i8, ptr %i.a, align 4, !noundef !18
  %.val9.i = load i8, ptr %0, align 4, !noundef !18
  %i.b = icmp ult i8 %.val8.i, %.val9.i           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i = load i8, ptr %i.c, align 4, !noundef !18
  %.val7.i = load i8, ptr %i.d, align 4, !noundef !18
  %i.e = icmp ult i8 %.val6.i, %.val7.i           ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i8, ptr %i.l, align 4, !noundef !18
  %.val5.i = load i8, ptr %i.g, align 4, !noundef !18
  %i.o = icmp ult i8 %.val4.i, %.val5.i           ; 3 uses
  %.val2.i = load i8, ptr %i.n, align 4, !noundef !18
  %.val3.i = load i8, ptr %i.j, align 4, !noundef !18
  %i.p = icmp ult i8 %.val2.i, %.val3.i           ; 3 uses
  %i.q = select i1 %i.o, ptr %i.l, ptr %i.g, !unpredictable !18
  %i.r = select i1 %i.p, ptr %i.j, ptr %i.n, !unpredictable !18
  %i.s = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !18
  %i.t = select i1 %i.o, ptr %i.g, ptr %i.s, !unpredictable !18 ; 3 uses
  %i.u = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !18
  %i.v = select i1 %i.p, ptr %i.n, ptr %i.u, !unpredictable !18 ; 3 uses
  %.val.i = load i8, ptr %i.v, align 4, !noundef !18
  %.val1.i = load i8, ptr %i.t, align 4, !noundef !18
  %i.w = icmp ult i8 %.val.i, %.val1.i            ; 2 uses
  %i.x = select i1 %i.w, ptr %i.v, ptr %i.t, !unpredictable !18
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.v, !unpredictable !18
  %i.z = load i64, ptr %i.q, align 4              ; 3 uses
  store i64 %i.z, ptr %2, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.x, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.y, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.af = load i64, ptr %i.r, align 4             ; 3 uses
  store i64 %i.af, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ah = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8.i1 = load i8, ptr %i.ai, align 4, !noundef !18
  %.val9.i2 = load i8, ptr %i.ag, align 4, !noundef !18
  %i.aj = icmp ult i8 %.val8.i1, %.val9.i2        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6.i3 = load i8, ptr %i.ak, align 4, !noundef !18
  %.val7.i4 = load i8, ptr %i.al, align 4, !noundef !18
  %i.am = icmp ult i8 %.val6.i3, %.val7.i4        ; 2 uses
  %i.an = zext i1 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.an ; 3 uses
  %i.ap = xor i1 %i.aj, true
  %i.aq = zext i1 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq ; 4 uses
  %i.as = select i1 %i.am, i64 3, i64 2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as ; 4 uses
  %i.au = select i1 %i.am, i64 2, i64 3
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 3 uses
  %.val4.i5 = load i8, ptr %i.at, align 4, !noundef !18
  %.val5.i6 = load i8, ptr %i.ao, align 4, !noundef !18
  %i.aw = icmp ult i8 %.val4.i5, %.val5.i6        ; 3 uses
  %.val2.i7 = load i8, ptr %i.av, align 4, !noundef !18
  %.val3.i8 = load i8, ptr %i.ar, align 4, !noundef !18
  %i.ax = icmp ult i8 %.val2.i7, %.val3.i8        ; 3 uses
  %i.ay = select i1 %i.aw, ptr %i.at, ptr %i.ao, !unpredictable !18
  %i.az = select i1 %i.ax, ptr %i.ar, ptr %i.av, !unpredictable !18
  %i.ba = select i1 %i.ax, ptr %i.at, ptr %i.ar, !unpredictable !18
  %i.bb = select i1 %i.aw, ptr %i.ao, ptr %i.ba, !unpredictable !18 ; 3 uses
  %i.bc = select i1 %i.aw, ptr %i.ar, ptr %i.at, !unpredictable !18
  %i.bd = select i1 %i.ax, ptr %i.av, ptr %i.bc, !unpredictable !18 ; 3 uses
  %.val.i9 = load i8, ptr %i.bd, align 4, !noundef !18
  %.val1.i10 = load i8, ptr %i.bb, align 4, !noundef !18
  %i.be = icmp ult i8 %.val.i9, %.val1.i10        ; 2 uses
  %i.bf = select i1 %i.be, ptr %i.bd, ptr %i.bb, !unpredictable !18
  %i.bg = select i1 %i.be, ptr %i.bb, ptr %i.bd, !unpredictable !18
  %i.bh = load i64, ptr %i.ay, align 4            ; 3 uses
  store i64 %i.bh, ptr %i.ah, align 4
  %i.bi = getelementptr i8, ptr %2, i64 40
  %i.bj = load i64, ptr %i.bf, align 4
  store i64 %i.bj, ptr %i.bi, align 4
  %i.bk = getelementptr i8, ptr %2, i64 48
  %i.bl = load i64, ptr %i.bg, align 4
  store i64 %i.bl, ptr %i.bk, align 4
  %i.bm = getelementptr i8, ptr %2, i64 56        ; 2 uses
  %i.bn = load i64, ptr %i.az, align 4            ; 3 uses
  store i64 %i.bn, ptr %i.bm, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3424)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = trunc i64 %i.bh to i8
  %i.bq = trunc i64 %i.z to i8
  %i.br = icmp ult i8 %i.bp, %i.bq                ; 3 uses
  %i.bs = xor i1 %i.br, true
  %i.bt = select i1 %i.br, i64 %i.bh, i64 %i.z
  store i64 %i.bt, ptr %1, align 4, !noalias !3427
  %i.bu = zext i1 %i.br to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bu ; 3 uses
  %i.bw = zext i1 %i.bs to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = trunc i64 %i.bn to i8
  %i.ca = trunc i64 %i.af to i8
  %i.cb = icmp ult i8 %i.bz, %i.ca                ; 3 uses
  %i.cc = xor i1 %i.cb, true
  %i.cd = select i1 %i.cb, i64 %i.af, i64 %i.bn
  store i64 %i.cd, ptr %i.bo, align 4, !noalias !3431
  %.neg.i.i = sext i1 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.bm, i64 %.neg.i.i ; 3 uses
  %.neg15.i.i = sext i1 %i.cb to i64
  %i.cf = getelementptr [8 x i8], ptr %i.ae, i64 %.neg15.i.i ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.011.0.val.i.1 = load i8, ptr %i.bv, align 4, !alias.scope !3424, !noundef !18
  %.sroa.06.0.val.i.1 = load i8, ptr %i.bx, align 4, !alias.scope !3424, !noundef !18
  %i.ch = icmp ult i8 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 3 uses
  %..i23.i.1 = select i1 %i.ch, ptr %i.bv, ptr %i.bx
  %i.ci = xor i1 %i.ch, true
  %i.cj = load i64, ptr %..i23.i.1, align 4, !alias.scope !3424, !noalias !3435
  store i64 %i.cj, ptr %i.by, align 4, !noalias !3427
  %i.ck = zext i1 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ck ; 3 uses
  %i.cm = zext i1 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i.1 = load i8, ptr %i.ce, align 4, !alias.scope !3424, !noundef !18
  %.sroa.015.0.val.i.1 = load i8, ptr %i.cf, align 4, !alias.scope !3424, !noundef !18
  %i.cp = icmp ult i8 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.cp, ptr %i.cf, ptr %i.ce
  %i.cq = xor i1 %i.cp, true
  %i.cr = load i64, ptr %..i.i.1, align 4, !alias.scope !3424, !noalias !3436
  store i64 %i.cr, ptr %i.cg, align 4, !noalias !3431
  %.neg.i.i.1 = sext i1 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.ce, i64 %.neg.i.i.1 ; 3 uses
  %.neg15.i.i.1 = sext i1 %i.cp to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cf, i64 %.neg15.i.i.1 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.011.0.val.i.2 = load i8, ptr %i.cl, align 4, !alias.scope !3424, !noundef !18
  %.sroa.06.0.val.i.2 = load i8, ptr %i.cn, align 4, !alias.scope !3424, !noundef !18
  %i.cv = icmp ult i8 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 3 uses
  %..i23.i.2 = select i1 %i.cv, ptr %i.cl, ptr %i.cn
  %i.cw = xor i1 %i.cv, true
  %i.cx = load i64, ptr %..i23.i.2, align 4, !alias.scope !3424, !noalias !3435
  store i64 %i.cx, ptr %i.co, align 4, !noalias !3427
  %i.cy = zext i1 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.017.0.val.i.2 = load i8, ptr %i.cs, align 4, !alias.scope !3424, !noundef !18
  %.sroa.015.0.val.i.2 = load i8, ptr %i.ct, align 4, !alias.scope !3424, !noundef !18
  %i.dd = icmp ult i8 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 3 uses
  %..i.i.2 = select i1 %i.dd, ptr %i.ct, ptr %i.cs
  %i.de = xor i1 %i.dd, true
  %i.df = load i64, ptr %..i.i.2, align 4, !alias.scope !3424, !noalias !3436
  store i64 %i.df, ptr %i.cu, align 4, !noalias !3431
  %.neg.i.i.2 = sext i1 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.cs, i64 %.neg.i.i.2 ; 3 uses
  %.neg15.i.i.2 = sext i1 %i.dd to i64
  %i.dh = getelementptr [8 x i8], ptr %i.ct, i64 %.neg15.i.i.2 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.011.0.val.i.3 = load i8, ptr %i.cz, align 4, !alias.scope !3424, !noundef !18
  %.sroa.06.0.val.i.3 = load i8, ptr %i.db, align 4, !alias.scope !3424, !noundef !18
  %i.dj = icmp ult i8 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 3 uses
  %..i23.i.3 = select i1 %i.dj, ptr %i.cz, ptr %i.db
  %i.dk = xor i1 %i.dj, true
  %i.dl = load i64, ptr %..i23.i.3, align 4, !alias.scope !3424, !noalias !3435
  store i64 %i.dl, ptr %i.dc, align 4, !noalias !3427
  %i.dm = zext i1 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dm
  %i.do = zext i1 %i.dk to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.do
  %.sroa.017.0.val.i.3 = load i8, ptr %i.dg, align 4, !alias.scope !3424, !noundef !18
  %.sroa.015.0.val.i.3 = load i8, ptr %i.dh, align 4, !alias.scope !3424, !noundef !18
  %i.dq = icmp ult i8 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.dq, ptr %i.dh, ptr %i.dg
  %i.dr = xor i1 %i.dq, true
  %i.ds = load i64, ptr %..i.i.3, align 4, !alias.scope !3424, !noalias !3436
  store i64 %i.ds, ptr %i.di, align 4, !noalias !3431
  %.neg.i.i.3 = sext i1 %i.dr to i64
  %i.dt = getelementptr [8 x i8], ptr %i.dg, i64 %.neg.i.i.3
  %.neg15.i.i.3 = sext i1 %i.dq to i64
  %i.du = getelementptr [8 x i8], ptr %i.dh, i64 %.neg15.i.i.3
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = getelementptr i8, ptr %i.dt, i64 8
  %i.dx = icmp ne ptr %i.dp, %i.dv
  %i.dy = icmp ne ptr %i.dn, %i.dw
  %or.cond.i = select i1 %i.dx, i1 true, i1 %i.dy, !prof !3437
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2h_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit, !prof !3437

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #41, !noalias !3424
  unreachable

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2h_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2n_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.val9.i = load i8, ptr %.sroa.0.04, align 4, !noundef !18 ; 3 uses
  %.val10.i = load i8, ptr %.pn3, align 4, !noundef !18
  %i.b = icmp ult i8 %.val9.i, %.val10.i
  br i1 %i.b, label %bb.a, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

bb.a:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.pn3, i64 12
  %i.d = load i32, ptr %i.c, align 4, !range !3438, !noundef !18
  %i.e = load i64, ptr %.pn3, align 4
  store i64 %i.e, ptr %.sroa.0.04, align 4
  %i.f = icmp eq ptr %.pn3, %0
  br i1 %i.f, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  %i.g = load i64, ptr %i.i, align 4
  store i64 %i.g, ptr %.sroa.0.0.i1, align 4
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.i, %bb.b ], [ %.pn3, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8 ; 4 uses
  %.val8.i = load i8, ptr %i.i, align 4, !noundef !18
  %i.j = icmp ult i8 %.val9.i, %.val8.i
  br i1 %i.j, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ]
  %.sroa.0.sroa.56.0.insert.ext.i = zext nneg i32 %i.d to i64
  %.sroa.0.sroa.56.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.56.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i8 %.val9.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.56.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !3439
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread94, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i8, ptr %i.q, align 4, !alias.scope !3444, !noalias !3447, !noundef !18 ; 3 uses
  %.val11.i = load i8, ptr %i.o, align 4, !alias.scope !3444, !noalias !3447, !noundef !18
  %i.r = icmp ult i8 %.val10.i, %.val11.i         ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i8 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i8, ptr %i.s, align 4, !alias.scope !3444, !noalias !3447, !noundef !18 ; 2 uses
  %i.t = icmp ult i8 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i8 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i8, ptr %i.v, align 4, !alias.scope !3444, !noalias !3447, !noundef !18 ; 2 uses
  %i.w = icmp ult i8 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph57

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3450
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ao, i64 %i.ac ; 3 uses
  %i.af = load i8, ptr %i.ad, align 4, !alias.scope !3451, !noalias !3456, !noundef !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !3438, !alias.scope !3451, !noalias !3456, !noundef !18
  %i.ai = load i64, ptr %i.ae, align 4, !alias.scope !3458, !noalias !3459
  store i64 %i.ai, ptr %i.ad, align 4, !alias.scope !3451, !noalias !3456
  store i8 %i.af, ptr %i.ae, align 4, !alias.scope !3458, !noalias !3459
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !alias.scope !3458, !noalias !3459
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit.loopexit.unr-lcssa, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i.epil.preheader ]
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

bb.q:                                             ; preds = %bb.n
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460), !noalias !3447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3461), !noalias !3447
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread94, %bb.q
  %i.an = phi i64 [ %i.am, %bb.q ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB23_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.thread94 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.an, 1
  br i1 %i.ap, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.an, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i, %.lr.ph.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i ]
  %i.aq = xor i64 %.sroa.0.016.i.i, -1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.ao, i64 %i.aq ; 3 uses
  %i.at = load i8, ptr %i.ar, align 4, !alias.scope !3451, !noalias !3456, !noundef !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !3438, !alias.scope !3451, !noalias !3456, !noundef !18
  %i.aw = load i64, ptr %i.as, align 4, !alias.scope !3458, !noalias !3459
  store i64 %i.aw, ptr %i.ar, align 4, !alias.scope !3451, !noalias !3456
  store i8 %i.at, ptr %i.as, align 4, !alias.scope !3458, !noalias !3459
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.av, ptr %i.ax, align 4, !alias.scope !3458, !noalias !3459
  %i.ay = xor i64 %.sroa.0.016.i.i, -2
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ao, i64 %i.ay ; 3 uses
  %i.bc = load i8, ptr %i.ba, align 4, !alias.scope !3451, !noalias !3456, !noundef !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !range !3438, !alias.scope !3451, !noalias !3456, !noundef !18
  %i.bf = load i64, ptr %i.bb, align 4, !alias.scope !3458, !noalias !3459
  store i64 %i.bf, ptr %i.ba, align 4, !alias.scope !3451, !noalias !3456
  store i8 %i.bc, ptr %i.bb, align 4, !alias.scope !3458, !noalias !3459
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.be, ptr %i.bg, align 4, !alias.scope !3458, !noalias !3459
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit11.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.0.i34 = phi i64 [ %i.al, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE7reverseCsb6FLkjZuKG_18ruff_python_parser.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser:bb.a
  %i.ef = icmp ugt i64 %i.br, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3462
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph128 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.kp, %.outer ] ; 22 uses
  %.sroa.16.0.ph127 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.ka, %.outer ] ; 2 uses
  %.sroa.025.0.ph126 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.ev, %.outer ] ; 2 uses
  %.sroa.028.0.ph125 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph128 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph125, null
  %i.e = icmp eq i32 %.sroa.025.0.ph126, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph298

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.f = icmp eq i32 %i.ev, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph298

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph128, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit ], [ %0, %bb.a ], [ %i.kp, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit ], [ %1, %bb.a ], [ %i.ka, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  call void @llvm.experimental.noalias.scope.decl(metadata !3487)
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2t_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.i = icmp samesign ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2a_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa119, ptr noundef nonnull align 4 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2a_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 8
  %.val8.i.i = load i8, ptr %i.q, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val9.i.i = load i8, ptr %.sroa.0.0.ph.lcssa119, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.r = icmp ult i8 %.val8.i.i, %.val9.i.i       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 16
  %.val6.i.i = load i8, ptr %i.s, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val7.i.i = load i8, ptr %i.t, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.u = icmp ult i8 %.val6.i.i, %.val7.i.i       ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.ac ; 3 uses
  %.val4.i.i = load i8, ptr %i.ab, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val5.i.i = load i8, ptr %i.w, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.ae = icmp ult i8 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i8, ptr %i.ad, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val3.i.i = load i8, ptr %i.z, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.af = icmp ult i8 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !18
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !18
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !18
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !18 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !18
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !18 ; 3 uses
  %.val.i.i = load i8, ptr %i.al, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val1.i.i = load i8, ptr %i.aj, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.am = icmp ult i8 %.val.i.i, %.val1.i.i       ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !18
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !18
  %i.ap = load i64, ptr %i.ag, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.ap, ptr %2, align 4, !alias.scope !3487, !noalias !3484
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.ar, ptr %i.aq, align 4, !alias.scope !3487, !noalias !3484
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.at, ptr %i.as, align 4, !alias.scope !3487, !noalias !3484
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ah, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.av, ptr %i.au, align 4, !alias.scope !3487, !noalias !3484
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val8.i30.i = load i8, ptr %i.ay, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val9.i31.i = load i8, ptr %i.aw, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.az = icmp ult i8 %.val8.i30.i, %.val9.i31.i  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val6.i32.i = load i8, ptr %i.ba, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val7.i33.i = load i8, ptr %i.bb, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.bc = icmp ult i8 %.val6.i32.i, %.val7.i33.i  ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk ; 3 uses
  %.val4.i34.i = load i8, ptr %i.bj, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val5.i35.i = load i8, ptr %i.be, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.bm = icmp ult i8 %.val4.i34.i, %.val5.i35.i  ; 3 uses
  %.val2.i36.i = load i8, ptr %i.bl, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val3.i37.i = load i8, ptr %i.bh, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.bn = icmp ult i8 %.val2.i36.i, %.val3.i37.i  ; 3 uses
  %i.bo = select i1 %i.bm, ptr %i.bj, ptr %i.be, !unpredictable !18
  %i.bp = select i1 %i.bn, ptr %i.bh, ptr %i.bl, !unpredictable !18
  %i.bq = select i1 %i.bn, ptr %i.bj, ptr %i.bh, !unpredictable !18
  %i.br = select i1 %i.bm, ptr %i.be, ptr %i.bq, !unpredictable !18 ; 3 uses
  %i.bs = select i1 %i.bm, ptr %i.bh, ptr %i.bj, !unpredictable !18
  %i.bt = select i1 %i.bn, ptr %i.bl, ptr %i.bs, !unpredictable !18 ; 3 uses
  %.val.i38.i = load i8, ptr %i.bt, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val1.i39.i = load i8, ptr %i.br, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.bu = icmp ult i8 %.val.i38.i, %.val1.i39.i   ; 2 uses
  %i.bv = select i1 %i.bu, ptr %i.bt, ptr %i.br, !unpredictable !18
  %i.bw = select i1 %i.bu, ptr %i.br, ptr %i.bt, !unpredictable !18
  %i.bx = load i64, ptr %i.bo, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.bx, ptr %i.ax, align 4, !alias.scope !3487, !noalias !3484
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bz = load i64, ptr %i.bv, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.bz, ptr %i.by, align 4, !alias.scope !3487, !noalias !3484
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cb = load i64, ptr %i.bw, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.cb, ptr %i.ca, align 4, !alias.scope !3487, !noalias !3484
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cd = load i64, ptr %i.bp, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.cd, ptr %i.cc, align 4, !alias.scope !3487, !noalias !3484
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ce = load i64, ptr %.sroa.0.0.ph.lcssa119, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.ce, ptr %2, align 4, !alias.scope !3487, !noalias !3484
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.ch = load i64, ptr %i.cf, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.ch, ptr %i.cg, align 4, !alias.scope !3487, !noalias !3484
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.ci = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.j ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.cj, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.j
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.cl = getelementptr [8 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cm = icmp samesign ult i64 %.sroa.0.0.i, %i.ci
  br i1 %i.cm, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cz, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.sroa.05.08.1.i
  %.idx328 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx328 ; 3 uses
  %i.cp = load i64, ptr %i.cn, align 4, !alias.scope !3484, !noalias !3487 ; 3 uses
  store i64 %i.cp, ptr %i.co, align 4, !alias.scope !3487, !noalias !3484
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -8 ; 3 uses
  %i.cr = trunc i64 %i.cp to i8                   ; 2 uses
  %.val10.i.1.i = load i8, ptr %i.cq, align 4, !alias.scope !3487, !noalias !3484, !noundef !18
  %i.cs = icmp ugt i8 %.val10.i.1.i, %i.cr
  br i1 %i.cs, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %i.ct = load i64, ptr %i.cq, align 4, !alias.scope !3487, !noalias !3484
  store i64 %i.ct, ptr %i.co, align 4, !alias.scope !3487, !noalias !3484
  %i.cu = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cu, label %._crit_edge309, label %.lr.ph308

.preheader:                                       ; preds = %.lr.ph308
  %i.cv = load i64, ptr %i.cx, align 4, !alias.scope !3487, !noalias !3484
  store i64 %i.cv, ptr %.sroa.0.0.i41.1.i307, align 4, !alias.scope !3487, !noalias !3484
  %i.cw = icmp eq ptr %i.cx, %i.cl
  br i1 %i.cw, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i41.1.i307 = phi ptr [ %i.cx, %.preheader ], [ %i.cq, %.preheader.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i307, i64 -8 ; 4 uses
  %.val8.i42.1.i = load i8, ptr %i.cx, align 4, !alias.scope !3487, !noalias !3484, !noundef !18
  %i.cy = icmp ugt i8 %.val8.i42.1.i, %i.cr
  br i1 %i.cy, label %.preheader, label %._crit_edge309

._crit_edge309:                                   ; preds = %.preheader, %.lr.ph308, %.preheader.preheader
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cl, %.preheader.preheader ], [ %i.cl, %.preheader ], [ %.sroa.0.0.i41.1.i307, %.lr.ph308 ]
  %.sroa.0.sroa.0.0.insert.insert.i.1.i = and i64 %i.cp, -4294967041
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.1.i, ptr %.sroa.0.0.i41.lcssa.1.i, align 4, !alias.scope !3487, !noalias !3489
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i: ; preds = %._crit_edge309, %.lr.ph.1.i
  %i.cz = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cz, %i.ci
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3494)
  %i.da = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.cl, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.de = getelementptr i8, ptr %i.dv, i64 8      ; 2 uses
  %i.df = getelementptr i8, ptr %i.du, i64 8
  %i.dg = and i64 %.sroa.16.0.lcssa, 1
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa119, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.di, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.cl, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.dd, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.dc, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.db, %.loopexit.1.i ] ; 2 uses
  %i.di = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i8, ptr %.sroa.011.07.i.i, align 4, !alias.scope !3497, !noalias !3484, !noundef !18
  %.sroa.06.0.val.i.i = load i8, ptr %.sroa.06.08.i.i, align 4, !alias.scope !3497, !noalias !3484, !noundef !18
  %i.dj = icmp ult i8 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %i.dj, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dk = xor i1 %i.dj, true
  %i.dl = load i64, ptr %..i23.i.i, align 4, !alias.scope !3497, !noalias !3498
  store i64 %i.dl, ptr %.sroa.0.010.i.i, align 4, !alias.scope !3484, !noalias !3502
  %i.dm = zext i1 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.dm ; 4 uses
  %i.do = zext i1 %i.dk to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.do ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i8, ptr %.sroa.017.05.i.i, align 4, !alias.scope !3497, !noalias !3484, !noundef !18
  %.sroa.015.0.val.i.i = load i8, ptr %.sroa.015.06.i.i, align 4, !alias.scope !3497, !noalias !3484, !noundef !18
  %i.dr = icmp ult i8 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dr, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.ds = xor i1 %i.dr, true
  %i.dt = load i64, ptr %..i.i.i, align 4, !alias.scope !3497, !noalias !3503
  store i64 %i.dt, ptr %.sroa.019.04.i.i, align 4, !alias.scope !3484, !noalias !3507
  %.neg.i.i.i = sext i1 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dr to i64
  %i.dv = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.di, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dx = icmp ult ptr %i.dp, %i.de               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dx, ptr %i.dp, ptr %i.dn
  %i.dy = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !3497, !noalias !3484
  store i64 %i.dy, ptr %i.dq, align 4, !alias.scope !3484, !noalias !3497
  %i.dz = zext i1 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dz
  %i.eb = xor i1 %i.dx, true
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ec
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dn, %._crit_edge.i.i ], [ %i.ed, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.dp, %._crit_edge.i.i ], [ %i.ea, %bb.k ]
  %i.ee = icmp ne ptr %.sroa.06.1.i.i, %i.de
  %i.ef = icmp ne ptr %.sroa.011.1.i.i, %i.df
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %i.ef, !prof !3437
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2t_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit, !prof !3437

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #41
          to label %.noexc.i unwind label %bb.n, !noalias !3484

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa119, ptr nonnull align 4 %2, i64 %i.eh, i1 false), !alias.scope !3508, !noalias !3509
  resume { ptr, i32 } %i.eg

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.05.08.i = phi i64 [ %i.eu, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ek = load i64, ptr %i.ei, align 4, !alias.scope !3484, !noalias !3487 ; 3 uses
  store i64 %i.ek, ptr %i.ej, align 4, !alias.scope !3487, !noalias !3484
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 3 uses
  %i.em = trunc i64 %i.ek to i8                   ; 2 uses
  %.val10.i.i = load i8, ptr %i.el, align 4, !alias.scope !3487, !noalias !3484, !noundef !18
  %i.en = icmp ugt i8 %.val10.i.i, %i.em
  br i1 %i.en, label %.preheader85.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i

.preheader85.preheader:                           ; preds = %.lr.ph.i
  %i.eo = load i64, ptr %i.el, align 4, !alias.scope !3487, !noalias !3484
  store i64 %i.eo, ptr %i.ej, align 4, !alias.scope !3487, !noalias !3484
  %i.ep = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.ep, label %._crit_edge304, label %.lr.ph303

.preheader85:                                     ; preds = %.lr.ph303
  %i.eq = load i64, ptr %i.es, align 4, !alias.scope !3487, !noalias !3484
  store i64 %i.eq, ptr %.sroa.0.0.i41.i302, align 4, !alias.scope !3487, !noalias !3484
  %i.er = icmp eq ptr %i.es, %2
  br i1 %i.er, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader85.preheader, %.preheader85
  %.sroa.0.0.i41.i302 = phi ptr [ %i.es, %.preheader85 ], [ %i.el, %.preheader85.preheader ] ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i302, i64 -8 ; 4 uses
  %.val8.i42.i = load i8, ptr %i.es, align 4, !alias.scope !3487, !noalias !3484, !noundef !18
  %i.et = icmp ugt i8 %.val8.i42.i, %i.em
  br i1 %i.et, label %.preheader85, label %._crit_edge304

._crit_edge304:                                   ; preds = %.preheader85, %.lr.ph303, %.preheader85.preheader
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %.preheader85.preheader ], [ %2, %.preheader85 ], [ %.sroa.0.0.i41.i302, %.lr.ph303 ]
  %.sroa.0.sroa.0.0.insert.insert.i.i = and i64 %i.ek, -4294967041
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %.sroa.0.0.i41.lcssa.i, align 4, !alias.scope !3487, !noalias !3489
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %._crit_edge304, %.lr.ph.i
  %i.eu = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eu, %i.j
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0121.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph128, i64 noundef %.sroa.16.0121.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2t_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

.lr.ph298:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0120297 = phi i32 [ %i.ev, %bb.b ], [ %.sroa.025.0.ph126, %.lr.ph ]
  %.sroa.16.0121296 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ] ; 19 uses
  %i.ev = add i32 %.sroa.025.0120297, -1          ; 4 uses
  %i.ew = lshr i64 %.sroa.16.0121296, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ew, 5
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ew, 56
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx2.i ; 3 uses
  %i.ez = icmp samesign ult i64 %.sroa.16.0121296, 64
  br i1 %i.ez, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph298
  %i.fa = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph128, ptr noundef readonly %i.ex, ptr noundef readonly %i.ey, i64 noundef %i.ew)
  br label %bb.p

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %.lr.ph298
  %.val6.i = load i8, ptr %.sroa.0.0.ph128, align 4, !alias.scope !3514, !noundef !18 ; 2 uses
  %.val7.i = load i8, ptr %i.ex, align 4, !alias.scope !3514, !noundef !18 ; 2 uses
  %i.fb = icmp ult i8 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i8, ptr %i.ey, align 4, !alias.scope !3514, !noundef !18 ; 2 uses
  %i.fc = icmp ult i8 %.val6.i, %.val5.i
  %i.fd = xor i1 %i.fb, %i.fc
  %i.fe = icmp ult i8 %.val7.i, %.val5.i
  %i.ff = xor i1 %i.fb, %i.fe
  %..i.i = select i1 %i.ff, ptr %i.ey, ptr %i.ex
  %.sroa.0.0.i.i = select i1 %i.fd, ptr %.sroa.0.0.ph128, ptr %..i.i
  br label %bb.p

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2t_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.fa, %bb.o ]
  %i.fg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fh = sub nuw i64 %i.fg, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fh, 3        ; 3 uses
  %i.fi = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0121296
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %i.fh ; 4 uses
  %i.fk = load i8, ptr %i.fj, align 4             ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fm = load i32, ptr %i.fl, align 4
  store i8 %i.fk, ptr %i.a, align 4
  store i32 %i.fm, ptr %i.c, align 4
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load i8, ptr %.sroa.028.0.ph125, align 4, !noundef !18
  %i.fn = icmp ult i8 %.sroa.028.0.val, %i.fk
  br i1 %i.fn, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  call void @llvm.experimental.noalias.scope.decl(metadata !3520)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0121296
  br i1 %.not83, label %bb.t, label %bb.s, !prof !3437

bb.s:                                             ; preds = %bb.r
  %i.fo = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0121296 ; 3 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.43.0.i = phi ptr [ %i.fo, %bb.s ], [ %i.hg, %bb.v ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.s ], [ %.sroa.27.2.lcssa.i, %bb.v ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph128, %bb.s ], [ %i.hj, %bb.v ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.s ], [ %.sroa.16.0121296, %bb.v ] ; 3 uses
  %i.fp = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %i.fp ; 2 uses
  %i.fr = icmp ult ptr %.sroa.9.0.i, %i.fq
  br i1 %i.fr, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.u, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gt, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.u ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.gs, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.u ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.go, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.u ] ; 4 uses
  %.val22.i = load i8, ptr %.sroa.9.131.i, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.fs = icmp ult i8 %.val22.i, %i.fk            ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.fs, ptr %2, ptr %i.ft
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  %i.fv = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !3517, !noalias !3522
  store i64 %i.fv, ptr %i.fu, align 4, !alias.scope !3520, !noalias !3525
  %i.fw = zext i1 %i.fs to i64
  %i.fx = add i64 %.sroa.27.130.i, %i.fw          ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8 ; 2 uses
  %.val20.i = load i8, ptr %i.fy, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.fz = icmp ult i8 %.val20.i, %i.fk            ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i24.i = select i1 %i.fz, ptr %2, ptr %i.ga
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i, i64 %i.fx
  %i.gc = load i64, ptr %i.fy, align 4, !alias.scope !3517, !noalias !3526
  store i64 %i.gc, ptr %i.gb, align 4, !alias.scope !3520, !noalias !3529
  %i.gd = zext i1 %i.fz to i64
  %i.ge = add i64 %i.fx, %i.gd                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val18.i = load i8, ptr %i.gf, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.gg = icmp ult i8 %.val18.i, %i.fk            ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i25.i = select i1 %i.gg, ptr %2, ptr %i.gh
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i, i64 %i.ge
  %i.gj = load i64, ptr %i.gf, align 4, !alias.scope !3517, !noalias !3530
  store i64 %i.gj, ptr %i.gi, align 4, !alias.scope !3520, !noalias !3533
  %i.gk = zext i1 %i.gg to i64
  %i.gl = add i64 %i.ge, %i.gk                    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24 ; 2 uses
  %.val16.i = load i8, ptr %i.gm, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.gn = icmp ult i8 %.val16.i, %i.fk            ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.gn, ptr %2, ptr %i.go
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i, i64 %i.gl
  %i.gq = load i64, ptr %i.gm, align 4, !alias.scope !3517, !noalias !3534
  store i64 %i.gq, ptr %i.gp, align 4, !alias.scope !3520, !noalias !3537
  %i.gr = zext i1 %i.gn to i64
  %i.gs = add i64 %i.gl, %i.gr                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.gu = icmp ult ptr %i.gt, %i.fq
  br i1 %i.gu, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.u
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.u ], [ %i.go, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.u ], [ %i.gs, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.u ], [ %i.gt, %.lr.ph.i40 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i38 ; 2 uses
  %i.gw = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gv
  br i1 %i.gw, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gz, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hd, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.he, %.lr.ph38.i ] ; 2 uses
  %i.gx = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0121296
  br i1 %i.gx, label %bb.w, label %bb.v

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.he, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.hd, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gz, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i8, ptr %.sroa.9.236.i, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.gy = icmp ult i8 %.val.i, %i.fk              ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i27.i = select i1 %i.gy, ptr %2, ptr %i.gz
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i, i64 %.sroa.27.235.i
  %i.hb = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !3517, !noalias !3538
  store i64 %i.hb, ptr %i.ha, align 4, !alias.scope !3520, !noalias !3541
  %i.hc = zext i1 %i.gy to i64
  %i.hd = add i64 %.sroa.27.235.i, %i.hc          ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.hf = icmp ult ptr %i.he, %i.gv
  br i1 %i.hf, label %.lr.ph38.i, label %._crit_edge39.i

bb.v:                                             ; preds = %._crit_edge39.i
  %i.hg = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.sroa.27.2.lcssa.i
  %i.hi = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !3517, !noalias !3542
  store i64 %i.hi, ptr %i.hh, align 4, !alias.scope !3520, !noalias !3545
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge39.i
  %i.hk = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph128, ptr nonnull align 4 %2, i64 %i.hk, i1 false), !alias.scope !3546
  %i.hl = sub i64 %.sroa.16.0121296, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0121296, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.w
  %i.hm = getelementptr [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.hl, 4
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph45.i
  %n.vec317 = and i64 %i.hl, -4                   ; 3 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next324, %vector.body318 ] ; 3 uses
  %i.hn = xor i64 %index319, -1
  %i.ho = getelementptr [8 x i8], ptr %i.fo, i64 %i.hn ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %i.hm, i64 %index319 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.ho, i64 -8
  %i.hr = getelementptr i8, ptr %i.ho, i64 -24
  %wide.load320 = load <2 x i64>, ptr %i.hq, align 4, !alias.scope !3520, !noalias !3517
  %wide.load321 = load <2 x i64>, ptr %i.hr, align 4, !alias.scope !3520, !noalias !3517
  %reverse322 = shufflevector <2 x i64> %wide.load320, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse323 = shufflevector <2 x i64> %wide.load321, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hs = getelementptr i8, ptr %i.hp, i64 16
end_hunk_1
begin_hunk_2_@_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser21parse_unicode_literal:bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !18  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 8 uses
  %.promoted = load i64, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.s
  %i.h = phi i64 [ %.promoted, %bb.a ], [ %i.br, %bb.s ] ; 13 uses
  %.sroa.0.0135 = phi i32 [ 0, %bb.a ], [ %i.cd, %bb.s ]
  %.sroa.0.096134 = phi i64 [ 1, %bb.a ], [ %spec.select109, %bb.s ] ; 3 uses
  %i.i = icmp uge i64 %.sroa.0.096134, %2         ; 2 uses
  %not. = xor i1 %i.i, true
  %i.j = zext i1 %not. to i64
  %spec.select109 = add nuw i64 %.sroa.0.096134, %i.j ; 2 uses
  %i.k = icmp ugt i64 %i.h, 4294967295
  %i.l = shl nuw i64 %i.h, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.k, i64 513, i64 %i.l ; 3 uses
  %i.m = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.m, label %bb.c, label %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser16compute_position.exit, !prof !3

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14189
  store i8 2, ptr %i.b, align 1, !noalias !14189
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #41
  unreachable

_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser16compute_position.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14192)
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser16compute_position.exit
  %.not.i.i = icmp ult i64 %i.h, %i.g
  br i1 %.not.i.i, label %bb.e, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.o = icmp eq i64 %i.h, %i.g
  br i1 %i.o, label %bb.f, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !14195, !noalias !14192, !noundef !18
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %.split.i.i, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser16compute_position.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 4 uses
  %i.t = icmp samesign eq i64 %i.h, %i.g
  br i1 %i.t, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.s, align 1, !noalias !14198, !noundef !18 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = and i8 %i.u, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = add nuw nsw i64 %i.h, 1
  %i.aa = icmp samesign ne i64 %i.z, %i.g
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.w, align 1, !noalias !14198, !noundef !18
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.u, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i: ; preds = %bb.g
  %i.ah = zext nneg i8 %i.u to i32
  br label %bb.q

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.aj = add nuw nsw i64 %i.h, 2
  %i.ak = icmp samesign ne i64 %i.aj, %i.g
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !14198, !noundef !18
  %i.am = shl nuw nsw i32 %i.ae, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.y, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.u, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.au = add nuw nsw i64 %i.h, 3
  %i.av = icmp samesign ne i64 %i.au, %i.g
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !14198, !noundef !18
  %i.ax = shl nuw nsw i32 %i.y, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i
  %.sroa.4.0.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i ], [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i ] ; 6 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.i, 128
  br i1 %i.be, label %bb.q, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.i, 2048
  br i1 %i.bf, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.i, 65536
  %..i.i.i = select i1 %i.bg, i64 3, i64 4
  br label %bb.q

bb.j:                                             ; preds = %bb.e, %.split.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #41, !noalias !14192
  unreachable

bb.k:                                             ; preds = %bb.s
  %i.bh = and i32 %i.cd, -2048
  %or.cond = icmp eq i32 %i.bh, 55296
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = xor i32 %i.cd, 55296
  %i.bj = add i32 %i.bi, -1114112
  %i.bk = icmp ult i32 %i.bj, -1112064
  %spec.select = select i1 %i.bk, i32 -1, i32 %i.cd ; 2 uses
  %i.bl = icmp ugt i64 %i.br, 4294967295
  %i.bm = shl nuw i64 %i.br, 32
  %.sroa.09.0.insert.insert.i46 = select i1 %i.bl, i64 513, i64 %i.bm ; 2 uses
  %i.bn = trunc i64 %.sroa.09.0.insert.insert.i46 to i1
  br i1 %i.bn, label %.noexc49, label %bb.n, !prof !3

.noexc49:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14201
  store i8 2, ptr %i.a, align 1, !noalias !14201
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #41
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 65533, ptr %i.bo, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %.not = icmp eq i32 %spec.select, -1
  br i1 %.not, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit: ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select, ptr %i.bp, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.6.0.extract.shift.i.i47 = lshr i64 %.sroa.09.0.insert.insert.i46, 32
  %.sroa.6.0.extract.trunc.i.i48 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i47 to i32
  %i.bq = add i32 %.val45, %.sroa.6.0.extract.trunc.i.i48 ; 2 uses
  store i8 2, ptr %0, align 8
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bq, ptr %.sroa.794.0..sroa_idx, align 8
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bq, ptr %.sroa.895.0..sroa_idx, align 4
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit, %bb.o, %bb.r, %bb.x, %bb.m
  ret void

bb.q:                                             ; preds = %bb.i, %bb.h, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i
  %.sroa.4.0.i21.i = phi i32 [ %.sroa.4.0.i.i, %bb.h ], [ %.sroa.4.0.i.i, %bb.i ], [ %.sroa.4.0.i.i, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.ah, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i ] ; 7 uses
  %.sroa.0.0.i.i.i = phi i64 [ 2, %bb.h ], [ %..i.i.i, %bb.i ], [ 1, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ 1, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i ]
  %i.br = add i64 %.sroa.0.0.i.i.i, %i.h          ; 4 uses
  store i64 %i.br, ptr %i.c, align 8, !alias.scope !14204
  %i.bs = icmp samesign ugt i32 %.sroa.4.0.i21.i, 57
  %i.bt = add nsw i32 %.sroa.4.0.i21.i, -65
  %i.bu = and i32 %i.bt, -33
  %i.bv = add nuw nsw i32 %i.bu, 10
  %i.bw = add nsw i32 %.sroa.4.0.i21.i, -48
  %.sroa.02.0.i = select i1 %i.bs, i32 %i.bv, i32 %i.bw ; 2 uses
  %i.bx = icmp ult i32 %.sroa.02.0.i, 16
  br i1 %i.bx, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.f
  %.sroa.6.0.extract.shift.i.i53 = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i54 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i53 to i32
  %i.by = add i32 %.val45, %.sroa.6.0.extract.trunc.i.i54 ; 2 uses
  store i8 2, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.by, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.by, ptr %.sroa.524.0..sroa_idx, align 4
  br label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.bz = sub nuw i64 %2, %.sroa.0.096134
  %.tr = trunc nuw nsw i64 %i.bz to i32
  %i.ca = shl nuw nsw i32 %.tr, 2
  %i.cb = and i32 %i.ca, 28
  %i.cc = shl nuw i32 %.sroa.02.0.i, %i.cb
  %i.cd = add i32 %i.cc, %.sroa.0.0135            ; 4 uses
  %.not.i = icmp ugt i64 %spec.select109, %2
  %or.cond110 = select i1 %i.i, i1 true, i1 %.not.i
  br i1 %or.cond110, label %bb.k, label %bb.b

bb.t:                                             ; preds = %bb.q
  %.sroa.6.0.extract.shift.i.i.le = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i.le = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.le to i32
  %i.ce = add i32 %.val45, %.sroa.6.0.extract.trunc.i.i.le ; 3 uses
  %i.cf = icmp samesign ult i32 %.sroa.4.0.i21.i, 1114112
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ult i32 %.sroa.4.0.i21.i, 128
  br i1 %i.cg, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = icmp samesign ult i32 %.sroa.4.0.i21.i, 2048
  br i1 %i.ch, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = icmp samesign ult i32 %.sroa.4.0.i21.i, 65536
  %i.cj = select i1 %i.ci, i32 3, i32 4
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.u, %bb.v
  %.sroa.020.0107 = phi i32 [ %i.cj, %bb.v ], [ 1, %bb.t ], [ 2, %bb.u ]
  %i.ck = add i32 %.sroa.020.0107, %i.ce          ; 2 uses
  %.not42 = icmp ugt i32 %i.ce, %i.ck
  br i1 %.not42, label %bb.w, label %bb.x, !prof !3

bb.w:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #41
  unreachable

bb.x:                                             ; preds = %.thread
  store i8 2, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ce, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ck, ptr %.sroa.515.0..sroa_idx, align 4
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_byte(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !18 ; 4 uses
  %i.e = icmp ugt i64 %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  %.not.not = icmp eq i64 %i.b, %i.d
  br i1 %.not.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.b, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = add i64 %i.d, 1
  store i64 %i.f, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #19 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12 = load ptr, ptr %i.b, align 8
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %.val, ptr %.val12, i64 noundef 1, i64 noundef 8, i64 noundef 64)
  %i.c = load i64, ptr %i.a, align 8, !range !3590, !noundef !18
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.j, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.h, %bb.c ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !range !3591, !noundef !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE7reserveCsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !18 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !18 ; 5 uses
  %i.e = add i64 %i.b, %1                         ; 4 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.e, %i.d
  br i1 %.not, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp slt i64 %i.d, 0
  br i1 %i.h, label %bb.f, label %.thread15, !prof !3

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14209)
  %.not.i = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %.not.i, label %.thread22, label %bb.j

.thread15:                                        ; preds = %bb.e
  %i.i = shl nuw i64 %i.d, 1
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.e) ; 2 uses
  %.not.i18 = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %.not.i18, label %bb.g, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i

.thread:                                          ; preds = %bb.d
  %.sroa.0.0.i4 = tail call noundef i64 @llvm.umax.i64(i64 %i.e, i64 4) ; 2 uses
  %.not.i5 = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %.not.i5, label %bb.g, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i

bb.g:                                             ; preds = %.thread15, %.thread
  %.sroa.0.0.i8 = phi i64 [ %.sroa.0.0.i4, %.thread ], [ %.sroa.0.0.i17, %.thread15 ] ; 3 uses
  %i.j = icmp slt i64 %.sroa.0.0.i8, 0
  br i1 %i.j, label %.thread22, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i

.thread22:                                        ; preds = %bb.f, %bb.g
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41, !noalias !14209
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i: ; preds = %bb.g
  %i.k = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.0.0.i8, i64 80) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, !prof !3

bb.h:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41, !noalias !14209
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw nsw i64 %i.m, 16                 ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !14209
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef 8) #42, !noalias !14209 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !3

bb.i:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.n) #41, !noalias !14209
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  store i64 0, ptr %i.o, align 8, !noalias !14209
  br label %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE10reallocateCsb6FLkjZuKG_18ruff_python_parser.exit

bb.j:                                             ; preds = %bb.f
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41, !noalias !14209
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %.thread15, %.thread
  %.sroa.0.0.i611 = phi i64 [ %.sroa.0.0.i17, %.thread15 ], [ %.sroa.0.0.i4, %.thread ] ; 4 uses
  %i.q = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.d, i64 80) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !3

bb.k:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41, !noalias !14209
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.s = extractvalue { i64, i1 } %i.q, 0
end_hunk_2
