Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_k_d_tree?download=true
inline.NumInlined: 1717
inline.NumDeleted: 814
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK8k_d_tree13SortedIndicesILh3EE5splitEhRSt6vectorIbSaIbEE:bb.a
  br i1 %min.iters.check155, label %vec.epilog.scalar.ph170.preheader, label %vector.main.loop.iter.check156

vector.main.loop.iter.check156:                   ; preds = %iter.check169
  %min.iters.check157 = icmp samesign ult i64 %i.h, 16
  br i1 %min.iters.check157, label %vec.epilog.ph173, label %vector.ph158

vector.ph158:                                     ; preds = %vector.main.loop.iter.check156
  %n.vec159 = and i64 %i.g, 65520                 ; 4 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next164, %vector.body160 ] ; 2 uses
  %vec.ind162 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph158 ], [ %vec.ind.next165, %vector.body160 ] ; 3 uses
  %step.add163 = add <8 x i16> %vec.ind162, splat (i16 8)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index161 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <8 x i16> %vec.ind162, ptr %i.ag, align 2, !tbaa !39
  store <8 x i16> %step.add163, ptr %i.ah, align 2, !tbaa !39
  %index.next164 = add nuw i64 %index161, 16      ; 2 uses
  %vec.ind.next165 = add <8 x i16> %vec.ind162, splat (i16 16)
  %i.ai = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.ai, label %middle.block166, label %vector.body160, !llvm.loop !237

middle.block166:                                  ; preds = %vector.body160
  %cmp.n167 = icmp eq i64 %i.h, %n.vec159
  br i1 %cmp.n167, label %iter.check200, label %vec.epilog.iter.check171

vec.epilog.iter.check171:                         ; preds = %middle.block166
  %i.aj = and i64 %i.d, 24
  %min.epilog.iters.check172 = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check172, label %vec.epilog.scalar.ph170.preheader, label %vec.epilog.ph173, !prof !158

vec.epilog.ph173:                                 ; preds = %vector.main.loop.iter.check156, %vec.epilog.iter.check171
  %vec.epilog.resume.val168 = phi i64 [ %n.vec159, %vec.epilog.iter.check171 ], [ 0, %vector.main.loop.iter.check156 ] ; 2 uses
  %n.vec174 = and i64 %i.g, 65532                 ; 3 uses
  %i.ak = trunc nuw i64 %vec.epilog.resume.val168 to i16
  %broadcast.splatinsert175 = insertelement <4 x i16> poison, i16 %i.ak, i64 0
  %broadcast.splat176 = shufflevector <4 x i16> %broadcast.splatinsert175, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction177 = or disjoint <4 x i16> %broadcast.splat176, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body178

vec.epilog.vector.body178:                        ; preds = %vec.epilog.vector.body178, %vec.epilog.ph173
  %index179 = phi i64 [ %vec.epilog.resume.val168, %vec.epilog.ph173 ], [ %index.next181, %vec.epilog.vector.body178 ] ; 2 uses
  %vec.ind180 = phi <4 x i16> [ %induction177, %vec.epilog.ph173 ], [ %vec.ind.next182, %vec.epilog.vector.body178 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index179
  store <4 x i16> %vec.ind180, ptr %i.al, align 2, !tbaa !39
  %index.next181 = add nuw i64 %index179, 4       ; 2 uses
  %vec.ind.next182 = add <4 x i16> %vec.ind180, splat (i16 4)
  %i.am = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.am, label %vec.epilog.middle.block183, label %vec.epilog.vector.body178, !llvm.loop !238

vec.epilog.middle.block183:                       ; preds = %vec.epilog.vector.body178
  %cmp.n184 = icmp eq i64 %i.h, %n.vec174
  br i1 %cmp.n184, label %iter.check200, label %vec.epilog.scalar.ph170.preheader

vec.epilog.scalar.ph170.preheader:                ; preds = %iter.check169, %vec.epilog.iter.check171, %vec.epilog.middle.block183
  %indvars.iv.1.i.ph = phi i64 [ 0, %iter.check169 ], [ %n.vec159, %vec.epilog.iter.check171 ], [ %n.vec174, %vec.epilog.middle.block183 ]
  br label %vec.epilog.scalar.ph170

vec.epilog.scalar.ph170:                          ; preds = %vec.epilog.scalar.ph170.preheader, %vec.epilog.scalar.ph170
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %vec.epilog.scalar.ph170 ], [ %indvars.iv.1.i.ph, %vec.epilog.scalar.ph170.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.1.i
  %i.ao = trunc nuw i64 %indvars.iv.1.i to i16
  store i16 %i.ao, ptr %i.an, align 2, !tbaa !39
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next.1.i, %i.h
  br i1 %exitcond130.not, label %iter.check200, label %vec.epilog.scalar.ph170, !llvm.loop !239

iter.check200:                                    ; preds = %vec.epilog.scalar.ph170, %vec.epilog.middle.block183, %middle.block166
  %.idx.i = shl nuw nsw i64 %i.h, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i ; 3 uses
  %min.iters.check186 = icmp samesign ult i64 %i.h, 4
  br i1 %min.iters.check186, label %vec.epilog.scalar.ph201.preheader, label %vector.main.loop.iter.check187

vector.main.loop.iter.check187:                   ; preds = %iter.check200
  %min.iters.check188 = icmp samesign ult i64 %i.h, 16
  br i1 %min.iters.check188, label %vec.epilog.ph204, label %vector.ph189

vector.ph189:                                     ; preds = %vector.main.loop.iter.check187
  %n.vec190 = and i64 %i.g, 65520                 ; 4 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next195, %vector.body191 ] ; 2 uses
  %vec.ind193 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph189 ], [ %vec.ind.next196, %vector.body191 ] ; 3 uses
  %step.add194 = add <8 x i16> %vec.ind193, splat (i16 8)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index192 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <8 x i16> %vec.ind193, ptr %i.aq, align 2, !tbaa !39
  store <8 x i16> %step.add194, ptr %i.ar, align 2, !tbaa !39
  %index.next195 = add nuw i64 %index192, 16      ; 2 uses
  %vec.ind.next196 = add <8 x i16> %vec.ind193, splat (i16 16)
  %i.as = icmp eq i64 %index.next195, %n.vec190
  br i1 %i.as, label %middle.block197, label %vector.body191, !llvm.loop !240

middle.block197:                                  ; preds = %vector.body191
  %cmp.n198 = icmp eq i64 %i.h, %n.vec190
  br i1 %cmp.n198, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block197
  %i.at = and i64 %i.d, 24
  %min.epilog.iters.check203 = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check203, label %vec.epilog.scalar.ph201.preheader, label %vec.epilog.ph204, !prof !158

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check202
  %vec.epilog.resume.val199 = phi i64 [ %n.vec190, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check187 ] ; 2 uses
  %n.vec205 = and i64 %i.g, 65532                 ; 3 uses
  %i.au = trunc nuw i64 %vec.epilog.resume.val199 to i16
  %broadcast.splatinsert206 = insertelement <4 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat207 = shufflevector <4 x i16> %broadcast.splatinsert206, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction208 = or disjoint <4 x i16> %broadcast.splat207, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph204
  %index210 = phi i64 [ %vec.epilog.resume.val199, %vec.epilog.ph204 ], [ %index.next212, %vec.epilog.vector.body209 ] ; 2 uses
  %vec.ind211 = phi <4 x i16> [ %induction208, %vec.epilog.ph204 ], [ %vec.ind.next213, %vec.epilog.vector.body209 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index210
  store <4 x i16> %vec.ind211, ptr %i.av, align 2, !tbaa !39
  %index.next212 = add nuw i64 %index210, 4       ; 2 uses
  %vec.ind.next213 = add <4 x i16> %vec.ind211, splat (i16 4)
  %i.aw = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.aw, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !241

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body209
  %cmp.n215 = icmp eq i64 %i.h, %n.vec205
  br i1 %cmp.n215, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.scalar.ph201.preheader

vec.epilog.scalar.ph201.preheader:                ; preds = %iter.check200, %vec.epilog.iter.check202, %vec.epilog.middle.block214
  %indvars.iv.2.i.ph = phi i64 [ 0, %iter.check200 ], [ %n.vec190, %vec.epilog.iter.check202 ], [ %n.vec205, %vec.epilog.middle.block214 ]
  br label %vec.epilog.scalar.ph201

vec.epilog.scalar.ph201:                          ; preds = %vec.epilog.scalar.ph201.preheader, %vec.epilog.scalar.ph201
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %vec.epilog.scalar.ph201 ], [ %indvars.iv.2.i.ph, %vec.epilog.scalar.ph201.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.2.i
  %i.ay = trunc nuw i64 %indvars.iv.2.i to i16
  store i16 %i.ay, ptr %i.ax, align 2, !tbaa !39
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next.2.i, %i.h
  br i1 %exitcond131.not, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.scalar.ph201, !llvm.loop !242

.split.i:                                         ; preds = %.split.i.preheader, %.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i ], [ %indvars.iv.i.ph, %.split.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ba = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.ba, ptr %i.az, align 2, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.h
  br i1 %exitcond.not, label %iter.check169, label %.split.i, !llvm.loop !243

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit:       ; preds = %vec.epilog.scalar.ph201, %vec.epilog.middle.block214, %middle.block197
  %i.bb = mul nuw nsw i64 %i.h, %i.c
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.bb ; 2 uses
  %.not147 = icmp eq i64 %i.h, 1
  br i1 %.not147, label %bb.d, label %bb.b, !prof !162

bb.b:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bc, ptr align 2 %i.f, i64 %.idx128, i1 false)
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.c:                                             ; preds = %bb.a
  %i.bd = mul nuw nsw i64 %i.h, 6
  %i.be = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #23
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.d:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  %i.bf = load i16, ptr %i.f, align 2, !tbaa !39
  store i16 %i.bf, ptr %i.bc, align 2, !tbaa !39
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.054117 = phi ptr [ %i.bx, %.lr.ph.new ], [ %.054117.unr, %.prol.loopexit ] ; 3 uses
  %i.bg = load i16, ptr %.054117, align 2, !tbaa !39 ; 2 uses
  %i.bh = lshr i16 %i.bg, 6
  %.zext114 = zext nneg i16 %i.bh to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext114 ; 2 uses
  %i.bj = and i16 %i.bg, 63
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !131
  %i.bn = or i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !131
  %i.bo = getelementptr inbounds nuw i8, ptr %.054117, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !39 ; 2 uses
  %i.bq = lshr i16 %i.bp, 6
  %.zext114.1 = zext nneg i16 %i.bq to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext114.1 ; 2 uses
  %i.bs = and i16 %i.bp, 63
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !131
  %i.bw = or i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !131
  %i.bx = getelementptr inbounds nuw i8, ptr %.054117, i64 4 ; 2 uses
  %.not.1 = icmp eq ptr %i.bx, %i.i
  br i1 %.not.1, label %iter.check, label %.lr.ph.new, !llvm.loop !244

_ZSt4copyIPKtPtET0_T_S4_S3_.exit:                 ; preds = %bb.c, %bb.d, %bb.b
  %i.by = phi ptr [ %i.x, %bb.d ], [ %i.be, %bb.c ], [ %i.x, %bb.b ] ; 5 uses
  %i.bz = load i64, ptr %1, align 8, !tbaa !84    ; 2 uses
  %i.ca = xor i64 %i.h, -1
  %i.cb = add i64 %i.bz, %i.ca                    ; 35 uses
  %i.cc = mul i64 %i.cb, 3
  %i.cd = mul i64 %i.cb, 6
  %.inv.i.i = icmp sgt i64 %i.cc, -1
  %i.ce = select i1 %.inv.i.i, i64 %i.cd, i64 -1
  %i.cf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ce) #23
          to label %.noexc unwind label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit92 ; 10 uses

.noexc:                                           ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit
  %.not.i63 = icmp eq i64 %i.cb, 0
  br i1 %.not.i63, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, label %iter.check231

iter.check231:                                    ; preds = %.noexc
  %min.iters.check217 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check217, label %.split.i64.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check231
  %i.cg = add i64 %i.bz, -2
  %i.ch = sub i64 %i.cg, %i.h                     ; 2 uses
  %i.ci = and i64 %i.ch, 65535
  %i.cj = icmp eq i64 %i.ci, 65535
  %i.ck = icmp ugt i64 %i.ch, 65535
  %i.cl = or i1 %i.cj, %i.ck
  br i1 %i.cl, label %.split.i64.preheader, label %vector.main.loop.iter.check218

vector.main.loop.iter.check218:                   ; preds = %vector.scevcheck
  %min.iters.check219 = icmp ult i64 %i.cb, 16
  br i1 %min.iters.check219, label %vec.epilog.ph235, label %vector.ph220

vector.ph220:                                     ; preds = %vector.main.loop.iter.check218
  %i.cm = and i64 %i.cb, 12
  %n.vec221 = and i64 %i.cb, -16                  ; 4 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next226, %vector.body222 ] ; 2 uses
  %vec.ind224 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph220 ], [ %vec.ind.next227, %vector.body222 ] ; 3 uses
  %step.add225 = add <8 x i16> %vec.ind224, splat (i16 8)
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %index223 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <8 x i16> %vec.ind224, ptr %i.cn, align 2, !tbaa !39
  store <8 x i16> %step.add225, ptr %i.co, align 2, !tbaa !39
  %index.next226 = add nuw i64 %index223, 16      ; 2 uses
  %vec.ind.next227 = add <8 x i16> %vec.ind224, splat (i16 16)
  %i.cp = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.cp, label %middle.block228, label %vector.body222, !llvm.loop !245

middle.block228:                                  ; preds = %vector.body222
  %cmp.n229 = icmp eq i64 %i.cb, %n.vec221
  br i1 %cmp.n229, label %iter.check263, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block228
  %min.epilog.iters.check234 = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check234, label %.split.i64.preheader, label %vec.epilog.ph235, !prof !158

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check218, %vec.epilog.iter.check233
  %vec.epilog.resume.val230 = phi i64 [ %n.vec221, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check218 ] ; 2 uses
  %n.vec236 = and i64 %i.cb, -4                   ; 3 uses
  %i.cq = trunc i64 %vec.epilog.resume.val230 to i16
  %broadcast.splatinsert237 = insertelement <4 x i16> poison, i16 %i.cq, i64 0
  %broadcast.splat238 = shufflevector <4 x i16> %broadcast.splatinsert237, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction239 = or disjoint <4 x i16> %broadcast.splat238, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body240

vec.epilog.vector.body240:                        ; preds = %vec.epilog.vector.body240, %vec.epilog.ph235
  %index241 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph235 ], [ %index.next243, %vec.epilog.vector.body240 ] ; 2 uses
  %vec.ind242 = phi <4 x i16> [ %induction239, %vec.epilog.ph235 ], [ %vec.ind.next244, %vec.epilog.vector.body240 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %index241
  store <4 x i16> %vec.ind242, ptr %i.cr, align 2, !tbaa !39
  %index.next243 = add nuw i64 %index241, 4       ; 2 uses
  %vec.ind.next244 = add <4 x i16> %vec.ind242, splat (i16 4)
  %i.cs = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.cs, label %vec.epilog.middle.block245, label %vec.epilog.vector.body240, !llvm.loop !246

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body240
  %cmp.n246 = icmp eq i64 %i.cb, %n.vec236
  br i1 %cmp.n246, label %iter.check263, label %.split.i64.preheader

.split.i64.preheader:                             ; preds = %vector.scevcheck, %iter.check231, %vec.epilog.iter.check233, %vec.epilog.middle.block245
  %indvars.iv.i65.ph = phi i64 [ 0, %iter.check231 ], [ 0, %vector.scevcheck ], [ %n.vec221, %vec.epilog.iter.check233 ], [ %n.vec236, %vec.epilog.middle.block245 ]
  br label %.split.i64

iter.check263:                                    ; preds = %.split.i64, %vec.epilog.middle.block245, %middle.block228
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %min.iters.check249 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check249, label %vec.epilog.scalar.ph264.preheader, label %vector.scevcheck248

vector.scevcheck248:                              ; preds = %iter.check263
  %i.cu = add i64 %i.cb, -1                       ; 2 uses
  %i.cv = and i64 %i.cu, 65535
  %i.cw = icmp eq i64 %i.cv, 65535
  %i.cx = icmp ugt i64 %i.cu, 65535
  %i.cy = or i1 %i.cw, %i.cx
  br i1 %i.cy, label %vec.epilog.scalar.ph264.preheader, label %vector.main.loop.iter.check250

vector.main.loop.iter.check250:                   ; preds = %vector.scevcheck248
  %min.iters.check251 = icmp ult i64 %i.cb, 16
  br i1 %min.iters.check251, label %vec.epilog.ph267, label %vector.ph252

vector.ph252:                                     ; preds = %vector.main.loop.iter.check250
  %i.cz = and i64 %i.cb, 12
  %n.vec253 = and i64 %i.cb, 131056               ; 4 uses
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next258, %vector.body254 ] ; 2 uses
  %vec.ind256 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph252 ], [ %vec.ind.next259, %vector.body254 ] ; 3 uses
  %step.add257 = add <8 x i16> %vec.ind256, splat (i16 8)
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index255 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <8 x i16> %vec.ind256, ptr %i.da, align 2, !tbaa !39
  store <8 x i16> %step.add257, ptr %i.db, align 2, !tbaa !39
  %index.next258 = add nuw i64 %index255, 16      ; 2 uses
  %vec.ind.next259 = add <8 x i16> %vec.ind256, splat (i16 16)
  %i.dc = icmp eq i64 %index.next258, %n.vec253
  br i1 %i.dc, label %middle.block260, label %vector.body254, !llvm.loop !247

middle.block260:                                  ; preds = %vector.body254
  %cmp.n261 = icmp eq i64 %i.cb, %n.vec253
  br i1 %cmp.n261, label %iter.check295, label %vec.epilog.iter.check265

vec.epilog.iter.check265:                         ; preds = %middle.block260
  %min.epilog.iters.check266 = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check266, label %vec.epilog.scalar.ph264.preheader, label %vec.epilog.ph267, !prof !158

vec.epilog.ph267:                                 ; preds = %vector.main.loop.iter.check250, %vec.epilog.iter.check265
  %vec.epilog.resume.val262 = phi i64 [ %n.vec253, %vec.epilog.iter.check265 ], [ 0, %vector.main.loop.iter.check250 ] ; 2 uses
  %n.vec268 = and i64 %i.cb, 131068               ; 3 uses
  %i.dd = trunc i64 %vec.epilog.resume.val262 to i16
  %broadcast.splatinsert269 = insertelement <4 x i16> poison, i16 %i.dd, i64 0
  %broadcast.splat270 = shufflevector <4 x i16> %broadcast.splatinsert269, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction271 = or disjoint <4 x i16> %broadcast.splat270, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph267
  %index273 = phi i64 [ %vec.epilog.resume.val262, %vec.epilog.ph267 ], [ %index.next275, %vec.epilog.vector.body272 ] ; 2 uses
  %vec.ind274 = phi <4 x i16> [ %induction271, %vec.epilog.ph267 ], [ %vec.ind.next276, %vec.epilog.vector.body272 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index273
  store <4 x i16> %vec.ind274, ptr %i.de, align 2, !tbaa !39
  %index.next275 = add nuw i64 %index273, 4       ; 2 uses
  %vec.ind.next276 = add <4 x i16> %vec.ind274, splat (i16 4)
  %i.df = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.df, label %vec.epilog.middle.block277, label %vec.epilog.vector.body272, !llvm.loop !248

vec.epilog.middle.block277:                       ; preds = %vec.epilog.vector.body272
  %cmp.n278 = icmp eq i64 %i.cb, %n.vec268
  br i1 %cmp.n278, label %iter.check295, label %vec.epilog.scalar.ph264.preheader

vec.epilog.scalar.ph264.preheader:                ; preds = %vector.scevcheck248, %iter.check263, %vec.epilog.iter.check265, %vec.epilog.middle.block277
  %indvars.iv.1.i68.ph = phi i64 [ 0, %iter.check263 ], [ 0, %vector.scevcheck248 ], [ %n.vec253, %vec.epilog.iter.check265 ], [ %n.vec268, %vec.epilog.middle.block277 ]
  br label %vec.epilog.scalar.ph264

vec.epilog.scalar.ph264:                          ; preds = %vec.epilog.scalar.ph264.preheader, %vec.epilog.scalar.ph264
  %indvars.iv.1.i68 = phi i64 [ %indvars.iv.next.1.i69, %vec.epilog.scalar.ph264 ], [ %indvars.iv.1.i68.ph, %vec.epilog.scalar.ph264.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.1.i68
  %i.dh = trunc nuw i64 %indvars.iv.1.i68 to i16
  store i16 %i.dh, ptr %i.dg, align 2, !tbaa !39
  %indvars.iv.next.1.i69 = add i64 %indvars.iv.1.i68, 1 ; 2 uses
  %i.di = and i64 %indvars.iv.next.1.i69, 65535
  %i.dj = icmp samesign ugt i64 %i.cb, %i.di
  br i1 %i.dj, label %vec.epilog.scalar.ph264, label %iter.check295, !llvm.loop !249

iter.check295:                                    ; preds = %vec.epilog.scalar.ph264, %vec.epilog.middle.block277, %middle.block260
  %.idx.i71 = shl nuw nsw i64 %i.cb, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i71 ; 3 uses
  %min.iters.check281 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check281, label %vec.epilog.scalar.ph296.preheader, label %vector.scevcheck280

vector.scevcheck280:                              ; preds = %iter.check295
  %4 = add i64 %i.cb, -1                          ; 2 uses
  %i.dl = and i64 %4, 65535
  %i.dm = icmp eq i64 %i.dl, 65535
  %5 = icmp ugt i64 %4, 65535
  %i.dn = or i1 %i.dm, %5
  br i1 %i.dn, label %vec.epilog.scalar.ph296.preheader, label %vector.main.loop.iter.check282

vector.main.loop.iter.check282:                   ; preds = %vector.scevcheck280
  %min.iters.check283 = icmp ult i64 %i.cb, 16
  br i1 %min.iters.check283, label %vec.epilog.ph299, label %vector.ph284

vector.ph284:                                     ; preds = %vector.main.loop.iter.check282
  %i.do = and i64 %i.cb, 12
  %n.vec285 = and i64 %i.cb, 131056               ; 4 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next290, %vector.body286 ] ; 2 uses
  %vec.ind288 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph284 ], [ %vec.ind.next291, %vector.body286 ] ; 3 uses
  %step.add289 = add <8 x i16> %vec.ind288, splat (i16 8)
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %index287 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <8 x i16> %vec.ind288, ptr %i.dp, align 2, !tbaa !39
  store <8 x i16> %step.add289, ptr %i.dq, align 2, !tbaa !39
  %index.next290 = add nuw i64 %index287, 16      ; 2 uses
  %vec.ind.next291 = add <8 x i16> %vec.ind288, splat (i16 16)
  %i.dr = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.dr, label %middle.block292, label %vector.body286, !llvm.loop !250

middle.block292:                                  ; preds = %vector.body286
  %cmp.n293 = icmp eq i64 %i.cb, %n.vec285
  br i1 %cmp.n293, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, label %vec.epilog.iter.check297

vec.epilog.iter.check297:                         ; preds = %middle.block292
  %min.epilog.iters.check298 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check298, label %vec.epilog.scalar.ph296.preheader, label %vec.epilog.ph299, !prof !158

vec.epilog.ph299:                                 ; preds = %vector.main.loop.iter.check282, %vec.epilog.iter.check297
  %vec.epilog.resume.val294 = phi i64 [ %n.vec285, %vec.epilog.iter.check297 ], [ 0, %vector.main.loop.iter.check282 ] ; 2 uses
  %n.vec300 = and i64 %i.cb, 131068               ; 3 uses
  %i.ds = trunc i64 %vec.epilog.resume.val294 to i16
  %broadcast.splatinsert301 = insertelement <4 x i16> poison, i16 %i.ds, i64 0
  %broadcast.splat302 = shufflevector <4 x i16> %broadcast.splatinsert301, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction303 = or disjoint <4 x i16> %broadcast.splat302, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body304

vec.epilog.vector.body304:                        ; preds = %vec.epilog.vector.body304, %vec.epilog.ph299
  %index305 = phi i64 [ %vec.epilog.resume.val294, %vec.epilog.ph299 ], [ %index.next307, %vec.epilog.vector.body304 ] ; 2 uses
  %vec.ind306 = phi <4 x i16> [ %induction303, %vec.epilog.ph299 ], [ %vec.ind.next308, %vec.epilog.vector.body304 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %index305
  store <4 x i16> %vec.ind306, ptr %i.dt, align 2, !tbaa !39
  %index.next307 = add nuw i64 %index305, 4       ; 2 uses
  %vec.ind.next308 = add <4 x i16> %vec.ind306, splat (i16 4)
  %i.du = icmp eq i64 %index.next307, %n.vec300
  br i1 %i.du, label %vec.epilog.middle.block309, label %vec.epilog.vector.body304, !llvm.loop !251

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body304
  %cmp.n310 = icmp eq i64 %i.cb, %n.vec300
  br i1 %cmp.n310, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, label %vec.epilog.scalar.ph296.preheader

vec.epilog.scalar.ph296.preheader:                ; preds = %vector.scevcheck280, %iter.check295, %vec.epilog.iter.check297, %vec.epilog.middle.block309
  %indvars.iv.2.i72.ph = phi i64 [ 0, %iter.check295 ], [ 0, %vector.scevcheck280 ], [ %n.vec285, %vec.epilog.iter.check297 ], [ %n.vec300, %vec.epilog.middle.block309 ]
  br label %vec.epilog.scalar.ph296

vec.epilog.scalar.ph296:                          ; preds = %vec.epilog.scalar.ph296.preheader, %vec.epilog.scalar.ph296
  %indvars.iv.2.i72 = phi i64 [ %indvars.iv.next.2.i73, %vec.epilog.scalar.ph296 ], [ %indvars.iv.2.i72.ph, %vec.epilog.scalar.ph296.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv.2.i72
  %i.dw = trunc nuw i64 %indvars.iv.2.i72 to i16
  store i16 %i.dw, ptr %i.dv, align 2, !tbaa !39
  %indvars.iv.next.2.i73 = add i64 %indvars.iv.2.i72, 1 ; 2 uses
  %i.dx = and i64 %indvars.iv.next.2.i73, 65535
  %i.dy = icmp samesign ugt i64 %i.cb, %i.dx
  br i1 %i.dy, label %vec.epilog.scalar.ph296, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, !llvm.loop !252

.split.i64:                                       ; preds = %.split.i64.preheader, %.split.i64
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i66, %.split.i64 ], [ %indvars.iv.i65.ph, %.split.i64.preheader ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv.i65
  %i.ea = trunc nuw i64 %indvars.iv.i65 to i16
  store i16 %i.ea, ptr %i.dz, align 2, !tbaa !39
  %indvars.iv.next.i66 = add i64 %indvars.iv.i65, 1 ; 2 uses
  %i.eb = and i64 %indvars.iv.next.i66, 65535
  %i.ec = icmp ugt i64 %i.cb, %i.eb
  br i1 %i.ec, label %.split.i64, label %iter.check263, !llvm.loop !253

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74:     ; preds = %vec.epilog.scalar.ph296, %middle.block292, %vec.epilog.middle.block309, %.noexc
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 3 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !76  ; 5 uses
  %i.ef = load i64, ptr %1, align 8, !tbaa !84    ; 10 uses
  %i.eg = mul i64 %i.ef, %i.c
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ef
  %i.ej = mul nuw nsw i64 %i.cb, %i.c
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.ej ; 2 uses
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = ptrtoint ptr %i.ed to i64
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = icmp sgt i64 %i.en, 2
  br i1 %i.eo, label %bb.e, label %bb.f, !prof !68

bb.e:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ek, ptr nonnull align 2 %i.ed, i64 %i.en, i1 false)
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

bb.f:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74
  %i.ep = icmp eq i64 %i.en, 2
  br i1 %i.ep, label %bb.g, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

bb.g:                                             ; preds = %bb.f
  %i.eq = load i16, ptr %i.ed, align 2, !tbaa !39
  store i16 %i.eq, ptr %i.ek, align 2, !tbaa !39
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

_ZSt4copyIPKtPtET0_T_S4_S3_.exit75:               ; preds = %bb.e, %bb.f, %bb.g
  %i.er = icmp eq i8 %2, 0
  br i1 %i.er, label %.loopexit.thread, label %bb.h

.lr.ph127:                                        ; preds = %.loopexit.2
  %i.es = load ptr, ptr %3, align 8, !tbaa !87    ; 3 uses
  %i.et = add nsw i64 %.idx128, -2                ; 2 uses
  %i.eu = and i64 %i.et, 2
  %lcmp.mod315.not.not = icmp eq i64 %i.eu, 0
  br i1 %lcmp.mod315.not.not, label %.prol.loopexit313.unr-lcssa, label %.prol.loopexit313

.prol.loopexit313.unr-lcssa:                      ; preds = %.lr.ph127
  %i.ev = load i16, ptr %i.f, align 2, !tbaa !39  ; 2 uses
  %i.ew = lshr i16 %i.ev, 6
  %.zext112.prol = zext nneg i16 %i.ew to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.zext112.prol ; 2 uses
  %i.ey = and i16 %i.ev, 63
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = xor i64 %i.fa, -1
  %i.fc = load i64, ptr %i.ex, align 8, !tbaa !131
  %i.fd = and i64 %i.fc, %i.fb
  store i64 %i.fd, ptr %i.ex, align 8, !tbaa !131
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.prol.loopexit313

.prol.loopexit313:                                ; preds = %.prol.loopexit313.unr-lcssa, %.lr.ph127
  %.0126.unr = phi ptr [ %i.f, %.lr.ph127 ], [ %i.fe, %.prol.loopexit313.unr-lcssa ]
  %i.ff = icmp eq i64 %i.et, 0
  br i1 %i.ff, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit82, label %.lr.ph127.new

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit92:     ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.by) #20
  resume { ptr, i32 } %i.fg

bb.h:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75
  %.idx129 = shl nuw nsw i64 %i.ef, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx129
  %.not58118 = icmp eq i64 %i.ef, 0
  br i1 %.not58118, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.h, %bb.i
  %.044121 = phi ptr [ %i.fs, %bb.i ], [ %i.ee, %bb.h ] ; 2 uses
  %.045120 = phi ptr [ %.1, %bb.i ], [ %i.cf, %bb.h ] ; 3 uses
  %.046119 = phi ptr [ %.147, %bb.i ], [ %i.by, %bb.h ] ; 3 uses
  %i.fi = load i16, ptr %.044121, align 2, !tbaa !39 ; 4 uses
  %i.fj = load i16, ptr %i.i, align 2, !tbaa !39
  %.not59 = icmp eq i16 %i.fi, %i.fj
  br i1 %.not59, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph123
  %i.fk = load ptr, ptr %3, align 8, !tbaa !87
  %i.fl = lshr i16 %i.fi, 6
  %.zext = zext nneg i16 %i.fl to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.zext
  %i.fn = and i16 %i.fi, 63
  %i.fo = zext nneg i16 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = load i64, ptr %i.fm, align 8, !tbaa !131
  %i.fr = and i64 %i.fq, %i.fp
  %.not115 = icmp eq i64 %i.fr, 0                 ; 3 uses
  %.045120.sink = select i1 %.not115, ptr %.045120, ptr %.046119
  %.147.ph.idx = select i1 %.not115, i64 0, i64 2
  %.147.ph = getelementptr inbounds nuw i8, ptr %.046119, i64 %.147.ph.idx
  %.1.ph.idx = select i1 %.not115, i64 2, i64 0
  %.1.ph = getelementptr inbounds nuw i8, ptr %.045120, i64 %.1.ph.idx
  store i16 %i.fi, ptr %.045120.sink, align 2, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph123
  %.147 = phi ptr [ %.046119, %.lr.ph123 ], [ %.147.ph, %.sink.split ]
  %.1 = phi ptr [ %.045120, %.lr.ph123 ], [ %.1.ph, %.sink.split ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.044121, i64 2 ; 2 uses
  %.not58 = icmp eq ptr %i.fs, %i.fh
  br i1 %.not58, label %.loopexit, label %.lr.ph123, !llvm.loop !254

.loopexit:                                        ; preds = %bb.i, %bb.h
  %i.ft = icmp eq i8 %2, 1
  br i1 %i.ft, label %.loopexit.1.thread, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75, %.loopexit
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %.idx129.1 = shl nuw nsw i64 %i.ef, 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx129.1
  %.not58118.1 = icmp eq i64 %i.ef, 0
  br i1 %.not58118.1, label %.loopexit.1, label %.lr.ph123.preheader.1

.lr.ph123.preheader.1:                            ; preds = %.loopexit.thread
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cb
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.h
  br label %.lr.ph123.1

.lr.ph123.1:                                      ; preds = %bb.j, %.lr.ph123.preheader.1
  %.044121.1 = phi ptr [ %i.gi, %bb.j ], [ %i.fu, %.lr.ph123.preheader.1 ] ; 2 uses
  %.045120.1 = phi ptr [ %.1.1, %bb.j ], [ %i.fw, %.lr.ph123.preheader.1 ] ; 3 uses
  %.046119.1 = phi ptr [ %.147.1, %bb.j ], [ %i.fx, %.lr.ph123.preheader.1 ] ; 3 uses
  %i.fy = load i16, ptr %.044121.1, align 2, !tbaa !39 ; 4 uses
  %i.fz = load i16, ptr %i.i, align 2, !tbaa !39
  %.not59.1 = icmp eq i16 %i.fy, %i.fz
  br i1 %.not59.1, label %bb.j, label %.sink.split145

.sink.split145:                                   ; preds = %.lr.ph123.1
  %i.ga = load ptr, ptr %3, align 8, !tbaa !87
  %i.gb = lshr i16 %i.fy, 6
  %.zext.1 = zext nneg i16 %i.gb to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.zext.1
  %i.gd = and i16 %i.fy, 63
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !131
  %i.gh = and i64 %i.gg, %i.gf
  %.not115.1 = icmp eq i64 %i.gh, 0               ; 3 uses
  %.045120.1.sink = select i1 %.not115.1, ptr %.045120.1, ptr %.046119.1
  %.147.1.ph.idx = select i1 %.not115.1, i64 0, i64 2
  %.147.1.ph = getelementptr inbounds nuw i8, ptr %.046119.1, i64 %.147.1.ph.idx
  %.1.1.ph.idx = select i1 %.not115.1, i64 2, i64 0
  %.1.1.ph = getelementptr inbounds nuw i8, ptr %.045120.1, i64 %.1.1.ph.idx
  store i16 %i.fy, ptr %.045120.1.sink, align 2, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %.sink.split145, %.lr.ph123.1
  %.147.1 = phi ptr [ %.046119.1, %.lr.ph123.1 ], [ %.147.1.ph, %.sink.split145 ]
  %.1.1 = phi ptr [ %.045120.1, %.lr.ph123.1 ], [ %.1.1.ph, %.sink.split145 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.044121.1, i64 2 ; 2 uses
  %.not58.1 = icmp eq ptr %i.gi, %i.fv
  br i1 %.not58.1, label %.loopexit.1, label %.lr.ph123.1, !llvm.loop !254

.loopexit.1:                                      ; preds = %bb.j, %.loopexit.thread
  %i.gj = icmp eq i8 %2, 2
  br i1 %i.gj, label %.loopexit.2, label %.loopexit.1.thread

.loopexit.1.thread:                               ; preds = %.loopexit, %.loopexit.1
  %.idx144 = shl i64 %i.ef, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx144 ; 2 uses
  %.idx129.2 = shl nuw nsw i64 %i.ef, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx129.2
  %.not58118.2 = icmp eq i64 %i.ef, 0
  br i1 %.not58118.2, label %.loopexit.2, label %.lr.ph123.preheader.2

.lr.ph123.preheader.2:                            ; preds = %.loopexit.1.thread
  %.idx143 = shl i64 %i.cb, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx143
  %.idx = shl nuw nsw i64 %i.h, 2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8k_d_tree6KdTreeILh3EttEESaIS2_EE8pop_backEv:bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88
  store ptr %i.c, ptr %i.a, align 8, !tbaa !45
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.j) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i:   ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN8k_d_tree6KdTreeILh3EttED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %_ZN8k_d_tree6KdTreeILh3EttED2Ev.exit

_ZN8k_d_tree6KdTreeILh3EttED2Ev.exit:             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EtEC2EmSt5arrayIPKtLm3EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef byval(%"struct.std::array.57") align 8 %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 20 uses
  store i64 %1, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = mul i64 %1, 3
  %i.d = mul i64 %1, 6
  %.inv.i.i = icmp sgt i64 %i.c, -1
  %i.e = select i1 %.inv.i.i, i64 %i.d, i64 -1    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #23 ; 7 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !76
  %i.g = icmp ugt i64 %1, 1
  br i1 %i.g, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i, label %.split.i, !prof !68

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 1                 ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !76
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.f, ptr align 2 %i.h, i64 %.idx.i, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = load i64, ptr %0, align 8, !tbaa !84     ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.l, ptr align 2 %i.j, i64 %.idx.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %.idx18.i = shl i64 %i.k, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx18.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.o, ptr align 2 %i.n, i64 %.idx.i, i1 false)
  br label %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit

.split.i:                                         ; preds = %bb.a
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.preheader.i, label %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.preheader.i:     ; preds = %.split.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !76
  %i.r = load i16, ptr %i.q, align 2, !tbaa !39
  store i16 %i.r, ptr %i.f, align 2, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.u = load i64, ptr %0, align 8, !tbaa !84     ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.u
  %i.w = load i16, ptr %i.t, align 2, !tbaa !39
  store i16 %i.w, ptr %i.v, align 2, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  %.idx17.i = shl i64 %i.u, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx17.i
  %i.aa = load i16, ptr %i.y, align 2, !tbaa !39
  store i16 %i.aa, ptr %i.z, align 2, !tbaa !39
  br label %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit

_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit: ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i, %.split.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 %1, ptr %i.ab, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #23
          to label %.noexc unwind label %bb.b     ; 9 uses

.noexc:                                           ; preds = %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !76
  %.not.i = icmp eq i64 %1, 0
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !84 ; 5 uses
  br i1 %.not.i, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %iter.check

iter.check:                                       ; preds = %.noexc
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.split.i13.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ae = add i64 %1, -1                          ; 2 uses
  %i.af = and i64 %i.ae, 65535
  %i.ag = icmp eq i64 %i.af, 65535
  %i.ah = icmp ugt i64 %i.ae, 65535
  %i.ai = or i1 %i.ag, %i.ah
  br i1 %i.ai, label %.split.i13.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check41 = icmp ult i64 %1, 16
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %1, 12
  %n.vec = and i64 %1, 131056                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <8 x i16> %vec.ind, ptr %i.ak, align 2, !tbaa !39
  store <8 x i16> %step.add, ptr %i.al, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %iter.check63, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.split.i13.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec42 = and i64 %1, 131068                   ; 3 uses
  %i.an = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind44 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index43
  store <4 x i16> %vec.ind44, ptr %i.ao, align 2, !tbaa !39
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %vec.ind.next46 = add <4 x i16> %vec.ind44, splat (i16 4)
  %i.ap = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !273

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %1, %n.vec42
  br i1 %cmp.n47, label %iter.check63, label %.split.i13.preheader

.split.i13.preheader:                             ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %.split.i13

iter.check63:                                     ; preds = %.split.i13, %vec.epilog.middle.block, %middle.block
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.pre ; 3 uses
  %min.iters.check49 = icmp ult i64 %1, 4
  br i1 %min.iters.check49, label %vec.epilog.scalar.ph64.preheader, label %vector.scevcheck48

vector.scevcheck48:                               ; preds = %iter.check63
  %i.ar = add i64 %1, -1                          ; 2 uses
  %i.as = and i64 %i.ar, 65535
  %i.at = icmp eq i64 %i.as, 65535
  %i.au = icmp ugt i64 %i.ar, 65535
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph64.preheader, label %vector.main.loop.iter.check50

vector.main.loop.iter.check50:                    ; preds = %vector.scevcheck48
  %min.iters.check51 = icmp ult i64 %1, 16
  br i1 %min.iters.check51, label %vec.epilog.ph67, label %vector.ph52

vector.ph52:                                      ; preds = %vector.main.loop.iter.check50
  %i.aw = and i64 %1, 12
  %n.vec53 = and i64 %1, 131056                   ; 4 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next58, %vector.body54 ] ; 2 uses
  %vec.ind56 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph52 ], [ %vec.ind.next59, %vector.body54 ] ; 3 uses
  %step.add57 = add <8 x i16> %vec.ind56, splat (i16 8)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %index55 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <8 x i16> %vec.ind56, ptr %i.ax, align 2, !tbaa !39
  store <8 x i16> %step.add57, ptr %i.ay, align 2, !tbaa !39
  %index.next58 = add nuw i64 %index55, 16        ; 2 uses
  %vec.ind.next59 = add <8 x i16> %vec.ind56, splat (i16 16)
  %i.az = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.az, label %middle.block60, label %vector.body54, !llvm.loop !274

middle.block60:                                   ; preds = %vector.body54
  %cmp.n61 = icmp eq i64 %1, %n.vec53
  br i1 %cmp.n61, label %iter.check95, label %vec.epilog.iter.check65

vec.epilog.iter.check65:                          ; preds = %middle.block60
  %min.epilog.iters.check66 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check66, label %vec.epilog.scalar.ph64.preheader, label %vec.epilog.ph67, !prof !158

vec.epilog.ph67:                                  ; preds = %vector.main.loop.iter.check50, %vec.epilog.iter.check65
  %vec.epilog.resume.val62 = phi i64 [ %n.vec53, %vec.epilog.iter.check65 ], [ 0, %vector.main.loop.iter.check50 ] ; 2 uses
  %n.vec68 = and i64 %1, 131068                   ; 3 uses
  %i.ba = trunc i64 %vec.epilog.resume.val62 to i16
  %broadcast.splatinsert69 = insertelement <4 x i16> poison, i16 %i.ba, i64 0
  %broadcast.splat70 = shufflevector <4 x i16> %broadcast.splatinsert69, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction71 = or disjoint <4 x i16> %broadcast.splat70, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body72

vec.epilog.vector.body72:                         ; preds = %vec.epilog.vector.body72, %vec.epilog.ph67
  %index73 = phi i64 [ %vec.epilog.resume.val62, %vec.epilog.ph67 ], [ %index.next75, %vec.epilog.vector.body72 ] ; 2 uses
  %vec.ind74 = phi <4 x i16> [ %induction71, %vec.epilog.ph67 ], [ %vec.ind.next76, %vec.epilog.vector.body72 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %index73
  store <4 x i16> %vec.ind74, ptr %i.bb, align 2, !tbaa !39
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %vec.ind.next76 = add <4 x i16> %vec.ind74, splat (i16 4)
  %i.bc = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.bc, label %vec.epilog.middle.block77, label %vec.epilog.vector.body72, !llvm.loop !275

vec.epilog.middle.block77:                        ; preds = %vec.epilog.vector.body72
  %cmp.n78 = icmp eq i64 %1, %n.vec68
  br i1 %cmp.n78, label %iter.check95, label %vec.epilog.scalar.ph64.preheader

vec.epilog.scalar.ph64.preheader:                 ; preds = %vector.scevcheck48, %iter.check63, %vec.epilog.iter.check65, %vec.epilog.middle.block77
  %indvars.iv.1.i.ph = phi i64 [ 0, %iter.check63 ], [ 0, %vector.scevcheck48 ], [ %n.vec53, %vec.epilog.iter.check65 ], [ %n.vec68, %vec.epilog.middle.block77 ]
  br label %vec.epilog.scalar.ph64

vec.epilog.scalar.ph64:                           ; preds = %vec.epilog.scalar.ph64.preheader, %vec.epilog.scalar.ph64
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %vec.epilog.scalar.ph64 ], [ %indvars.iv.1.i.ph, %vec.epilog.scalar.ph64.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.1.i
  %i.be = trunc nuw i64 %indvars.iv.1.i to i16
  store i16 %i.be, ptr %i.bd, align 2, !tbaa !39
  %indvars.iv.next.1.i = add i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.bf = and i64 %indvars.iv.next.1.i, 65535
  %i.bg = icmp samesign ugt i64 %1, %i.bf
  br i1 %i.bg, label %vec.epilog.scalar.ph64, label %iter.check95, !llvm.loop !276

iter.check95:                                     ; preds = %vec.epilog.scalar.ph64, %vec.epilog.middle.block77, %middle.block60
  %.idx.i14 = shl i64 %.pre, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i14 ; 3 uses
  %min.iters.check81 = icmp ult i64 %1, 4
  br i1 %min.iters.check81, label %vec.epilog.scalar.ph96.preheader, label %vector.scevcheck80

vector.scevcheck80:                               ; preds = %iter.check95
  %3 = add i64 %1, -1                             ; 2 uses
  %i.bi = and i64 %3, 65535
  %i.bj = icmp eq i64 %i.bi, 65535
  %4 = icmp ugt i64 %3, 65535
  %i.bk = or i1 %i.bj, %4
  br i1 %i.bk, label %vec.epilog.scalar.ph96.preheader, label %vector.main.loop.iter.check82

vector.main.loop.iter.check82:                    ; preds = %vector.scevcheck80
  %min.iters.check83 = icmp ult i64 %1, 16
  br i1 %min.iters.check83, label %vec.epilog.ph99, label %vector.ph84

vector.ph84:                                      ; preds = %vector.main.loop.iter.check82
  %i.bl = and i64 %1, 12
  %n.vec85 = and i64 %1, 131056                   ; 4 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next90, %vector.body86 ] ; 2 uses
  %vec.ind88 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph84 ], [ %vec.ind.next91, %vector.body86 ] ; 3 uses
  %step.add89 = add <8 x i16> %vec.ind88, splat (i16 8)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %index87 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <8 x i16> %vec.ind88, ptr %i.bm, align 2, !tbaa !39
  store <8 x i16> %step.add89, ptr %i.bn, align 2, !tbaa !39
  %index.next90 = add nuw i64 %index87, 16        ; 2 uses
  %vec.ind.next91 = add <8 x i16> %vec.ind88, splat (i16 16)
  %i.bo = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.bo, label %middle.block92, label %vector.body86, !llvm.loop !277

middle.block92:                                   ; preds = %vector.body86
  %cmp.n93 = icmp eq i64 %1, %n.vec85
  br i1 %cmp.n93, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.iter.check97

vec.epilog.iter.check97:                          ; preds = %middle.block92
  %min.epilog.iters.check98 = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check98, label %vec.epilog.scalar.ph96.preheader, label %vec.epilog.ph99, !prof !158

vec.epilog.ph99:                                  ; preds = %vector.main.loop.iter.check82, %vec.epilog.iter.check97
  %vec.epilog.resume.val94 = phi i64 [ %n.vec85, %vec.epilog.iter.check97 ], [ 0, %vector.main.loop.iter.check82 ] ; 2 uses
  %n.vec100 = and i64 %1, 131068                  ; 3 uses
  %i.bp = trunc i64 %vec.epilog.resume.val94 to i16
  %broadcast.splatinsert101 = insertelement <4 x i16> poison, i16 %i.bp, i64 0
  %broadcast.splat102 = shufflevector <4 x i16> %broadcast.splatinsert101, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction103 = or disjoint <4 x i16> %broadcast.splat102, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph99
  %index105 = phi i64 [ %vec.epilog.resume.val94, %vec.epilog.ph99 ], [ %index.next107, %vec.epilog.vector.body104 ] ; 2 uses
  %vec.ind106 = phi <4 x i16> [ %induction103, %vec.epilog.ph99 ], [ %vec.ind.next108, %vec.epilog.vector.body104 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %index105
  store <4 x i16> %vec.ind106, ptr %i.bq, align 2, !tbaa !39
  %index.next107 = add nuw i64 %index105, 4       ; 2 uses
  %vec.ind.next108 = add <4 x i16> %vec.ind106, splat (i16 4)
  %i.br = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.br, label %vec.epilog.middle.block109, label %vec.epilog.vector.body104, !llvm.loop !278

vec.epilog.middle.block109:                       ; preds = %vec.epilog.vector.body104
  %cmp.n110 = icmp eq i64 %1, %n.vec100
  br i1 %cmp.n110, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.scalar.ph96.preheader

vec.epilog.scalar.ph96.preheader:                 ; preds = %vector.scevcheck80, %iter.check95, %vec.epilog.iter.check97, %vec.epilog.middle.block109
  %indvars.iv.2.i.ph = phi i64 [ 0, %iter.check95 ], [ 0, %vector.scevcheck80 ], [ %n.vec85, %vec.epilog.iter.check97 ], [ %n.vec100, %vec.epilog.middle.block109 ]
  br label %vec.epilog.scalar.ph96

vec.epilog.scalar.ph96:                           ; preds = %vec.epilog.scalar.ph96.preheader, %vec.epilog.scalar.ph96
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %vec.epilog.scalar.ph96 ], [ %indvars.iv.2.i.ph, %vec.epilog.scalar.ph96.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.2.i
  %i.bt = trunc nuw i64 %indvars.iv.2.i to i16
  store i16 %i.bt, ptr %i.bs, align 2, !tbaa !39
  %indvars.iv.next.2.i = add i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.bu = and i64 %indvars.iv.next.2.i, 65535
  %i.bv = icmp samesign ugt i64 %1, %i.bu
  br i1 %i.bv, label %vec.epilog.scalar.ph96, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, !llvm.loop !279

.split.i13:                                       ; preds = %.split.i13.preheader, %.split.i13
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i13 ], [ %indvars.iv.i.ph, %.split.i13.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.bx = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.bx, ptr %i.bw, align 2, !tbaa !39
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.by = and i64 %indvars.iv.next.i, 65535
  %i.bz = icmp ugt i64 %1, %i.by
  br i1 %i.bz, label %.split.i13, label %iter.check63, !llvm.loop !280

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit:       ; preds = %vec.epilog.scalar.ph96, %middle.block92, %vec.epilog.middle.block109, %.noexc
  %i.ca = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br i1 %i.ca, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us, label %bb.c

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %.split.us.sink.split

.split.us.sink.split:                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit, %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1, %.noexc15.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.b:                                             ; preds = %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

bb.c:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !76
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !76
  %.idx = shl nuw nsw i64 %.pre, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 2 uses
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre, i1 true)
  %i.cf = shl nuw nsw i64 %i.ce, 1
  %i.cg = xor i64 %i.cf, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.cd, i64 noundef %i.cg, ptr nonnull %i.a)
          to label %.noexc15 unwind label %bb.f

.noexc15:                                         ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.cd, ptr nonnull %i.a)
          to label %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit unwind label %bb.f

_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit: ; preds = %.noexc15
  %.pre24 = load i64, ptr %i.ab, align 8, !tbaa !84 ; 4 uses
  %.pre29 = shl nuw nsw i64 %.pre24, 1
  %.pre23 = load ptr, ptr %i.ac, align 8, !tbaa !76
  %.pre22 = load ptr, ptr %i.b, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ch = load i64, ptr %0, align 8, !tbaa !84
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.pre22, i64 %i.ch
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.pre23, i64 %.pre24 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.pre29 ; 2 uses
  %.not.i.i.1 = icmp eq i64 %.pre24, 0
  br i1 %.not.i.i.1, label %.split.us.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit
  %i.cl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre24, i1 true)
  %i.cm = shl nuw nsw i64 %i.cl, 1
  %i.cn = xor i64 %i.cm, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, i64 noundef %i.cn, ptr nonnull %i.a)
          to label %.noexc15.1 unwind label %bb.f

.noexc15.1:                                       ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, ptr nonnull %i.a)
          to label %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1 unwind label %bb.f

_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1: ; preds = %.noexc15.1
  %.pre25 = load ptr, ptr %i.b, align 8, !tbaa !76
  %.pre26 = load i64, ptr %0, align 8, !tbaa !84
  %.pre27 = load ptr, ptr %i.ac, align 8, !tbaa !76
  %.pre28 = load i64, ptr %i.ab, align 8, !tbaa !84 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.idx34 = shl i64 %.pre26, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.pre25, i64 %.idx34
  store ptr %i.co, ptr %i.a, align 8, !tbaa !76
  %.idx35 = shl i64 %.pre28, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre27, i64 %.idx35 ; 3 uses
  %.idx.2 = shl nuw nsw i64 %.pre28, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.2 ; 2 uses
  %.not.i.i.2 = icmp eq i64 %.pre28, 0
  br i1 %.not.i.i.2, label %.split.us, label %bb.e

bb.e:                                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1
  %i.cr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre28, i1 true)
  %i.cs = shl nuw nsw i64 %i.cr, 1
  %i.ct = xor i64 %i.cs, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, i64 noundef %i.ct, ptr nonnull %i.a)
          to label %.noexc15.2 unwind label %bb.f

.noexc15.2:                                       ; preds = %bb.e
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr nonnull %i.a)
          to label %.split.us unwind label %bb.f

bb.f:                                             ; preds = %.noexc15.2, %bb.e, %.noexc15.1, %bb.d, %.noexc15, %bb.c
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cv = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i ]
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i17, label %_ZN8k_d_tree6PointsILh3EtED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #20
  br label %_ZN8k_d_tree6PointsILh3EtED2Ev.exit

_ZN8k_d_tree6PointsILh3EtED2Ev.exit:              ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SB_SC_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEESB_SB_SB_SC_.exit
  %i.g = icmp eq i64 %i.bi, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !281

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.023.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_RSC_(ptr noundef %0, ptr noundef %.023.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SB_RSC_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SB_RSC_.exit.i.i ], [ %.023.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -2 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39   ; 2 uses
  %i.j = load i16, ptr %0, align 2, !tbaa !39
  store i16 %i.j, ptr %i.h, align 2, !tbaa !39
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 2 uses
  %i.r = shl i64 %.030.i.i.i.i, 1                 ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [2 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %i.w = load i16, ptr %i.t, align 2, !tbaa !39
  %i.x = load i16, ptr %i.v, align 2, !tbaa !39
  %i.y = zext i16 %i.w to i64
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN8k_d_tree6KdTreeILh3EftEESaIS2_EE8pop_backEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.j) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i:   ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit

_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit:             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EfEC2EmSt5arrayIPKfLm3EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef byval(%"struct.std::array.118") align 8 %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 20 uses
  store i64 %1, ptr %0, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = mul i64 %1, 3                            ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4611686018427387903
  %i.e = mul i64 %1, 12
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #23 ; 7 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !98
  %i.h = icmp ugt i64 %1, 1
  br i1 %i.h, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, label %.split.i, !prof !68

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 2                 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !98
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %i.i, i64 %.idx.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.l = load i64, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.k, i64 %.idx.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %.idx18.i = shl i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx18.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.o, i64 %.idx.i, i1 false)
  br label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

.split.i:                                         ; preds = %bb.a
  %i.q = icmp eq i64 %1, 1
  br i1 %i.q, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i, label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i:     ; preds = %.split.i
  %i.r = load ptr, ptr %2, align 8, !tbaa !98
  %i.s = load float, ptr %i.r, align 4, !tbaa !114
  store float %i.s, ptr %i.g, align 4, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.v = load i64, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.v
  %i.x = load float, ptr %i.u, align 4, !tbaa !114
  store float %i.x, ptr %i.w, align 4, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !98
  %.idx17.i = shl i64 %i.v, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx17.i
  %i.ab = load float, ptr %i.z, align 4, !tbaa !114
  store float %i.ab, ptr %i.aa, align 4, !tbaa !114
  br label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit: ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, %.split.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 %1, ptr %i.ac, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ae = mul i64 %1, 6
  %.inv.i.i = icmp sgt i64 %i.c, -1
  %i.af = select i1 %.inv.i.i, i64 %i.ae, i64 -1
  %i.ag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #23
          to label %.noexc unwind label %bb.b     ; 9 uses

.noexc:                                           ; preds = %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !76
  %.not.i = icmp eq i64 %1, 0
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !84 ; 5 uses
  br i1 %.not.i, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %iter.check

iter.check:                                       ; preds = %.noexc
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.split.i12.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ah = add i64 %1, -1                          ; 2 uses
  %i.ai = and i64 %i.ah, 65535
  %i.aj = icmp eq i64 %i.ai, 65535
  %i.ak = icmp ugt i64 %i.ah, 65535
  %i.al = or i1 %i.aj, %i.ak
  br i1 %i.al, label %.split.i12.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check40 = icmp ult i64 %1, 16
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %1, 12
  %n.vec = and i64 %1, 131056                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <8 x i16> %vec.ind, ptr %i.an, align 2, !tbaa !39
  store <8 x i16> %step.add, ptr %i.ao, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %iter.check62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.split.i12.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec41 = and i64 %1, 131068                   ; 3 uses
  %i.aq = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind43 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next45, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index42
  store <4 x i16> %vec.ind43, ptr %i.ar, align 2, !tbaa !39
  %index.next44 = add nuw i64 %index42, 4         ; 2 uses
  %vec.ind.next45 = add <4 x i16> %vec.ind43, splat (i16 4)
  %i.as = icmp eq i64 %index.next44, %n.vec41
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !367

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %1, %n.vec41
  br i1 %cmp.n46, label %iter.check62, label %.split.i12.preheader

.split.i12.preheader:                             ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec41, %vec.epilog.middle.block ]
  br label %.split.i12

iter.check62:                                     ; preds = %.split.i12, %vec.epilog.middle.block, %middle.block
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.pre ; 3 uses
  %min.iters.check48 = icmp ult i64 %1, 4
  br i1 %min.iters.check48, label %vec.epilog.scalar.ph63.preheader, label %vector.scevcheck47

vector.scevcheck47:                               ; preds = %iter.check62
  %i.au = add i64 %1, -1                          ; 2 uses
  %i.av = and i64 %i.au, 65535
  %i.aw = icmp eq i64 %i.av, 65535
  %i.ax = icmp ugt i64 %i.au, 65535
  %i.ay = or i1 %i.aw, %i.ax
  br i1 %i.ay, label %vec.epilog.scalar.ph63.preheader, label %vector.main.loop.iter.check49

vector.main.loop.iter.check49:                    ; preds = %vector.scevcheck47
  %min.iters.check50 = icmp ult i64 %1, 16
  br i1 %min.iters.check50, label %vec.epilog.ph66, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check49
  %i.az = and i64 %1, 12
  %n.vec52 = and i64 %1, 131056                   ; 4 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body53 ] ; 2 uses
  %vec.ind55 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph51 ], [ %vec.ind.next58, %vector.body53 ] ; 3 uses
  %step.add56 = add <8 x i16> %vec.ind55, splat (i16 8)
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index54 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <8 x i16> %vec.ind55, ptr %i.ba, align 2, !tbaa !39
  store <8 x i16> %step.add56, ptr %i.bb, align 2, !tbaa !39
  %index.next57 = add nuw i64 %index54, 16        ; 2 uses
  %vec.ind.next58 = add <8 x i16> %vec.ind55, splat (i16 16)
  %i.bc = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.bc, label %middle.block59, label %vector.body53, !llvm.loop !368

middle.block59:                                   ; preds = %vector.body53
  %cmp.n60 = icmp eq i64 %1, %n.vec52
  br i1 %cmp.n60, label %iter.check94, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block59
  %min.epilog.iters.check65 = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check65, label %vec.epilog.scalar.ph63.preheader, label %vec.epilog.ph66, !prof !158

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check49, %vec.epilog.iter.check64
  %vec.epilog.resume.val61 = phi i64 [ %n.vec52, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check49 ] ; 2 uses
  %n.vec67 = and i64 %1, 131068                   ; 3 uses
  %i.bd = trunc i64 %vec.epilog.resume.val61 to i16
  %broadcast.splatinsert68 = insertelement <4 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat69 = shufflevector <4 x i16> %broadcast.splatinsert68, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction70 = or disjoint <4 x i16> %broadcast.splat69, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body71

vec.epilog.vector.body71:                         ; preds = %vec.epilog.vector.body71, %vec.epilog.ph66
  %index72 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph66 ], [ %index.next74, %vec.epilog.vector.body71 ] ; 2 uses
  %vec.ind73 = phi <4 x i16> [ %induction70, %vec.epilog.ph66 ], [ %vec.ind.next75, %vec.epilog.vector.body71 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index72
  store <4 x i16> %vec.ind73, ptr %i.be, align 2, !tbaa !39
  %index.next74 = add nuw i64 %index72, 4         ; 2 uses
  %vec.ind.next75 = add <4 x i16> %vec.ind73, splat (i16 4)
  %i.bf = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.bf, label %vec.epilog.middle.block76, label %vec.epilog.vector.body71, !llvm.loop !369

vec.epilog.middle.block76:                        ; preds = %vec.epilog.vector.body71
  %cmp.n77 = icmp eq i64 %1, %n.vec67
  br i1 %cmp.n77, label %iter.check94, label %vec.epilog.scalar.ph63.preheader

vec.epilog.scalar.ph63.preheader:                 ; preds = %vector.scevcheck47, %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block76
  %indvars.iv.1.i.ph = phi i64 [ 0, %iter.check62 ], [ 0, %vector.scevcheck47 ], [ %n.vec52, %vec.epilog.iter.check64 ], [ %n.vec67, %vec.epilog.middle.block76 ]
  br label %vec.epilog.scalar.ph63

vec.epilog.scalar.ph63:                           ; preds = %vec.epilog.scalar.ph63.preheader, %vec.epilog.scalar.ph63
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %vec.epilog.scalar.ph63 ], [ %indvars.iv.1.i.ph, %vec.epilog.scalar.ph63.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.1.i
  %i.bh = trunc nuw i64 %indvars.iv.1.i to i16
  store i16 %i.bh, ptr %i.bg, align 2, !tbaa !39
  %indvars.iv.next.1.i = add i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.bi = and i64 %indvars.iv.next.1.i, 65535
  %i.bj = icmp samesign ugt i64 %1, %i.bi
  br i1 %i.bj, label %vec.epilog.scalar.ph63, label %iter.check94, !llvm.loop !370

iter.check94:                                     ; preds = %vec.epilog.scalar.ph63, %vec.epilog.middle.block76, %middle.block59
  %.idx.i13 = shl i64 %.pre, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i13 ; 3 uses
  %min.iters.check80 = icmp ult i64 %1, 4
  br i1 %min.iters.check80, label %vec.epilog.scalar.ph95.preheader, label %vector.scevcheck79

vector.scevcheck79:                               ; preds = %iter.check94
  %3 = add i64 %1, -1                             ; 2 uses
  %i.bl = and i64 %3, 65535
  %i.bm = icmp eq i64 %i.bl, 65535
  %4 = icmp ugt i64 %3, 65535
  %i.bn = or i1 %i.bm, %4
  br i1 %i.bn, label %vec.epilog.scalar.ph95.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %vector.scevcheck79
  %min.iters.check82 = icmp ult i64 %1, 16
  br i1 %min.iters.check82, label %vec.epilog.ph98, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check81
  %i.bo = and i64 %1, 12
  %n.vec84 = and i64 %1, 131056                   ; 4 uses
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next89, %vector.body85 ] ; 2 uses
  %vec.ind87 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph83 ], [ %vec.ind.next90, %vector.body85 ] ; 3 uses
  %step.add88 = add <8 x i16> %vec.ind87, splat (i16 8)
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %index86 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <8 x i16> %vec.ind87, ptr %i.bp, align 2, !tbaa !39
  store <8 x i16> %step.add88, ptr %i.bq, align 2, !tbaa !39
  %index.next89 = add nuw i64 %index86, 16        ; 2 uses
  %vec.ind.next90 = add <8 x i16> %vec.ind87, splat (i16 16)
  %i.br = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.br, label %middle.block91, label %vector.body85, !llvm.loop !371

middle.block91:                                   ; preds = %vector.body85
  %cmp.n92 = icmp eq i64 %1, %n.vec84
  br i1 %cmp.n92, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.iter.check96

vec.epilog.iter.check96:                          ; preds = %middle.block91
  %min.epilog.iters.check97 = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check97, label %vec.epilog.scalar.ph95.preheader, label %vec.epilog.ph98, !prof !158

vec.epilog.ph98:                                  ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check96
  %vec.epilog.resume.val93 = phi i64 [ %n.vec84, %vec.epilog.iter.check96 ], [ 0, %vector.main.loop.iter.check81 ] ; 2 uses
  %n.vec99 = and i64 %1, 131068                   ; 3 uses
  %i.bs = trunc i64 %vec.epilog.resume.val93 to i16
  %broadcast.splatinsert100 = insertelement <4 x i16> poison, i16 %i.bs, i64 0
  %broadcast.splat101 = shufflevector <4 x i16> %broadcast.splatinsert100, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction102 = or disjoint <4 x i16> %broadcast.splat101, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body103

vec.epilog.vector.body103:                        ; preds = %vec.epilog.vector.body103, %vec.epilog.ph98
  %index104 = phi i64 [ %vec.epilog.resume.val93, %vec.epilog.ph98 ], [ %index.next106, %vec.epilog.vector.body103 ] ; 2 uses
  %vec.ind105 = phi <4 x i16> [ %induction102, %vec.epilog.ph98 ], [ %vec.ind.next107, %vec.epilog.vector.body103 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %index104
  store <4 x i16> %vec.ind105, ptr %i.bt, align 2, !tbaa !39
  %index.next106 = add nuw i64 %index104, 4       ; 2 uses
  %vec.ind.next107 = add <4 x i16> %vec.ind105, splat (i16 4)
  %i.bu = icmp eq i64 %index.next106, %n.vec99
  br i1 %i.bu, label %vec.epilog.middle.block108, label %vec.epilog.vector.body103, !llvm.loop !372

vec.epilog.middle.block108:                       ; preds = %vec.epilog.vector.body103
  %cmp.n109 = icmp eq i64 %1, %n.vec99
  br i1 %cmp.n109, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.scalar.ph95.preheader

vec.epilog.scalar.ph95.preheader:                 ; preds = %vector.scevcheck79, %iter.check94, %vec.epilog.iter.check96, %vec.epilog.middle.block108
  %indvars.iv.2.i.ph = phi i64 [ 0, %iter.check94 ], [ 0, %vector.scevcheck79 ], [ %n.vec84, %vec.epilog.iter.check96 ], [ %n.vec99, %vec.epilog.middle.block108 ]
  br label %vec.epilog.scalar.ph95

vec.epilog.scalar.ph95:                           ; preds = %vec.epilog.scalar.ph95.preheader, %vec.epilog.scalar.ph95
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %vec.epilog.scalar.ph95 ], [ %indvars.iv.2.i.ph, %vec.epilog.scalar.ph95.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.2.i
  %i.bw = trunc nuw i64 %indvars.iv.2.i to i16
  store i16 %i.bw, ptr %i.bv, align 2, !tbaa !39
  %indvars.iv.next.2.i = add i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.bx = and i64 %indvars.iv.next.2.i, 65535
  %i.by = icmp samesign ugt i64 %1, %i.bx
  br i1 %i.by, label %vec.epilog.scalar.ph95, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, !llvm.loop !373

.split.i12:                                       ; preds = %.split.i12.preheader, %.split.i12
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i12 ], [ %indvars.iv.i.ph, %.split.i12.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ca = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.ca, ptr %i.bz, align 2, !tbaa !39
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.cb = and i64 %indvars.iv.next.i, 65535
  %i.cc = icmp ugt i64 %1, %i.cb
  br i1 %i.cc, label %.split.i12, label %iter.check62, !llvm.loop !374

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit:       ; preds = %vec.epilog.scalar.ph95, %middle.block91, %vec.epilog.middle.block108, %.noexc
  %i.cd = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br i1 %i.cd, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us, label %bb.c

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %.split.us.sink.split

.split.us.sink.split:                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit, %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1, %.noexc14.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.b:                                             ; preds = %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

bb.c:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !98
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !98
  %.idx = shl nuw nsw i64 %.pre, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx ; 2 uses
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre, i1 true)
  %i.ci = shl nuw nsw i64 %i.ch, 1
  %i.cj = xor i64 %i.ci, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.cg, i64 noundef %i.cj, ptr nonnull %i.a)
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.cg, ptr nonnull %i.a)
          to label %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit unwind label %bb.f

_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit: ; preds = %.noexc14
  %.pre23 = load i64, ptr %i.ac, align 8, !tbaa !84 ; 4 uses
  %.pre28 = shl nuw nsw i64 %.pre23, 1
  %.pre22 = load ptr, ptr %i.ad, align 8, !tbaa !76
  %.pre21 = load ptr, ptr %i.b, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ck = load i64, ptr %0, align 8, !tbaa !106
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.pre21, i64 %i.ck
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !98
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.pre22, i64 %.pre23 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.pre28 ; 2 uses
  %.not.i.i.1 = icmp eq i64 %.pre23, 0
  br i1 %.not.i.i.1, label %.split.us.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit
  %i.co = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre23, i1 true)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = xor i64 %i.cp, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, i64 noundef %i.cq, ptr nonnull %i.a)
          to label %.noexc14.1 unwind label %bb.f

.noexc14.1:                                       ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr nonnull %i.a)
          to label %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1 unwind label %bb.f

_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1: ; preds = %.noexc14.1
  %.pre24 = load ptr, ptr %i.b, align 8, !tbaa !98
  %.pre25 = load i64, ptr %0, align 8, !tbaa !106
  %.pre26 = load ptr, ptr %i.ad, align 8, !tbaa !76
  %.pre27 = load i64, ptr %i.ac, align 8, !tbaa !84 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.idx33 = shl i64 %.pre25, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre24, i64 %.idx33
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !98
  %.idx34 = shl i64 %.pre27, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre26, i64 %.idx34 ; 3 uses
  %.idx.2 = shl nuw nsw i64 %.pre27, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.2 ; 2 uses
  %.not.i.i.2 = icmp eq i64 %.pre27, 0
  br i1 %.not.i.i.2, label %.split.us, label %bb.e

bb.e:                                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1
  %i.cu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre27, i1 true)
  %i.cv = shl nuw nsw i64 %i.cu, 1
  %i.cw = xor i64 %i.cv, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, i64 noundef %i.cw, ptr nonnull %i.a)
          to label %.noexc14.2 unwind label %bb.f

.noexc14.2:                                       ; preds = %bb.e
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr nonnull %i.a)
          to label %.split.us unwind label %bb.f

bb.f:                                             ; preds = %.noexc14.2, %bb.e, %.noexc14.1, %bb.d, %.noexc14, %bb.c
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cy = load ptr, ptr %i.ad, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.b ], [ %i.cx, %bb.f ], [ %i.cx, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i ]
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i16, label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #20
  br label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit

_ZN8k_d_tree6PointsILh3EfED2Ev.exit:              ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.120", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SB_SC_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEESB_SB_SB_SC_.exit
  %i.g = icmp eq i64 %i.bi, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !375

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.023.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_RSC_(ptr noundef %0, ptr noundef %.023.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SB_RSC_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SB_RSC_.exit.i.i ], [ %.023.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -2 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39   ; 2 uses
  %i.j = load i16, ptr %0, align 2, !tbaa !39
  store i16 %i.j, ptr %i.h, align 2, !tbaa !39
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !98     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 2 uses
  %i.r = shl i64 %.030.i.i.i.i, 1                 ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [2 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %i.w = load i16, ptr %i.t, align 2, !tbaa !39
  %i.x = load i16, ptr %i.v, align 2, !tbaa !39
  %i.y = zext i16 %i.w to i64
end_hunk_2
begin_hunk_3_@_ZSt11__make_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_RSC_:bb.a
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !114
  %i.bp = zext i16 %i.bl to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !114
  %i.bs = fcmp nsz olt float %i.bo, %i.br
  %i.bt = or disjoint i64 %i.bf, 1
  %spec.select.i = select i1 %i.bs, i64 %i.bt, i64 %i.bg ; 4 uses
  %i.bu = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !39
  %i.bw = getelementptr inbounds [2 x i8], ptr %0, i64 %.030.i
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !39
  %i.bx = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bx, label %bb.f, label %._crit_edge.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %bb.f, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.by = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  %i.bz = load i16, ptr %i.n, align 2, !tbaa !39
  store i16 %i.bz, ptr %i.o, align 2, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ca = icmp sgt i64 %.128.i, %.014
  br i1 %i.ca, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SC_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.cb = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !98 ; 2 uses
  %i.cc = zext i16 %i.bc to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.01317.i.i = phi i64 [ %.128.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.j ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !39 ; 2 uses
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !114
  %i.ck = fcmp nsz olt float %i.cj, %i.ce
  br i1 %i.ck, label %bb.j, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SC_SC_T1_T2_.exit

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01317.i.i
  store i16 %i.cg, ptr %i.cl, align 2, !tbaa !39
  %i.cm = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.cm, label %bb.i, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SC_SC_T1_T2_.exit, !llvm.loop !12

_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SC_SC_T1_T2_.exit: ; preds = %bb.i, %bb.j, %bb.h
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.h ], [ %.018.i.i, %bb.j ], [ %.01317.i.i, %bb.i ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i16 %i.bc, ptr %i.cn, align 2, !tbaa !39
  %.not = icmp eq i64 %.014, 0
  %i.co = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !383

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SC_SC_T1_T2_.exit.us, %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SC_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8k_d_tree6KdTreeILh3EftEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8k_d_tree6KdTreeILh3EftEEEvPT_.exit
  %.05 = phi ptr [ %i.s, %_ZSt8_DestroyIN8k_d_tree6KdTreeILh3EftEEEvPT_.exit ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i:         ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN8k_d_tree6KdTreeILh3EftEEEvPT_.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #20
  br label %_ZSt8_DestroyIN8k_d_tree6KdTreeILh3EftEEEvPT_.exit

_ZSt8_DestroyIN8k_d_tree6KdTreeILh3EftEEEvPT_.exit: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i.i, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.s, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !386

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN8k_d_tree6KdTreeILh3EftEEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_test_k_d_tree.cpp() #15 section ".text.startup" {
bb.a:
  %0 = alloca %"class.Catch::Detail::unique_ptr", align 8 ; 5 uses
  %1 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %2 = alloca %"struct.Catch::NameAndTags", align 8 ; 7 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5Catch15makeTestInvokerEPFvvE(ptr dead_on_unwind nonnull writable sret(%"class.Catch::Detail::unique_ptr") align 8 %0, ptr noundef nonnull @_ZL22CATCH2_INTERNAL_TEST_0v)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr @.str, ptr %1, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 58, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1) #19
  %i.b = load ptr, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8
  store ptr %i.b, ptr %2, align 8, !tbaa !130
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !131
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.2, ptr %i.e, align 8, !tbaa !130
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !131
  call void @_ZN5Catch7AutoRegC1ENS_6Detail10unique_ptrINS_12ITestInvokerEEERKNS_14SourceLineInfoENS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_114autoRegistrar1E, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.2, i64 0, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !390    ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %__cxx_global_var_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #19, !inline_history !387
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b
  %i.k = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN12_GLOBAL__N_114autoRegistrar1E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !41}
!5 = distinct !{!5, !41}
!6 = distinct !{!6, !41}
!7 = distinct !{!7, !41}
!8 = distinct !{!8, !41}
!9 = distinct !{!9, !41}
!10 = distinct !{!10, !41}
!11 = distinct !{!11, !41}
!12 = distinct !{!12, !41}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any pointer", !18, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"long", !18, i64 0}
!25 = !{!"_ZTSN5Catch14SourceLineInfoE", !23, i64 0, !24, i64 8}
!26 = !{!25, !23, i64 0}
!27 = !{!25, !24, i64 8}
!28 = !{!"any p2 pointer", !22, i64 0}
!29 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !28, i64 0}
!30 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!31 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !30, i64 0}
!32 = !{!"float", !18, i64 0}
!33 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !32, i64 0, !24, i64 8}
!34 = !{!"_ZTSSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !29, i64 0, !24, i64 8, !31, i64 16, !24, i64 24, !33, i64 32, !30, i64 48}
!35 = !{!34, !29, i64 0}
!36 = !{!34, !24, i64 8}
!37 = !{!33, !32, i64 0}
!38 = !{!"short", !18, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!31, !30, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"p1 _ZTSN8k_d_tree6KdTreeILh3EttEE", !22, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EttEESaIS2_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !42, i64 8}
!46 = !{!43, !42, i64 16}
!47 = !{!34, !30, i64 16}
!48 = !{!"_ZTS12PseudoRandom", !19, i64 0}
!49 = !{!48, !19, i64 0}
!50 = !{!"_ZTSSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !29, i64 0, !24, i64 8, !31, i64 16, !24, i64 24, !33, i64 32, !30, i64 48}
!51 = !{!50, !29, i64 0}
!52 = !{!50, !24, i64 8}
!53 = !{!"p1 _ZTS12PseudoRandom", !22, i64 0}
!54 = !{!"p1 _ZTS12ObjectVectorILh3EftE", !22, i64 0}
!55 = !{!"p1 _ZTSN8k_d_tree14DynamicKdTreesILh3EftEE", !22, i64 0}
!56 = !{!18, !18, i64 0}
!57 = !{i64 0, i64 12, !56}
!58 = !{!"p1 _ZTSN12ObjectVectorILh3EftE5EntryE", !22, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN12ObjectVectorILh3EftE5EntryESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 8}
!61 = !{!59, !58, i64 16}
!62 = !{!59, !58, i64 0}
!63 = !{i64 0, i64 12, !56, i64 12, i64 2, !39}
!64 = !{!58, !58, i64 0}
!65 = !{!"_ZTSSt5arrayIfLm3EE", !18, i64 0}
!66 = !{!"_ZTSN12ObjectVectorILh3EftE5EntryE", !65, i64 0, !38, i64 12}
!67 = !{!66, !38, i64 12}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = !{!50, !30, i64 16}
!70 = !{!"p1 _ZTSN8k_d_tree6KdTreeILh3EftEE", !22, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!71, !70, i64 0}
!73 = !{!71, !70, i64 8}
!74 = !{!71, !70, i64 16}
!75 = !{!"p1 short", !22, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !75, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJPtSt14default_deleteIA_tEEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJPtSt14default_deleteIA_tEEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implItSt14default_deleteIA_tEE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataItSt14default_deleteIA_tELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIA_tSt14default_deleteIS0_EE", !81, i64 0}
!83 = !{!"_ZTSN8k_d_tree6PointsILh3EtEE", !24, i64 0, !82, i64 8}
!84 = !{!83, !24, i64 0}
!85 = !{!"p1 long", !22, i64 0}
!86 = !{!"_ZTSSt18_Bit_iterator_base", !85, i64 0, !19, i64 8}
!87 = !{!86, !85, i64 0}
!88 = !{!"_ZTSSt13_Bit_iterator", !86, i64 0}
!89 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !88, i64 0, !88, i64 16, !85, i64 32}
!90 = !{!89, !85, i64 32}
!91 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EttEESaIS2_EE12_Vector_implE", !43, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIN8k_d_tree6KdTreeILh3EttEESaIS2_EE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorIN8k_d_tree6KdTreeILh3EttEESaIS2_EE", !92, i64 0}
!94 = !{!"_ZTSSt13unordered_mapItN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryESt4hashItESt8equal_toItESaISt4pairIKtS3_EEE", !34, i64 0}
!95 = !{!"_ZTSN8k_d_tree14DynamicKdTreesILh3EttEE", !93, i64 0, !94, i64 24, !24, i64 80, !24, i64 88}
!96 = !{!95, !24, i64 80}
!97 = !{!"p1 float", !22, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!"_ZTSSt10_Head_baseILm0EPfLb0EE", !97, i64 0}
!100 = !{!"_ZTSSt11_Tuple_implILm0EJPfSt14default_deleteIA_fEEE", !99, i64 0}
!101 = !{!"_ZTSSt5tupleIJPfSt14default_deleteIA_fEEE", !100, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_implIfSt14default_deleteIA_fEE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_dataIfSt14default_deleteIA_fELb1ELb1EE", !102, i64 0}
!104 = !{!"_ZTSSt10unique_ptrIA_fSt14default_deleteIS0_EE", !103, i64 0}
!105 = !{!"_ZTSN8k_d_tree6PointsILh3EfEE", !24, i64 0, !104, i64 8}
!106 = !{!105, !24, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE12_Vector_implE", !71, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE", !107, i64 0}
!109 = !{!"_ZTSSt6vectorIN8k_d_tree6KdTreeILh3EftEESaIS2_EE", !108, i64 0}
!110 = !{!"_ZTSSt13unordered_mapItN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryESt4hashItESt8equal_toItESaISt4pairIKtS3_EEE", !50, i64 0}
!111 = !{!"_ZTSN8k_d_tree14DynamicKdTreesILh3EftEE", !109, i64 0, !110, i64 24, !24, i64 80, !24, i64 88}
!112 = !{!111, !24, i64 80}
!113 = !{}
!114 = !{!32, !32, i64 0}
!115 = !{!"_ZTSSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !29, i64 0, !24, i64 8, !31, i64 16, !24, i64 24, !33, i64 32, !30, i64 48}
!116 = !{!115, !29, i64 0}
!117 = !{!115, !24, i64 8}
!118 = !{i64 8}
!119 = !{!115, !24, i64 24}
!120 = !{!30, !30, i64 0}
!121 = !{!"bool", !18, i64 0}
!122 = !{!"_ZTSN5Catch20ITransientExpressionE", !121, i64 8, !121, i64 9}
!123 = !{!122, !121, i64 8}
!124 = !{!122, !121, i64 9}
!125 = !{!"vtable pointer", !17, i64 0}
!126 = !{!125, !125, i64 0}
!127 = !{!"_ZTSN5Catch9StringRefE", !23, i64 0, !24, i64 8}
!128 = !{!"_ZTSN5Catch10BinaryExprImiEE", !122, i64 0, !24, i64 16, !127, i64 24, !19, i64 40}
!129 = !{!128, !24, i64 16}
!130 = !{!23, !23, i64 0}
!131 = !{!24, !24, i64 0}
!132 = !{!128, !19, i64 40}
!133 = !{!"_ZTSN5Catch17ResultDisposition5FlagsE", !18, i64 0}
!134 = !{!"_ZTSN5Catch13AssertionInfoE", !127, i64 0, !25, i64 16, !127, i64 32, !133, i64 48}
!135 = !{!"_ZTSN5Catch17AssertionReactionE", !121, i64 0, !121, i64 1, !121, i64 2}
!136 = !{!"p1 _ZTSN5Catch14IResultCaptureE", !22, i64 0}
!137 = !{!"_ZTSN5Catch16AssertionHandlerE", !134, i64 0, !135, i64 56, !121, i64 59, !136, i64 64}
!138 = !{!137, !121, i64 59}
!139 = !{i8 0, i8 2}
!140 = !{!137, !136, i64 64}
!141 = !{!"p1 _ZTSSt13unordered_setItSt4hashItESt8equal_toItESaItEE", !22, i64 0}
!142 = !{!70, !70, i64 0}
!143 = !{!115, !30, i64 16}
!144 = !{!50, !24, i64 24}
!145 = !{!"_ZTSN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryE", !18, i64 0, !38, i64 2}
!146 = !{!"_ZTSSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEE", !38, i64 0, !145, i64 2}
!147 = !{!111, !24, i64 88}
!148 = !{!86, !19, i64 8}
!149 = !{!"_ZTSN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryE", !18, i64 0, !38, i64 2}
!150 = !{!"_ZTSSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEE", !38, i64 0, !149, i64 2}
!151 = !{!33, !24, i64 8}
!152 = !{!34, !24, i64 24}
!153 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!154 = !{!34, !30, i64 48}
!155 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!156 = !{!"llvm.loop.isvectorized", i32 1}
!157 = !{!"llvm.loop.unroll.runtime.disable"}
!158 = !{!"branch_weights", i32 4, i32 12}
!159 = !{!"_ZTSN8k_d_tree13SortedIndicesILh3EEE", !83, i64 0}
!160 = !{!"_ZTSN8k_d_tree13SortedIndicesILh3EE11SplitResultE", !159, i64 0, !159, i64 16, !38, i64 32}
!161 = !{!160, !38, i64 32}
!162 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!163 = !{!95, !24, i64 88}
!164 = !{i64 0, i64 4, !114, i64 8, i64 8, !131}
!165 = !{!50, !30, i64 48}
!166 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!167 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !166, i64 0, !24, i64 8, !18, i64 16}
!168 = !{!167, !23, i64 0}
!169 = distinct !{!169, !41}
!170 = distinct !{!170, !41}
end_hunk_3
