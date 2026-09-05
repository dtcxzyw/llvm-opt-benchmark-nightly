Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.15?download=true
inline.NumInlined: 1645
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesReECs6oosyzwIepl_6ide_db:bb.a
  %i.ag = phi i64 [ %.promoted70.i, %.lr.ph157.i ], [ %spec.select101, %.split38.us.i.us.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.ah = add i64 %.sink98.i.us.i67.lcssa69.us81, %i.z ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.j
  br i1 %i.ai, label %.lr.ph.i.i.us.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.i.i.us.i:                                  ; preds = %bb.b
  %i.aj = icmp eq i64 %i.ag, -1
  %invariant.op.i.i.reass.us.reass.i.reass.reass.reass = add i64 %.sink98.i.us.i67.lcssa69.us81, %invariant.op ; 3 uses
  %i.ak = add i64 %.sink98.i.us.i67.lcssa69.us81, %i.ae ; 2 uses
  %i.al = add i64 %.sink98.i.us.i67.lcssa69.us81, %i.y ; 5 uses
  br i1 %i.aj, label %.lr.ph.i.split.us.i.us.i.preheader, label %.lr.ph.i.split.i.us.i

.lr.ph.i.split.us.i.us.i.preheader:               ; preds = %.lr.ph.i.i.us.i
  br i1 %.first_iter.i.fr.i, label %.lr.ph.i.split.us.i.us.i.us, label %.lr.ph.i.split.us.i.us.i

.lr.ph.i.split.us.i.us.i.us:                      ; preds = %.lr.ph.i.split.us.i.us.i.preheader, %.loopexit.split.us.us.i.us
  %.sink98.i.us.i67.us = phi i64 [ %.sink98.i.us.i.us, %.loopexit.split.us.us.i.us ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.split.us.i.us.i.preheader ]
  %i.am = phi i64 [ %i.bh, %.loopexit.split.us.us.i.us ], [ %i.ah, %.lr.ph.i.split.us.i.us.i.preheader ]
  %.not.i18.us.i.us.i.us = icmp eq i64 %.sink98.i.us.i67.lcssa69.us81, %.sink98.i.us.i67.us
  br i1 %.not.i18.us.i.us.i.us, label %bb.c, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

bb.c:                                             ; preds = %.lr.ph.i.split.us.i.us.i.us
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !97, !noalias !99, !noundef !5
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ar, %i.ab
  %.not20.i.us.i.us.i.us = icmp eq i64 %i.as, 0
  br i1 %.not20.i.us.i.us.i.us, label %.loopexit.split.us.us.i.us, label %.preheader43.i.us.i.us.preheader

.preheader43.i.us.i.us.preheader:                 ; preds = %bb.c
  br i1 %exitcond.not.i.us.i.us.i.us272.not, label %.lr.ph274, label %.preheader.i.us.us.i.us.preheader

.preheader43.i.us.i.us:                           ; preds = %.lr.ph274
  %i.at = add i64 %.sroa.04.0.i.us.i.us.i.us273, 1 ; 2 uses
  %exitcond.not.i.us.i.us.i.us = icmp eq i64 %i.at, %umax.i.us.i.i
  br i1 %exitcond.not.i.us.i.us.i.us, label %.preheader.i.us.us.i.us.preheader, label %.lr.ph274

.preheader.i.us.us.i.us.preheader:                ; preds = %.preheader43.i.us.i.us, %.preheader43.i.us.i.us.preheader
  br i1 %.not.i.us.us.i.us275, label %.split38.us.i.us.i, label %.lr.ph277

.lr.ph274:                                        ; preds = %.preheader43.i.us.i.us.preheader, %.preheader43.i.us.i.us
  %.sroa.04.0.i.us.i.us.i.us273 = phi i64 [ %i.at, %.preheader43.i.us.i.us ], [ %i.f, %.preheader43.i.us.i.us.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.0.i.us.i.us.i.us273
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !98, !noalias !100, !noundef !5
  %i.aw = add i64 %.sroa.04.0.i.us.i.us.i.us273, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.j
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aw
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !97, !noalias !99, !noundef !5
  %.not22.i.us.i.us.i.us = icmp eq i8 %i.av, %i.az
  br i1 %.not22.i.us.i.us.i.us, label %.preheader43.i.us.i.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph274
  %.reass.i.us.i.us.i.us = add i64 %.sroa.04.0.i.us.i.us.i.us273, %invariant.op.i.i.reass.us.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i.us

.preheader.i.us.us.i.us:                          ; preds = %.lr.ph277
  %.not.i.us.us.i.us = icmp eq i64 %i.ba, 0
  br i1 %.not.i.us.us.i.us, label %.split38.us.i.us.i, label %.lr.ph277

.lr.ph277:                                        ; preds = %.preheader.i.us.us.i.us.preheader, %.preheader.i.us.us.i.us
  %.sroa.2.0.i.us.i.us.us.i.us276 = phi i64 [ %i.ba, %.preheader.i.us.us.i.us ], [ %i.f, %.preheader.i.us.us.i.us.preheader ]
  %i.ba = add i64 %.sroa.2.0.i.us.i.us.us.i.us276, -1 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !98, !noalias !100, !noundef !5
  %i.bd = add i64 %i.ba, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.j
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bd
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !97, !noalias !99, !noundef !5
  %.not21.i.us.i.us.us.i.us = icmp eq i8 %i.bc, %i.bg
  br i1 %.not21.i.us.i.us.us.i.us, label %.preheader.i.us.us.i.us, label %.loopexit.split.us.us.i.us

.loopexit.split.us.us.i.us:                       ; preds = %.lr.ph277, %bb.d, %bb.c
  %.sink98.i.us.i.us = phi i64 [ %i.al, %bb.c ], [ %.reass.i.us.i.us.i.us, %bb.d ], [ %i.ak, %.lr.ph277 ] ; 2 uses
  %i.bh = add i64 %.sink98.i.us.i.us, %i.z        ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.j
  br i1 %i.bi, label %.lr.ph.i.split.us.i.us.i.us, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.i.split.i.us.i:                            ; preds = %.lr.ph.i.i.us.i, %.sink.split.i.i.us.i
  %.sink99.i.us.i59 = phi i64 [ %.sink99.i.us.i, %.sink.split.i.i.us.i ], [ %.sink98.i.us.i67.lcssa69.us81, %.lr.ph.i.i.us.i ]
  %i.bj = phi i64 [ %.sink55.i.i.us.i, %.sink.split.i.i.us.i ], [ %i.ag, %.lr.ph.i.i.us.i ] ; 3 uses
  %i.bk = phi i64 [ %i.ci, %.sink.split.i.i.us.i ], [ %i.ah, %.lr.ph.i.i.us.i ]
  %.not.i18.i.us.i = icmp eq i64 %.sink98.i.us.i67.lcssa69.us81, %.sink99.i.us.i59
  br i1 %.not.i18.i.us.i, label %bb.e, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

bb.e:                                             ; preds = %.lr.ph.i.split.i.us.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !97, !noalias !99, !noundef !5
  %i.bn = and i8 %i.bm, 63
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.ab
  %.not20.i.i.us.i = icmp eq i64 %i.bq, 0
  br i1 %.not20.i.i.us.i, label %.sink.split.i.i.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %..i.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.f) ; 3 uses
  %umax.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %..i.i.i.us.i, i64 range(i64 0, -9223372036854775808) %i.y)
  %exitcond.not.i.i.us.i265.not = icmp ult i64 %..i.i.i.us.i, %i.y
  br i1 %exitcond.not.i.i.us.i265.not, label %.lr.ph, label %.preheader44.i.us.i.preheader

bb.g:                                             ; preds = %.lr.ph
  %i.br = add i64 %.sroa.04.0.i.i.us.i266, 1      ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.br, %umax.i.i.us.i
  br i1 %exitcond.not.i.i.us.i, label %.preheader44.i.us.i.preheader, label %.lr.ph

.preheader44.i.us.i.preheader:                    ; preds = %bb.g, %bb.f
  %i.bs = icmp ult i64 %i.bj, %i.f
  br i1 %i.bs, label %.lr.ph268, label %.split38.us.i.us.i

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.04.0.i.i.us.i266 = phi i64 [ %i.br, %bb.g ], [ %..i.i.i.us.i, %bb.f ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.0.i.i.us.i266
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !98, !noalias !100, !noundef !5
  %i.bv = add i64 %.sroa.04.0.i.i.us.i266, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.j
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !97, !noalias !99, !noundef !5
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
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !98, !noalias !100, !noundef !5
  %i.ce = add i64 %i.ca, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.j
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !97, !noalias !99, !noundef !5
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
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !97, !noalias !99, !noundef !5
  %i.cn = and i8 %i.cm, 63
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.ab
  %.not20.i.us.i.us.i = icmp eq i64 %i.cq, 0
  br i1 %.not20.i.us.i.us.i, label %.loopexit.split.us.us.i, label %.preheader43.i.us.i.preheader

.preheader43.i.us.i.preheader:                    ; preds = %bb.j
  br i1 %exitcond.not.i.us.i.us.i269.not, label %.lr.ph271, label %.preheader.i.preheader.us.i

.preheader43.i.us.i:                              ; preds = %.lr.ph271
  %i.cr = add i64 %.sroa.04.0.i.us.i.us.i270, 1   ; 2 uses
  %exitcond.not.i.us.i.us.i = icmp eq i64 %i.cr, %umax.i.us.i.i
  br i1 %exitcond.not.i.us.i.us.i, label %.preheader.i.preheader.us.i, label %.lr.ph271

.lr.ph271:                                        ; preds = %.preheader43.i.us.i.preheader, %.preheader43.i.us.i
  %.sroa.04.0.i.us.i.us.i270 = phi i64 [ %i.cr, %.preheader43.i.us.i ], [ %i.f, %.preheader43.i.us.i.preheader ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.0.i.us.i.us.i270
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !98, !noalias !100, !noundef !5
  %i.cu = add i64 %.sroa.04.0.i.us.i.us.i270, %.sink98.i.us.i67.lcssa69.us81 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.j
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !97, !noalias !99, !noundef !5
  %.not22.i.us.i.us.i = icmp eq i8 %i.ct, %i.cx
  br i1 %.not22.i.us.i.us.i, label %.preheader43.i.us.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph271
  %.reass.i.us.i.us.i = add i64 %.sroa.04.0.i.us.i.us.i270, %invariant.op.i.i.reass.us.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i

.loopexit.split.us.us.i:                          ; preds = %bb.k, %bb.j
  %.sink98.i.us.i = phi i64 [ %i.al, %bb.j ], [ %.reass.i.us.i.us.i, %bb.k ] ; 2 uses
  %i.cy = add i64 %.sink98.i.us.i, %i.z           ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.j
  br i1 %i.cz, label %.lr.ph.i.split.us.i.us.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.split38.us.i.us.i:                               ; preds = %.preheader44.i.us.i.preheader, %.preheader.i.us.us.i.us.preheader, %.preheader44.i.us.i, %.preheader.i.us.us.i.us, %.preheader.i.preheader.us.i
  %spec.select101 = phi i64 [ -1, %.preheader.i.us.us.i.us ], [ -1, %.preheader.i.preheader.us.i ], [ 0, %.preheader44.i.us.i ], [ -1, %.preheader.i.us.us.i.us.preheader ], [ 0, %.preheader44.i.us.i.preheader ]
  %i.da = icmp eq i64 %i.al, %i.j
  br i1 %i.da, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit, label %bb.b

.preheader.i.preheader.us.i:                      ; preds = %.preheader43.i.us.i.preheader, %.preheader43.i.us.i
  br i1 %i.k, label %.split38.us.i.us.i, label %.split40.us.i.i

.split.i:                                         ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.dc = load i8, ptr %i.db, align 2, !range !7, !alias.scope !92, !noalias !95
  %i.dd = trunc nuw i8 %i.dc to i1
  %.promoted95.i = load i8, ptr %i.e, align 8, !alias.scope !92, !noalias !95 ; 11 uses
  br i1 %i.dd, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i
  br i1 %i.k, label %.lr.ph.split.split.i.preheader.split.us, label %.lr.ph.split.split.i.preheader.split

.lr.ph.split.split.i.preheader.split.us:          ; preds = %.lr.ph.split.split.i.preheader
  %.pr.i.us = load i8, ptr %i.m, align 1, !noalias !101 ; 3 uses
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
  %i.dl = load i8, ptr %i.m, align 1, !noalias !102, !noundef !5 ; 4 uses
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
  %i.dv = load i8, ptr %i.m, align 1, !alias.scope !103, !noalias !102, !noundef !5
  %i.dw = icmp sgt i8 %i.dv, -65
  br i1 %i.dw, label %.lr.ph.split.us.split.split.us.split.us.split.i, label %.split100.us.i

.lr.ph.split.us.split.split.us.split.us.split.i:  ; preds = %.lr.ph.split.us.split.split.us.i
  %i.dx = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dx, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.lr.ph.split.us.split.split.split.us.split.i:     ; preds = %.lr.ph.split.us.split.i
  %i.dy = trunc nuw i8 %.promoted95.i to i1
  br i1 %i.dy, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit

.split100.us.i:                                   ; preds = %.lr.ph.split.split.i.preheader.split, %.lr.ph.split.us.split.split.us.i, %.lr.ph.split.split.i.preheader.split.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %i.f, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #38, !noalias !102
  unreachable

.split40.us.i.i:                                  ; preds = %.preheader.i.preheader.us.i, %.lr.ph268
  %.us-phi41.i.i = phi i64 [ %i.ca, %.lr.ph268 ], [ %i.ac, %.preheader.i.preheader.us.i ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.us-phi41.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #38, !noalias !104
  unreachable

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs6oosyzwIepl_6ide_db.exit.sink.split: ; preds = %.lr.ph.split.split.i.us.us.preheader, %.lr.ph.split.split.i.us36.us.us.preheader, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.split, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split, %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.split.us.split.us.split.i, %.lr.ph.split.us.split.split.split.us.split.i
  %.sroa.0.0.ph = phi i64 [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split ], [ %1, %.lr.ph.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split ], [ %1, %.lr.ph.split.us.split.split.split.us.split.i ], [ %1, %.lr.ph.split.us.split.split.us.split.us.split.i ], [ %i.f, %.lr.ph.split.split.i.preheader.split.split.us.split.us.split.split.us.split.us ], [ %i.f, %.lr.ph.split.split.i.us36.us.us.preheader ], [ %i.f, %.lr.ph.split.split.i.us.us.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
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
  %i.f = load i8, ptr %i.c, align 1, !noalias !113, !noundef !5 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i: ; preds = %bb.b
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = add nuw nsw i64 %.reass5.i, 1
  %i.k = icmp samesign ne i64 %i.j, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.e, align 1, !noalias !113, !noundef !5
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
  %i.w = load i8, ptr %i.l, align 1, !noalias !113, !noundef !5
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
  %i.ah = load i8, ptr %i.v, align 1, !noalias !113, !noundef !5
  %i.ai = shl nuw nsw i32 %i.i, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.aa, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i
end_hunk_0
