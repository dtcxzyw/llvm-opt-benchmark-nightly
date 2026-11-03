Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.15?download=true
inline.NumInlined: 1645
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesReECs6oosyzwIepl_6ide_db:bb.a

.preheader44.i.us.i.preheader:                    ; preds = %bb.g, %bb.f
  %i.bs = icmp ult i64 %i.bj, %i.f
  br i1 %i.bs, label %.lr.ph268, label %.split38.us.i.us.i

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.04.0.i.i.us.i266 = phi i64 [ %i.br, %bb.g ], [ %..i.i.i.us.i, %bb.f ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.0.i.i.us.i266
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !96, !noalias !97, !noundef !5
  %i.bv = add i64 %.sroa.04.0.i.i.us.i266, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.j
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !95, !noalias !97, !noundef !5
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
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !96, !noalias !97, !noundef !5
  %i.ce = add i64 %i.ca, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.j
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !95, !noalias !97, !noundef !5
  %.not21.i.i.us.i = icmp eq i8 %i.cd, %i.ch
  br i1 %.not21.i.i.us.i, label %.preheader44.i.us.i, label %.sink.split.i.i.us.i

.sink.split.i.i.us.i:                             ; preds = %bb.i, %bb.h, %bb.e
  %.sink99.i.us.i = phi i64 [ %i.al, %bb.e ], [ %.reass.i.i.us.i, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.sink55.i.i.us.i = phi i64 [ 0, %bb.e ], [ 0, %bb.h ], [ %i.af, %bb.i ]
  %i.ci = add i64 %.sink99.i.us.i, %i.z           ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.j
  br i1 %i.cj, label %.lr.ph.i.split.i.us.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.i.split.us.i.us.i:                         ; preds = %.lr.ph.i.split.us.i.us.i.preheader, %.loopexit.split.us.us.i
  %.sink98.i.us.i67 = phi i64 [ %.sink98.i.us.i, %.loopexit.split.us.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i.preheader ]
  %i.ck = phi i64 [ %i.cy, %.loopexit.split.us.us.i ], [ %i.ah, %.lr.ph.i.split.us.i.us.i.preheader ]
  %.not.i18.us.i.us.i = icmp eq i64 %.sink98.i.us.i67.lcssa69.us81, %.sink98.i.us.i67
  br i1 %.not.i18.us.i.us.i, label %bb.j, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

bb.j:                                             ; preds = %.lr.ph.i.split.us.i.us.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !95, !noalias !97, !noundef !5
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
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !96, !noalias !97, !noundef !5
  %i.cu = add i64 %.sroa.04.0.i.us.i.us.i270, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.j
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !95, !noalias !97, !noundef !5
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
  br i1 %i.cz, label %.lr.ph.i.split.us.i.us.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.split38.us.i.us.i:                               ; preds = %.preheader44.i.us.i.preheader, %.preheader.i.us.us.i.us.preheader, %.preheader44.i.us.i, %.preheader.i.us.us.i.us, %.preheader.i.preheader.us.i
  %spec.select101 = phi i64 [ -1, %.preheader.i.us.us.i.us ], [ -1, %.preheader.i.preheader.us.i ], [ 0, %.preheader44.i.us.i ], [ -1, %.preheader.i.us.us.i.us.preheader ], [ 0, %.preheader44.i.us.i.preheader ]
  %i.da = icmp eq i64 %i.al, %i.j
  br i1 %i.da, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit, label %bb.b

.split.i:                                         ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.dc = load i8, ptr %i.db, align 2, !range !7, !alias.scope !92
  %i.dd = trunc nuw i8 %i.dc to i1
  %.promoted95.i = load i8, ptr %i.e, align 8, !alias.scope !92 ; 11 uses
  br i1 %i.dd, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i
  br i1 %i.k, label %.lr.ph.split.split.i.preheader.split.us, label %.lr.ph.split.split.i.preheader.split

.lr.ph.split.split.i.preheader.split.us:          ; preds = %.lr.ph.split.split.i.preheader
  %.pr.i.us = load i8, ptr %i.m, align 1, !noalias !98 ; 3 uses
  %i.de = icmp sgt i8 %.pr.i.us, -1
  %i.df = icmp samesign ugt i8 %.pr.i.us, -17
  br i1 %i.de, label %.lr.ph.split.split.i.us.us.preheader, label %.lr.ph.split.split.i.preheader.split.us.split

.lr.ph.split.split.i.us.us.preheader:             ; preds = %.lr.ph.split.split.i.preheader.split.us
  %i.dg = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dg, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

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
  br i1 %i.di, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.split.i.preheader.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.split.us
  %i.dj = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dj, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.split.i.preheader.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split
  %i.dk = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dk, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.split.i.preheader.split:             ; preds = %.lr.ph.split.split.i.preheader
  br i1 %.not.i.i.i, label %.lr.ph.split.split.i.preheader.split.split.us, label %.split100.us.i

.lr.ph.split.split.i.preheader.split.split.us:    ; preds = %.lr.ph.split.split.i.preheader.split
  %i.dl = load i8, ptr %i.m, align 1, !noalias !97, !noundef !5 ; 4 uses
  %i.dm = icmp sgt i8 %i.dl, -65
  %i.dn = icmp samesign ugt i8 %i.dl, -33
  %i.do = icmp samesign ugt i8 %i.dl, -17
  br i1 %i.dm, label %.lr.ph.split.split.i.preheader.split.split.us.split.us, label %.split100.us.i

.lr.ph.split.split.i.preheader.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us
  %i.dp = icmp sgt i8 %i.dl, -1
  br i1 %i.dp, label %.lr.ph.split.split.i.us36.us.us.preheader, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split

.lr.ph.split.split.i.us36.us.us.preheader:        ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us
  %i.dq = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dq, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us
  tail call void @llvm.assume(i1 %i.o)
  br i1 %i.dn, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split
  tail call void @llvm.assume(i1 %i.q)
  br i1 %i.do, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.s)
  %i.dr = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dr, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us
  %i.ds = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.ds, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.us.split
  %i.dt = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dt, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.k, label %.lr.ph.split.us.split.us.split.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.split.us.i
  %i.du = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.du, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %.not.i.i.i, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.split.us.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i
  %i.dv = load i8, ptr %i.m, align 1, !alias.scope !99, !noalias !97, !noundef !5
  %i.dw = icmp sgt i8 %i.dv, -65
  br i1 %i.dw, label %.lr.ph.split.us.split.split.us.split.us.split.i, label %.split100.us.i

.lr.ph.split.us.split.split.us.split.us.split.i:  ; preds = %.lr.ph.split.us.split.split.us.i
  %i.dx = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dx, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.us.split.split.split.us.split.i:     ; preds = %.lr.ph.split.us.split.i
  %i.dy = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dy, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.split100.us.i:                                   ; preds = %.lr.ph.split.split.i.preheader.split, %.lr.ph.split.us.split.split.us.i, %.lr.ph.split.split.i.preheader.split.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %i.f, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #38, !noalias !97
  unreachable

.split40.us.i.i:                                  ; preds = %.preheader.i.preheader.us.i, %.lr.ph268
  %.us-phi41.i.i = phi i64 [ %i.ca, %.lr.ph268 ], [ %i.ac, %.preheader.i.preheader.us.i ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.us-phi41.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #38, !noalias !100
  unreachable

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split: ; preds = %.lr.ph.split.split.i.us.us.preheader, %.lr.ph.split.split.i.us36.us.us.preheader, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split, %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.split.us.split.us.split.i, %.lr.ph.split.us.split.split.split.us.split.i
  %.sroa.0.0.ph = phi i64 [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split ], [ %1, %.lr.ph.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split ], [ %1, %.lr.ph.split.us.split.split.split.us.split.i ], [ %1, %.lr.ph.split.us.split.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.us36.us.us.preheader ], [ %i.f, %.lr.ph.split.split.i.us.us.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  br label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b, %.split38.us.i.us.i, %.lr.ph.i.split.i.us.i, %.sink.split.i.i.us.i, %.lr.ph.i.split.us.i.us.i, %.loopexit.split.us.us.i, %.lr.ph.i.split.us.i.us.i.us, %.loopexit.split.us.us.i.us, %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split, %.lr.ph.split.split.i.us36.us.us.preheader, %.lr.ph.split.split.i.us.us.preheader, %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.split.us.split.us.split.i, %.lr.ph.split.us.split.split.split.us.split.i, %.split.us.i, %.split.i
  %.sroa.0.0 = phi i64 [ %i.f, %.lr.ph.split.split.i.us36.us.us.preheader ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split ], [ %1, %.split.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.i.us.i ], [ %1, %.split.i ], [ %i.f, %.lr.ph.split.split.i.us.us.preheader ], [ %1, %.lr.ph.split.us.split.us.split.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us ], [ %.sroa.0.0.ph, %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split ], [ %1, %.lr.ph.split.us.split.split.split.us.split.i ], [ %1, %.lr.ph.split.us.split.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i.us ], [ %.sink98.i.us.i67.lcssa69.us81, %.loopexit.split.us.us.i.us ], [ %.sink98.i.us.i67.lcssa69.us81, %.loopexit.split.us.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.sink.split.i.i.us.i ], [ %1, %.split38.us.i.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %bb.b ] ; 2 uses
  %i.dz = sub nuw i64 %1, %.sroa.0.0
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eb = insertvalue { ptr, i64 } poison, ptr %i.ea, 0
  %i.ec = insertvalue { ptr, i64 } %i.eb, i64 %i.dz, 1
  ret { ptr, i64 } %i.ec
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = ptrtoint ptr %i.a to i64
  %invariant.op.i = sub i64 %1, %i.b
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i ; 5 uses
  %i.d = icmp samesign eq i64 %.reass5.i, %1
  br i1 %i.d, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.c, align 1, !noalias !109, !noundef !5 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i: ; preds = %bb.b
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = add nuw nsw i64 %.reass5.i, 1
  %i.k = icmp samesign ne i64 %i.j, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.e, align 1, !noalias !109, !noundef !5
  %i.n = shl nuw nsw i32 %i.i, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.f, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i8 %i.f to i32
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i
  %i.t = add nuw nsw i64 %.reass5.i, 2
  %i.u = icmp samesign ne i64 %i.t, %1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.w = load i8, ptr %i.l, align 1, !noalias !109, !noundef !5
  %i.x = shl nuw nsw i32 %i.p, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.i, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i
  %i.ae = add nuw nsw i64 %.reass5.i, 3
  %i.af = icmp samesign ne i64 %i.ae, %1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = load i8, ptr %i.v, align 1, !noalias !109, !noundef !5
  %i.ai = shl nuw nsw i32 %i.i, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.aa, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i ], [ %i.e, %bb.c ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %.sroa.0.0.ph.i.i to i64
  %.reass.i = add i64 %invariant.op.i, %i.aq
  %.not.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i
  %.sroa.0.0 = phi i64 [ %.reass5.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ %1, %bb.a ] ; 2 uses
  %i.ar = sub nuw i64 %1, %.sroa.0.0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.at = insertvalue { ptr, i64 } poison, ptr %i.as, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %i.ar, 1
  ret { ptr, i64 } %i.au
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCsbSS6DM8SDEO_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not12 = icmp ult i64 %i.d, %i.f
  br i1 %.not12, label %.lr.ph, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !112, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted = load ptr, ptr %i.i, align 8, !alias.scope !112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.01.09 = phi i64 [ %i.d, %.lr.ph ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %.not.not.not = icmp ne ptr %i.k, %i.h          ; 3 uses
  br i1 %.not.not.not, label %bb.c, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not.not.not, %bb.b ], [ %.not.not.not, %bb.c ]
  ret i1 %.lcssa

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !alias.scope !112
  %i.m = load i8, ptr %i.k, align 1, !noalias !112, !noundef !5
  %i.n = add i64 %.sroa.01.09, 1                  ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.09
  store i8 %i.m, ptr %i.p, align 1
  %i.q = load i64, ptr %i.c, align 8, !noundef !5
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.c, align 8
  %exitcond.not = icmp eq i64 %i.n, %i.f
  br i1 %exitcond.not, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCsbSS6DM8SDEO_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCshzWfHUSfYae_4core3str4iter5BytesECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not12 = icmp ult i64 %i.d, %i.f
  br i1 %.not12, label %.lr.ph, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !117, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.01.09 = phi i64 [ %i.d, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %.not.not.not = icmp ne ptr %i.j, %i.h          ; 3 uses
  br i1 %.not.not.not, label %bb.c, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

_RNvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not.not.not, %bb.b ], [ %.not.not.not, %bb.c ]
  ret i1 %.lcssa

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !117
  %i.l = load i8, ptr %i.j, align 1, !noalias !118, !noundef !5
  %i.m = add i64 %.sroa.01.09, 1                  ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.09
  store i8 %i.l, ptr %i.o, align 1
  %i.p = load i64, ptr %i.c, align 8, !noundef !5
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.c, align 8
  %exitcond.not = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, label %bb.b
end_hunk_0
