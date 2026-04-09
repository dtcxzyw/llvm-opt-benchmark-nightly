inline.NumInlined: 41
inline.NumDeleted: 21
begin_hunk_0_@_PyUnicodeWriter_WriteASCIIString:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.081 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 14 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.j
end_hunk_0
begin_hunk_1_@_PyUnicodeWriter_WriteASCIIString:bb.a

bb.n:                                             ; preds = %.critedge
  %i.ar = getelementptr [2 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %.081
  %i.at = and i64 %.081, -4
  %i.au = getelementptr i8, ptr %1, i64 %i.at     ; 2 uses
  %i.av = icmp ult ptr %1, %i.au
  br i1 %i.av, label %.lr.ph103, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph103
  %.pre117 = ptrtoint ptr %i.cd to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.n
  %.088.lcssa114.pre-phi = phi i64 [ %.pre117, %.preheader.loopexit ], [ %i.a, %bb.n ] ; 2 uses
  %.086.lcssa.a = phi ptr [ %i.cd, %.preheader.loopexit ], [ %1, %bb.n ] ; 9 uses
  %.086.lcssa = phi ptr [ %i.ce, %.preheader.loopexit ], [ %i.ar, %bb.n ] ; 8 uses
  %i.aw = icmp ult ptr %.086.lcssa.a, %i.as
  br i1 %i.aw, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ax = add i64 %.081, %i.a                     ; 2 uses
  %i.ay = sub i64 %i.ax, %.088.lcssa114.pre-phi   ; 8 uses
  %scevgep115 = getelementptr i8, ptr %.086.lcssa.a, i64 %i.ay ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check143, label %.lr.ph108.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %iter.check
  %i.az = sub i64 %i.ax, %.088.lcssa114.pre-phi
  %i.ba = shl i64 %i.az, 1
  %scevgep138 = getelementptr i8, ptr %.086.lcssa, i64 %i.ba
  %bound0139 = icmp ult ptr %.086.lcssa, %scevgep115
  %bound1140 = icmp ult ptr %.086.lcssa.a, %scevgep138
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %.lr.ph108.preheader, label %vector.main.loop.iter.check

end_hunk_1
begin_hunk_2_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %n.mod.vf146 = and i64 %i.ay, 12
  %n.vec147 = and i64 %i.ay, -16                  ; 5 uses
  %i.bb = shl i64 %n.vec147, 1
  %i.bc = getelementptr i8, ptr %.086.lcssa, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.086.lcssa.a, i64 %n.vec147
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next155, %vector.body148 ] ; 3 uses
  %offset.idx150 = shl i64 %index149, 1
  %next.gep151 = getelementptr i8, ptr %.086.lcssa, i64 %offset.idx150 ; 2 uses
  %next.gep152 = getelementptr i8, ptr %.086.lcssa.a, i64 %index149 ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep152, i64 8
  %wide.load153 = load <8 x i8>, ptr %next.gep152, align 1, !tbaa !23, !alias.scope !48
  %wide.load154 = load <8 x i8>, ptr %i.be, align 1, !tbaa !23, !alias.scope !48
end_hunk_2
begin_hunk_3_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %vec.epilog.resume.val = phi i64 [ %n.vec147, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %i.ay, -4                   ; 4 uses
  %i.bj = shl i64 %n.vec161, 1
  %i.bk = getelementptr i8, ptr %.086.lcssa, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.086.lcssa.a, i64 %n.vec161
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = shl i64 %index162, 1
  %next.gep163 = getelementptr i8, ptr %.086.lcssa, i64 %i.bm
  %next.gep164 = getelementptr i8, ptr %.086.lcssa.a, i64 %index162
  %wide.load165 = load <4 x i8>, ptr %next.gep164, align 1, !tbaa !23, !alias.scope !48
  %i.bn = zext <4 x i8> %wide.load165 to <4 x i16>
  store <4 x i16> %i.bn, ptr %next.gep163, align 2, !tbaa !38, !alias.scope !51, !noalias !48
end_hunk_3
begin_hunk_4_@_PyUnicodeWriter_WriteASCIIString:bb.a
  br i1 %cmp.n167, label %.loopexit, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %vector.memcheck135, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.187107.ph = phi ptr [ %.086.lcssa, %iter.check ], [ %.086.lcssa, %vector.memcheck135 ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.189106.ph = phi ptr [ %.086.lcssa.a, %iter.check ], [ %.086.lcssa.a, %vector.memcheck135 ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph108

.lr.ph103:                                        ; preds = %bb.n, %.lr.ph103
end_hunk_4
begin_hunk_5_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %i.cb = zext i8 %i.ca to i16
  %i.cc = getelementptr i8, ptr %.086102, i64 6
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !38
  %i.cd = getelementptr i8, ptr %.088101, i64 4   ; 4 uses
  %i.ce = getelementptr i8, ptr %.086102, i64 8   ; 2 uses
  %i.cf = icmp ult ptr %i.cd, %i.au
  br i1 %i.cf, label %.lr.ph103, label %.preheader.loopexit, !llvm.loop !59

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %.187107 = phi ptr [ %i.cj, %.lr.ph108 ], [ %.187107.ph, %.lr.ph108.preheader ] ; 2 uses
end_hunk_5
begin_hunk_6_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr i8, ptr %.187107, i64 2
  store i16 %i.ci, ptr %.187107, align 2, !tbaa !38
  %exitcond116.not = icmp eq ptr %i.cg, %scevgep115
  br i1 %exitcond116.not, label %.loopexit, label %.lr.ph108, !llvm.loop !60

bb.o:                                             ; preds = %.critedge
  %i.ck = getelementptr [4 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.cl = getelementptr i8, ptr %1, i64 %.081
  %i.cm = and i64 %.081, -4
  %i.cn = getelementptr i8, ptr %1, i64 %i.cm     ; 2 uses
  %i.co = icmp ult ptr %1, %i.cn
  br i1 %i.co, label %.lr.ph, label %.preheader93

.preheader93.loopexit:                            ; preds = %.lr.ph
  %.pre118 = ptrtoint ptr %i.dq to i64
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader93.loopexit, %bb.o
  %.082.lcssa113.pre-phi = phi i64 [ %.pre118, %.preheader93.loopexit ], [ %i.a, %bb.o ] ; 2 uses
  %.082.lcssa.a = phi ptr [ %i.dr, %.preheader93.loopexit ], [ %i.ck, %bb.o ] ; 6 uses
  %.082.lcssa = phi ptr [ %i.dq, %.preheader93.loopexit ], [ %1, %bb.o ] ; 7 uses
  %i.cp = icmp ult ptr %.082.lcssa, %i.cl
  br i1 %i.cp, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %.preheader93
  %i.cq = add i64 %.081, %i.a                     ; 2 uses
  %i.cr = sub i64 %i.cq, %.082.lcssa113.pre-phi   ; 4 uses
  %scevgep = getelementptr i8, ptr %.082.lcssa, i64 %i.cr ; 2 uses
  %min.iters.check = icmp ult i64 %i.cr, 20
  br i1 %min.iters.check, label %.lr.ph100.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.cs = sub i64 %i.cq, %.082.lcssa113.pre-phi
  %i.ct = shl i64 %i.cs, 2
  %scevgep131 = getelementptr i8, ptr %.082.lcssa.a, i64 %i.ct
  %bound0 = icmp ult ptr %.082.lcssa.a, %scevgep
  %bound1 = icmp ult ptr %.082.lcssa, %scevgep131
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -8                      ; 4 uses
  %i.cu = getelementptr i8, ptr %.082.lcssa, i64 %n.vec
  %i.cv = shl i64 %n.vec, 2
  %i.cw = getelementptr i8, ptr %.082.lcssa.a, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.082.lcssa, i64 %index ; 2 uses
  %offset.idx = shl i64 %index, 2
  %next.gep132 = getelementptr i8, ptr %.082.lcssa.a, i64 %offset.idx ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !23, !alias.scope !61
  %wide.load133 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !23, !alias.scope !61
end_hunk_6
begin_hunk_7_@_PyUnicodeWriter_WriteASCIIString:bb.a
  br i1 %cmp.n, label %.loopexit, label %.lr.ph100.preheader171

.lr.ph100.preheader171:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.18399.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph100.preheader ], [ %i.cu, %middle.block ]
  %.18598.ph = phi ptr [ %.082.lcssa.a, %vector.memcheck ], [ %.082.lcssa.a, %.lr.ph100.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph100

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
end_hunk_7
begin_hunk_8_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %i.do = zext i8 %i.dn to i32
  %i.dp = getelementptr i8, ptr %.08495, i64 12
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !7
  %i.dq = getelementptr i8, ptr %.08296, i64 4    ; 4 uses
  %i.dr = getelementptr i8, ptr %.08495, i64 16   ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.cn
  br i1 %i.ds, label %.lr.ph, label %.preheader93.loopexit, !llvm.loop !67

.lr.ph100:                                        ; preds = %.lr.ph100.preheader171, %.lr.ph100
  %.18399 = phi ptr [ %i.dt, %.lr.ph100 ], [ %.18399.ph, %.lr.ph100.preheader171 ] ; 2 uses
end_hunk_8
begin_hunk_9_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr i8, ptr %.18598, i64 4
  store i32 %i.dv, ptr %.18598, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.dt, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph100, !llvm.loop !68

bb.p:                                             ; preds = %.critedge
  unreachable
end_hunk_9
