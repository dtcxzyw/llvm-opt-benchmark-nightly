inline.NumInlined: 2081
inline.NumDeleted: 1015
begin_hunk_0_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ag = sub nsw i64 %.086, %.082                ; 10 uses
  %i.ah = icmp slt i64 %.082, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.082, 1
  br i1 %i.ai, label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.aj = load i32, ptr %.058, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %.idx97 = shl nsw i64 %.086, 2                  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.058, ptr nonnull align 4 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !3
  br label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [4 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph110.preheader194, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.ap = shl i64 %.086, 2
  %i.aq = sub i64 %.086, %.082
  %i.ar = shl i64 %i.aq, 2
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ar
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.ap
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader194, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 4 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.058, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep138, align 4, !tbaa !3, !alias.scope !265, !noalias !268
  %wide.load139 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !3, !alias.scope !265, !noalias !268
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268
  %wide.load141 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !3, !alias.scope !268
  store <4 x i32> %wide.load140, ptr %next.gep138, align 4, !tbaa !3, !alias.scope !265, !noalias !268
  store <4 x i32> %wide.load141, ptr %i.aw, align 4, !tbaa !3, !alias.scope !265, !noalias !268
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268
  store <4 x i32> %wide.load139, ptr %i.ax, align 4, !tbaa !3, !alias.scope !268
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader194

.lr.ph110.preheader194:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph110.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.086, %.082
  %xtraiter202 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader194, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.be, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader194 ]
  %.055107.prol = phi ptr [ %i.bd, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader194 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bc, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader194 ] ; 3 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader194 ]
  %i.ba = load i32, ptr %.159106.prol, align 4, !tbaa !3
  %i.bb = load i32, ptr %.055107.prol, align 4, !tbaa !3
  store i32 %i.bb, ptr %.159106.prol, align 4, !tbaa !3
  store i32 %i.ba, ptr %.055107.prol, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 4 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 4 ; 2 uses
  %i.be = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !271

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader194
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader194 ], [ %i.bc, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader194 ], [ %i.be, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader194 ], [ %i.bd, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader194 ], [ %i.bc, %.lr.ph110.prol ]
  %i.bf = sub i64 %.054108.ph, %.086
  %i.bg = add i64 %i.bf, %.082
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bx, %.lr.ph110 ]
  %i.bi = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bi, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bz, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.by, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bx, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bj = load i32, ptr %.159106, align 4, !tbaa !3
  %i.bk = load i32, ptr %.055107, align 4, !tbaa !3
  store i32 %i.bk, ptr %.159106, align 4, !tbaa !3
  store i32 %i.bj, ptr %.055107, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %.159106, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.055107, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.159106, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.055107, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !3
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %.159106, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.055107, i64 16
  %i.bz = add nuw nsw i64 %.054108, 4             ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond119.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !272

bb.h:                                             ; preds = %._crit_edge111
  %i.ca = sub nsw i64 %.082, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [4 x i8], ptr %.058, i64 %.086 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %.idx = shl nsw i64 %.086, 2
  %i.cf = add nsw i64 %.idx, -4                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !140

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr nonnull align 4 %.058, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 4
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %.058, align 4, !tbaa !3
  store i32 %i.cl, ptr %i.cd, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.k, %bb.l, %bb.m
  store i32 %i.ce, ptr %.058, align 4, !tbaa !3
  br label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [4 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.082, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check150 = icmp ult i64 %.082, 8
  br i1 %min.iters.check150, label %.lr.ph.preheader195, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.086, %.082
  %i.cq = shl i64 %i.cp, 2
  %scevgep145 = getelementptr i8, ptr %.058, i64 %i.cq
  %bound0146 = icmp ult ptr %.058, %i.cc
  %bound1147 = icmp ult ptr %scevgep145, %i.cn
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.preheader195, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck144
  %n.vec153 = and i64 %.082, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec153, -4                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next163, %vector.body154 ] ; 2 uses
  %i.cu = mul i64 %index155, -4                   ; 2 uses
  %next.gep156.a = getelementptr i8, ptr %i.cc, i64 %i.cu
  %next.gep157 = getelementptr i8, ptr %i.cn, i64 %i.cu
  %i.cv = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %wide.load158.a = load <4 x i32>, ptr %i.cv, align 4, !tbaa !3, !alias.scope !273, !noalias !276
  %i.cw = getelementptr inbounds i8, ptr %next.gep156.a, i64 -16 ; 2 uses
  %wide.load159 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !3, !alias.scope !276
  store <4 x i32> %wide.load159, ptr %i.cv, align 4, !tbaa !3, !alias.scope !273, !noalias !276
  store <4 x i32> %wide.load158.a, ptr %i.cw, align 4, !tbaa !3, !alias.scope !276
  %index.next163 = add nuw i64 %index155, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next163, %n.vec153
  br i1 %i.cx, label %middle.block164, label %vector.body154, !llvm.loop !278

middle.block164:                                  ; preds = %vector.body154
  %cmp.n165 = icmp eq i64 %.082, %n.vec153
  br i1 %cmp.n165, label %._crit_edge, label %.lr.ph.preheader195

.lr.ph.preheader195:                              ; preds = %vector.memcheck144, %.lr.ph.preheader, %middle.block164
  %.0105.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph.preheader ], [ %n.vec153, %middle.block164 ] ; 3 uses
  %.052104.ph = phi ptr [ %i.cc, %vector.memcheck144 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block164 ] ; 2 uses
  %.260103.ph = phi ptr [ %i.cn, %vector.memcheck144 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block164 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader195, %.lr.ph.prol
  %.0105.prol = phi i64 [ %i.dc, %.lr.ph.prol ], [ %.0105.ph, %.lr.ph.preheader195 ]
  %.052104.prol = phi ptr [ %i.cz, %.lr.ph.prol ], [ %.052104.ph, %.lr.ph.preheader195 ]
  %.260103.prol = phi ptr [ %i.cy, %.lr.ph.prol ], [ %.260103.ph, %.lr.ph.preheader195 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader195 ]
  %i.cy = getelementptr inbounds i8, ptr %.260103.prol, i64 -4 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.052104.prol, i64 -4 ; 4 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !3
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !3
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !3
  %i.dc = add nuw nsw i64 %.0105.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !279

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader195
  %.0105.unr = phi i64 [ %.0105.ph, %.lr.ph.preheader195 ], [ %i.dc, %.lr.ph.prol ]
  %.052104.unr = phi ptr [ %.052104.ph, %.lr.ph.preheader195 ], [ %i.cz, %.lr.ph.prol ]
  %.260103.unr = phi ptr [ %.260103.ph, %.lr.ph.preheader195 ], [ %i.cy, %.lr.ph.prol ]
  %i.dd = sub nsw i64 %.0105.ph, %.082
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block164, %bb.n
  %.260.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.058, %middle.block164 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.df = srem i64 %.086, %i.ag                   ; 2 uses
  %.not = icmp eq i64 %i.df, 0
  br i1 %.not, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ag, %._crit_edge ]
  %.082.be = phi i64 [ %i.ca, %bb.h ], [ %i.df, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !280

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0105 = phi i64 [ %i.dw, %.lr.ph ], [ %.0105.unr, %.lr.ph.prol.loopexit ]
  %.052104 = phi ptr [ %i.dt, %.lr.ph ], [ %.052104.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260103 = phi ptr [ %i.ds, %.lr.ph ], [ %.260103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %.260103, i64 -4 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.052104, i64 -4 ; 2 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !3
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !3
  %i.dk = getelementptr inbounds i8, ptr %.260103, i64 -8 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.052104, i64 -8 ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !3
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !3
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !3
  %i.do = getelementptr inbounds i8, ptr %.260103, i64 -12 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.052104, i64 -12 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !3
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !3
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !3
  %i.ds = getelementptr inbounds i8, ptr %.260103, i64 -16 ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %.052104, i64 -16 ; 3 uses
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !3
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !3
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !3
  %i.dw = add nuw nsw i64 %.0105, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dw, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !281

_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block189, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit ], [ %i.af, %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block189 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge111 ], [ %i.af, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt23__merge_adaptive_resizeIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 1152921504606846976) %6, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %7) unnamed_addr #1 {
bb.a:
  %.not91 = icmp sgt i64 %3, %6
  %.not4792 = icmp sgt i64 %4, %6
  %or.cond93 = and i1 %.not91, %.not4792
  br i1 %or.cond93, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bf, %tailrecurse ]
  %.tr83.lcssa = phi ptr [ %1, %bb.a ], [ %.079, %tailrecurse ]
  %.tr85.lcssa = phi i64 [ %3, %bb.a ], [ %i.be, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %4, %bb.a ], [ %i.bg, %tailrecurse ]
  tail call fastcc void @_ZSt16__merge_adaptiveIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr83.lcssa, ptr noundef %2, i64 noundef %.tr85.lcssa, i64 noundef %.tr86.lcssa, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8697 = phi i64 [ %4, %.lr.ph ], [ %i.bg, %tailrecurse ] ; 3 uses
  %.tr8596 = phi i64 [ %3, %.lr.ph ], [ %i.be, %tailrecurse ] ; 3 uses
  %.tr8395 = phi ptr [ %1, %.lr.ph ], [ %.079, %tailrecurse ] ; 5 uses
  %.tr94 = phi ptr [ %0, %.lr.ph ], [ %i.bf, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8596, %.tr8697
  %.sroa.060.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !245 ; 8 uses
  %.sroa.060.sroa.3.0.copyload = load i32, ptr %.sroa.0.sroa.3.0..sroa_idx, align 4, !tbaa !3 ; 4 uses
  %.sroa.060.sroa.4.0.copyload = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !3 ; 4 uses
  %i.c = ptrtoint ptr %.tr8395 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit51

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8596, 2                     ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %.tr94, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.060.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !3
  %i.i = sext i32 %.sroa.060.sroa.2.0.copyload to i64 ; 4 uses
  br label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.025.i = phi ptr [ %.tr8395, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.z, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i ] ; 3 uses
  %.01124.i = phi i64 [ %i.g, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i ] ; 3 uses
  %i.j = lshr i64 %.01124.i, 1                    ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.025.i, i64 %i.j ; 3 uses
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !3 ; 2 uses
  %.val13.i = load i32, ptr %i.e, align 4, !tbaa !3 ; 2 uses
  %i.l = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.060.sroa.0.0.copyload, i64 noundef %i.i, i32 noundef %.sroa.060.sroa.3.0.copyload, i32 noundef %.val.i) ; 2 uses
  %i.m = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.060.sroa.0.0.copyload, i64 noundef %i.i, i32 noundef %.sroa.060.sroa.3.0.copyload, i32 noundef %.val13.i) ; 2 uses
  %i.n = fcmp olt float %i.l, %i.m
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i, label %bb.c

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.p = xor i64 %i.j, -1
  %i.q = add nsw i64 %.01124.i, %i.p
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

bb.c:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.r = fcmp ogt float %i.l, %i.m
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i: ; preds = %bb.c
  %i.s = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.060.sroa.0.0.copyload, i64 noundef %i.i, i32 noundef %.sroa.060.sroa.4.0.copyload, i32 noundef %.val.i)
  %i.t = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.060.sroa.0.0.copyload, i64 noundef %i.i, i32 noundef %.sroa.060.sroa.4.0.copyload, i32 noundef %.val13.i)
  %i.u = fcmp olt float %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i
  %i.v = xor i64 %i.j, -1
  %i.w = add nsw i64 %.01124.i, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i, %bb.c, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i
  %i.y = phi i64 [ %i.j, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i ], [ %i.q, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i ], [ %i.w, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.z = phi ptr [ %.025.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i ], [ %i.o, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i ], [ %i.x, %bb.d ], [ %.025.i, %bb.c ] ; 3 uses
  %i.aa = icmp sgt i64 %i.y, 0
  br i1 %i.aa, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !256

_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i
  %.pre = ptrtoint ptr %i.z to i64
  br label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %i.z, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr8395, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ab = sub i64 %.pre-phi, %i.c
  %i.ac = ashr exact i64 %i.ab, 2
  br label %tailrecurse

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit51: ; preds = %bb.b
  %i.ad = sdiv i64 %.tr8697, 2                    ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %.tr8395, i64 %i.ad ; 2 uses
  %i.af = ptrtoint ptr %.tr94 to i64              ; 3 uses
  %i.ag = sub i64 %i.c, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i53, label %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i53: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit51
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !3
  %i.aj = sext i32 %.sroa.0.sroa.2.0.copyload to i64 ; 4 uses
  br label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i54
end_hunk_0
