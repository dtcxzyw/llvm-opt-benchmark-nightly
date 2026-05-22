inline.NumInlined: 17
inline.NumDeleted: 13
begin_hunk_0_@internal_exr_apply_pxr24:bb.a
  %i.at = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep32 = getelementptr i8, ptr %i.at, i64 %i.as ; 4 uses
  %i.au = shl nuw nsw i64 %i.x, 1
  %i.av = getelementptr i8, ptr %scevgep, i64 %i.au
  %scevgep33 = getelementptr i8, ptr %i.av, i64 %i.as ; 4 uses
  %scevgep34 = getelementptr i8, ptr %.1138255.i, i64 1
  %i.aw = mul nuw nsw i64 %i.x, 3
  %i.ax = getelementptr i8, ptr %scevgep34, i64 %i.aw
  %scevgep35 = getelementptr i8, ptr %i.ax, i64 %i.as ; 4 uses
  %scevgep36 = getelementptr i8, ptr %.1158253.i, i64 4
  %i.ay = shl nuw nsw i64 %i.as, 2
  %scevgep37 = getelementptr i8, ptr %scevgep36, i64 %i.ay ; 4 uses
  %bound0 = icmp ult ptr %.1138255.i, %scevgep32
  %bound1 = icmp ult ptr %i.al, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  %bound038 = icmp ult ptr %.1138255.i, %scevgep33
  %bound139 = icmp ult ptr %i.am, %scevgep31
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %.1138255.i, %scevgep35
  %bound142 = icmp ult ptr %i.an, %scevgep31
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  %bound045 = icmp ult ptr %.1138255.i, %scevgep37
  %bound146 = icmp ult ptr %.1158253.i, %scevgep31
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  %bound049 = icmp ult ptr %i.al, %scevgep33
  %bound150 = icmp ult ptr %i.am, %scevgep32
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  %bound053 = icmp ult ptr %i.al, %scevgep35
  %bound154 = icmp ult ptr %i.an, %scevgep32
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx52, %found.conflict55
  %bound057 = icmp ult ptr %i.al, %scevgep37
  %bound158 = icmp ult ptr %.1158253.i, %scevgep32
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  %bound061 = icmp ult ptr %i.am, %scevgep35
  %bound162 = icmp ult ptr %i.an, %scevgep33
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  %bound065 = icmp ult ptr %i.am, %scevgep37
  %bound166 = icmp ult ptr %.1158253.i, %scevgep33
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %conflict.rdx64, %found.conflict67
  %bound069 = icmp ult ptr %i.an, %scevgep37
  %bound170 = icmp ult ptr %.1158253.i, %scevgep35
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx68, %found.conflict71
  br i1 %conflict.rdx72, label %.lr.ph251.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 2147483644              ; 8 uses
  %i.az = trunc nuw nsw i64 %n.vec to i32
  %i.ba = shl nuw nsw i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %.1158253.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.1138255.i, i64 %n.vec
  %i.bd = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.be = getelementptr i8, ptr %i.am, i64 %n.vec
  %i.bf = getelementptr i8, ptr %i.an, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %wide.load, %vector.body ]
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1158253.i, i64 %i.bg
  %next.gep73 = getelementptr i8, ptr %.1138255.i, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.al, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.am, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.an, i64 %index
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !alias.scope !28 ; 4 uses
  %i.bh = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bi = sub <4 x i32> %wide.load, %i.bh         ; 4 uses
  %i.bj = lshr <4 x i32> %i.bi, splat (i32 24)
  %i.bk = trunc nuw <4 x i32> %i.bj to <4 x i8>
  store <4 x i8> %i.bk, ptr %next.gep73, align 1, !tbaa !31, !alias.scope !32, !noalias !34
  %i.bl = lshr <4 x i32> %i.bi, splat (i32 16)
  %i.bm = trunc <4 x i32> %i.bl to <4 x i8>
  store <4 x i8> %i.bm, ptr %next.gep74, align 1, !tbaa !31, !alias.scope !38, !noalias !39
  %i.bn = lshr <4 x i32> %i.bi, splat (i32 8)
  %i.bo = trunc <4 x i32> %i.bn to <4 x i8>
  store <4 x i8> %i.bo, ptr %next.gep75, align 1, !tbaa !31, !alias.scope !40, !noalias !41
  %i.bp = trunc <4 x i32> %i.bi to <4 x i8>
  store <4 x i8> %i.bp, ptr %next.gep76, align 1, !tbaa !31, !alias.scope !42, !noalias !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph251.i.preheader176

.lr.ph251.i.preheader176:                         ; preds = %vector.memcheck, %.lr.ph251.i.preheader, %middle.block
  %.0176250.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %i.az, %middle.block ] ; 4 uses
  %.0177249.i.ph = phi ptr [ %.1158253.i, %vector.memcheck ], [ %.1158253.i, %.lr.ph251.i.preheader ], [ %i.bb, %middle.block ] ; 3 uses
  %.0178248.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.sroa.037.0247.i.ph = phi ptr [ %.1138255.i, %vector.memcheck ], [ %.1138255.i, %.lr.ph251.i.preheader ], [ %i.bc, %middle.block ] ; 3 uses
  %.sroa.538.0246.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph251.i.preheader ], [ %i.bd, %middle.block ] ; 3 uses
  %.sroa.839.0245.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph251.i.preheader ], [ %i.be, %middle.block ] ; 3 uses
  %.sroa.11.0244.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph251.i.preheader ], [ %i.bf, %middle.block ] ; 3 uses
  %i.br = sub i32 %i.w, %.0176250.i.ph
  %.neg = add i32 %.0176250.i.ph, 1
  %xtraiter183 = and i32 %i.br, 1
  %lcmp.mod184.not = icmp eq i32 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph251.i.prol.loopexit, label %.lr.ph251.i.prol

.lr.ph251.i.prol:                                 ; preds = %.lr.ph251.i.preheader176
  %.0177.val.i.prol = load i32, ptr %.0177249.i.ph, align 1 ; 2 uses
  %i.bs = sub i32 %.0177.val.i.prol, %.0178248.i.ph ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0177249.i.ph, i64 4
  %i.bu = lshr i32 %i.bs, 24
  %i.bv = trunc nuw i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i.ph, i64 1
  store i8 %i.bv, ptr %.sroa.037.0247.i.ph, align 1, !tbaa !31
  %i.bx = lshr i32 %i.bs, 16
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i.ph, i64 1
  store i8 %i.by, ptr %.sroa.538.0246.i.ph, align 1, !tbaa !31
  %i.ca = lshr i32 %i.bs, 8
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i.ph, i64 1
  store i8 %i.cb, ptr %.sroa.839.0245.i.ph, align 1, !tbaa !31
  %i.cd = trunc i32 %i.bs to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i.ph, i64 1
  store i8 %i.cd, ptr %.sroa.11.0244.i.ph, align 1, !tbaa !31
  %i.cf = add nuw nsw i32 %.0176250.i.ph, 1
  br label %.lr.ph251.i.prol.loopexit

.lr.ph251.i.prol.loopexit:                        ; preds = %.lr.ph251.i.prol, %.lr.ph251.i.preheader176
  %.0176250.i.unr = phi i32 [ %.0176250.i.ph, %.lr.ph251.i.preheader176 ], [ %i.cf, %.lr.ph251.i.prol ]
  %.0177249.i.unr = phi ptr [ %.0177249.i.ph, %.lr.ph251.i.preheader176 ], [ %i.bt, %.lr.ph251.i.prol ]
  %.0178248.i.unr = phi i32 [ %.0178248.i.ph, %.lr.ph251.i.preheader176 ], [ %.0177.val.i.prol, %.lr.ph251.i.prol ]
  %.sroa.037.0247.i.unr = phi ptr [ %.sroa.037.0247.i.ph, %.lr.ph251.i.preheader176 ], [ %i.bw, %.lr.ph251.i.prol ]
  %.sroa.538.0246.i.unr = phi ptr [ %.sroa.538.0246.i.ph, %.lr.ph251.i.preheader176 ], [ %i.bz, %.lr.ph251.i.prol ]
  %.sroa.839.0245.i.unr = phi ptr [ %.sroa.839.0245.i.ph, %.lr.ph251.i.preheader176 ], [ %i.cc, %.lr.ph251.i.prol ]
  %.sroa.11.0244.i.unr = phi ptr [ %.sroa.11.0244.i.ph, %.lr.ph251.i.preheader176 ], [ %i.ce, %.lr.ph251.i.prol ]
  %i.cg = icmp eq i32 %i.w, %.neg
  br i1 %i.cg, label %.loopexit.i, label %.lr.ph251.i

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.prol.loopexit, %.lr.ph251.i
  %.0176250.i = phi i32 [ %i.dh, %.lr.ph251.i ], [ %.0176250.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.0177249.i = phi ptr [ %i.cv, %.lr.ph251.i ], [ %.0177249.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0178248.i = phi i32 [ %.0177.val.i.1, %.lr.ph251.i ], [ %.0178248.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.sroa.037.0247.i = phi ptr [ %i.cy, %.lr.ph251.i ], [ %.sroa.037.0247.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.538.0246.i = phi ptr [ %i.db, %.lr.ph251.i ], [ %.sroa.538.0246.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.839.0245.i = phi ptr [ %i.de, %.lr.ph251.i ], [ %.sroa.839.0245.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.11.0244.i = phi ptr [ %i.dg, %.lr.ph251.i ], [ %.sroa.11.0244.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0177.val.i = load i32, ptr %.0177249.i, align 1 ; 2 uses
  %i.ch = sub i32 %.0177.val.i, %.0178248.i       ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0177249.i, i64 4
  %i.cj = lshr i32 %i.ch, 24
  %i.ck = trunc nuw i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 1
  store i8 %i.ck, ptr %.sroa.037.0247.i, align 1, !tbaa !31
  %i.cm = lshr i32 %i.ch, 16
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 1
  store i8 %i.cn, ptr %.sroa.538.0246.i, align 1, !tbaa !31
  %i.cp = lshr i32 %i.ch, 8
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 1
  store i8 %i.cq, ptr %.sroa.839.0245.i, align 1, !tbaa !31
  %i.cs = trunc i32 %i.ch to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 1
  store i8 %i.cs, ptr %.sroa.11.0244.i, align 1, !tbaa !31
  %.0177.val.i.1 = load i32, ptr %i.ci, align 1   ; 2 uses
  %i.cu = sub i32 %.0177.val.i.1, %.0177.val.i    ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0177249.i, i64 8
  %i.cw = lshr i32 %i.cu, 24
  %i.cx = trunc nuw i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 2
  store i8 %i.cx, ptr %i.cl, align 1, !tbaa !31
  %i.cz = lshr i32 %i.cu, 16
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 2
  store i8 %i.da, ptr %i.co, align 1, !tbaa !31
  %i.dc = lshr i32 %i.cu, 8
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 2
  store i8 %i.dd, ptr %i.cr, align 1, !tbaa !31
  %i.df = trunc i32 %i.cu to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 2
  store i8 %i.df, ptr %i.ct, align 1, !tbaa !31
  %i.dh = add nuw nsw i32 %.0176250.i, 2          ; 2 uses
  %exitcond270.not.i.1 = icmp eq i32 %i.dh, %i.w
  br i1 %exitcond270.not.i.1, label %.loopexit.i, label %.lr.ph251.i, !llvm.loop !47

bb.i:                                             ; preds = %bb.f
  %i.di = shl nsw i64 %i.x, 1                     ; 2 uses
  %i.dj = add i64 %i.di, %.1146254.i              ; 5 uses
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !27
  %.not185.i = icmp ugt i64 %i.dj, %i.dk
  br i1 %.not185.i, label %apply_pxr24_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.di ; 4 uses
  %i.dm = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 7 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.x ; 4 uses
  %i.do = icmp sgt i32 %i.w, 0
  br i1 %i.do, label %.lr.ph243.i.preheader, label %.loopexit.i

.lr.ph243.i.preheader:                            ; preds = %bb.j
  %i.dp = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check100 = icmp ult i32 %i.w, 16
  br i1 %min.iters.check100, label %.lr.ph243.i.preheader177, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.lr.ph243.i.preheader
  %scevgep83 = getelementptr i8, ptr %.1138255.i, i64 1 ; 2 uses
  %i.dq = add nsw i32 %i.w, -1
  %i.dr = zext i32 %i.dq to i64                   ; 3 uses
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %scevgep83, i64 %i.x
  %scevgep85.a = getelementptr i8, ptr %i.ds, i64 %i.dr ; 2 uses
  %scevgep86.a = getelementptr i8, ptr %.1158253.i, i64 2
  %i.dt = shl nuw nsw i64 %i.dr, 1
  %scevgep87.a = getelementptr i8, ptr %scevgep86.a, i64 %i.dt ; 2 uses
  %bound088 = icmp ult ptr %.1138255.i, %scevgep85.a
  %bound189 = icmp ult ptr %i.dm, %scevgep84
  %found.conflict90 = and i1 %bound088, %bound189
  %bound091 = icmp ult ptr %.1138255.i, %scevgep87.a
  %bound192 = icmp ult ptr %.1158253.i, %scevgep84
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %found.conflict90, %found.conflict93
  %bound095 = icmp ult ptr %i.dm, %scevgep87.a
  %bound196 = icmp ult ptr %.1158253.i, %scevgep85.a
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx94, %found.conflict97
  br i1 %conflict.rdx98, label %.lr.ph243.i.preheader177, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck82
  %n.vec103 = and i64 %i.dp, 2147483640           ; 6 uses
  %i.du = trunc nuw nsw i64 %n.vec103 to i32
  %i.dv = shl nuw nsw i64 %n.vec103, 1
  %i.dw = getelementptr i8, ptr %.1158253.i, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.1138255.i, i64 %n.vec103
  %i.dy = getelementptr i8, ptr %i.dm, i64 %n.vec103
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph101
  %index105 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body104 ] ; 4 uses
  %vector.recur106 = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph101 ], [ %i.ea, %vector.body104 ]
  %i.dz = shl i64 %index105, 1
  %next.gep107 = getelementptr i8, ptr %.1158253.i, i64 %i.dz
  %next.gep108 = getelementptr i8, ptr %.1138255.i, i64 %index105
  %next.gep109 = getelementptr i8, ptr %i.dm, i64 %index105
  %wide.load110 = load <8 x i16>, ptr %next.gep107, align 1, !alias.scope !48
  %i.ea = zext <8 x i16> %wide.load110 to <8 x i32> ; 4 uses
  %i.eb = shufflevector <8 x i32> %vector.recur106, <8 x i32> %i.ea, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ec = sub nsw <8 x i32> %i.ea, %i.eb          ; 2 uses
  %i.ed = lshr <8 x i32> %i.ec, splat (i32 8)
  %i.ee = trunc <8 x i32> %i.ed to <8 x i8>
  store <8 x i8> %i.ee, ptr %next.gep108, align 1, !tbaa !31, !alias.scope !51, !noalias !53
  %i.ef = trunc <8 x i32> %i.ec to <8 x i8>
  store <8 x i8> %i.ef, ptr %next.gep109, align 1, !tbaa !31, !alias.scope !55, !noalias !48
  %index.next111 = add nuw i64 %index105, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next111, %n.vec103
  br i1 %i.eg, label %middle.block112, label %vector.body104, !llvm.loop !56

middle.block112:                                  ; preds = %vector.body104
  %vector.recur.extract113 = extractelement <8 x i32> %i.ea, i64 7
  %cmp.n114 = icmp eq i64 %n.vec103, %i.dp
  br i1 %cmp.n114, label %.loopexit.i, label %.lr.ph243.i.preheader177

.lr.ph243.i.preheader177:                         ; preds = %vector.memcheck82, %.lr.ph243.i.preheader, %middle.block112
  %.0166242.i.ph = phi i32 [ 0, %vector.memcheck82 ], [ 0, %.lr.ph243.i.preheader ], [ %i.du, %middle.block112 ] ; 4 uses
  %.0167241.i.ph = phi ptr [ %.1158253.i, %vector.memcheck82 ], [ %.1158253.i, %.lr.ph243.i.preheader ], [ %i.dw, %middle.block112 ] ; 2 uses
  %.0168240.i.ph = phi i32 [ 0, %vector.memcheck82 ], [ 0, %.lr.ph243.i.preheader ], [ %vector.recur.extract113, %middle.block112 ] ; 2 uses
  %.sroa.024.0239.i.ph = phi ptr [ %.1138255.i, %vector.memcheck82 ], [ %.1138255.i, %.lr.ph243.i.preheader ], [ %i.dx, %middle.block112 ] ; 2 uses
  %.sroa.525.0238.i.ph = phi ptr [ %i.dm, %vector.memcheck82 ], [ %i.dm, %.lr.ph243.i.preheader ], [ %i.dy, %middle.block112 ] ; 2 uses
  %i.eh = sub i32 %i.w, %.0166242.i.ph
  %xtraiter = and i32 %i.eh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol

.lr.ph243.i.prol:                                 ; preds = %.lr.ph243.i.preheader177, %.lr.ph243.i.prol
  %.0166242.i.prol = phi i32 [ %i.eq, %.lr.ph243.i.prol ], [ %.0166242.i.ph, %.lr.ph243.i.preheader177 ]
  %.0167241.i.prol = phi ptr [ %i.ek, %.lr.ph243.i.prol ], [ %.0167241.i.ph, %.lr.ph243.i.preheader177 ] ; 2 uses
  %.0168240.i.prol = phi i32 [ %i.ei, %.lr.ph243.i.prol ], [ %.0168240.i.ph, %.lr.ph243.i.preheader177 ]
  %.sroa.024.0239.i.prol = phi ptr [ %i.en, %.lr.ph243.i.prol ], [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader177 ] ; 2 uses
  %.sroa.525.0238.i.prol = phi ptr [ %i.ep, %.lr.ph243.i.prol ], [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader177 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph243.i.prol ], [ 0, %.lr.ph243.i.preheader177 ]
  %.0167.val.i.prol = load i16, ptr %.0167241.i.prol, align 1
  %i.ei = zext i16 %.0167.val.i.prol to i32       ; 3 uses
  %i.ej = sub nsw i32 %i.ei, %.0168240.i.prol     ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0167241.i.prol, i64 2 ; 2 uses
  %i.el = lshr i32 %i.ej, 8
  %i.em = trunc i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i.prol, i64 1 ; 2 uses
  store i8 %i.em, ptr %.sroa.024.0239.i.prol, align 1, !tbaa !31
  %i.eo = trunc i32 %i.ej to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i.prol, i64 1 ; 2 uses
  store i8 %i.eo, ptr %.sroa.525.0238.i.prol, align 1, !tbaa !31
  %i.eq = add nuw nsw i32 %.0166242.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol, !llvm.loop !57

.lr.ph243.i.prol.loopexit:                        ; preds = %.lr.ph243.i.prol, %.lr.ph243.i.preheader177
  %.0166242.i.unr = phi i32 [ %.0166242.i.ph, %.lr.ph243.i.preheader177 ], [ %i.eq, %.lr.ph243.i.prol ]
  %.0167241.i.unr = phi ptr [ %.0167241.i.ph, %.lr.ph243.i.preheader177 ], [ %i.ek, %.lr.ph243.i.prol ]
  %.0168240.i.unr = phi i32 [ %.0168240.i.ph, %.lr.ph243.i.preheader177 ], [ %i.ei, %.lr.ph243.i.prol ]
  %.sroa.024.0239.i.unr = phi ptr [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader177 ], [ %i.en, %.lr.ph243.i.prol ]
  %.sroa.525.0238.i.unr = phi ptr [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader177 ], [ %i.ep, %.lr.ph243.i.prol ]
  %i.er = sub i32 %.0166242.i.ph, %i.w
  %i.es = icmp ugt i32 %i.er, -4
  br i1 %i.es, label %.loopexit.i, label %.lr.ph243.i

.lr.ph243.i:                                      ; preds = %.lr.ph243.i.prol.loopexit, %.lr.ph243.i
  %.0166242.i = phi i32 [ %i.fz, %.lr.ph243.i ], [ %.0166242.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.0167241.i = phi ptr [ %i.ft, %.lr.ph243.i ], [ %.0167241.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0168240.i = phi i32 [ %i.fr, %.lr.ph243.i ], [ %.0168240.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.sroa.024.0239.i = phi ptr [ %i.fw, %.lr.ph243.i ], [ %.sroa.024.0239.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.sroa.525.0238.i = phi ptr [ %i.fy, %.lr.ph243.i ], [ %.sroa.525.0238.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0167.val.i = load i16, ptr %.0167241.i, align 1
  %i.et = zext i16 %.0167.val.i to i32            ; 2 uses
  %i.eu = sub nsw i32 %i.et, %.0168240.i          ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0167241.i, i64 2
  %i.ew = lshr i32 %i.eu, 8
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 1
  store i8 %i.ex, ptr %.sroa.024.0239.i, align 1, !tbaa !31
  %i.ez = trunc i32 %i.eu to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 1
  store i8 %i.ez, ptr %.sroa.525.0238.i, align 1, !tbaa !31
  %.0167.val.i.1 = load i16, ptr %i.ev, align 1
  %i.fb = zext i16 %.0167.val.i.1 to i32          ; 2 uses
  %i.fc = sub nsw i32 %i.fb, %i.et                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0167241.i, i64 4
  %i.fe = lshr i32 %i.fc, 8
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 2
  store i8 %i.ff, ptr %i.ey, align 1, !tbaa !31
  %i.fh = trunc i32 %i.fc to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 2
  store i8 %i.fh, ptr %i.fa, align 1, !tbaa !31
  %.0167.val.i.2 = load i16, ptr %i.fd, align 1
  %i.fj = zext i16 %.0167.val.i.2 to i32          ; 2 uses
  %i.fk = sub nsw i32 %i.fj, %i.fb                ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0167241.i, i64 6
  %i.fm = lshr i32 %i.fk, 8
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 3
  store i8 %i.fn, ptr %i.fg, align 1, !tbaa !31
  %i.fp = trunc i32 %i.fk to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 3
  store i8 %i.fp, ptr %i.fi, align 1, !tbaa !31
  %.0167.val.i.3 = load i16, ptr %i.fl, align 1
  %i.fr = zext i16 %.0167.val.i.3 to i32          ; 2 uses
  %i.fs = sub nsw i32 %i.fr, %i.fj                ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0167241.i, i64 8
  %i.fu = lshr i32 %i.fs, 8
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 4
  store i8 %i.fv, ptr %i.fo, align 1, !tbaa !31
  %i.fx = trunc i32 %i.fs to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 4
  store i8 %i.fx, ptr %i.fq, align 1, !tbaa !31
  %i.fz = add nuw nsw i32 %.0166242.i, 4          ; 2 uses
  %exitcond269.not.i.3 = icmp eq i32 %i.fz, %i.w
  br i1 %exitcond269.not.i.3, label %.loopexit.i, label %.lr.ph243.i, !llvm.loop !59

bb.k:                                             ; preds = %bb.f
  %i.ga = mul nsw i64 %i.x, 3
  %i.gb = add i64 %i.ga, %.1146254.i              ; 4 uses
  %i.gc = load i64, ptr %i.c, align 8, !tbaa !27
  %.not184.i = icmp ugt i64 %i.gb, %i.gc
  br i1 %.not184.i, label %apply_pxr24_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gd = shl nsw i32 %i.w, 2
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr %.1158253.i, i64 %i.ge ; 3 uses
  %i.gg = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 8 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.x   ; 8 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.x ; 3 uses
  %i.gj = icmp sgt i32 %i.w, 0
  br i1 %i.gj, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.gk = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check151 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check151, label %.lr.ph.i.preheader179, label %vector.memcheck120

vector.memcheck120:                               ; preds = %.lr.ph.i.preheader
  %scevgep121.a = getelementptr i8, ptr %.1138255.i, i64 1 ; 3 uses
  %i.gl = add nsw i32 %i.w, -1
  %i.gm = zext i32 %i.gl to i64                   ; 4 uses
  %scevgep122.a = getelementptr i8, ptr %scevgep121.a, i64 %i.gm ; 3 uses
  %i.gn = getelementptr i8, ptr %scevgep121.a, i64 %i.x
  %scevgep123.a = getelementptr i8, ptr %i.gn, i64 %i.gm ; 3 uses
  %i.go = shl nuw nsw i64 %i.x, 1
  %i.gp = getelementptr i8, ptr %scevgep121.a, i64 %i.go
  %scevgep124 = getelementptr i8, ptr %i.gp, i64 %i.gm ; 3 uses
  %scevgep125 = getelementptr i8, ptr %.1158253.i, i64 4
  %i.gq = shl nuw nsw i64 %i.gm, 2
  %scevgep126 = getelementptr i8, ptr %scevgep125, i64 %i.gq ; 3 uses
  %bound0127.a = icmp ult ptr %.1138255.i, %scevgep123.a
  %bound1128.a = icmp ult ptr %i.gg, %scevgep122.a
  %found.conflict129.a = and i1 %bound0127.a, %bound1128.a
  %bound0130 = icmp ult ptr %.1138255.i, %scevgep124
  %bound1131 = icmp ult ptr %i.gh, %scevgep122.a
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %found.conflict129.a, %found.conflict132
  %bound0134 = icmp ult ptr %.1138255.i, %scevgep126
  %bound1135 = icmp ult ptr %.1158253.i, %scevgep122.a
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %i.gg, %scevgep124
  %bound1139 = icmp ult ptr %i.gh, %scevgep123.a
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %i.gg, %scevgep126
  %bound1143 = icmp ult ptr %.1158253.i, %scevgep123.a
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %i.gh, %scevgep126
  %bound1147 = icmp ult ptr %.1158253.i, %scevgep124
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  br i1 %conflict.rdx149, label %.lr.ph.i.preheader179, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck120
  %n.vec154 = and i64 %i.gk, 2147483644           ; 7 uses
  %i.gr = trunc nuw nsw i64 %n.vec154 to i32
  %i.gs = shl nuw nsw i64 %n.vec154, 2
  %i.gt = getelementptr i8, ptr %.1158253.i, i64 %i.gs
  %i.gu = getelementptr i8, ptr %.1138255.i, i64 %n.vec154
  %i.gv = getelementptr i8, ptr %i.gg, i64 %n.vec154
  %i.gw = getelementptr i8, ptr %i.gh, i64 %n.vec154
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body155 ] ; 5 uses
  %vector.recur157 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph152 ], [ %i.ht, %vector.body155 ]
  %i.gx = shl i64 %index156, 2
  %next.gep158.a = getelementptr i8, ptr %.1158253.i, i64 %i.gx
  %next.gep159 = getelementptr i8, ptr %.1138255.i, i64 %index156
  %next.gep160 = getelementptr i8, ptr %i.gg, i64 %index156
  %next.gep161 = getelementptr i8, ptr %i.gh, i64 %index156
  %wide.load162 = load <4 x i32>, ptr %next.gep158.a, align 1, !alias.scope !60 ; 6 uses
  %i.gy = and <4 x i32> %wide.load162, splat (i32 2139095040)
  %i.gz = and <4 x i32> %wide.load162, splat (i32 8388607) ; 2 uses
  %i.ha = icmp ne <4 x i32> %i.gy, splat (i32 2139095040)
  %i.hb = bitcast <4 x i32> %wide.load162 to <4 x float>
  %i.hc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hb)
  %i.hd = bitcast <4 x float> %i.hc to <4 x i32>  ; 2 uses
  %i.he = and <4 x i32> %wide.load162, splat (i32 128)
  %i.hf = add nuw <4 x i32> %i.he, %i.hd          ; 2 uses
  %i.hg = icmp ugt <4 x i32> %i.hf, splat (i32 2139095039)
  %i.hh = select <4 x i1> %i.hg, <4 x i32> %i.hd, <4 x i32> %i.hf
  %i.hi = lshr <4 x i32> %i.hh, splat (i32 8)
  %i.hj = icmp eq <4 x i32> %i.gz, zeroinitializer
  %.not175 = or <4 x i1> %i.ha, %i.hj
  %i.hk = lshr <4 x i32> %i.gz, splat (i32 8)     ; 2 uses
  %i.hl = icmp eq <4 x i32> %i.hk, zeroinitializer
  %i.hm = zext <4 x i1> %i.hl to <4 x i32>
  %i.hn = or <4 x i32> %i.hk, %i.hm
  %i.ho = or disjoint <4 x i32> %i.hn, splat (i32 8355840)
  %i.hp = and <4 x i32> %wide.load162, splat (i32 2147483647)
  %i.hq = icmp eq <4 x i32> %i.hp, splat (i32 2139095040)
  %predphi = select <4 x i1> %.not175, <4 x i32> %i.hi, <4 x i32> %i.ho
  %predphi163 = select <4 x i1> %i.hq, <4 x i32> splat (i32 8355840), <4 x i32> %predphi
  %i.hr = lshr <4 x i32> %wide.load162, splat (i32 8)
  %i.hs = and <4 x i32> %i.hr, splat (i32 8388608)
  %i.ht = or <4 x i32> %predphi163, %i.hs         ; 4 uses
  %i.hu = shufflevector <4 x i32> %vector.recur157, <4 x i32> %i.ht, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hv = sub nsw <4 x i32> %i.ht, %i.hu          ; 3 uses
  %i.hw = lshr <4 x i32> %i.hv, splat (i32 16)
  %i.hx = trunc <4 x i32> %i.hw to <4 x i8>
  store <4 x i8> %i.hx, ptr %next.gep159, align 1, !tbaa !31, !alias.scope !63, !noalias !65
  %i.hy = lshr <4 x i32> %i.hv, splat (i32 8)
  %i.hz = trunc <4 x i32> %i.hy to <4 x i8>
  store <4 x i8> %i.hz, ptr %next.gep160, align 1, !tbaa !31, !alias.scope !68, !noalias !69
  %i.ia = trunc <4 x i32> %i.hv to <4 x i8>
  store <4 x i8> %i.ia, ptr %next.gep161, align 1, !tbaa !31, !alias.scope !70, !noalias !60
  %index.next164 = add nuw i64 %index156, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next164, %n.vec154
  br i1 %i.ib, label %middle.block165, label %vector.body155, !llvm.loop !71

middle.block165:                                  ; preds = %vector.body155
  %vector.recur.extract166 = extractelement <4 x i32> %i.ht, i64 3
  %cmp.n167 = icmp eq i64 %n.vec154, %i.gk
  br i1 %cmp.n167, label %.loopexit.i, label %.lr.ph.i.preheader179

.lr.ph.i.preheader179:                            ; preds = %vector.memcheck120, %.lr.ph.i.preheader, %middle.block165
  %.0154237.i.ph = phi i32 [ 0, %vector.memcheck120 ], [ 0, %.lr.ph.i.preheader ], [ %i.gr, %middle.block165 ]
  %.0155236.i.ph = phi ptr [ %.1158253.i, %vector.memcheck120 ], [ %.1158253.i, %.lr.ph.i.preheader ], [ %i.gt, %middle.block165 ]
  %.0156235.i.ph = phi i32 [ 0, %vector.memcheck120 ], [ 0, %.lr.ph.i.preheader ], [ %vector.recur.extract166, %middle.block165 ]
  %.sroa.014.0234.i.ph = phi ptr [ %.1138255.i, %vector.memcheck120 ], [ %.1138255.i, %.lr.ph.i.preheader ], [ %i.gu, %middle.block165 ]
  %.sroa.5.0233.i.ph = phi ptr [ %i.gg, %vector.memcheck120 ], [ %i.gg, %.lr.ph.i.preheader ], [ %i.gv, %middle.block165 ]
  %.sroa.8.0232.i.ph = phi ptr [ %i.gh, %vector.memcheck120 ], [ %i.gh, %.lr.ph.i.preheader ], [ %i.gw, %middle.block165 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader179, %float_to_float24.exit.i
  %.0154237.i = phi i32 [ %i.jd, %float_to_float24.exit.i ], [ %.0154237.i.ph, %.lr.ph.i.preheader179 ]
  %.0155236.i = phi ptr [ %i.iu, %float_to_float24.exit.i ], [ %.0155236.i.ph, %.lr.ph.i.preheader179 ] ; 2 uses
  %.0156235.i = phi i32 [ %i.is, %float_to_float24.exit.i ], [ %.0156235.i.ph, %.lr.ph.i.preheader179 ]
  %.sroa.014.0234.i = phi ptr [ %i.ix, %float_to_float24.exit.i ], [ %.sroa.014.0234.i.ph, %.lr.ph.i.preheader179 ] ; 2 uses
  %.sroa.5.0233.i = phi ptr [ %i.ja, %float_to_float24.exit.i ], [ %.sroa.5.0233.i.ph, %.lr.ph.i.preheader179 ] ; 2 uses
  %.sroa.8.0232.i = phi ptr [ %i.jc, %float_to_float24.exit.i ], [ %.sroa.8.0232.i.ph, %.lr.ph.i.preheader179 ] ; 2 uses
  %.0155.val.i = load i32, ptr %.0155236.i, align 1 ; 5 uses
  %i.ic = and i32 %.0155.val.i, 2139095040
  %i.id = and i32 %.0155.val.i, 8388607           ; 2 uses
  %i.ie = icmp eq i32 %i.ic, 2139095040
  br i1 %i.ie, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %i.id, 0
  br i1 %.not.i.i, label %float_to_float24.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.if = lshr i32 %i.id, 8                       ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = zext i1 %i.ig to i32
  %i.ii = or i32 %i.if, %i.ih
  %i.ij = or disjoint i32 %i.ii, 8355840
  br label %float_to_float24.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.ik = bitcast i32 %.0155.val.i to float
  %i.il = tail call float @llvm.fabs.f32(float %i.ik)
  %i.im = bitcast float %i.il to i32              ; 2 uses
  %i.in = and i32 %.0155.val.i, 128
  %i.io = add nuw i32 %i.in, %i.im                ; 2 uses
  %i.ip = icmp ugt i32 %i.io, 2139095039
  %spec.select.v.i.i = select i1 %i.ip, i32 %i.im, i32 %i.io
  %spec.select.i.i = lshr i32 %spec.select.v.i.i, 8
  br label %float_to_float24.exit.i

float_to_float24.exit.i:                          ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ij, %bb.n ], [ %spec.select.i.i, %bb.o ], [ 8355840, %bb.m ]
  %i.iq = lshr i32 %.0155.val.i, 8
  %i.ir = and i32 %i.iq, 8388608
  %i.is = or i32 %.0.i.i, %i.ir                   ; 2 uses
  %i.it = sub nsw i32 %i.is, %.0156235.i          ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0155236.i, i64 4
  %i.iv = lshr i32 %i.it, 16
  %i.iw = trunc i32 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.014.0234.i, i64 1
  store i8 %i.iw, ptr %.sroa.014.0234.i, align 1, !tbaa !31
  %i.iy = lshr i32 %i.it, 8
  %i.iz = trunc i32 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.5.0233.i, i64 1
  store i8 %i.iz, ptr %.sroa.5.0233.i, align 1, !tbaa !31
  %i.jb = trunc i32 %i.it to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.8.0232.i, i64 1
  store i8 %i.jb, ptr %.sroa.8.0232.i, align 1, !tbaa !31
  %i.jd = add nuw nsw i32 %.0154237.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jd, %i.w
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !72

.loopexit.i:                                      ; preds = %float_to_float24.exit.i, %.lr.ph243.i.prol.loopexit, %.lr.ph243.i, %.lr.ph251.i.prol.loopexit, %.lr.ph251.i, %middle.block165, %middle.block112, %middle.block, %bb.l, %bb.j, %bb.h, %bb.e, %.lr.ph256.i
  %.6163.i = phi ptr [ %.1158253.i, %bb.e ], [ %.1158253.i, %.lr.ph256.i ], [ %i.dl, %bb.j ], [ %i.ak, %bb.h ], [ %i.gf, %bb.l ], [ %i.dl, %middle.block112 ], [ %i.ak, %middle.block ], [ %i.gf, %middle.block165 ], [ %i.dl, %.lr.ph243.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i ], [ %i.dl, %.lr.ph243.i ], [ %i.gf, %float_to_float24.exit.i ] ; 2 uses
  %.6151.i = phi i64 [ %.1146254.i, %bb.e ], [ %.1146254.i, %.lr.ph256.i ], [ %i.dj, %bb.j ], [ %i.ai, %bb.h ], [ %i.gb, %bb.l ], [ %i.dj, %middle.block112 ], [ %i.ai, %middle.block ], [ %i.gb, %middle.block165 ], [ %i.dj, %.lr.ph243.i.prol.loopexit ], [ %i.ai, %.lr.ph251.i.prol.loopexit ], [ %i.ai, %.lr.ph251.i ], [ %i.dj, %.lr.ph243.i ], [ %i.gb, %float_to_float24.exit.i ] ; 2 uses
  %.6143.i = phi ptr [ %.1138255.i, %bb.e ], [ %.1138255.i, %.lr.ph256.i ], [ %i.dn, %bb.j ], [ %i.ao, %bb.h ], [ %i.gi, %bb.l ], [ %i.dn, %middle.block112 ], [ %i.ao, %middle.block ], [ %i.gi, %middle.block165 ], [ %i.dn, %.lr.ph243.i.prol.loopexit ], [ %i.ao, %.lr.ph251.i.prol.loopexit ], [ %i.ao, %.lr.ph251.i ], [ %i.dn, %.lr.ph243.i ], [ %i.gi, %float_to_float24.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.je = load i16, ptr %i.m, align 8, !tbaa !18  ; 2 uses
  %i.jf = sext i16 %i.je to i64
  %i.jg = icmp slt i64 %indvars.iv.next.i, %i.jf
  br i1 %i.jg, label %.lr.ph256.i, label %._crit_edge.loopexit.i, !llvm.loop !73

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i
  %.pre272.i = load i32, ptr %i.j, align 4, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.jh = phi i32 [ %i.o, %bb.c ], [ %.pre272.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ji = phi i16 [ %i.p, %bb.c ], [ %i.je, %._crit_edge.loopexit.i ]
  %.1158.lcssa.i = phi ptr [ %.0157261.i, %bb.c ], [ %.6163.i, %._crit_edge.loopexit.i ]
  %.1146.lcssa.i = phi i64 [ %.0145262.i, %bb.c ], [ %.6151.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1138.lcssa.i = phi ptr [ %.0137263.i, %bb.c ], [ %.6143.i, %._crit_edge.loopexit.i ]
  %i.jj = add nuw nsw i32 %.0165260.i, 1          ; 2 uses
  %.not187.i = icmp slt i32 %i.jj, %i.jh
  br i1 %.not187.i, label %bb.c, label %.thread222.loopexit.i, !llvm.loop !74

.thread222.loopexit.i:                            ; preds = %._crit_edge.i
  %.pre273.i = load ptr, ptr %i.b, align 8, !tbaa !15
  br label %.thread222.i

.thread222.i:                                     ; preds = %.thread222.loopexit.i, %bb.b
  %i.jk = phi ptr [ %i.g, %bb.b ], [ %.pre273.i, %.thread222.loopexit.i ]
  %.0145.lcssa.i = phi i64 [ 0, %bb.b ], [ %.1146.lcssa.i, %.thread222.loopexit.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !75
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !76
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !77
  %i.jr = call i32 @exr_compress_buffer(ptr noundef %i.jm, i32 noundef -1, ptr noundef %i.jk, i64 noundef %.0145.lcssa.i, ptr noundef %i.jo, i64 noundef %i.jq, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.p, label %apply_pxr24_impl.exit

bb.p:                                             ; preds = %.thread222.i
  %i.jt = load i64, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.ju = load i64, ptr %i.d, align 8, !tbaa !7   ; 2 uses
  %i.jv = icmp ugt i64 %i.jt, %i.ju
  br i1 %i.jv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jw = load ptr, ptr %i.jn, align 8, !tbaa !76
  %i.jx = load ptr, ptr %i.h, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr align 1 %i.jx, i64 %i.ju, i1 false)
  %i.jy = load i64, ptr %i.d, align 8, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jz = phi i64 [ %i.jy, %bb.q ], [ %i.jt, %bb.p ]
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.jz, ptr %i.ka, align 8, !tbaa !79
  br label %apply_pxr24_impl.exit

apply_pxr24_impl.exit:                            ; preds = %bb.f, %bb.g, %bb.i, %bb.k, %.thread222.i, %bb.r
  %.9.i = phi i32 [ %i.jr, %.thread222.i ], [ 0, %bb.r ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.g ], [ 3, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %apply_pxr24_impl.exit
  %.0 = phi i32 [ %.9.i, %apply_pxr24_impl.exit ], [ %i.f, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @internal_encode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_pxr24(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = tail call i64 @exr_compress_max_buffer_size(i64 noundef %4) #5
  %i.e = tail call i32 @internal_decode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.d) #5 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.g = load i64, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = icmp ult i64 %i.g, %4
  br i1 %i.h, label %undo_pxr24_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = call i32 @exr_uncompress_buffer(ptr noundef %i.j, ptr noundef %1, i64 noundef %2, ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %.preheader215.i, label %undo_pxr24_impl.exit

.preheader215.i:                                  ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !84   ; 2 uses
  %.not175251.i = icmp sgt i32 %i.m, 0
  br i1 %.not175251.i, label %.lr.ph257.i, label %.thread207.i

.lr.ph257.i:                                      ; preds = %.preheader215.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i16, ptr %i.o, align 8, !tbaa !85 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph257.i
  %i.q = phi i32 [ %i.m, %.lr.ph257.i ], [ %i.gl, %._crit_edge.i ]
  %i.r = phi i16 [ %.pre.i, %.lr.ph257.i ], [ %i.gm, %._crit_edge.i ] ; 2 uses
  %i.s = phi i16 [ %.pre.i, %.lr.ph257.i ], [ %i.gn, %._crit_edge.i ] ; 2 uses
  %.0127256.i = phi ptr [ %3, %.lr.ph257.i ], [ %.1128.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0134255.i = phi i64 [ 0, %.lr.ph257.i ], [ %.1135.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0142254.i = phi i64 [ 0, %.lr.ph257.i ], [ %.1143.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0150253.i = phi ptr [ %i.f, %.lr.ph257.i ], [ %.1151.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0162252.i = phi i32 [ 0, %.lr.ph257.i ], [ %i.go, %._crit_edge.i ] ; 2 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !86
  %i.u = add nsw i32 %i.t, %.0162252.i
  %i.v = icmp sgt i16 %i.s, 0
  br i1 %i.v, label %.lr.ph247.i, label %._crit_edge.i

.lr.ph247.i:                                      ; preds = %bb.d, %bb.l
  %i.w = phi i16 [ %i.gi, %bb.l ], [ %i.r, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.1128245.i = phi ptr [ %.2129.i, %bb.l ], [ %.0127256.i, %bb.d ] ; 9 uses
  %.1135244.i = phi i64 [ %.2136.i, %bb.l ], [ %.0134255.i, %bb.d ] ; 3 uses
  %.1143243.i = phi i64 [ %.6148.i, %bb.l ], [ %.0142254.i, %bb.d ] ; 5 uses
  %.1151242.i = phi ptr [ %.3153.i, %bb.l ], [ %.0150253.i, %bb.d ] ; 11 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21  ; 17 uses
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !88
  %i.ae = sext i8 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.ab                ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !24
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph247.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !25 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = srem i32 %i.u, %i.ak
  %.not171.i = icmp eq i32 %i.am, 0
  br i1 %.not171.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = add i64 %i.af, %.1135244.i              ; 2 uses
  %i.ao = icmp ugt i64 %i.an, %4
  br i1 %i.ao, label %undo_pxr24_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !26
  switch i16 %i.aq, label %undo_pxr24_impl.exit [
    i16 0, label %bb.i
    i16 1, label %bb.j
    i16 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds i8, ptr %.1151242.i, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.ab ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ab ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ab ; 3 uses
  %i.av = add i64 %i.af, %.1143243.i              ; 4 uses
  %.not174.i = icmp ugt i64 %i.av, %4
  br i1 %.not174.i, label %undo_pxr24_impl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %i.aw = icmp sgt i32 %i.aa, 0
  br i1 %i.aw, label %.lr.ph240.i.preheader, label %.loopexit.i

.lr.ph240.i.preheader:                            ; preds = %.preheader.i
  %xtraiter44 = and i32 %i.aa, 1
  %i.ax = icmp eq i32 %i.aa, 1
  br i1 %i.ax, label %.lr.ph240.i.epil.preheader, label %.lr.ph240.i.preheader.new

.lr.ph240.i.preheader.new:                        ; preds = %.lr.ph240.i.preheader
  %unroll_iter47 = and i32 %i.aa, 2147483646
  br label %.lr.ph240.i

.lr.ph240.i:                                      ; preds = %.lr.ph240.i, %.lr.ph240.i.preheader.new
  %.0140238.i = phi ptr [ %.1128245.i, %.lr.ph240.i.preheader.new ], [ %i.cl, %.lr.ph240.i ] ; 3 uses
  %.0141237.i = phi i32 [ 0, %.lr.ph240.i.preheader.new ], [ %i.ck, %.lr.ph240.i ]
  %.sroa.027.0236.i = phi ptr [ %.1151242.i, %.lr.ph240.i.preheader.new ], [ %i.bs, %.lr.ph240.i ] ; 3 uses
  %.sroa.528.0235.i = phi ptr [ %i.ar, %.lr.ph240.i.preheader.new ], [ %i.bw, %.lr.ph240.i ] ; 3 uses
  %.sroa.829.0234.i = phi ptr [ %i.as, %.lr.ph240.i.preheader.new ], [ %i.cb, %.lr.ph240.i ] ; 3 uses
  %.sroa.11.0233.i = phi ptr [ %i.at, %.lr.ph240.i.preheader.new ], [ %i.cg, %.lr.ph240.i ] ; 3 uses
  %niter48 = phi i32 [ 0, %.lr.ph240.i.preheader.new ], [ %niter48.next.1, %.lr.ph240.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.027.0236.i, i64 1
  %i.az = load i8, ptr %.sroa.027.0236.i, align 1, !tbaa !31
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw i32 %i.ba, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.528.0235.i, i64 1
  %i.bd = load i8, ptr %.sroa.528.0235.i, align 1, !tbaa !31
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 16
  %i.bg = or disjoint i32 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.829.0234.i, i64 1
  %i.bi = load i8, ptr %.sroa.829.0234.i, align 1, !tbaa !31
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = or disjoint i32 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.11.0233.i, i64 1
  %i.bn = load i8, ptr %.sroa.11.0233.i, align 1, !tbaa !31
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo
  %i.bq = add i32 %i.bp, %.0141237.i              ; 2 uses
  store i32 %i.bq, ptr %.0140238.i, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.0140238.i, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.027.0236.i, i64 2 ; 2 uses
  %i.bt = load i8, ptr %i.ay, align 1, !tbaa !31
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw i32 %i.bu, 24
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.528.0235.i, i64 2 ; 2 uses
  %i.bx = load i8, ptr %i.bc, align 1, !tbaa !31
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 16
  %i.ca = or disjoint i32 %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.829.0234.i, i64 2 ; 2 uses
  %i.cc = load i8, ptr %i.bh, align 1, !tbaa !31
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = or disjoint i32 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.11.0233.i, i64 2 ; 2 uses
  %i.ch = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cf, %i.ci
  %i.ck = add i32 %i.cj, %i.bq                    ; 3 uses
  store i32 %i.ck, ptr %i.br, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0140238.i, i64 8 ; 2 uses
  %niter48.next.1 = add i32 %niter48, 2           ; 2 uses
  %niter48.ncmp.1 = icmp eq i32 %niter48.next.1, %unroll_iter47
  br i1 %niter48.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph240.i, !llvm.loop !89

bb.j:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds i8, ptr %.1151242.i, i64 %i.ab ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ab ; 3 uses
  %i.co = add i64 %i.af, %.1143243.i              ; 4 uses
  %.not173.i = icmp ugt i64 %i.co, %4
  br i1 %.not173.i, label %undo_pxr24_impl.exit, label %.preheader211.i

.preheader211.i:                                  ; preds = %bb.j
  %i.cp = icmp sgt i32 %i.aa, 0
  br i1 %i.cp, label %.lr.ph232.i.preheader, label %.loopexit.i

.lr.ph232.i.preheader:                            ; preds = %.preheader211.i
  %xtraiter39 = and i32 %i.aa, 1
  %i.cq = icmp eq i32 %i.aa, 1
  br i1 %i.cq, label %.lr.ph232.i.epil.preheader, label %.lr.ph232.i.preheader.new

.lr.ph232.i.preheader.new:                        ; preds = %.lr.ph232.i.preheader
  %unroll_iter42 = and i32 %i.aa, 2147483646
  br label %.lr.ph232.i

.lr.ph232.i:                                      ; preds = %.lr.ph232.i, %.lr.ph232.i.preheader.new
  %.0132230.i = phi ptr [ %.1128245.i, %.lr.ph232.i.preheader.new ], [ %i.dk, %.lr.ph232.i ] ; 3 uses
  %.0133229.i = phi i16 [ 0, %.lr.ph232.i.preheader.new ], [ %i.dj, %.lr.ph232.i ]
  %.sroa.018.0228.i = phi ptr [ %.1151242.i, %.lr.ph232.i.preheader.new ], [ %i.db, %.lr.ph232.i ] ; 3 uses
  %.sroa.519.0227.i = phi ptr [ %i.cm, %.lr.ph232.i.preheader.new ], [ %i.df, %.lr.ph232.i ] ; 3 uses
  %niter43 = phi i32 [ 0, %.lr.ph232.i.preheader.new ], [ %niter43.next.1, %.lr.ph232.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.018.0228.i, i64 1
  %i.cs = load i8, ptr %.sroa.018.0228.i, align 1, !tbaa !31
  %i.ct = zext i8 %i.cs to i16
  %i.cu = shl nuw i16 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.519.0227.i, i64 1
  %i.cw = load i8, ptr %.sroa.519.0227.i, align 1, !tbaa !31
  %i.cx = zext i8 %i.cw to i16
  %i.cy = or disjoint i16 %i.cu, %i.cx
  %i.cz = add i16 %i.cy, %.0133229.i              ; 2 uses
  store i16 %i.cz, ptr %.0132230.i, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.0132230.i, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.018.0228.i, i64 2 ; 2 uses
  %i.dc = load i8, ptr %i.cr, align 1, !tbaa !31
  %i.dd = zext i8 %i.dc to i16
  %i.de = shl nuw i16 %i.dd, 8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.519.0227.i, i64 2 ; 2 uses
  %i.dg = load i8, ptr %i.cv, align 1, !tbaa !31
  %i.dh = zext i8 %i.dg to i16
  %i.di = or disjoint i16 %i.de, %i.dh
  %i.dj = add i16 %i.di, %i.cz                    ; 3 uses
  store i16 %i.dj, ptr %i.da, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.0132230.i, i64 4 ; 2 uses
  %niter43.next.1 = add i32 %niter43, 2           ; 2 uses
  %niter43.ncmp.1 = icmp eq i32 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %.loopexit.i.loopexit36.unr-lcssa, label %.lr.ph232.i, !llvm.loop !90

bb.k:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds i8, ptr %.1151242.i, i64 %i.ab ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.ab ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.ab ; 3 uses
  %i.do = mul nsw i32 %i.aa, 3
  %i.dp = sext i32 %i.do to i64
  %i.dq = add i64 %.1143243.i, %i.dp              ; 4 uses
  %.not172.i = icmp ugt i64 %i.dq, %4
  br i1 %.not172.i, label %undo_pxr24_impl.exit, label %.preheader213.i

.preheader213.i:                                  ; preds = %bb.k
  %i.dr = icmp sgt i32 %i.aa, 0
  br i1 %i.dr, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader213.i
  %xtraiter = and i32 %i.aa, 1
  %i.ds = icmp eq i32 %i.aa, 1
  br i1 %i.ds, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.aa, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0125225.i = phi ptr [ %.1128245.i, %.lr.ph.i.preheader.new ], [ %i.ey, %.lr.ph.i ] ; 3 uses
  %.0126224.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ex, %.lr.ph.i ]
  %.sroa.0.0223.i = phi ptr [ %.1151242.i, %.lr.ph.i.preheader.new ], [ %i.ej, %.lr.ph.i ] ; 3 uses
  %.sroa.5.0222.i = phi ptr [ %i.dl, %.lr.ph.i.preheader.new ], [ %i.en, %.lr.ph.i ] ; 3 uses
  %.sroa.8.0221.i = phi ptr [ %i.dm, %.lr.ph.i.preheader.new ], [ %i.es, %.lr.ph.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0223.i, i64 1
  %i.du = load i8, ptr %.sroa.0.0223.i, align 1, !tbaa !31
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.5.0222.i, i64 1
  %i.dy = load i8, ptr %.sroa.5.0222.i, align 1, !tbaa !31
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 16
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.8.0221.i, i64 1
  %i.ed = load i8, ptr %.sroa.8.0221.i, align 1, !tbaa !31
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.eb, %i.ef
  %i.eh = add i32 %i.eg, %.0126224.i              ; 2 uses
  store i32 %i.eh, ptr %.0125225.i, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.0125225.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0223.i, i64 2 ; 2 uses
  %i.ek = load i8, ptr %i.dt, align 1, !tbaa !31
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw i32 %i.el, 24
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.5.0222.i, i64 2 ; 2 uses
  %i.eo = load i8, ptr %i.dx, align 1, !tbaa !31
  %i.ep = zext i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = or disjoint i32 %i.eq, %i.em
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.8.0221.i, i64 2 ; 2 uses
  %i.et = load i8, ptr %i.ec, align 1, !tbaa !31
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 8
  %i.ew = or disjoint i32 %i.er, %i.ev
  %i.ex = add i32 %i.ew, %i.eh                    ; 3 uses
  store i32 %i.ex, ptr %i.ei, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.0125225.i, i64 8 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit37.unr-lcssa, label %.lr.ph.i, !llvm.loop !91

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph240.i
  %lcmp.mod45.not = icmp eq i32 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.loopexit.i, label %.lr.ph240.i.epil.preheader

.lr.ph240.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph240.i.preheader
  %.0140238.i.epil.init = phi ptr [ %.1128245.i, %.lr.ph240.i.preheader ], [ %i.cl, %.loopexit.i.loopexit.unr-lcssa ]
  %.0141237.i.epil.init = phi i32 [ 0, %.lr.ph240.i.preheader ], [ %i.ck, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.027.0236.i.epil.init = phi ptr [ %.1151242.i, %.lr.ph240.i.preheader ], [ %i.bs, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.528.0235.i.epil.init = phi ptr [ %i.ar, %.lr.ph240.i.preheader ], [ %i.bw, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.829.0234.i.epil.init = phi ptr [ %i.as, %.lr.ph240.i.preheader ], [ %i.cb, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.11.0233.i.epil.init = phi ptr [ %i.at, %.lr.ph240.i.preheader ], [ %i.cg, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod46)
  %i.ez = load i8, ptr %.sroa.027.0236.i.epil.init, align 1, !tbaa !31
  %i.fa = zext i8 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 24
  %i.fc = load i8, ptr %.sroa.528.0235.i.epil.init, align 1, !tbaa !31
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 16
  %i.ff = or disjoint i32 %i.fe, %i.fb
  %i.fg = load i8, ptr %.sroa.829.0234.i.epil.init, align 1, !tbaa !31
  %i.fh = zext i8 %i.fg to i32
  %i.fi = shl nuw nsw i32 %i.fh, 8
  %i.fj = or disjoint i32 %i.ff, %i.fi
  %i.fk = load i8, ptr %.sroa.11.0233.i.epil.init, align 1, !tbaa !31
  %i.fl = zext i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = add i32 %i.fm, %.0141237.i.epil.init
  store i32 %i.fn, ptr %.0140238.i.epil.init, align 1
  br label %.loopexit.i

.loopexit.i.loopexit36.unr-lcssa:                 ; preds = %.lr.ph232.i
  %lcmp.mod40.not = icmp eq i32 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.loopexit.i, label %.lr.ph232.i.epil.preheader

.lr.ph232.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit36.unr-lcssa, %.lr.ph232.i.preheader
  %.0132230.i.epil.init = phi ptr [ %.1128245.i, %.lr.ph232.i.preheader ], [ %i.dk, %.loopexit.i.loopexit36.unr-lcssa ]
  %.0133229.i.epil.init = phi i16 [ 0, %.lr.ph232.i.preheader ], [ %i.dj, %.loopexit.i.loopexit36.unr-lcssa ]
  %.sroa.018.0228.i.epil.init = phi ptr [ %.1151242.i, %.lr.ph232.i.preheader ], [ %i.db, %.loopexit.i.loopexit36.unr-lcssa ]
  %.sroa.519.0227.i.epil.init = phi ptr [ %i.cm, %.lr.ph232.i.preheader ], [ %i.df, %.loopexit.i.loopexit36.unr-lcssa ]
  %lcmp.mod41 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.fo = load i8, ptr %.sroa.018.0228.i.epil.init, align 1, !tbaa !31
  %i.fp = zext i8 %i.fo to i16
  %i.fq = shl nuw i16 %i.fp, 8
  %i.fr = load i8, ptr %.sroa.519.0227.i.epil.init, align 1, !tbaa !31
  %i.fs = zext i8 %i.fr to i16
  %i.ft = or disjoint i16 %i.fq, %i.fs
  %i.fu = add i16 %i.ft, %.0133229.i.epil.init
  store i16 %i.fu, ptr %.0132230.i.epil.init, align 1
  br label %.loopexit.i

.loopexit.i.loopexit37.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit37.unr-lcssa, %.lr.ph.i.preheader
  %.0125225.i.epil.init = phi ptr [ %.1128245.i, %.lr.ph.i.preheader ], [ %i.ey, %.loopexit.i.loopexit37.unr-lcssa ]
  %.0126224.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ex, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.0.0223.i.epil.init = phi ptr [ %.1151242.i, %.lr.ph.i.preheader ], [ %i.ej, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.5.0222.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.preheader ], [ %i.en, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.8.0221.i.epil.init = phi ptr [ %i.dm, %.lr.ph.i.preheader ], [ %i.es, %.loopexit.i.loopexit37.unr-lcssa ]
  %lcmp.mod38 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.fv = load i8, ptr %.sroa.0.0223.i.epil.init, align 1, !tbaa !31
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw i32 %i.fw, 24
  %i.fy = load i8, ptr %.sroa.5.0222.i.epil.init, align 1, !tbaa !31
  %i.fz = zext i8 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 16
  %i.gb = or disjoint i32 %i.ga, %i.fx
  %i.gc = load i8, ptr %.sroa.8.0221.i.epil.init, align 1, !tbaa !31
  %i.gd = zext i8 %i.gc to i32
  %i.ge = shl nuw nsw i32 %i.gd, 8
  %i.gf = or disjoint i32 %i.gb, %i.ge
  %i.gg = add i32 %i.gf, %.0126224.i.epil.init
  store i32 %i.gg, ptr %.0125225.i.epil.init, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit37.unr-lcssa, %.lr.ph232.i.epil.preheader, %.loopexit.i.loopexit36.unr-lcssa, %.lr.ph240.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.preheader213.i, %.preheader211.i, %.preheader.i
  %.2152.i = phi ptr [ %i.cn, %.preheader211.i ], [ %i.au, %.preheader.i ], [ %i.dn, %.preheader213.i ], [ %i.cn, %.lr.ph232.i.epil.preheader ], [ %i.au, %.lr.ph240.i.epil.preheader ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ], [ %i.cn, %.loopexit.i.loopexit36.unr-lcssa ], [ %i.dn, %.loopexit.i.loopexit37.unr-lcssa ], [ %i.dn, %.lr.ph.i.epil.preheader ]
  %.5147.i = phi i64 [ %i.co, %.preheader211.i ], [ %i.av, %.preheader.i ], [ %i.dq, %.preheader213.i ], [ %i.co, %.lr.ph232.i.epil.preheader ], [ %i.av, %.lr.ph240.i.epil.preheader ], [ %i.av, %.loopexit.i.loopexit.unr-lcssa ], [ %i.co, %.loopexit.i.loopexit36.unr-lcssa ], [ %i.dq, %.loopexit.i.loopexit37.unr-lcssa ], [ %i.dq, %.lr.ph.i.epil.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.1128245.i, i64 %i.af
  %.pre264.i = load i16, ptr %i.o, align 8, !tbaa !85
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %bb.f, %.lr.ph247.i
  %i.gi = phi i16 [ %.pre264.i, %.loopexit.i ], [ %i.w, %.lr.ph247.i ], [ %i.w, %bb.f ] ; 4 uses
  %.3153.i = phi ptr [ %.2152.i, %.loopexit.i ], [ %.1151242.i, %.lr.ph247.i ], [ %.1151242.i, %bb.f ] ; 2 uses
  %.6148.i = phi i64 [ %.5147.i, %.loopexit.i ], [ %.1143243.i, %.lr.ph247.i ], [ %.1143243.i, %bb.f ] ; 2 uses
  %.2136.i = phi i64 [ %i.an, %.loopexit.i ], [ %.1135244.i, %.lr.ph247.i ], [ %.1135244.i, %bb.f ] ; 2 uses
  %.2129.i = phi ptr [ %i.gh, %.loopexit.i ], [ %.1128245.i, %.lr.ph247.i ], [ %.1128245.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gj = sext i16 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next.i, %i.gj
  br i1 %i.gk, label %.lr.ph247.i, label %._crit_edge.loopexit.i, !llvm.loop !92

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %.pre265.i = load i32, ptr %i.l, align 4, !tbaa !84
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %i.gl = phi i32 [ %i.q, %bb.d ], [ %.pre265.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gm = phi i16 [ %i.r, %bb.d ], [ %i.gi, %._crit_edge.loopexit.i ]
  %i.gn = phi i16 [ %i.s, %bb.d ], [ %i.gi, %._crit_edge.loopexit.i ]
  %.1151.lcssa.i = phi ptr [ %.0150253.i, %bb.d ], [ %.3153.i, %._crit_edge.loopexit.i ]
  %.1143.lcssa.i = phi i64 [ %.0142254.i, %bb.d ], [ %.6148.i, %._crit_edge.loopexit.i ]
  %.1135.lcssa.i = phi i64 [ %.0134255.i, %bb.d ], [ %.2136.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1128.lcssa.i = phi ptr [ %.0127256.i, %bb.d ], [ %.2129.i, %._crit_edge.loopexit.i ]
  %i.go = add nuw nsw i32 %.0162252.i, 1          ; 2 uses
  %.not175.i = icmp slt i32 %i.go, %i.gl
  br i1 %.not175.i, label %bb.d, label %.thread207.i, !llvm.loop !93

.thread207.i:                                     ; preds = %._crit_edge.i, %.preheader215.i
  %.0134.lcssa.i = phi i64 [ 0, %.preheader215.i ], [ %.1135.lcssa.i, %._crit_edge.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.0134.lcssa.i, ptr %i.gp, align 8, !tbaa !94
  br label %undo_pxr24_impl.exit

undo_pxr24_impl.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.b, %bb.c, %.thread207.i
  %.9.i = phi i32 [ %i.k, %bb.c ], [ 3, %bb.b ], [ 0, %.thread207.i ], [ 23, %bb.k ], [ 23, %bb.j ], [ 23, %bb.i ], [ 1, %bb.g ], [ 3, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %undo_pxr24_impl.exit
  %.0 = phi i32 [ %.9.i, %undo_pxr24_impl.exit ], [ %i.e, %bb.a ]
  ret i32 %.0
}

declare i32 @internal_decode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @exr_compress_max_buffer_size(i64 noundef) local_unnamed_addr #2

declare i32 @exr_compress_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @exr_uncompress_buffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 112}
!8 = !{!"_exr_encode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !4, i64 20, !12, i64 24, !13, i64 32, !10, i64 96, !10, i64 104, !9, i64 112, !9, i64 120, !14, i64 128, !9, i64 136, !10, i64 144, !9, i64 152, !9, i64 160, !10, i64 168, !9, i64 176, !9, i64 184, !10, i64 192, !9, i64 200, !10, i64 208, !9, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !5, i64 272}
!9 = !{!"long", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"p1 _ZTS19_priv_exr_context_t", !10, i64 0}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!8, !10, i64 192}
!16 = !{!8, !10, i64 104}
!17 = !{!8, !4, i64 44}
!18 = !{!8, !11, i64 16}
!19 = !{!8, !4, i64 40}
!20 = !{!8, !10, i64 8}
!21 = !{!22, !4, i64 12}
!22 = !{!"", !23, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !5, i64 25, !11, i64 26, !11, i64 28, !11, i64 30, !4, i64 32, !4, i64 36, !5, i64 40}
!23 = !{!"p1 omnipotent char", !10, i64 0}
!24 = !{!22, !4, i64 8}
!25 = !{!22, !4, i64 20}
!26 = !{!22, !11, i64 26}
!27 = !{!8, !9, i64 200}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!5, !5, i64 0}
!32 = !{!33}
!33 = distinct !{!33, !30}
!34 = !{!35, !36, !37, !29}
!35 = distinct !{!35, !30}
!36 = distinct !{!36, !30}
!37 = distinct !{!37, !30}
!38 = !{!35}
!39 = !{!36, !37, !29}
!40 = !{!36}
!41 = !{!37, !29}
!42 = !{!37}
!43 = distinct !{!43, !44, !45, !46}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !44, !45}
!48 = !{!49}
!49 = distinct !{!49, !50}
!50 = distinct !{!50, !"LVerDomain"}
!51 = !{!52}
!52 = distinct !{!52, !50}
!53 = !{!54, !49}
!54 = distinct !{!54, !50}
!55 = !{!54}
!56 = distinct !{!56, !44, !45, !46}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !44, !45}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = !{!66, !67, !61}
!66 = distinct !{!66, !62}
!67 = distinct !{!67, !62}
!68 = !{!66}
!69 = !{!67, !61}
!70 = !{!67}
!71 = distinct !{!71, !44, !45, !46}
!72 = distinct !{!72, !44, !45}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = !{!8, !12, i64 24}
!76 = !{!8, !10, i64 168}
!77 = !{!8, !9, i64 184}
!78 = !{!9, !9, i64 0}
!79 = !{!8, !9, i64 176}
!80 = !{!81, !10, i64 184}
!81 = !{!"_exr_decode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !4, i64 20, !12, i64 24, !13, i64 32, !4, i64 96, !4, i64 100, !9, i64 104, !10, i64 112, !10, i64 120, !9, i64 128, !10, i64 136, !9, i64 144, !10, i64 152, !9, i64 160, !14, i64 168, !9, i64 176, !10, i64 184, !9, i64 192, !10, i64 200, !9, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !5, i64 264}
!82 = !{!81, !9, i64 192}
!83 = !{!81, !12, i64 24}
!84 = !{!81, !4, i64 44}
!85 = !{!81, !11, i64 16}
!86 = !{!81, !4, i64 40}
!87 = !{!81, !10, i64 8}
!88 = !{!22, !5, i64 25}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !44}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !44}
!94 = !{!81, !9, i64 104}
end_hunk_0
