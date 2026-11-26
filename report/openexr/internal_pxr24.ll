Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_pxr24?download=true
inline.NumInlined: 17
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@internal_exr_apply_pxr24:bb.a
  %bound1 = icmp ult ptr %i.al, %i.au
  %found.conflict = and i1 %bound0, %bound1
  %bound073 = icmp ult ptr %.1138255.i, %i.bb
  %bound174 = icmp ult ptr %i.am, %i.au
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx = or i1 %found.conflict, %found.conflict75
  %bound076 = icmp ult ptr %.1138255.i, %i.bf
  %bound177 = icmp ult ptr %i.an, %i.au
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx, %found.conflict78
  %bound080 = icmp ult ptr %.1138255.i, %i.bi
  %bound181 = icmp ult ptr %.1158253.i, %i.au
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  %bound084 = icmp ult ptr %i.al, %i.bb
  %bound185 = icmp ult ptr %i.am, %i.ax
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %conflict.rdx83, %found.conflict86
  %bound088 = icmp ult ptr %i.al, %i.bf
  %bound189 = icmp ult ptr %i.an, %i.ax
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx87, %found.conflict90
  %bound092 = icmp ult ptr %i.al, %i.bi
  %bound193 = icmp ult ptr %.1158253.i, %i.ax
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %i.am, %i.bf
  %bound197 = icmp ult ptr %i.an, %i.bb
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %i.am, %i.bi
  %bound1101 = icmp ult ptr %.1158253.i, %i.bb
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %i.an, %i.bi
  %bound1105 = icmp ult ptr %.1158253.i, %i.bf
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  br i1 %conflict.rdx107, label %.lr.ph251.i.preheader236, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 2147483644              ; 8 uses
  %i.bj = trunc nuw nsw i64 %n.vec to i32
  %i.bk = shl nuw nsw i64 %n.vec, 2
  %i.bl = getelementptr i8, ptr %.1158253.i, i64 %i.bk
  %i.bm = getelementptr i8, ptr %.1138255.i, i64 %n.vec
  %i.bn = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.bo = getelementptr i8, ptr %i.am, i64 %n.vec
  %i.bp = getelementptr i8, ptr %i.an, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %wide.load, %vector.body ]
  %i.bq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1158253.i, i64 %i.bq
  %next.gep108 = getelementptr i8, ptr %.1138255.i, i64 %index
  %next.gep109 = getelementptr i8, ptr %i.al, i64 %index
  %next.gep110 = getelementptr i8, ptr %i.am, i64 %index
  %next.gep111 = getelementptr i8, ptr %i.an, i64 %index
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !alias.scope !56 ; 4 uses
  %i.br = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bs = sub <4 x i32> %wide.load, %i.br         ; 4 uses
  %i.bt = lshr <4 x i32> %i.bs, splat (i32 24)
  %i.bu = trunc nuw <4 x i32> %i.bt to <4 x i8>
  store <4 x i8> %i.bu, ptr %next.gep108, align 1, !tbaa !20, !alias.scope !57, !noalias !58
  %i.bv = lshr <4 x i32> %i.bs, splat (i32 16)
  %i.bw = trunc <4 x i32> %i.bv to <4 x i8>
  store <4 x i8> %i.bw, ptr %next.gep109, align 1, !tbaa !20, !alias.scope !59, !noalias !60
  %i.bx = lshr <4 x i32> %i.bs, splat (i32 8)
  %i.by = trunc <4 x i32> %i.bx to <4 x i8>
  store <4 x i8> %i.by, ptr %next.gep110, align 1, !tbaa !20, !alias.scope !61, !noalias !62
  %i.bz = trunc <4 x i32> %i.bs to <4 x i8>
  store <4 x i8> %i.bz, ptr %next.gep111, align 1, !tbaa !20, !alias.scope !63, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph251.i.preheader236

.lr.ph251.i.preheader236:                         ; preds = %vector.memcheck, %.lr.ph251.i.preheader, %middle.block
  %.0175250.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %i.bj, %middle.block ] ; 4 uses
  %.0176249.i.ph = phi ptr [ %.1158253.i, %vector.memcheck ], [ %.1158253.i, %.lr.ph251.i.preheader ], [ %i.bl, %middle.block ] ; 3 uses
  %.0177248.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.sroa.037.0247.i.ph = phi ptr [ %.1138255.i, %vector.memcheck ], [ %.1138255.i, %.lr.ph251.i.preheader ], [ %i.bm, %middle.block ] ; 3 uses
  %.sroa.538.0246.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph251.i.preheader ], [ %i.bn, %middle.block ] ; 3 uses
  %.sroa.839.0245.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph251.i.preheader ], [ %i.bo, %middle.block ] ; 3 uses
  %.sroa.11.0244.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph251.i.preheader ], [ %i.bp, %middle.block ] ; 3 uses
  %i.cb = sub i32 %i.w, %.0175250.i.ph
  %.neg = add i32 %.0175250.i.ph, 1
  %xtraiter243 = and i32 %i.cb, 1
  %lcmp.mod244.not = icmp eq i32 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph251.i.prol.loopexit, label %.lr.ph251.i.prol

.lr.ph251.i.prol:                                 ; preds = %.lr.ph251.i.preheader236
  %.0176.val.i.prol = load i32, ptr %.0176249.i.ph, align 1 ; 2 uses
  %i.cc = sub i32 %.0176.val.i.prol, %.0177248.i.ph ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0176249.i.ph, i64 4
  %i.ce = lshr i32 %i.cc, 24
  %i.cf = trunc nuw i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i.ph, i64 1
  store i8 %i.cf, ptr %.sroa.037.0247.i.ph, align 1, !tbaa !20
  %i.ch = lshr i32 %i.cc, 16
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i.ph, i64 1
  store i8 %i.ci, ptr %.sroa.538.0246.i.ph, align 1, !tbaa !20
  %i.ck = lshr i32 %i.cc, 8
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i.ph, i64 1
  store i8 %i.cl, ptr %.sroa.839.0245.i.ph, align 1, !tbaa !20
  %i.cn = trunc i32 %i.cc to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i.ph, i64 1
  store i8 %i.cn, ptr %.sroa.11.0244.i.ph, align 1, !tbaa !20
  %i.cp = add nuw nsw i32 %.0175250.i.ph, 1
  br label %.lr.ph251.i.prol.loopexit

.lr.ph251.i.prol.loopexit:                        ; preds = %.lr.ph251.i.prol, %.lr.ph251.i.preheader236
  %.0175250.i.unr = phi i32 [ %.0175250.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cp, %.lr.ph251.i.prol ]
  %.0176249.i.unr = phi ptr [ %.0176249.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cd, %.lr.ph251.i.prol ]
  %.0177248.i.unr = phi i32 [ %.0177248.i.ph, %.lr.ph251.i.preheader236 ], [ %.0176.val.i.prol, %.lr.ph251.i.prol ]
  %.sroa.037.0247.i.unr = phi ptr [ %.sroa.037.0247.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cg, %.lr.ph251.i.prol ]
  %.sroa.538.0246.i.unr = phi ptr [ %.sroa.538.0246.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cj, %.lr.ph251.i.prol ]
  %.sroa.839.0245.i.unr = phi ptr [ %.sroa.839.0245.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cm, %.lr.ph251.i.prol ]
  %.sroa.11.0244.i.unr = phi ptr [ %.sroa.11.0244.i.ph, %.lr.ph251.i.preheader236 ], [ %i.co, %.lr.ph251.i.prol ]
  %i.cq = icmp eq i32 %i.w, %.neg
  br i1 %i.cq, label %.loopexit.i, label %.lr.ph251.i

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.prol.loopexit, %.lr.ph251.i
  %.0175250.i = phi i32 [ %i.dr, %.lr.ph251.i ], [ %.0175250.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.0176249.i = phi ptr [ %i.df, %.lr.ph251.i ], [ %.0176249.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0177248.i = phi i32 [ %.0176.val.i.1, %.lr.ph251.i ], [ %.0177248.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.sroa.037.0247.i = phi ptr [ %i.di, %.lr.ph251.i ], [ %.sroa.037.0247.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.538.0246.i = phi ptr [ %i.dl, %.lr.ph251.i ], [ %.sroa.538.0246.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.839.0245.i = phi ptr [ %i.do, %.lr.ph251.i ], [ %.sroa.839.0245.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.11.0244.i = phi ptr [ %i.dq, %.lr.ph251.i ], [ %.sroa.11.0244.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0176.val.i = load i32, ptr %.0176249.i, align 1 ; 2 uses
  %i.cr = sub i32 %.0176.val.i, %.0177248.i       ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0176249.i, i64 4
  %i.ct = lshr i32 %i.cr, 24
  %i.cu = trunc nuw i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 1
  store i8 %i.cu, ptr %.sroa.037.0247.i, align 1, !tbaa !20
  %i.cw = lshr i32 %i.cr, 16
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 1
  store i8 %i.cx, ptr %.sroa.538.0246.i, align 1, !tbaa !20
  %i.cz = lshr i32 %i.cr, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 1
  store i8 %i.da, ptr %.sroa.839.0245.i, align 1, !tbaa !20
  %i.dc = trunc i32 %i.cr to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 1
  store i8 %i.dc, ptr %.sroa.11.0244.i, align 1, !tbaa !20
  %.0176.val.i.1 = load i32, ptr %i.cs, align 1   ; 2 uses
  %i.de = sub i32 %.0176.val.i.1, %.0176.val.i    ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0176249.i, i64 8
  %i.dg = lshr i32 %i.de, 24
  %i.dh = trunc nuw i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 2
  store i8 %i.dh, ptr %i.cv, align 1, !tbaa !20
  %i.dj = lshr i32 %i.de, 16
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 2
  store i8 %i.dk, ptr %i.cy, align 1, !tbaa !20
  %i.dm = lshr i32 %i.de, 8
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 2
  store i8 %i.dn, ptr %i.db, align 1, !tbaa !20
  %i.dp = trunc i32 %i.de to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 2
  store i8 %i.dp, ptr %i.dd, align 1, !tbaa !20
  %i.dr = add nuw nsw i32 %.0175250.i, 2          ; 2 uses
  %exitcond270.not.i.1 = icmp eq i32 %i.dr, %i.w
  br i1 %exitcond270.not.i.1, label %.loopexit.i, label %.lr.ph251.i, !llvm.loop !30

bb.i:                                             ; preds = %bb.f
  %i.ds = shl nsw i64 %i.x, 1                     ; 2 uses
  %i.dt = add i64 %i.ds, %.1146254.i              ; 5 uses
  %i.du = load i64, ptr %i.c, align 8, !tbaa !55
  %.not185.i = icmp ugt i64 %i.dt, %i.du
  br i1 %.not185.i, label %apply_pxr24_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.ds ; 4 uses
  %i.dw = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 6 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.x ; 4 uses
  %i.dy = icmp sgt i32 %i.w, 0
  br i1 %i.dy, label %.lr.ph243.i.preheader, label %.loopexit.i

.lr.ph243.i.preheader:                            ; preds = %bb.j
  %i.dz = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check131 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check131, label %.lr.ph243.i.preheader237, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph243.i.preheader
  %i.ea = add nsw i32 %i.w, -1
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %1 = zext nneg i32 %i.w to i64
  %i.ec = getelementptr i8, ptr %.1138255.i, i64 %1
  %2 = shl nuw nsw i64 %i.eb, 1
  %3 = getelementptr i8, ptr %.1158253.i, i64 %2
  %i.ed = getelementptr i8, ptr %3, i64 2         ; 2 uses
  %i.ee = getelementptr i8, ptr %.1138255.i, i64 %i.x
  %4 = getelementptr i8, ptr %i.ee, i64 %i.eb
  %i.ef = getelementptr i8, ptr %4, i64 1
  %bound0133 = icmp ult ptr %.1138255.i, %i.ed
  %bound1134 = icmp ult ptr %.1158253.i, %i.ec
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0136 = icmp ult ptr %i.dw, %i.ed
  %bound1137 = icmp ult ptr %.1158253.i, %i.ef
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %found.conflict135, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph243.i.preheader237, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck132
  %n.vec141 = and i64 %i.dz, 2147483640           ; 6 uses
  %i.eg = trunc nuw nsw i64 %n.vec141 to i32
  %i.eh = shl nuw nsw i64 %n.vec141, 1
  %i.ei = getelementptr i8, ptr %.1158253.i, i64 %i.eh
  %i.ej = getelementptr i8, ptr %.1138255.i, i64 %n.vec141
  %i.ek = getelementptr i8, ptr %i.dw, i64 %n.vec141
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body142 ] ; 4 uses
  %vector.recur144 = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph140 ], [ %i.em, %vector.body142 ]
  %i.el = shl i64 %index143, 1
  %next.gep145 = getelementptr i8, ptr %.1158253.i, i64 %i.el
  %next.gep146 = getelementptr i8, ptr %.1138255.i, i64 %index143
  %next.gep147 = getelementptr i8, ptr %i.dw, i64 %index143
  %wide.load148 = load <8 x i16>, ptr %next.gep145, align 1, !alias.scope !66
  %i.em = zext <8 x i16> %wide.load148 to <8 x i32> ; 4 uses
  %i.en = shufflevector <8 x i32> %vector.recur144, <8 x i32> %i.em, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.eo = sub nsw <8 x i32> %i.em, %i.en          ; 2 uses
  %i.ep = lshr <8 x i32> %i.eo, splat (i32 8)
  %i.eq = trunc <8 x i32> %i.ep to <8 x i8>
  store <8 x i8> %i.eq, ptr %next.gep146, align 1, !tbaa !20, !alias.scope !67, !noalias !66
  %i.er = trunc <8 x i32> %i.eo to <8 x i8>
  store <8 x i8> %i.er, ptr %next.gep147, align 1, !tbaa !20, !alias.scope !68, !noalias !66
  %index.next149 = add nuw i64 %index143, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next149, %n.vec141
  br i1 %i.es, label %middle.block150, label %vector.body142, !llvm.loop !35

middle.block150:                                  ; preds = %vector.body142
  %vector.recur.extract151 = extractelement <8 x i32> %i.em, i64 7
  %cmp.n152 = icmp eq i64 %n.vec141, %i.dz
  br i1 %cmp.n152, label %.loopexit.i, label %.lr.ph243.i.preheader237

.lr.ph243.i.preheader237:                         ; preds = %vector.memcheck132, %.lr.ph243.i.preheader, %middle.block150
  %.0165242.i.ph = phi i32 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph243.i.preheader ], [ %i.eg, %middle.block150 ] ; 4 uses
  %.0166241.i.ph = phi ptr [ %.1158253.i, %vector.memcheck132 ], [ %.1158253.i, %.lr.ph243.i.preheader ], [ %i.ei, %middle.block150 ] ; 2 uses
  %.0167240.i.ph = phi i32 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph243.i.preheader ], [ %vector.recur.extract151, %middle.block150 ] ; 2 uses
  %.sroa.024.0239.i.ph = phi ptr [ %.1138255.i, %vector.memcheck132 ], [ %.1138255.i, %.lr.ph243.i.preheader ], [ %i.ej, %middle.block150 ] ; 2 uses
  %.sroa.525.0238.i.ph = phi ptr [ %i.dw, %vector.memcheck132 ], [ %i.dw, %.lr.ph243.i.preheader ], [ %i.ek, %middle.block150 ] ; 2 uses
  %i.et = sub i32 %i.w, %.0165242.i.ph
  %xtraiter = and i32 %i.et, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol

.lr.ph243.i.prol:                                 ; preds = %.lr.ph243.i.preheader237, %.lr.ph243.i.prol
  %.0165242.i.prol = phi i32 [ %i.fc, %.lr.ph243.i.prol ], [ %.0165242.i.ph, %.lr.ph243.i.preheader237 ]
  %.0166241.i.prol = phi ptr [ %i.ew, %.lr.ph243.i.prol ], [ %.0166241.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %.0167240.i.prol = phi i32 [ %i.eu, %.lr.ph243.i.prol ], [ %.0167240.i.ph, %.lr.ph243.i.preheader237 ]
  %.sroa.024.0239.i.prol = phi ptr [ %i.ez, %.lr.ph243.i.prol ], [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %.sroa.525.0238.i.prol = phi ptr [ %i.fb, %.lr.ph243.i.prol ], [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph243.i.prol ], [ 0, %.lr.ph243.i.preheader237 ]
  %.0166.val.i.prol = load i16, ptr %.0166241.i.prol, align 1
  %i.eu = zext i16 %.0166.val.i.prol to i32       ; 3 uses
  %i.ev = sub nsw i32 %i.eu, %.0167240.i.prol     ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0166241.i.prol, i64 2 ; 2 uses
  %i.ex = lshr i32 %i.ev, 8
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i.prol, i64 1 ; 2 uses
  store i8 %i.ey, ptr %.sroa.024.0239.i.prol, align 1, !tbaa !20
  %i.fa = trunc i32 %i.ev to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i.prol, i64 1 ; 2 uses
  store i8 %i.fa, ptr %.sroa.525.0238.i.prol, align 1, !tbaa !20
  %i.fc = add nuw nsw i32 %.0165242.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol, !llvm.loop !36

.lr.ph243.i.prol.loopexit:                        ; preds = %.lr.ph243.i.prol, %.lr.ph243.i.preheader237
  %.0165242.i.unr = phi i32 [ %.0165242.i.ph, %.lr.ph243.i.preheader237 ], [ %i.fc, %.lr.ph243.i.prol ]
  %.0166241.i.unr = phi ptr [ %.0166241.i.ph, %.lr.ph243.i.preheader237 ], [ %i.ew, %.lr.ph243.i.prol ]
  %.0167240.i.unr = phi i32 [ %.0167240.i.ph, %.lr.ph243.i.preheader237 ], [ %i.eu, %.lr.ph243.i.prol ]
  %.sroa.024.0239.i.unr = phi ptr [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader237 ], [ %i.ez, %.lr.ph243.i.prol ]
  %.sroa.525.0238.i.unr = phi ptr [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader237 ], [ %i.fb, %.lr.ph243.i.prol ]
  %i.fd = sub i32 %.0165242.i.ph, %i.w
  %i.fe = icmp ugt i32 %i.fd, -4
  br i1 %i.fe, label %.loopexit.i, label %.lr.ph243.i

.lr.ph243.i:                                      ; preds = %.lr.ph243.i.prol.loopexit, %.lr.ph243.i
  %.0165242.i = phi i32 [ %i.gl, %.lr.ph243.i ], [ %.0165242.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.0166241.i = phi ptr [ %i.gf, %.lr.ph243.i ], [ %.0166241.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0167240.i = phi i32 [ %i.gd, %.lr.ph243.i ], [ %.0167240.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.sroa.024.0239.i = phi ptr [ %i.gi, %.lr.ph243.i ], [ %.sroa.024.0239.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.sroa.525.0238.i = phi ptr [ %i.gk, %.lr.ph243.i ], [ %.sroa.525.0238.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0166.val.i = load i16, ptr %.0166241.i, align 1
  %i.ff = zext i16 %.0166.val.i to i32            ; 2 uses
  %i.fg = sub nsw i32 %i.ff, %.0167240.i          ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 2
  %i.fi = lshr i32 %i.fg, 8
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 1
  store i8 %i.fj, ptr %.sroa.024.0239.i, align 1, !tbaa !20
  %i.fl = trunc i32 %i.fg to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 1
  store i8 %i.fl, ptr %.sroa.525.0238.i, align 1, !tbaa !20
  %.0166.val.i.1 = load i16, ptr %i.fh, align 1
  %i.fn = zext i16 %.0166.val.i.1 to i32          ; 2 uses
  %i.fo = sub nsw i32 %i.fn, %i.ff                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 4
  %i.fq = lshr i32 %i.fo, 8
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 2
  store i8 %i.fr, ptr %i.fk, align 1, !tbaa !20
  %i.ft = trunc i32 %i.fo to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 2
  store i8 %i.ft, ptr %i.fm, align 1, !tbaa !20
  %.0166.val.i.2 = load i16, ptr %i.fp, align 1
  %i.fv = zext i16 %.0166.val.i.2 to i32          ; 2 uses
  %i.fw = sub nsw i32 %i.fv, %i.fn                ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 6
  %i.fy = lshr i32 %i.fw, 8
  %i.fz = trunc i32 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 3
  store i8 %i.fz, ptr %i.fs, align 1, !tbaa !20
  %i.gb = trunc i32 %i.fw to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 3
  store i8 %i.gb, ptr %i.fu, align 1, !tbaa !20
  %.0166.val.i.3 = load i16, ptr %i.fx, align 1
  %i.gd = zext i16 %.0166.val.i.3 to i32          ; 2 uses
  %i.ge = sub nsw i32 %i.gd, %i.fv                ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 8
  %i.gg = lshr i32 %i.ge, 8
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 4
  store i8 %i.gh, ptr %i.ga, align 1, !tbaa !20
  %i.gj = trunc i32 %i.ge to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 4
  store i8 %i.gj, ptr %i.gc, align 1, !tbaa !20
  %i.gl = add nuw nsw i32 %.0165242.i, 4          ; 2 uses
  %exitcond269.not.i.3 = icmp eq i32 %i.gl, %i.w
  br i1 %exitcond269.not.i.3, label %.loopexit.i, label %.lr.ph243.i, !llvm.loop !37

bb.k:                                             ; preds = %bb.f
  %i.gm = mul nsw i64 %i.x, 3
  %i.gn = add i64 %i.gm, %.1146254.i              ; 4 uses
  %i.go = load i64, ptr %i.c, align 8, !tbaa !55
  %.not184.i = icmp ugt i64 %i.gn, %i.go
  br i1 %.not184.i, label %apply_pxr24_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gp = shl nsw i64 %i.x, 2
  %i.gq = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.gp ; 3 uses
  %i.gr = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 8 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.x   ; 8 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.x ; 3 uses
  %i.gu = icmp sgt i32 %i.w, 0
  br i1 %i.gu, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.gv = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check188 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check188, label %.lr.ph.i.preheader239, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph.i.preheader
  %i.gw = add nsw i32 %i.w, -1
  %i.gx = zext i32 %i.gw to i64                   ; 3 uses
  %i.gy = zext nneg i32 %i.w to i64
  %i.gz = getelementptr i8, ptr %.1138255.i, i64 %i.gy ; 3 uses
  %i.ha = getelementptr i8, ptr %.1138255.i, i64 %i.x
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gx
  %i.hc = getelementptr i8, ptr %i.hb, i64 1      ; 3 uses
  %i.hd = shl nuw nsw i64 %i.x, 1
  %i.he = getelementptr i8, ptr %.1138255.i, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.gx
  %i.hg = getelementptr i8, ptr %i.hf, i64 1      ; 3 uses
  %i.hh = shl nuw nsw i64 %i.gx, 2
  %i.hi = getelementptr i8, ptr %.1158253.i, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 4      ; 3 uses
  %bound0190 = icmp ult ptr %.1138255.i, %i.hc
  %bound1191 = icmp ult ptr %i.gr, %i.gz
  %found.conflict192 = and i1 %bound0190, %bound1191
  %bound0193 = icmp ult ptr %.1138255.i, %i.hg
  %bound1194 = icmp ult ptr %i.gs, %i.gz
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %found.conflict192, %found.conflict195
  %bound0197 = icmp ult ptr %.1138255.i, %i.hj
  %bound1198 = icmp ult ptr %.1158253.i, %i.gz
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %i.gr, %i.hg
  %bound1202 = icmp ult ptr %i.gs, %i.hc
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %i.gr, %i.hj
  %bound1206 = icmp ult ptr %.1158253.i, %i.hc
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  %bound0209 = icmp ult ptr %i.gs, %i.hj
  %bound1210 = icmp ult ptr %.1158253.i, %i.hg
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  br i1 %conflict.rdx212, label %.lr.ph.i.preheader239, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck189
  %n.vec214 = and i64 %i.gv, 2147483644           ; 7 uses
end_hunk_0
