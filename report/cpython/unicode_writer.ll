inline.NumInlined: 41
inline.NumDeleted: 21
begin_hunk_0_@_PyUnicodeWriter_WriteASCIIString:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.081 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 16 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.j
end_hunk_0
begin_hunk_1_@_PyUnicodeWriter_WriteASCIIString:bb.a

bb.n:                                             ; preds = %.critedge
  %i.ar = getelementptr [2 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %.081     ; 2 uses
  %i.at = and i64 %.081, -4
  %i.au = getelementptr i8, ptr %1, i64 %i.at     ; 2 uses
  %i.av = icmp ult ptr %1, %i.au
  br i1 %i.av, label %.lr.ph103, label %.preheader

.preheader:                                       ; preds = %.lr.ph103, %bb.n
  %.088.lcssa = phi ptr [ %1, %bb.n ], [ %i.cd, %.lr.ph103 ] ; 10 uses
  %.086.lcssa.a = phi ptr [ %i.ar, %bb.n ], [ %i.ce, %.lr.ph103 ] ; 8 uses
  %.088.lcssa136 = ptrtoint ptr %.088.lcssa to i64 ; 3 uses
  %i.aw = icmp ult ptr %.088.lcssa, %i.as
  br i1 %i.aw, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ax = add i64 %.081, %i.a
  %i.ay = sub i64 %i.ax, %.088.lcssa136           ; 7 uses
  %min.iters.check143 = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check143, label %.lr.ph108.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %iter.check
  %3 = add i64 %.081, %i.a                        ; 2 uses
  %i.az = sub i64 %3, %.088.lcssa136
  %i.ba = shl i64 %i.az, 1
  %scevgep137 = getelementptr i8, ptr %.086.lcssa.a, i64 %i.ba
  %4 = sub i64 %3, %.088.lcssa136
  %scevgep138 = getelementptr i8, ptr %.088.lcssa, i64 %4
  %bound0139 = icmp ult ptr %.086.lcssa.a, %scevgep138
  %bound1140 = icmp ult ptr %.088.lcssa, %scevgep137
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %.lr.ph108.preheader, label %vector.main.loop.iter.check

end_hunk_1
begin_hunk_2_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %n.mod.vf146 = and i64 %i.ay, 12
  %n.vec147 = and i64 %i.ay, -16                  ; 5 uses
  %i.bb = shl i64 %n.vec147, 1
  %i.bc = getelementptr i8, ptr %.086.lcssa.a, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.088.lcssa, i64 %n.vec147
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next155, %vector.body148 ] ; 3 uses
  %offset.idx150 = shl i64 %index149, 1
  %next.gep151 = getelementptr i8, ptr %.086.lcssa.a, i64 %offset.idx150 ; 2 uses
  %next.gep152 = getelementptr i8, ptr %.088.lcssa, i64 %index149 ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep152, i64 8
  %wide.load153 = load <8 x i8>, ptr %next.gep152, align 1, !tbaa !23, !alias.scope !48
  %wide.load154 = load <8 x i8>, ptr %i.be, align 1, !tbaa !23, !alias.scope !48
end_hunk_2
begin_hunk_3_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %vec.epilog.resume.val = phi i64 [ %n.vec147, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %i.ay, -4                   ; 4 uses
  %i.bj = shl i64 %n.vec161, 1
  %i.bk = getelementptr i8, ptr %.086.lcssa.a, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.088.lcssa, i64 %n.vec161
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = shl i64 %index162, 1
  %next.gep163 = getelementptr i8, ptr %.086.lcssa.a, i64 %i.bm
  %next.gep164 = getelementptr i8, ptr %.088.lcssa, i64 %index162
  %wide.load165 = load <4 x i8>, ptr %next.gep164, align 1, !tbaa !23, !alias.scope !48
  %i.bn = zext <4 x i8> %wide.load165 to <4 x i16>
  store <4 x i16> %i.bn, ptr %next.gep163, align 2, !tbaa !38, !alias.scope !51, !noalias !48
end_hunk_3
begin_hunk_4_@_PyUnicodeWriter_WriteASCIIString:bb.a
  br i1 %cmp.n167, label %.loopexit, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %vector.memcheck135, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.187107.ph = phi ptr [ %.086.lcssa.a, %iter.check ], [ %.086.lcssa.a, %vector.memcheck135 ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.189106.ph = phi ptr [ %.088.lcssa, %iter.check ], [ %.088.lcssa, %vector.memcheck135 ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph108

.lr.ph103:                                        ; preds = %bb.n, %.lr.ph103
end_hunk_4
begin_hunk_5_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %i.cb = zext i8 %i.ca to i16
  %i.cc = getelementptr i8, ptr %.086102, i64 6
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !38
  %i.cd = getelementptr i8, ptr %.088101, i64 4   ; 3 uses
  %i.ce = getelementptr i8, ptr %.086102, i64 8   ; 2 uses
  %i.cf = icmp ult ptr %i.cd, %i.au
  br i1 %i.cf, label %.lr.ph103, label %.preheader, !llvm.loop !59

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %.187107 = phi ptr [ %i.cj, %.lr.ph108 ], [ %.187107.ph, %.lr.ph108.preheader ] ; 2 uses
end_hunk_5
begin_hunk_6_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr i8, ptr %.187107, i64 2
  store i16 %i.ci, ptr %.187107, align 2, !tbaa !38
  %5 = icmp ult ptr %i.cg, %i.as
  br i1 %5, label %.lr.ph108, label %.loopexit, !llvm.loop !60

bb.o:                                             ; preds = %.critedge
  %i.ck = getelementptr [4 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.cl = getelementptr i8, ptr %1, i64 %.081     ; 2 uses
  %i.cm = and i64 %.081, -4
  %i.cn = getelementptr i8, ptr %1, i64 %i.cm     ; 2 uses
  %i.co = icmp ult ptr %1, %i.cn
  br i1 %i.co, label %.lr.ph, label %.preheader93

.preheader93:                                     ; preds = %.lr.ph, %bb.o
  %.084.lcssa = phi ptr [ %i.ck, %bb.o ], [ %i.dr, %.lr.ph ] ; 6 uses
  %.082.lcssa.a = phi ptr [ %1, %bb.o ], [ %i.dq, %.lr.ph ] ; 8 uses
  %.082.lcssa130 = ptrtoint ptr %.082.lcssa.a to i64 ; 3 uses
  %i.cp = icmp ult ptr %.082.lcssa.a, %i.cl
  br i1 %i.cp, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %.preheader93
  %i.cq = add i64 %.081, %i.a
  %i.cr = sub i64 %i.cq, %.082.lcssa130           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check, label %.lr.ph100.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %6 = add i64 %.081, %i.a                        ; 2 uses
  %i.cs = sub i64 %6, %.082.lcssa130
  %i.ct = shl i64 %i.cs, 2
  %scevgep = getelementptr i8, ptr %.084.lcssa, i64 %i.ct
  %7 = sub i64 %6, %.082.lcssa130
  %scevgep131 = getelementptr i8, ptr %.082.lcssa.a, i64 %7
  %bound0 = icmp ult ptr %.084.lcssa, %scevgep131
  %bound1 = icmp ult ptr %.082.lcssa.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -8                      ; 4 uses
  %i.cu = getelementptr i8, ptr %.082.lcssa.a, i64 %n.vec
  %i.cv = shl i64 %n.vec, 2
  %i.cw = getelementptr i8, ptr %.084.lcssa, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.082.lcssa.a, i64 %index ; 2 uses
  %offset.idx = shl i64 %index, 2
  %next.gep132 = getelementptr i8, ptr %.084.lcssa, i64 %offset.idx ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !23, !alias.scope !61
  %wide.load133 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !23, !alias.scope !61
end_hunk_6
begin_hunk_7_@_PyUnicodeWriter_WriteASCIIString:bb.a
  br i1 %cmp.n, label %.loopexit, label %.lr.ph100.preheader171

.lr.ph100.preheader171:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.18399.ph = phi ptr [ %.082.lcssa.a, %vector.memcheck ], [ %.082.lcssa.a, %.lr.ph100.preheader ], [ %i.cu, %middle.block ]
  %.18598.ph = phi ptr [ %.084.lcssa, %vector.memcheck ], [ %.084.lcssa, %.lr.ph100.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph100

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
end_hunk_7
begin_hunk_8_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %i.do = zext i8 %i.dn to i32
  %i.dp = getelementptr i8, ptr %.08495, i64 12
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !7
  %i.dq = getelementptr i8, ptr %.08296, i64 4    ; 3 uses
  %i.dr = getelementptr i8, ptr %.08495, i64 16   ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.cn
  br i1 %i.ds, label %.lr.ph, label %.preheader93, !llvm.loop !67

.lr.ph100:                                        ; preds = %.lr.ph100.preheader171, %.lr.ph100
  %.18399 = phi ptr [ %i.dt, %.lr.ph100 ], [ %.18399.ph, %.lr.ph100.preheader171 ] ; 2 uses
end_hunk_8
begin_hunk_9_@_PyUnicodeWriter_WriteASCIIString:bb.a
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr i8, ptr %.18598, i64 4
  store i32 %i.dv, ptr %.18598, align 4, !tbaa !7
  %8 = icmp ult ptr %i.dt, %i.cl
  br i1 %8, label %.lr.ph100, label %.loopexit, !llvm.loop !68

bb.p:                                             ; preds = %.critedge
  unreachable
end_hunk_9
