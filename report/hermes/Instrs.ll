inline.NumInlined: 908
inline.NumDeleted: 597
begin_hunk_0_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i, i64 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !59
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !59
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !59
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i.3 = icmp eq ptr %i.am, %1
  br i1 %.not.i.3, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !93

bb.d:                                             ; preds = %bb.c
  %i.ao = sub i64 %i.c, %i.f
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.aq = sub nsw i64 %.086, %.082                ; 16 uses
  %i.ar = icmp slt i64 %.082, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.as = icmp eq i64 %.082, 1
  br i1 %i.as, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.at = load i8, ptr %.058, align 1, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.av = getelementptr inbounds i8, ptr %.058, i64 %.086
  %gepdiff = add nsw i64 %.086, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.058, ptr nonnull align 1 %i.au, i64 %gepdiff, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -1
  store i8 %i.at, ptr %i.aw, align 1, !tbaa !59
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = icmp sgt i64 %i.aq, 0
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
  %wide.load = load <16 x i8>, ptr %next.gep137, align 1, !tbaa !59, !alias.scope !94, !noalias !97
  %wide.load138 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !59, !alias.scope !94, !noalias !97
  %i.bc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !59, !alias.scope !97
  %wide.load140 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !59, !alias.scope !97
  store <16 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !59, !alias.scope !94, !noalias !97
  store <16 x i8> %wide.load140, ptr %i.bb, align 1, !tbaa !59, !alias.scope !94, !noalias !97
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !59, !alias.scope !97
  store <16 x i8> %wide.load138, ptr %i.bc, align 1, !tbaa !59, !alias.scope !97
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !89

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
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !59, !alias.scope !94, !noalias !97
  %wide.load148 = load <4 x i8>, ptr %next.gep145, align 1, !tbaa !59, !alias.scope !97
  store <4 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !59, !alias.scope !94, !noalias !97
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !59, !alias.scope !97
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %i.aq, %n.vec143
  br i1 %cmp.n150, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec143, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.ay, %iter.check ], [ %i.ay, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 2 uses
  %i.bh = sub i64 %.086, %.082
  %xtraiter246 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.bm, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.bl, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.bk, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter248 = phi i64 [ %prol.iter248.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.bi = load i8, ptr %.159105.prol, align 1, !tbaa !59
  %i.bj = load i8, ptr %.055106.prol, align 1, !tbaa !59
  store i8 %i.bj, ptr %.159105.prol, align 1, !tbaa !59
  store i8 %i.bi, ptr %.055106.prol, align 1, !tbaa !59
  %i.bk = getelementptr inbounds nuw i8, ptr %.159105.prol, i64 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.055106.prol, i64 1 ; 2 uses
  %i.bm = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !101

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
  %i.br = load i8, ptr %.159105, align 1, !tbaa !59
  %i.bs = load i8, ptr %.055106, align 1, !tbaa !59
  store i8 %i.bs, ptr %.159105, align 1, !tbaa !59
  store i8 %i.br, ptr %.055106, align 1, !tbaa !59
  %i.bt = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.055106, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !59
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !59
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !59
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %.159105, i64 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.055106, i64 2 ; 2 uses
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !59
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !59
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !59
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !59
  %i.cb = getelementptr inbounds nuw i8, ptr %.159105, i64 3 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.055106, i64 3 ; 2 uses
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !59
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !59
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !59
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !59
  %i.cf = getelementptr inbounds nuw i8, ptr %.159105, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.055106, i64 4
  %i.ch = add nuw nsw i64 %.054107, 4             ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %i.ch, %i.aq
  br i1 %exitcond118.not.3, label %._crit_edge110, label %.lr.ph109, !llvm.loop !102

bb.h:                                             ; preds = %._crit_edge110
  %i.ci = sub nsw i64 %.082, %i.bq
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cj = icmp eq i64 %i.aq, 1
  %i.ck = getelementptr i8, ptr %.058, i64 %.086  ; 9 uses
  br i1 %i.cj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -1 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !59
  %i.cn = icmp sgt i64 %.086, 2
  br i1 %i.cn, label %bb.k, label %bb.l, !prof !103

bb.k:                                             ; preds = %bb.j
  %3 = add nsw i64 %.086, -1
  %i.co = getelementptr inbounds nuw i8, ptr %.058, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull align 1 %.058, i64 %3, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.j
  %i.cp = load i8, ptr %.058, align 1, !tbaa !59
  store i8 %i.cp, ptr %i.cl, align 1, !tbaa !59
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.k, %bb.l
  store i8 %i.cm, ptr %.058, align 1, !tbaa !59
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %bb.i
  %i.cq = sub i64 0, %i.aq
  %i.cr = getelementptr i8, ptr %i.ck, i64 %i.cq  ; 8 uses
  %i.cs = icmp sgt i64 %.082, 0
  br i1 %i.cs, label %iter.check178, label %._crit_edge

iter.check178:                                    ; preds = %bb.m
  %min.iters.check159 = icmp ult i64 %.082, 8
  br i1 %min.iters.check159, label %.lr.ph.preheader, label %vector.memcheck154

vector.memcheck154:                               ; preds = %iter.check178
  %scevgep155 = getelementptr i8, ptr %.058, i64 %i.aq
  %bound0156 = icmp ult ptr %.058, %i.ck
  %bound1157 = icmp ult ptr %scevgep155, %i.cr
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %vector.memcheck154
  %min.iters.check161 = icmp ult i64 %.082, 32
  br i1 %min.iters.check161, label %vec.epilog.ph182, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.mod.vf163 = and i64 %.082, 24
  %n.vec164 = and i64 %.082, 9223372036854775776  ; 5 uses
  %i.ct = sub nsw i64 0, %n.vec164                ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ck, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cr, i64 %i.ct
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next173, %vector.body165 ] ; 2 uses
  %i.cw = sub i64 0, %index166                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.ck, i64 %i.cw ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %next.gep168, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep168, i64 -32 ; 2 uses
  %wide.load169 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !59, !alias.scope !104, !noalias !107
  %wide.load170 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !59, !alias.scope !104, !noalias !107
  %i.cz = getelementptr inbounds i8, ptr %next.gep167, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep167, i64 -32 ; 2 uses
  %wide.load171 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !59, !alias.scope !107
  %wide.load172 = load <16 x i8>, ptr %i.da, align 1, !tbaa !59, !alias.scope !107
  store <16 x i8> %wide.load171, ptr %i.cx, align 1, !tbaa !59, !alias.scope !104, !noalias !107
  store <16 x i8> %wide.load172, ptr %i.cy, align 1, !tbaa !59, !alias.scope !104, !noalias !107
  store <16 x i8> %wide.load169, ptr %i.cz, align 1, !tbaa !59, !alias.scope !107
  store <16 x i8> %wide.load170, ptr %i.da, align 1, !tbaa !59, !alias.scope !107
  %index.next173 = add nuw i64 %index166, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next173, %n.vec164
  br i1 %i.db, label %middle.block174, label %vector.body165, !llvm.loop !109

middle.block174:                                  ; preds = %vector.body165
  %cmp.n175 = icmp eq i64 %.082, %n.vec164
  br i1 %cmp.n175, label %._crit_edge, label %vec.epilog.iter.check180

vec.epilog.iter.check180:                         ; preds = %middle.block174
  %min.epilog.iters.check181 = icmp eq i64 %n.mod.vf163, 0
  br i1 %min.epilog.iters.check181, label %.lr.ph.preheader, label %vec.epilog.ph182, !prof !110

vec.epilog.ph182:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check180
  %vec.epilog.resume.val176 = phi i64 [ %n.vec164, %vec.epilog.iter.check180 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec184 = and i64 %.082, 9223372036854775800  ; 4 uses
  %i.dc = sub nsw i64 0, %n.vec184                ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ck, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.cr, i64 %i.dc
  br label %vec.epilog.vector.body185

vec.epilog.vector.body185:                        ; preds = %vec.epilog.vector.body185, %vec.epilog.ph182
  %index186 = phi i64 [ %vec.epilog.resume.val176, %vec.epilog.ph182 ], [ %index.next191, %vec.epilog.vector.body185 ] ; 2 uses
  %i.df = sub i64 0, %index186                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.ck, i64 %i.df
  %next.gep188 = getelementptr i8, ptr %i.cr, i64 %i.df
  %i.dg = getelementptr inbounds i8, ptr %next.gep188, i64 -8 ; 2 uses
  %wide.load189 = load <8 x i8>, ptr %i.dg, align 1, !tbaa !59, !alias.scope !104, !noalias !107
  %i.dh = getelementptr inbounds i8, ptr %next.gep187, i64 -8 ; 2 uses
  %wide.load190 = load <8 x i8>, ptr %i.dh, align 1, !tbaa !59, !alias.scope !107
  store <8 x i8> %wide.load190, ptr %i.dg, align 1, !tbaa !59, !alias.scope !104, !noalias !107
  store <8 x i8> %wide.load189, ptr %i.dh, align 1, !tbaa !59, !alias.scope !107
  %index.next191 = add nuw i64 %index186, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next191, %n.vec184
  br i1 %i.di, label %vec.epilog.middle.block192, label %vec.epilog.vector.body185, !llvm.loop !111

vec.epilog.middle.block192:                       ; preds = %vec.epilog.vector.body185
  %cmp.n193 = icmp eq i64 %.082, %n.vec184
  br i1 %cmp.n193, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck154, %iter.check178, %vec.epilog.iter.check180, %vec.epilog.middle.block192
  %.0104.ph = phi i64 [ 0, %iter.check178 ], [ 0, %vector.memcheck154 ], [ %n.vec164, %vec.epilog.iter.check180 ], [ %n.vec184, %vec.epilog.middle.block192 ] ; 3 uses
  %.052103.ph = phi ptr [ %i.ck, %iter.check178 ], [ %i.ck, %vector.memcheck154 ], [ %i.cu, %vec.epilog.iter.check180 ], [ %i.dd, %vec.epilog.middle.block192 ] ; 2 uses
  %.260102.ph = phi ptr [ %i.cr, %iter.check178 ], [ %i.cr, %vector.memcheck154 ], [ %i.cv, %vec.epilog.iter.check180 ], [ %i.de, %vec.epilog.middle.block192 ] ; 2 uses
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
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !59
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !59
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !59
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !59
  %i.dn = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !112

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.dn, %.lr.ph.prol ]
  %.052103.unr = phi ptr [ %.052103.ph, %.lr.ph.preheader ], [ %i.dk, %.lr.ph.prol ]
  %.260102.unr = phi ptr [ %.260102.ph, %.lr.ph.preheader ], [ %i.dj, %.lr.ph.prol ]
  %i.do = sub nsw i64 %.0104.ph, %.082
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block174, %vec.epilog.middle.block192, %bb.m
  %.260.lcssa = phi ptr [ %i.cr, %bb.m ], [ %.058, %middle.block174 ], [ %.058, %vec.epilog.middle.block192 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dq = srem i64 %.086, %i.aq                   ; 2 uses
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.aq, %._crit_edge ]
  %.082.be = phi i64 [ %i.ci, %bb.h ], [ %i.dq, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !113

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.eh, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
  %.052103 = phi ptr [ %i.ee, %.lr.ph ], [ %.052103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260102 = phi ptr [ %i.ed, %.lr.ph ], [ %.260102.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %.260102, i64 -1 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.052103, i64 -1 ; 2 uses
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !59
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !59
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !59
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !59
  %i.dv = getelementptr inbounds i8, ptr %.260102, i64 -2 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.052103, i64 -2 ; 2 uses
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !59
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !59
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !59
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !59
  %i.dz = getelementptr inbounds i8, ptr %.260102, i64 -3 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.052103, i64 -3 ; 2 uses
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !59
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !59
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !59
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !59
  %i.ed = getelementptr inbounds i8, ptr %.260102, i64 -4 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.052103, i64 -4 ; 3 uses
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !59
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !59
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !59
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !59
  %i.eh = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eh, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !114

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block218, %vec.epilog.middle.block236, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ap, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.ap, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block218 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block236 ], [ %1, %.lr.ph.i ], [ %i.ap, %._crit_edge110 ], [ %i.ap, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
end_hunk_0
