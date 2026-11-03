Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.09?download=true
inline.NumInlined: 681
inline.NumDeleted: 351
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesReECsdcPuHeDsw6v_13project_model:bb.a

.preheader44.i.us.i.preheader:                    ; preds = %bb.g, %bb.f
  %i.bs = icmp ult i64 %i.bj, %i.f
  br i1 %i.bs, label %.lr.ph268, label %.split38.us.i.us.i

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.04.0.i.i.us.i266 = phi i64 [ %i.br, %bb.g ], [ %..i.i.i.us.i, %bb.f ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.0.i.i.us.i266
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !85, !noalias !86, !noundef !4
  %i.bv = add i64 %.sroa.04.0.i.i.us.i266, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.j
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !84, !noalias !86, !noundef !4
  %.not22.i.i.us.i = icmp eq i8 %i.bu, %i.by
  br i1 %.not22.i.i.us.i, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.reass.i.i.us.i = add i64 %.sroa.04.0.i.i.us.i266, %invariant.op.i.i.reass.us.reass.i.reass.reass.reass
  br label %.sink.split.i.i.us.i

.preheader44.i.us.i:                              ; preds = %bb.i
  %i.bz = icmp ult i64 %i.bj, %i.ca
  br i1 %i.bz, label %.lr.ph268, label %.split38.us.i.us.i

.lr.ph268:                                        ; preds = %.preheader44.i.us.i.preheader, %.preheader44.i.us.i
  %.sroa.2.0.i.i.us.i267 = phi i64 [ %i.ca, %.preheader44.i.us.i ], [ %i.f, %.preheader44.i.us.i.preheader ]
  %i.ca = add i64 %.sroa.2.0.i.i.us.i267, -1      ; 6 uses
  %i.cb = icmp ult i64 %i.ca, %i.y
  br i1 %i.cb, label %bb.i, label %.split40.us.i.i

bb.i:                                             ; preds = %.lr.ph268
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !85, !noalias !86, !noundef !4
  %i.ce = add i64 %i.ca, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.j
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !84, !noalias !86, !noundef !4
  %.not21.i.i.us.i = icmp eq i8 %i.cd, %i.ch
  br i1 %.not21.i.i.us.i, label %.preheader44.i.us.i, label %.sink.split.i.i.us.i

.sink.split.i.i.us.i:                             ; preds = %bb.i, %bb.h, %bb.e
  %.sink99.i.us.i = phi i64 [ %i.al, %bb.e ], [ %.reass.i.i.us.i, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.sink55.i.i.us.i = phi i64 [ 0, %bb.e ], [ 0, %bb.h ], [ %i.af, %bb.i ]
  %i.ci = add i64 %.sink99.i.us.i, %i.z           ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.j
  br i1 %i.cj, label %.lr.ph.i.split.i.us.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.i.split.us.i.us.i:                         ; preds = %.lr.ph.i.split.us.i.us.i.preheader, %.loopexit.split.us.us.i
  %.sink98.i.us.i67 = phi i64 [ %.sink98.i.us.i, %.loopexit.split.us.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i.preheader ]
  %i.ck = phi i64 [ %i.cy, %.loopexit.split.us.us.i ], [ %i.ah, %.lr.ph.i.split.us.i.us.i.preheader ]
  %.not.i18.us.i.us.i = icmp eq i64 %.sink98.i.us.i67.lcssa69.us81, %.sink98.i.us.i67
  br i1 %.not.i18.us.i.us.i, label %bb.j, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

bb.j:                                             ; preds = %.lr.ph.i.split.us.i.us.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !84, !noalias !86, !noundef !4
  %i.cn = and i8 %i.cm, 63
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.ab
  %.not20.i.us.i.us.i = icmp eq i64 %i.cq, 0
  br i1 %.not20.i.us.i.us.i, label %.loopexit.split.us.us.i, label %.preheader43.i.us.i.preheader

.preheader43.i.us.i.preheader:                    ; preds = %bb.j
  br i1 %exitcond.not.i.us.i.us.i269.not, label %.lr.ph271, label %.preheader.i.preheader.us.i

.preheader43.i.us.i:                              ; preds = %.lr.ph271
  %i.cr = add nuw i64 %.sroa.04.0.i.us.i.us.i270, 1 ; 2 uses
  %exitcond.not.i.us.i.us.i = icmp eq i64 %i.cr, %umax.i.us.i.i
  br i1 %exitcond.not.i.us.i.us.i, label %.preheader.i.preheader.us.i, label %.lr.ph271

.lr.ph271:                                        ; preds = %.preheader43.i.us.i.preheader, %.preheader43.i.us.i
  %.sroa.04.0.i.us.i.us.i270 = phi i64 [ %i.cr, %.preheader43.i.us.i ], [ %i.f, %.preheader43.i.us.i.preheader ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.0.i.us.i.us.i270
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !85, !noalias !86, !noundef !4
  %i.cu = add i64 %.sroa.04.0.i.us.i.us.i270, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.j
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !84, !noalias !86, !noundef !4
  %.not22.i.us.i.us.i = icmp eq i8 %i.ct, %i.cx
  br i1 %.not22.i.us.i.us.i, label %.preheader43.i.us.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph271
  %.reass.i.us.i.us.i = add i64 %.sroa.04.0.i.us.i.us.i270, %invariant.op.i.i.reass.us.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i

.preheader.i.preheader.us.i:                      ; preds = %.preheader43.i.us.i.preheader, %.preheader43.i.us.i
  br i1 %i.k, label %.split38.us.i.us.i, label %.split40.us.i.i

.loopexit.split.us.us.i:                          ; preds = %bb.k, %bb.j
  %.sink98.i.us.i = phi i64 [ %i.al, %bb.j ], [ %.reass.i.us.i.us.i, %bb.k ] ; 2 uses
  %i.cy = add i64 %.sink98.i.us.i, %i.z           ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.j
  br i1 %i.cz, label %.lr.ph.i.split.us.i.us.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.split38.us.i.us.i:                               ; preds = %.preheader44.i.us.i.preheader, %.preheader.i.us.us.i.us.preheader, %.preheader44.i.us.i, %.preheader.i.us.us.i.us, %.preheader.i.preheader.us.i
  %spec.select101 = phi i64 [ -1, %.preheader.i.us.us.i.us ], [ -1, %.preheader.i.preheader.us.i ], [ 0, %.preheader44.i.us.i ], [ -1, %.preheader.i.us.us.i.us.preheader ], [ 0, %.preheader44.i.us.i.preheader ]
  %i.da = icmp eq i64 %i.al, %i.j
  br i1 %i.da, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit, label %bb.b

.split.i:                                         ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.dc = load i8, ptr %i.db, align 2, !range !6, !alias.scope !81
  %i.dd = trunc nuw i8 %i.dc to i1
  %.promoted95.i = load i8, ptr %i.e, align 8, !alias.scope !81 ; 11 uses
  br i1 %i.dd, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i
  br i1 %i.k, label %.lr.ph.split.split.i.preheader.split.us, label %.lr.ph.split.split.i.preheader.split

.lr.ph.split.split.i.preheader.split.us:          ; preds = %.lr.ph.split.split.i.preheader
  %.pr.i.us = load i8, ptr %i.m, align 1, !noalias !87 ; 3 uses
  %i.de = icmp sgt i8 %.pr.i.us, -1
  %i.df = icmp samesign ugt i8 %.pr.i.us, -17
  br i1 %i.de, label %.lr.ph.split.split.i.us.us.preheader, label %.lr.ph.split.split.i.preheader.split.us.split

.lr.ph.split.split.i.us.us.preheader:             ; preds = %.lr.ph.split.split.i.preheader.split.us
  %i.dg = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dg, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.us.split:    ; preds = %.lr.ph.split.split.i.preheader.split.us
  %i.dh = icmp samesign ugt i8 %.pr.i.us, -33
  tail call void @llvm.assume(i1 %i.o)
  br i1 %i.dh, label %.lr.ph.split.split.i.preheader.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.us.split.split

.lr.ph.split.split.i.preheader.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us.split
  tail call void @llvm.assume(i1 %i.q)
  br i1 %i.df, label %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.s)
  %i.di = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.di, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.split.us
  %i.dj = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dj, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split
  %i.dk = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dk, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split:             ; preds = %.lr.ph.split.split.i.preheader
  br i1 %.not.i.i.i, label %.lr.ph.split.split.i.preheader.split.split.us, label %.split100.us.i

.lr.ph.split.split.i.preheader.split.split.us:    ; preds = %.lr.ph.split.split.i.preheader.split
  %i.dl = load i8, ptr %i.m, align 1, !noalias !86, !noundef !4 ; 4 uses
  %i.dm = icmp sgt i8 %i.dl, -65
  %i.dn = icmp samesign ugt i8 %i.dl, -33
  %i.do = icmp samesign ugt i8 %i.dl, -17
  br i1 %i.dm, label %.lr.ph.split.split.i.preheader.split.split.us.split.us, label %.split100.us.i

.lr.ph.split.split.i.preheader.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us
  %i.dp = icmp sgt i8 %i.dl, -1
  br i1 %i.dp, label %.lr.ph.split.split.i.us36.us.us.preheader, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split

.lr.ph.split.split.i.us36.us.us.preheader:        ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us
  %i.dq = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dq, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us
  tail call void @llvm.assume(i1 %i.o)
  br i1 %i.dn, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split
  tail call void @llvm.assume(i1 %i.q)
  br i1 %i.do, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.s)
  %i.dr = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dr, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us
  %i.ds = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.ds, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split
  %i.dt = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dt, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.k, label %.lr.ph.split.us.split.us.split.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.split.us.i
  %i.du = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.du, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %.not.i.i.i, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.split.us.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i
  %i.dv = load i8, ptr %i.m, align 1, !alias.scope !88, !noalias !86, !noundef !4
  %i.dw = icmp sgt i8 %i.dv, -65
  br i1 %i.dw, label %.lr.ph.split.us.split.split.us.split.us.split.i, label %.lr.ph.split.us.split.split.us.split.i

.lr.ph.split.us.split.split.us.split.us.split.i:  ; preds = %.lr.ph.split.us.split.split.us.i
  %i.dx = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dx, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.lr.ph.split.us.split.split.us.split.i:           ; preds = %.lr.ph.split.us.split.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  br label %.split100.us.i

.lr.ph.split.us.split.split.split.us.split.i:     ; preds = %.lr.ph.split.us.split.i
  %i.dy = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dy, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

.split100.us.i:                                   ; preds = %.lr.ph.split.split.i.preheader.split, %.lr.ph.split.split.i.preheader.split.split.us, %.lr.ph.split.us.split.split.us.split.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %i.f, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #25, !noalias !86
  unreachable

.split40.us.i.i:                                  ; preds = %.preheader.i.preheader.us.i, %.lr.ph268
  %.us-phi41.i.i = phi i64 [ %i.ca, %.lr.ph268 ], [ %i.ac, %.preheader.i.preheader.us.i ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.us-phi41.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !noalias !89
  unreachable

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split: ; preds = %.lr.ph.split.split.i.us.us.preheader, %.lr.ph.split.split.i.us36.us.us.preheader, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split, %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.split.us.split.us.split.i, %.lr.ph.split.us.split.split.split.us.split.i
  %.sroa.0.0.ph = phi i64 [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split ], [ %1, %.lr.ph.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split ], [ %1, %.lr.ph.split.us.split.split.split.us.split.i ], [ %1, %.lr.ph.split.us.split.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.us36.us.us.preheader ], [ %i.f, %.lr.ph.split.split.i.us.us.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  br label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.b, %.split38.us.i.us.i, %.lr.ph.i.split.i.us.i, %.sink.split.i.i.us.i, %.lr.ph.i.split.us.i.us.i, %.loopexit.split.us.us.i, %.lr.ph.i.split.us.i.us.i.us, %.loopexit.split.us.us.i.us, %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split, %.lr.ph.split.split.i.us36.us.us.preheader, %.lr.ph.split.split.i.us.us.preheader, %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.split.us.split.us.split.i, %.lr.ph.split.us.split.split.split.us.split.i, %.split.us.i, %.split.i
  %.sroa.0.0 = phi i64 [ %i.f, %.lr.ph.split.split.i.us36.us.us.preheader ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split ], [ %1, %.split.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.i.us.i ], [ %1, %.split.i ], [ %i.f, %.lr.ph.split.split.i.us.us.preheader ], [ %1, %.lr.ph.split.us.split.us.split.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us ], [ %.sroa.0.0.ph, %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsdcPuHeDsw6v_13project_model.exit.sink.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split ], [ %1, %.lr.ph.split.us.split.split.split.us.split.i ], [ %1, %.lr.ph.split.us.split.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i.us ], [ %.sink98.i.us.i67.lcssa69.us81, %.loopexit.split.us.us.i.us ], [ %.sink98.i.us.i67.lcssa69.us81, %.loopexit.split.us.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.sink.split.i.i.us.i ], [ %1, %.split38.us.i.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %bb.b ] ; 2 uses
  %i.dz = sub nuw i64 %1, %.sroa.0.0
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eb = insertvalue { ptr, i64 } poison, ptr %i.ea, 0
  %i.ec = insertvalue { ptr, i64 } %i.eb, i64 %i.dz, 1
  ret { ptr, i64 } %i.ec
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB6_7Sysroot4toolRNtCs9R0CJ7nmiec_5paths7AbsPathEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, i8 noundef range(i8 0, 4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [200 x i8], align 8               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = load i64, ptr %1, align 8, !range !7, !alias.scope !92, !noundef !4
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit.thread, label %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit

_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit: ; preds = %bb.a
  %i.j = tail call { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 3 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit
  %i.m = icmp eq i8 %2, 1
  br i1 %i.m, label %bb.c, label %bb.d

_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMCslqCZk5GUYvi_9toolchainNtB2_4Tool4path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i8 noundef %2)
  call void @_RINvCslqCZk5GUYvi_9toolchain7commandNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtCs9p4rgIae0RV_6camino11Utf8PathBufRNtCs9R0CJ7nmiec_5paths7AbsPathECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinReECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 3)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = invoke { ptr, i64 } @_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path3neweECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 5)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  invoke void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinRBw_ECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t)
          to label %_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path4joinReECsdcPuHeDsw6v_13project_model.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMCslqCZk5GUYvi_9toolchainNtB2_4Tool12prefer_proxy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i8 noundef %2)
  call void @_RINvCslqCZk5GUYvi_9toolchain7commandNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtCs9p4rgIae0RV_6camino11Utf8PathBufRNtCs9R0CJ7nmiec_5paths7AbsPathECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.u = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyeECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 16)
          to label %bb.q unwind label %bb.p

bb.e:                                             ; preds = %.noexc, %bb.c, %bb.g, %_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path4joinReECsdcPuHeDsw6v_13project_model.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #26
          to label %common.resume unwind label %bb.o

_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path4joinReECsdcPuHeDsw6v_13project_model.exit: ; preds = %.noexc
  invoke void @_RNvCslqCZk5GUYvi_9toolchain16probe_for_binary(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.f:                                             ; preds = %_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path4joinReECsdcPuHeDsw6v_13project_model.exit
  %i.w = load i64, ptr %i.h, align 8, !range !7, !noundef !4
  %.not6 = icmp eq i64 %i.w, -1
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RINvCslqCZk5GUYvi_9toolchain7commandNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtCs9p4rgIae0RV_6camino11Utf8PathBufRNtCs9R0CJ7nmiec_5paths7AbsPathECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5)
          to label %bb.k unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.x, %bb.i ], [ %i.v, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.d

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit11 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit11: ; preds = %bb.k
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root.exit.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit11
  ret void

bb.o:                                             ; preds = %.body, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model.exit.i, %bb.x, %bb.r, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.v ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(200) %i.e) #26
          to label %common.resume unwind label %bb.o

bb.q:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 16)
          to label %bb.t unwind label %bb.p

bb.s:                                             ; preds = %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsdcPuHeDsw6v_13project_model.exit, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.e, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.t:                                             ; preds = %bb.r
  %i.ad = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  %.not7 = icmp eq i64 %i.ad, -1
  br i1 %.not7, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufEEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callB1M_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3H_3VecB1M_E14extend_trustedBO_E0E0ECsdcPuHeDsw6v_13project_model:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6cloned6ClonedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB2i_3vec3VecB2e_EEEINtNtB7_3map3MapB1m_NCNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB3I_14CargoWorkspace18workspace_features00EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB3h_8map_foldB2e_TB2e_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6w_7HashSetB2e_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB5i_7collect6ExtendB2e_E6extendINtNtB7_7flatten7FlattenINtNtB7_10filter_map9FilterMapIB3f_IB3f_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB3I_11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtBaY_5ArenaBav_E4iter0ENCNvB3E_8packages0ENCB3C_0EEE0NCINvNvB5e_8for_each4callB6f_NCINvXs1i_NtB6y_3mapINtBcR_7HashMapB2e_uB7j_EIB82_B6f_E6extendIB3f_B8B_B6n_EE0E0E0EB3K_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1Y_3vec3VecB1U_EEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB1U_TB1U_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4i_7HashSetB1U_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2Y_7collect6ExtendB1U_E6extendINtNtB7_7flatten7FlattenINtNtB7_10filter_map9FilterMapINtB3F_3MapIB7g_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB9y_5ArenaB8n_E4iter0ENCNvMs4_B8p_NtB8p_14CargoWorkspace8packages0ENCNvBao_18workspace_features0EEE0NCINvNvB2U_8for_each4callB41_NCINvXs1i_NtB4k_3mapINtBcd_7HashMapB1U_uB55_EIB5O_B41_E6extendIB7g_B6n_B49_EE0E0E0EB8r_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %0, align 8, !noundef !4
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !4, !align !12, !noundef !4
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1T_3vec3VecB1P_EENCNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2Y_14CargoWorkspace18workspace_features00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB1P_TB1P_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB5K_7HashSetB1P_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4x_7collect6ExtendB1P_E6extendINtNtB8_7flatten7FlattenINtNtB8_10filter_map9FilterMapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtB2Y_11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtBaa_5ArenaB9H_E4iter0ENCNvB2U_8packages0ENCB2S_0EEE0NCINvNvB4t_8for_each4callB5t_NCINvXs1i_NtB5M_3mapINtBc3_7HashMapB1P_uB6x_EIB7g_B5t_E6extendIBO_B7P_B5B_EE0E0E0EB30_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1q_B1q_uNvYB1q_NtNtBb_5clone5Clone5cloneNCINvNvB29_8for_each4callB1q_NCINvXs1_B1u_NtB1u_10CfgOptionsINtNtB2d_7collect6ExtendB1q_E6extendINtNtB7_6cloned6ClonedBO_EE0E0E0ECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !noalias !313
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2n_6cloned6ClonedINtNtB2n_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.01.0.i
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callB1u_NCINvXs1_B1y_NtB1y_10CfgOptionsINtNtB2T_7collect6ExtendB1u_E6extendINtNtBV_6cloned6ClonedINtNtBV_5chain5ChainINtNtNtBb_5slice4iter4IterB1u_EB5q_EEE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2n_6cloned6ClonedINtNtB2n_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.d

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2n_6cloned6ClonedINtNtB2n_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2n_6cloned6ClonedINtNtB2n_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 4 uses
  %.not2 = icmp eq ptr %i.p, null
  br i1 %.not2, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2m_6cloned6ClonedINtNtB2m_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !nonnull !4, !align !12, !noundef !4
  %i.t = icmp eq ptr %i.p, %i.r
  br i1 %i.t, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2m_6cloned6ClonedINtNtB2m_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i, %bb.g
  %.sroa.01.0.i3 = phi i64 [ 0, %bb.g ], [ %i.ag, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.0.i3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !315, !noalias !316, !noundef !4
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y), !noalias !317 ; 2 uses
  %i.ac = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.k, !noalias !317

bb.j:                                             ; preds = %bb.h
  %i.ad = call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa), !noalias !317
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsdcPuHeDsw6v_13project_model(ptr nonnull %i.ab) #26
          to label %bb.m unwind label %bb.l, !noalias !317

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !317
  unreachable

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.5.0.i.i = phi ptr [ %i.ad, %bb.j ], [ %i.ac, %bb.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.j ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !318
  store ptr %.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !319
  store ptr %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !319
  call void @_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions15insert_any_atom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  %i.ag = add nuw i64 %.sroa.01.0.i3, 1           ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.x
  br i1 %i.ah, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2m_6cloned6ClonedINtNtB2m_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.h

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2m_6cloned6ClonedINtNtB2m_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainNtNtNtBb_3str4iter5LinesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldB2c_INtNtBb_6result6ResultNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtB1v_6string6StringEuINtNtNtBb_3ops12control_flow11ControlFlowIB4S_B3Q_EENvCsdcPuHeDsw6v_13project_model9parse_cfgNCINvXB7_INtB7_12GenericShuntINtB33_3MapBO_B5H_EIB3v_NtNtBb_7convert10InfallibleB4t_EEB2g_8try_folduNCINvNvB2g_12try_for_each4callB3Q_B5w_NcNtB5w_5Break0E0B5w_E0E0B4R_EB5J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !range !348, !noundef !4
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8, !noalias !350
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 3 uses
  %.promoted.i = load i8, ptr %i.j, align 1, !alias.scope !351
  %.promoted15.i = load i64, ptr %i.i, align 8, !alias.scope !349 ; 4 uses
  %i.k = trunc nuw i8 %.promoted.i to i1
  br i1 %i.k, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !351, !nonnull !4, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !351, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !352, !noundef !4 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.p, %.val1.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load i8, ptr %i.r, align 8, !alias.scope !349 ; 2 uses
  %i.t = zext nneg i8 %i.s to i64                 ; 4 uses
  %i.u = icmp ult i8 %i.s, 5
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load i8, ptr %i.x, align 8, !range !6, !alias.scope !349
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !349 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %.promoted19.i = load i64, ptr %i.n, align 8, !alias.scope !352
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  store i8 1, ptr %i.j, align 1, !alias.scope !353
  %.not.i3.i.i.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted15.i
  %or.cond.not.i.i.i.i.i.us.i = select i1 %i.z, i1 true, i1 %.not.i3.i.i.i.i.us.i
  %i.aa = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted15.i ; 4 uses
  %.sroa.0.1.i.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted15.i ; 4 uses
  %i.ab = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.us.i, 0
  %i.ac = insertvalue { ptr, i64 } %i.ab, i64 %i.aa, 1 ; 2 uses
  %i.ad = add i64 %i.aa, -1                       ; 2 uses
  %i.ae = insertvalue { ptr, i64 } %i.ac, i64 %i.ad, 1
  %i.af = add i64 %i.aa, -2
  br i1 %or.cond.not.i.i.i.i.i.us.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i, label %.loopexit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i: ; preds = %.lr.ph.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !359
  store i32 10, ptr %i.b, align 4, !noalias !359
  %i.ag = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i, i64 noundef %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 5) 1), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !359
  br i1 %i.ag, label %bb.c, label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i

bb.c:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !359
  store i32 13, ptr %i.a, align 4, !noalias !359
  %i.ah = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 5) 1), !noalias !360 ; 2 uses
  %.sroa.0.0.i15.i.i.i.i.us.us.i = select i1 %i.ah, ptr %.sroa.0.1.i.i.i.i.us.i, ptr null
  %i.ai = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.us.us.i, 0
  %i.aj = insertvalue { ptr, i64 } %i.ai, i64 %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  %..i.i.i.i.us.us.i = select i1 %i.ah, { ptr, i64 } %i.aj, { ptr, i64 } %i.ae
  br label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i

_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i: ; preds = %bb.c, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i
  %.merged.i.i.i.i.us.us.i = phi { ptr, i64 } [ %..i.i.i.i.us.us.i, %bb.c ], [ %i.ac, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i ] ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %.merged.i.i.i.i.us.us.i, 0 ; 2 uses
  %.not.us.us.i = icmp eq ptr %i.ak, null
  br i1 %.not.us.us.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i
  %i.al = extractvalue { ptr, i64 } %.merged.i.i.i.i.us.us.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !350
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldReINtNtBb_6result6ResultNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCsbSS6DM8SDEO_5alloc6string6StringEuINtNtB9_12control_flow11ControlFlowIB3e_B1W_EENvCsdcPuHeDsw6v_13project_model9parse_cfgNCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_5chain5ChainNtNtNtBb_3str4iter5LinesINtNtNtB2D_3vec9into_iter8IntoIterB1y_EEB3X_EIB1B_NtNtBb_7convert10InfallibleB2z_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvB7i_12try_for_each4callB1W_B3M_NcNtB3M_5Break0E0B3M_E0E0INtB7_5FnMutTuB1y_EE8call_mutB3Z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al), !noalias !361
  %i.am = load i64, ptr %i.c, align 8, !range !17, !alias.scope !362, !noalias !350, !noundef !4 ; 2 uses
  %.not.i.us.us.i = icmp eq i64 %i.am, 2
  br i1 %.not.i.us.us.i, label %._RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread_crit_edge.split.us.split.us.i, label %.loopexit26

._RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread_crit_edge.split.us.split.us.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !350
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.l, %.lr.ph.split.preheader.i
  %i.an = phi i64 [ %i.bk, %bb.l ], [ %.promoted19.i, %.lr.ph.split.preheader.i ] ; 3 uses
  %.lcssa1718.i = phi i64 [ %.lcssa16.i, %bb.l ], [ %.promoted15.i, %.lr.ph.split.preheader.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.ao = icmp ult i64 %i.p, %i.an
  br i1 %i.ao, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i
  call void @llvm.assume(i1 %i.u)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.w, align 1, !alias.scope !352 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.h, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ap = phi i64 [ %i.be, %bb.h ], [ %i.an, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.aq = sub nuw i64 %i.p, %i.ap                 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ap ; 2 uses
  %i.as = icmp samesign ult i64 %i.aq, 16
  br i1 %i.as, label %.preheader.i.i.i.i.i.i.i, label %bb.e

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.at = call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.aq), !noalias !363
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.aq, %bb.f ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.f ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.au = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.av = insertvalue { i64, i64 } %i.au, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.f
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.f ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !364, !noalias !363, !noundef !4
  %i.ay = icmp eq i8 %i.ax, %.pre.i.i.i.i.i.i
  br i1 %i.ay, label %._crit_edge.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.az = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.az, %i.aq
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.e
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.av, %._crit_edge.i.i.i.i.i.i.i ], [ %i.at, %bb.e ] ; 2 uses
  %i.ba = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %.split.us.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.bc = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.bd = add i64 %i.ap, 1
  %i.be = add i64 %i.bd, %i.bc                    ; 11 uses
  store i64 %i.be, ptr %i.n, align 8, !alias.scope !352
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.be, %i.t
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.be, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.h, label %bb.i

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  store i64 %i.p, ptr %i.n, align 8, !alias.scope !352
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.bf = icmp ult i64 %i.p, %i.be
  br i1 %i.bf, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bg = sub nuw i64 %i.be, %i.t
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.bg
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %i.q, i64 %i.t), !noalias !365
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.h

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.i
  store i64 %i.be, ptr %i.i, align 8, !alias.scope !351
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i: ; preds = %bb.h, %.split.us.i.i.i.i.i.i, %.lr.ph.split.i
  %i.bj = phi i64 [ %i.an, %.lr.ph.split.i ], [ %i.p, %.split.us.i.i.i.i.i.i ], [ %i.be, %bb.h ]
  store i8 1, ptr %i.j, align 1, !alias.scope !353
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa1718.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.z, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.bk = phi i64 [ %i.be, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.bj, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i ]
  %.lcssa16.i = phi i64 [ %i.be, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa1718.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i ]
  %i.bl = phi i1 [ false, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i ]
  %.pn.i = phi i64 [ %i.be, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i, %.lcssa1718.i ; 4 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa1718.i ; 4 uses
  %i.bm = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i, 0
  %i.bn = insertvalue { ptr, i64 } %i.bm, i64 %.sroa.4.1.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !359
  store i32 10, ptr %i.b, align 4, !noalias !359
  %i.bo = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 5) 1), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !359
  br i1 %i.bo, label %bb.j, label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

bb.j:                                             ; preds = %select.unfold.i.i.i
  %i.bp = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 2 uses
  %i.bq = insertvalue { ptr, i64 } %i.bn, i64 %i.bp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !359
  store i32 13, ptr %i.a, align 4, !noalias !359
  %i.br = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 5) 1), !noalias !360 ; 2 uses
  %i.bs = add i64 %.sroa.4.1.i.i.i.i.i, -2
  %.sroa.0.0.i15.i.i.i.i.i = select i1 %i.br, ptr %.sroa.0.1.i.i.i.i.i, ptr null
  %i.bt = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.i, 0
  %i.bu = insertvalue { ptr, i64 } %i.bt, i64 %i.bs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  %..i.i.i.i.i = select i1 %i.br, { ptr, i64 } %i.bu, { ptr, i64 } %i.bq
  br label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.j, %select.unfold.i.i.i
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i, %bb.j ], [ %i.bn, %select.unfold.i.i.i ] ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %i.bw = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !350
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldReINtNtBb_6result6ResultNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCsbSS6DM8SDEO_5alloc6string6StringEuINtNtB9_12control_flow11ControlFlowIB3e_B1W_EENvCsdcPuHeDsw6v_13project_model9parse_cfgNCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_5chain5ChainNtNtNtBb_3str4iter5LinesINtNtNtB2D_3vec9into_iter8IntoIterB1y_EEB3X_EIB1B_NtNtBb_7convert10InfallibleB2z_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvB7i_12try_for_each4callB1W_B3M_NcNtB3M_5Break0E0B3M_E0E0INtB7_5FnMutTuB1y_EE8call_mutB3Z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bw), !noalias !361
  %i.bx = load i64, ptr %i.c, align 8, !range !17, !alias.scope !362, !noalias !350, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bx, 2
  br i1 %.not.i.i, label %bb.l, label %.loopexit26

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !350
  br i1 %i.bl, label %.loopexit, label %.lr.ph.split.i

bb.m:                                             ; preds = %.loopexit, %bb.a
  %i.by = load ptr, ptr %1, align 8, !noundef !4
  %.not4 = icmp eq ptr %i.by, null
  br i1 %.not4, label %bb.n, label %bb.o

.loopexit26:                                      ; preds = %bb.k, %bb.d
  %.us-phi.i = phi i64 [ %i.am, %bb.d ], [ %i.bx, %bb.k ]
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

.loopexit:                                        ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i, %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, %bb.l, %bb.b, %.lr.ph.split.us.i, %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i, %._RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread_crit_edge.split.us.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 -1, ptr %i.g, align 4
  br label %bb.m

bb.n:                                             ; preds = %bb.m, %bb.p, %bb.q, %.loopexit26
  %.sink = phi i64 [ %.us-phi.i, %.loopexit26 ], [ %i.bz, %bb.p ], [ 2, %bb.q ], [ 2, %bb.m ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
end_hunk_1
