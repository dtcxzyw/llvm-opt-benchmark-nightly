inline.NumInlined: 622
inline.NumDeleted: 240
begin_hunk_0_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br i1 %i.ax, label %iter.check, label %._crit_edge110

iter.check:                                       ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.058, i64 %i.aq
  %scevgep135 = getelementptr i8, ptr %.058, i64 %.086
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, 9223372036854775776     ; 6 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 %n.vec
  %i.ba = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %index ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.058, i64 %index ; 3 uses
  %i.bb = getelementptr i8, ptr %next.gep137, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep137, align 1, !tbaa !12, !alias.scope !157, !noalias !160
  %wide.load138 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !12, !alias.scope !157, !noalias !160
  %i.bc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12, !alias.scope !160
  %wide.load140 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !12, !alias.scope !160
  store <16 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !12, !alias.scope !157, !noalias !160
  store <16 x i8> %wide.load140, ptr %i.bb, align 1, !tbaa !12, !alias.scope !157, !noalias !160
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !12, !alias.scope !160
  store <16 x i8> %wide.load138, ptr %i.bc, align 1, !tbaa !12, !alias.scope !160
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.aq, 9223372036854775804  ; 5 uses
  %i.be = getelementptr i8, ptr %i.ay, i64 %n.vec143
  %i.bf = getelementptr i8, ptr %.058, i64 %n.vec143 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %i.ay, i64 %index144 ; 2 uses
  %next.gep146 = getelementptr i8, ptr %.058, i64 %index144 ; 2 uses
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !12, !alias.scope !157, !noalias !160
  %wide.load148 = load <4 x i8>, ptr %next.gep145, align 1, !tbaa !12, !alias.scope !160
  store <4 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !12, !alias.scope !157, !noalias !160
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !12, !alias.scope !160
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %i.aq, %n.vec143
  br i1 %cmp.n150, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec143, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.ay, %iter.check ], [ %i.ay, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 2 uses
  %i.bh = sub i64 %.086, %.082
  %xtraiter251 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.bm, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.bl, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.bk, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter253 = phi i64 [ %prol.iter253.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.bi = load i8, ptr %.159105.prol, align 1, !tbaa !12
  %i.bj = load i8, ptr %.055106.prol, align 1, !tbaa !12
  store i8 %i.bj, ptr %.159105.prol, align 1, !tbaa !12
  store i8 %i.bi, ptr %.055106.prol, align 1, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %.159105.prol, i64 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.055106.prol, i64 1 ; 2 uses
  %i.bm = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter253.next = add i64 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i64 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !164

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader ], [ %i.bk, %.lr.ph109.prol ]
  %.054107.unr = phi i64 [ %.054107.ph, %.lr.ph109.preheader ], [ %i.bm, %.lr.ph109.prol ]
  %.055106.unr = phi ptr [ %.055106.ph, %.lr.ph109.preheader ], [ %i.bl, %.lr.ph109.prol ]
  %.159105.unr = phi ptr [ %.159105.ph, %.lr.ph109.preheader ], [ %i.bk, %.lr.ph109.prol ]
  %i.bn = sub i64 %.054107.ph, %.086
  %i.bo = add i64 %i.bn, %.082
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block, %vec.epilog.middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.bf, %vec.epilog.middle.block ], [ %i.ba, %middle.block ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.cf, %.lr.ph109 ]
  %i.bq = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bq, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.054107 = phi i64 [ %i.ch, %.lr.ph109 ], [ %.054107.unr, %.lr.ph109.prol.loopexit ]
  %.055106 = phi ptr [ %i.cg, %.lr.ph109 ], [ %.055106.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %.159105 = phi ptr [ %i.cf, %.lr.ph109 ], [ %.159105.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %i.br = load i8, ptr %.159105, align 1, !tbaa !12
  %i.bs = load i8, ptr %.055106, align 1, !tbaa !12
  store i8 %i.bs, ptr %.159105, align 1, !tbaa !12
  store i8 %i.br, ptr %.055106, align 1, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.055106, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !12
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !12
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !12
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.159105, i64 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.055106, i64 2 ; 2 uses
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !12
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !12
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !12
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %.159105, i64 3 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.055106, i64 3 ; 2 uses
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !12
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !12
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !12
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.159105, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.055106, i64 4
  %i.ch = add nuw nsw i64 %.054107, 4             ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %i.ch, %i.aq
  br i1 %exitcond118.not.3, label %._crit_edge110, label %.lr.ph109, !llvm.loop !165

bb.h:                                             ; preds = %._crit_edge110
  %i.ci = sub nsw i64 %.082, %i.bq
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cj = icmp eq i64 %i.aq, 1
  %i.ck = getelementptr i8, ptr %.058, i64 %.086  ; 9 uses
  br i1 %i.cj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -1 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !12
  %i.cn = add nsw i64 %.086, -1                   ; 2 uses
  %i.co = icmp sgt i64 %.086, 2
  br i1 %i.co, label %bb.k, label %bb.l, !prof !43

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %.058, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull align 1 %.058, i64 %i.cn, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.j
  %i.cq = icmp eq i64 %i.cn, 1
  br i1 %i.cq, label %bb.m, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %bb.l
  %i.cr = load i8, ptr %.058, align 1, !tbaa !12
  store i8 %i.cr, ptr %i.cl, align 1, !tbaa !12
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.k, %bb.l, %bb.m
  store i8 %i.cm, ptr %.058, align 1, !tbaa !12
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.n:                                             ; preds = %bb.i
  %i.cs = sub i64 0, %i.aq
  %i.ct = getelementptr i8, ptr %i.ck, i64 %i.cs  ; 8 uses
  %i.cu = icmp sgt i64 %.082, 0
  br i1 %i.cu, label %iter.check179, label %._crit_edge

iter.check179:                                    ; preds = %bb.n
  %min.iters.check159 = icmp ult i64 %.082, 8
  br i1 %min.iters.check159, label %.lr.ph.preheader, label %vector.memcheck154

vector.memcheck154:                               ; preds = %iter.check179
  %scevgep155 = getelementptr i8, ptr %.058, i64 %i.aq
  %bound0156 = icmp ult ptr %.058, %i.ck
  %bound1157 = icmp ult ptr %scevgep155, %i.ct
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %vector.memcheck154
  %min.iters.check161 = icmp ult i64 %.082, 16
  br i1 %min.iters.check161, label %vec.epilog.ph183, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.mod.vf163 = and i64 %.082, 8
  %n.vec164 = and i64 %.082, 9223372036854775792  ; 5 uses
  %i.cv = sub nsw i64 0, %n.vec164                ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.ct, i64 %i.cv
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next174, %vector.body165 ] ; 2 uses
  %i.cy = sub i64 0, %index166                    ; 2 uses
  %next.gep167.a = getelementptr i8, ptr %i.ck, i64 %i.cy
  %next.gep168 = getelementptr i8, ptr %i.ct, i64 %i.cy
  %i.cz = getelementptr inbounds i8, ptr %next.gep168, i64 -16 ; 2 uses
  %wide.load169.a = load <16 x i8>, ptr %i.cz, align 1, !tbaa !12, !alias.scope !166, !noalias !169
  %i.da = getelementptr inbounds i8, ptr %next.gep167.a, i64 -16 ; 2 uses
  %wide.load170 = load <16 x i8>, ptr %i.da, align 1, !tbaa !12, !alias.scope !169
  store <16 x i8> %wide.load170, ptr %i.cz, align 1, !tbaa !12, !alias.scope !166, !noalias !169
  store <16 x i8> %wide.load169.a, ptr %i.da, align 1, !tbaa !12, !alias.scope !169
  %index.next174 = add nuw i64 %index166, 16      ; 2 uses
  %i.db = icmp eq i64 %index.next174, %n.vec164
  br i1 %i.db, label %middle.block175, label %vector.body165, !llvm.loop !171

middle.block175:                                  ; preds = %vector.body165
  %cmp.n176 = icmp eq i64 %.082, %n.vec164
  br i1 %cmp.n176, label %._crit_edge, label %vec.epilog.iter.check181

vec.epilog.iter.check181:                         ; preds = %middle.block175
  %min.epilog.iters.check182.not.not = icmp eq i64 %n.mod.vf163, 0
  br i1 %min.epilog.iters.check182.not.not, label %.lr.ph.preheader, label %vec.epilog.ph183, !prof !172

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check181
  %vec.epilog.resume.val177 = phi i64 [ %n.vec164, %vec.epilog.iter.check181 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec185 = and i64 %.082, 9223372036854775800  ; 4 uses
  %i.dc = sub nsw i64 0, %n.vec185                ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ck, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.ct, i64 %i.dc
  br label %vec.epilog.vector.body186

vec.epilog.vector.body186:                        ; preds = %vec.epilog.vector.body186, %vec.epilog.ph183
  %index187 = phi i64 [ %vec.epilog.resume.val177, %vec.epilog.ph183 ], [ %index.next196, %vec.epilog.vector.body186 ] ; 2 uses
  %i.df = sub i64 0, %index187                    ; 2 uses
  %next.gep188.a = getelementptr i8, ptr %i.ck, i64 %i.df
  %next.gep189 = getelementptr i8, ptr %i.ct, i64 %i.df
  %i.dg = getelementptr inbounds i8, ptr %next.gep189, i64 -8 ; 2 uses
  %wide.load190.a = load <8 x i8>, ptr %i.dg, align 1, !tbaa !12, !alias.scope !166, !noalias !169
  %i.dh = getelementptr inbounds i8, ptr %next.gep188.a, i64 -8 ; 2 uses
  %wide.load192 = load <8 x i8>, ptr %i.dh, align 1, !tbaa !12, !alias.scope !169
  store <8 x i8> %wide.load192, ptr %i.dg, align 1, !tbaa !12, !alias.scope !166, !noalias !169
  store <8 x i8> %wide.load190.a, ptr %i.dh, align 1, !tbaa !12, !alias.scope !169
  %index.next196 = add nuw i64 %index187, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next196, %n.vec185
  br i1 %i.di, label %vec.epilog.middle.block197, label %vec.epilog.vector.body186, !llvm.loop !173

vec.epilog.middle.block197:                       ; preds = %vec.epilog.vector.body186
  %cmp.n198 = icmp eq i64 %.082, %n.vec185
  br i1 %cmp.n198, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck154, %iter.check179, %vec.epilog.iter.check181, %vec.epilog.middle.block197
  %.0104.ph = phi i64 [ 0, %iter.check179 ], [ 0, %vector.memcheck154 ], [ %n.vec164, %vec.epilog.iter.check181 ], [ %n.vec185, %vec.epilog.middle.block197 ] ; 3 uses
  %.052103.ph = phi ptr [ %i.ck, %iter.check179 ], [ %i.ck, %vector.memcheck154 ], [ %i.cw, %vec.epilog.iter.check181 ], [ %i.dd, %vec.epilog.middle.block197 ] ; 2 uses
  %.260102.ph = phi ptr [ %i.ct, %iter.check179 ], [ %i.ct, %vector.memcheck154 ], [ %i.cx, %vec.epilog.iter.check181 ], [ %i.de, %vec.epilog.middle.block197 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0104.prol = phi i64 [ %i.dn, %.lr.ph.prol ], [ %.0104.ph, %.lr.ph.preheader ]
  %.052103.prol = phi ptr [ %i.dk, %.lr.ph.prol ], [ %.052103.ph, %.lr.ph.preheader ]
  %.260102.prol = phi ptr [ %i.dj, %.lr.ph.prol ], [ %.260102.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.dj = getelementptr inbounds i8, ptr %.260102.prol, i64 -1 ; 4 uses
  %i.dk = getelementptr inbounds i8, ptr %.052103.prol, i64 -1 ; 4 uses
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !12
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !12
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !12
  %i.dn = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !174

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.dn, %.lr.ph.prol ]
  %.052103.unr = phi ptr [ %.052103.ph, %.lr.ph.preheader ], [ %i.dk, %.lr.ph.prol ]
  %.260102.unr = phi ptr [ %.260102.ph, %.lr.ph.preheader ], [ %i.dj, %.lr.ph.prol ]
  %i.do = sub nsw i64 %.0104.ph, %.082
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block175, %vec.epilog.middle.block197, %bb.n
  %.260.lcssa = phi ptr [ %i.ct, %bb.n ], [ %.058, %middle.block175 ], [ %.058, %vec.epilog.middle.block197 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dq = srem i64 %.086, %i.aq                   ; 2 uses
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.aq, %._crit_edge ]
  %.082.be = phi i64 [ %i.ci, %bb.h ], [ %i.dq, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !175

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.eh, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
  %.052103 = phi ptr [ %i.ee, %.lr.ph ], [ %.052103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260102 = phi ptr [ %i.ed, %.lr.ph ], [ %.260102.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %.260102, i64 -1 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.052103, i64 -1 ; 2 uses
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !12
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !12
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !12
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !12
  %i.dv = getelementptr inbounds i8, ptr %.260102, i64 -2 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.052103, i64 -2 ; 2 uses
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !12
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !12
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !12
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !12
  %i.dz = getelementptr inbounds i8, ptr %.260102, i64 -3 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.052103, i64 -3 ; 2 uses
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !12
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !12
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !12
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !12
  %i.ed = getelementptr inbounds i8, ptr %.260102, i64 -4 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.052103, i64 -4 ; 3 uses
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !12
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !12
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !12
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !12
  %i.eh = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eh, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !176

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block223, %vec.epilog.middle.block241, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ap, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.ap, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block223 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block241 ], [ %1, %.lr.ph.i ], [ %i.ap, %._crit_edge110 ], [ %i.ap, %._crit_edge ]
  ret ptr %.6
}

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(i64 %0, i32 range(i32 -2147483648, 2147483595) %1, i64 noundef %2, ptr noundef nonnull %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %2, 39
  br i1 %i.a, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 49 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 31 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !39
  %i.e = icmp sgt i32 %1, -1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i32 %1, 11
  br i1 %i.f, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %1 to i64
  %i.h = shl i64 %0, %i.g                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i, label %.preheader.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i: ; preds = %bb.d
  store i32 -1, ptr %4, align 4, !tbaa !3
  br label %bb.e

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0913.i.i = phi i64 [ %i.n, %.preheader.i.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.i = urem i64 %.0913.i.i, 10
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !39
  store i8 %i.k, ptr %i.m, align 1, !tbaa !12
  %i.n = udiv i64 %.0913.i.i, 10
  %.not11.i.i = icmp ult i64 %.0913.i.i, 10
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i, !llvm.loop !55

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !39 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.o = ptrtoint ptr %.val12.i.i to i64          ; 2 uses
  %i.p = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.q = load i8, ptr %.val.i.i, align 1, !tbaa !12
  %i.r = getelementptr inbounds i8, ptr %.val.i.i, i64 -1 ; 2 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !39
  store i8 %i.q, ptr %i.r, align 1, !tbaa !12
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 46, ptr %i.t, align 1, !tbaa !12
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %i.o, %i.u                       ; 4 uses
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %4, align 4, !tbaa !3
  %i.x = icmp ult i64 %2, %i.v
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i
  %.0.i128.i = phi i64 [ -1, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i ], [ %i.v, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i ]
  %i.y = sub nuw i64 %.0.i128.i, %2
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.y, i1 noundef zeroext false, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i
  %i.z = sub nuw nsw i64 %2, %i.v                 ; 4 uses
  %.not58101.i = icmp eq i64 %i.z, 0
  br i1 %.not58101.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph104.i.preheader

.lr.ph104.i.preheader:                            ; preds = %bb.f
  %i.aa = add i64 %2, %i.p
  %i.ab = sub i64 %i.aa, %i.o
  %xtraiter152 = and i64 %i.z, 3                  ; 2 uses
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol

end_hunk_0
begin_hunk_1_@llvm.smin.i32
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 1}
!8 = !{!"_ZTSN4absl12lts_2025051219str_format_internal24FormatConversionSpecImplE", !9, i64 0, !10, i64 1, !11, i64 2, !4, i64 4, !4, i64 8}
!9 = !{!"_ZTSN4absl12lts_2025051220FormatConversionCharE", !5, i64 0}
!10 = !{!"_ZTSN4absl12lts_2025051219str_format_internal5FlagsE", !5, i64 0}
!11 = !{!"_ZTSN4absl12lts_202505129LengthModE", !5, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!8, !9, i64 0}
!14 = !{!8, !4, i64 4}
!15 = !{!8, !4, i64 8}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19DecomposeIeEENS2_10DecomposedIT_EES5_: argument 0"}
!18 = distinct !{!18, !"_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19DecomposeIeEENS2_10DecomposedIT_EES5_"}
!19 = !{!20, !4, i64 16}
!20 = !{!"_ZTSN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110DecomposedIeEE", !21, i64 0, !4, i64 16}
!21 = !{!"_ZTSN4absl12lts_202505127uint128E", !22, i64 0, !22, i64 8}
!22 = !{!"long", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!25, !5, i64 0}
!25 = !{!"_ZTSN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatStateE", !5, i64 0, !22, i64 8, !26, i64 16, !28, i64 24}
!26 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal24FormatConversionSpecImplE", !27, i64 0}
!27 = !{!"any pointer", !5, i64 0}
!28 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal14FormatSinkImplE", !27, i64 0}
!29 = !{!25, !22, i64 8}
!30 = !{!26, !26, i64 0}
!31 = !{!25, !28, i64 24}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
!36 = !{!37, !38, i64 96}
!37 = !{!"_ZTSN4absl12lts_2025051219str_format_internal12_GLOBAL__N_16BufferE", !5, i64 0, !38, i64 88, !38, i64 96}
!38 = !{!"p1 omnipotent char", !27, i64 0}
!39 = !{!37, !38, i64 88}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !34}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = distinct !{!44, !34}
!45 = distinct !{!45, !34}
!46 = distinct !{!46, !34}
!47 = distinct !{!47, !34}
!48 = distinct !{!48, !41}
!49 = distinct !{!49, !34}
!50 = !{!"branch_weights", i32 127, i32 1}
!51 = !{!"branch_weights", i32 255873, i32 127}
!52 = distinct !{!52, !34}
!53 = distinct !{!53, !34}
!54 = !{!21, !22, i64 0}
!55 = distinct !{!55, !34}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !34}
!58 = distinct !{!58, !34}
!59 = distinct !{!59, !34}
!60 = distinct !{!60, !34}
!61 = !{!21, !22, i64 8}
!62 = distinct !{!62, !34}
!63 = distinct !{!63, !41}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, !34}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE: argument 0"}
!69 = distinct !{!69, !"_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE"}
!70 = !{!71, !38, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !72, i64 0, !22, i64 8, !5, i64 16}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!73 = !{!71, !22, i64 8}
!74 = !{!72, !38, i64 0}
!75 = !{!76, !22, i64 16}
!76 = !{!"_ZTSN4absl12lts_2025051219str_format_internal14FormatSinkImplE", !77, i64 0, !22, i64 16, !38, i64 24, !5, i64 32}
!77 = !{!"_ZTSN4absl12lts_2025051219str_format_internal17FormatRawSinkImplE", !27, i64 0, !27, i64 8}
!78 = !{!76, !38, i64 24}
!79 = !{!77, !27, i64 8}
!80 = !{!77, !27, i64 0}
!81 = distinct !{null}
!82 = distinct !{null, null, null}
!83 = distinct !{!83, !34, !84}
!84 = !{!"llvm.loop.peeled.count", i32 1}
!85 = distinct !{null, null, null}
!86 = distinct !{null, null}
!87 = !{!88, !88, i64 0}
!88 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatStateE", !27, i64 0}
!89 = !{!27, !27, i64 0}
!90 = !{!91, !4, i64 32}
!91 = !{!"_ZTSZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_", !92, i64 0, !21, i64 16, !4, i64 32}
!92 = !{!"_ZTSN4absl12lts_2025051211FunctionRefIFvNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimalEEEE", !5, i64 0, !27, i64 8}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE: argument 0"}
!95 = distinct !{!95, !"_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE"}
!96 = !{!97, !97, i64 0}
!97 = !{!"p1 long", !27, i64 0}
!98 = !{!99, !4, i64 32}
!99 = !{!"_ZTSZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_", !100, i64 0, !21, i64 16, !4, i64 32}
!100 = !{!"_ZTSN4absl12lts_2025051211FunctionRefIFvNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGeneratorEEEE", !5, i64 0, !27, i64 8}
!101 = distinct !{null}
!102 = !{!103, !22, i64 32}
!103 = !{!"_ZTSN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimalE", !22, i64 0, !22, i64 8, !104, i64 16, !22, i64 32, !105, i64 40}
!104 = !{!"_ZTSSt5arrayIcLm9EE", !5, i64 0}
!105 = !{!"_ZTSN4absl12lts_202505124SpanIjEE", !106, i64 0, !22, i64 8}
!106 = !{!"p1 int", !27, i64 0}
!107 = !{!105, !106, i64 0}
!108 = !{!105, !22, i64 8}
!109 = !{!103, !22, i64 8}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !34}
!113 = !{!103, !22, i64 0}
!114 = distinct !{!114, !34}
!115 = !{!92, !27, i64 8}
!116 = distinct !{null, null, null, null, null}
!117 = !{!118, !88, i64 0}
!118 = !{!"_ZTSZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateEE3$_0", !88, i64 0}
!119 = !{}
!120 = !{i64 8}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE: argument 0"}
!123 = distinct !{!123, !"_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE"}
!124 = distinct !{null, null, null, null, null, null, null}
!125 = distinct !{null, null, null, null, null, null, null}
!126 = distinct !{null, null, null, null, null, null}
!127 = distinct !{!127, !84}
!128 = distinct !{!128, !34}
!129 = distinct !{!129, !34}
!130 = !{!100, !27, i64 8}
!131 = distinct !{null, null, null, null, null}
!132 = !{!106, !106, i64 0}
!133 = !{!134, !88, i64 0}
!134 = !{!"_ZTSZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEE3$_0", !88, i64 0, !97, i64 8}
!135 = !{!134, !97, i64 8}
!136 = distinct !{!136, !34}
!137 = distinct !{null, null, null, null, null, null, null}
!138 = distinct !{!138, !34}
!139 = distinct !{!139, !34}
!140 = !{!25, !26, i64 16}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE: argument 0"}
!143 = distinct !{!143, !"_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE"}
!144 = distinct !{!144, !34}
!145 = !{!146}
!146 = distinct !{!146, !147}
!147 = distinct !{!147, !"LVerDomain"}
!148 = !{!149}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !34, !151, !152}
!151 = !{!"llvm.loop.isvectorized", i32 1}
!152 = !{!"llvm.loop.unroll.runtime.disable"}
!153 = !{!"branch_weights", i32 4, i32 28}
!154 = distinct !{!154, !34, !151, !152}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !34, !151}
!157 = !{!158}
!158 = distinct !{!158, !159}
!159 = distinct !{!159, !"LVerDomain"}
!160 = !{!161}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !34, !151, !152}
!163 = distinct !{!163, !34, !151, !152}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !34, !151}
!166 = !{!167}
!167 = distinct !{!167, !168}
!168 = distinct !{!168, !"LVerDomain"}
!169 = !{!170}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !34, !151, !152}
!172 = !{!"branch_weights", i32 8, i32 8}
!173 = distinct !{!173, !34, !151, !152}
!174 = distinct !{!174, !41}
!175 = distinct !{!175, !34}
!176 = distinct !{!176, !34, !151}
!177 = distinct !{!177, !41}
!178 = distinct !{!178, !34}
!179 = distinct !{!179, !34}
!180 = distinct !{!180, !34}
!181 = distinct !{!181, !41}
!182 = distinct !{!182, !34}
!183 = distinct !{!183, !34}
!184 = distinct !{!184, !34}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE: argument 0"}
!187 = distinct !{!187, !"_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE"}
end_hunk_1
