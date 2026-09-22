Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/activeobjectmgr?download=true
inline.NumInlined: 1440
inline.NumDeleted: 708
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
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
  store <8 x i16> %vec.ind162, ptr %i.ag, align 2, !tbaa !107
  store <8 x i16> %step.add163, ptr %i.ah, align 2, !tbaa !107
  %index.next164 = add nuw i64 %index161, 16      ; 2 uses
  %vec.ind.next165 = add <8 x i16> %vec.ind162, splat (i16 16)
  %i.ai = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.ai, label %middle.block166, label %vector.body160, !llvm.loop !316

middle.block166:                                  ; preds = %vector.body160
  %cmp.n167 = icmp eq i64 %i.h, %n.vec159
  br i1 %cmp.n167, label %iter.check200, label %vec.epilog.iter.check171

vec.epilog.iter.check171:                         ; preds = %middle.block166
  %i.aj = and i64 %i.d, 24
  %min.epilog.iters.check172 = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check172, label %vec.epilog.scalar.ph170.preheader, label %vec.epilog.ph173, !prof !175

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
  store <4 x i16> %vec.ind180, ptr %i.al, align 2, !tbaa !107
  %index.next181 = add nuw i64 %index179, 4       ; 2 uses
  %vec.ind.next182 = add <4 x i16> %vec.ind180, splat (i16 4)
  %i.am = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.am, label %vec.epilog.middle.block183, label %vec.epilog.vector.body178, !llvm.loop !317

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
  store i16 %i.ao, ptr %i.an, align 2, !tbaa !107
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next.1.i, %i.h
  br i1 %exitcond130.not, label %iter.check200, label %vec.epilog.scalar.ph170, !llvm.loop !318

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
  store <8 x i16> %vec.ind193, ptr %i.aq, align 2, !tbaa !107
  store <8 x i16> %step.add194, ptr %i.ar, align 2, !tbaa !107
  %index.next195 = add nuw i64 %index192, 16      ; 2 uses
  %vec.ind.next196 = add <8 x i16> %vec.ind193, splat (i16 16)
  %i.as = icmp eq i64 %index.next195, %n.vec190
  br i1 %i.as, label %middle.block197, label %vector.body191, !llvm.loop !319

middle.block197:                                  ; preds = %vector.body191
  %cmp.n198 = icmp eq i64 %i.h, %n.vec190
  br i1 %cmp.n198, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block197
  %i.at = and i64 %i.d, 24
  %min.epilog.iters.check203 = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check203, label %vec.epilog.scalar.ph201.preheader, label %vec.epilog.ph204, !prof !175

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
  store <4 x i16> %vec.ind211, ptr %i.av, align 2, !tbaa !107
  %index.next212 = add nuw i64 %index210, 4       ; 2 uses
  %vec.ind.next213 = add <4 x i16> %vec.ind211, splat (i16 4)
  %i.aw = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.aw, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !320

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
  store i16 %i.ay, ptr %i.ax, align 2, !tbaa !107
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next.2.i, %i.h
  br i1 %exitcond131.not, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.scalar.ph201, !llvm.loop !321

.split.i:                                         ; preds = %.split.i.preheader, %.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i ], [ %indvars.iv.i.ph, %.split.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ba = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.ba, ptr %i.az, align 2, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.h
  br i1 %exitcond.not, label %iter.check169, label %.split.i, !llvm.loop !322

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit:       ; preds = %vec.epilog.scalar.ph201, %vec.epilog.middle.block214, %middle.block197
  %i.bb = mul nuw nsw i64 %i.h, %i.c
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.bb ; 2 uses
  %.not147 = icmp eq i64 %i.h, 1
  br i1 %.not147, label %bb.d, label %bb.b, !prof !179

bb.b:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bc, ptr align 2 %i.f, i64 %.idx128, i1 false)
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.c:                                             ; preds = %bb.a
  %i.bd = mul nuw nsw i64 %i.h, 6
  %i.be = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #29
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.d:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  %i.bf = load i16, ptr %i.f, align 2, !tbaa !107
  store i16 %i.bf, ptr %i.bc, align 2, !tbaa !107
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.054117 = phi ptr [ %i.bx, %.lr.ph.new ], [ %.054117.unr, %.prol.loopexit ] ; 3 uses
  %i.bg = load i16, ptr %.054117, align 2, !tbaa !107 ; 2 uses
  %i.bh = lshr i16 %i.bg, 6
  %.zext114 = zext nneg i16 %i.bh to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext114 ; 2 uses
  %i.bj = and i16 %i.bg, 63
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !111
  %i.bn = or i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !111
  %i.bo = getelementptr inbounds nuw i8, ptr %.054117, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !107 ; 2 uses
  %i.bq = lshr i16 %i.bp, 6
  %.zext114.1 = zext nneg i16 %i.bq to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext114.1 ; 2 uses
  %i.bs = and i16 %i.bp, 63
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !111
  %i.bw = or i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !111
  %i.bx = getelementptr inbounds nuw i8, ptr %.054117, i64 4 ; 2 uses
  %.not.1 = icmp eq ptr %i.bx, %i.i
  br i1 %.not.1, label %iter.check, label %.lr.ph.new, !llvm.loop !323

_ZSt4copyIPKtPtET0_T_S4_S3_.exit:                 ; preds = %bb.c, %bb.d, %bb.b
  %i.by = phi ptr [ %i.x, %bb.d ], [ %i.be, %bb.c ], [ %i.x, %bb.b ] ; 5 uses
  %i.bz = load i64, ptr %1, align 8, !tbaa !132   ; 2 uses
  %i.ca = xor i64 %i.h, -1
  %i.cb = add i64 %i.bz, %i.ca                    ; 26 uses
  %i.cc = mul i64 %i.cb, 3
  %i.cd = mul i64 %i.cb, 6
  %.inv.i.i = icmp sgt i64 %i.cc, -1
  %i.ce = select i1 %.inv.i.i, i64 %i.cd, i64 -1
  %i.cf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ce) #29
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
  store <8 x i16> %vec.ind224, ptr %i.cn, align 2, !tbaa !107
  store <8 x i16> %step.add225, ptr %i.co, align 2, !tbaa !107
  %index.next226 = add nuw i64 %index223, 16      ; 2 uses
  %vec.ind.next227 = add <8 x i16> %vec.ind224, splat (i16 16)
  %i.cp = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.cp, label %middle.block228, label %vector.body222, !llvm.loop !324

middle.block228:                                  ; preds = %vector.body222
  %cmp.n229 = icmp eq i64 %i.cb, %n.vec221
  br i1 %cmp.n229, label %iter.check263, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block228
  %min.epilog.iters.check234 = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check234, label %.split.i64.preheader, label %vec.epilog.ph235, !prof !175

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
  store <4 x i16> %vec.ind242, ptr %i.cr, align 2, !tbaa !107
  %index.next243 = add nuw i64 %index241, 4       ; 2 uses
  %vec.ind.next244 = add <4 x i16> %vec.ind242, splat (i16 4)
  %i.cs = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.cs, label %vec.epilog.middle.block245, label %vec.epilog.vector.body240, !llvm.loop !325

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body240
  %cmp.n246 = icmp eq i64 %i.cb, %n.vec236
  br i1 %cmp.n246, label %iter.check263, label %.split.i64.preheader

.split.i64.preheader:                             ; preds = %vector.scevcheck, %iter.check231, %vec.epilog.iter.check233, %vec.epilog.middle.block245
  %indvars.iv.i65.ph = phi i64 [ 0, %iter.check231 ], [ 0, %vector.scevcheck ], [ %n.vec221, %vec.epilog.iter.check233 ], [ %n.vec236, %vec.epilog.middle.block245 ]
  br label %.split.i64

iter.check263:                                    ; preds = %.split.i64, %vec.epilog.middle.block245, %middle.block228
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %smax249 = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 1) ; 11 uses
  %min.iters.check250 = icmp slt i64 %i.cb, 4
  br i1 %min.iters.check250, label %vec.epilog.scalar.ph264.preheader, label %vector.scevcheck248

vector.scevcheck248:                              ; preds = %iter.check263
  %i.cu = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.cv = and i64 %i.cu, 65535
  %i.cw = icmp eq i64 %i.cv, 65535
  %i.cx = icmp ugt i64 %i.cu, 65535
  %i.cy = or i1 %i.cw, %i.cx
  br i1 %i.cy, label %vec.epilog.scalar.ph264.preheader, label %vector.main.loop.iter.check250

vector.main.loop.iter.check250:                   ; preds = %vector.scevcheck248
  %min.iters.check252 = icmp slt i64 %i.cb, 16
  br i1 %min.iters.check252, label %vec.epilog.ph267, label %vector.ph252

vector.ph252:                                     ; preds = %vector.main.loop.iter.check250
  %i.cz = and i64 %smax249, 12
  %n.vec253 = and i64 %smax249, 131056            ; 4 uses
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next258, %vector.body254 ] ; 2 uses
  %vec.ind256 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph252 ], [ %vec.ind.next259, %vector.body254 ] ; 3 uses
  %step.add257 = add <8 x i16> %vec.ind256, splat (i16 8)
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index255 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <8 x i16> %vec.ind256, ptr %i.da, align 2, !tbaa !107
  store <8 x i16> %step.add257, ptr %i.db, align 2, !tbaa !107
  %index.next258 = add nuw i64 %index255, 16      ; 2 uses
  %vec.ind.next259 = add <8 x i16> %vec.ind256, splat (i16 16)
  %i.dc = icmp eq i64 %index.next258, %n.vec253
  br i1 %i.dc, label %middle.block260, label %vector.body254, !llvm.loop !326

middle.block260:                                  ; preds = %vector.body254
  %cmp.n261 = icmp eq i64 %smax249, %n.vec253
  br i1 %cmp.n261, label %iter.check295, label %vec.epilog.iter.check265

vec.epilog.iter.check265:                         ; preds = %middle.block260
  %min.epilog.iters.check266 = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check266, label %vec.epilog.scalar.ph264.preheader, label %vec.epilog.ph267, !prof !175

vec.epilog.ph267:                                 ; preds = %vector.main.loop.iter.check250, %vec.epilog.iter.check265
  %vec.epilog.resume.val262 = phi i64 [ %n.vec253, %vec.epilog.iter.check265 ], [ 0, %vector.main.loop.iter.check250 ] ; 2 uses
  %n.vec268 = and i64 %smax249, 131068            ; 3 uses
  %i.dd = trunc i64 %vec.epilog.resume.val262 to i16
  %broadcast.splatinsert269 = insertelement <4 x i16> poison, i16 %i.dd, i64 0
  %broadcast.splat270 = shufflevector <4 x i16> %broadcast.splatinsert269, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction271 = or disjoint <4 x i16> %broadcast.splat270, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph267
  %index273 = phi i64 [ %vec.epilog.resume.val262, %vec.epilog.ph267 ], [ %index.next275, %vec.epilog.vector.body272 ] ; 2 uses
  %vec.ind274 = phi <4 x i16> [ %induction271, %vec.epilog.ph267 ], [ %vec.ind.next276, %vec.epilog.vector.body272 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index273
  store <4 x i16> %vec.ind274, ptr %i.de, align 2, !tbaa !107
  %index.next275 = add nuw i64 %index273, 4       ; 2 uses
  %vec.ind.next276 = add <4 x i16> %vec.ind274, splat (i16 4)
  %i.df = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.df, label %vec.epilog.middle.block277, label %vec.epilog.vector.body272, !llvm.loop !327

vec.epilog.middle.block277:                       ; preds = %vec.epilog.vector.body272
  %cmp.n278 = icmp eq i64 %smax249, %n.vec268
  br i1 %cmp.n278, label %iter.check295, label %vec.epilog.scalar.ph264.preheader

vec.epilog.scalar.ph264.preheader:                ; preds = %vector.scevcheck248, %iter.check263, %vec.epilog.iter.check265, %vec.epilog.middle.block277
  %indvars.iv.1.i68.ph = phi i64 [ 0, %iter.check263 ], [ 0, %vector.scevcheck248 ], [ %n.vec253, %vec.epilog.iter.check265 ], [ %n.vec268, %vec.epilog.middle.block277 ]
  br label %vec.epilog.scalar.ph264

vec.epilog.scalar.ph264:                          ; preds = %vec.epilog.scalar.ph264.preheader, %vec.epilog.scalar.ph264
  %indvars.iv.1.i68 = phi i64 [ %indvars.iv.next.1.i69, %vec.epilog.scalar.ph264 ], [ %indvars.iv.1.i68.ph, %vec.epilog.scalar.ph264.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.1.i68
  %i.dh = trunc nuw i64 %indvars.iv.1.i68 to i16
  store i16 %i.dh, ptr %i.dg, align 2, !tbaa !107
  %indvars.iv.next.1.i69 = add i64 %indvars.iv.1.i68, 1 ; 2 uses
  %i.di = and i64 %indvars.iv.next.1.i69, 65535
  %i.dj = icmp samesign ugt i64 %i.cb, %i.di
  br i1 %i.dj, label %vec.epilog.scalar.ph264, label %iter.check295, !llvm.loop !328

iter.check295:                                    ; preds = %vec.epilog.scalar.ph264, %vec.epilog.middle.block277, %middle.block260
  %.idx.i71 = shl nuw nsw i64 %i.cb, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i71 ; 3 uses
  %min.iters.check282 = icmp slt i64 %i.cb, 4
  br i1 %min.iters.check282, label %vec.epilog.scalar.ph296.preheader, label %vector.scevcheck280

vector.scevcheck280:                              ; preds = %iter.check295
  %4 = sub nsw i64 0, %smax249
  %i.dl = and i64 %4, 65535
  %i.dm = icmp eq i64 %i.dl, 0
  %5 = icmp sgt i64 %i.cb, 65536
  %i.dn = or i1 %i.dm, %5
  br i1 %i.dn, label %vec.epilog.scalar.ph296.preheader, label %vector.main.loop.iter.check282

vector.main.loop.iter.check282:                   ; preds = %vector.scevcheck280
  %min.iters.check284 = icmp slt i64 %i.cb, 16
  br i1 %min.iters.check284, label %vec.epilog.ph299, label %vector.ph284

vector.ph284:                                     ; preds = %vector.main.loop.iter.check282
  %i.do = and i64 %smax249, 12
  %n.vec285 = and i64 %smax249, 9223372036854775792 ; 4 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next290, %vector.body286 ] ; 2 uses
  %vec.ind288 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph284 ], [ %vec.ind.next291, %vector.body286 ] ; 3 uses
  %step.add289 = add <8 x i16> %vec.ind288, splat (i16 8)
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %index287 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <8 x i16> %vec.ind288, ptr %i.dp, align 2, !tbaa !107
  store <8 x i16> %step.add289, ptr %i.dq, align 2, !tbaa !107
  %index.next290 = add nuw i64 %index287, 16      ; 2 uses
  %vec.ind.next291 = add <8 x i16> %vec.ind288, splat (i16 16)
  %i.dr = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.dr, label %middle.block292, label %vector.body286, !llvm.loop !329

middle.block292:                                  ; preds = %vector.body286
  %cmp.n293 = icmp eq i64 %smax249, %n.vec285
  br i1 %cmp.n293, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, label %vec.epilog.iter.check297

vec.epilog.iter.check297:                         ; preds = %middle.block292
  %min.epilog.iters.check298 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check298, label %vec.epilog.scalar.ph296.preheader, label %vec.epilog.ph299, !prof !175

vec.epilog.ph299:                                 ; preds = %vector.main.loop.iter.check282, %vec.epilog.iter.check297
  %vec.epilog.resume.val294 = phi i64 [ %n.vec285, %vec.epilog.iter.check297 ], [ 0, %vector.main.loop.iter.check282 ] ; 2 uses
  %n.vec300 = and i64 %smax249, 9223372036854775804 ; 3 uses
  %i.ds = trunc i64 %vec.epilog.resume.val294 to i16
  %broadcast.splatinsert301 = insertelement <4 x i16> poison, i16 %i.ds, i64 0
  %broadcast.splat302 = shufflevector <4 x i16> %broadcast.splatinsert301, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction303 = or disjoint <4 x i16> %broadcast.splat302, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body304

vec.epilog.vector.body304:                        ; preds = %vec.epilog.vector.body304, %vec.epilog.ph299
  %index305 = phi i64 [ %vec.epilog.resume.val294, %vec.epilog.ph299 ], [ %index.next307, %vec.epilog.vector.body304 ] ; 2 uses
  %vec.ind306 = phi <4 x i16> [ %induction303, %vec.epilog.ph299 ], [ %vec.ind.next308, %vec.epilog.vector.body304 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %index305
  store <4 x i16> %vec.ind306, ptr %i.dt, align 2, !tbaa !107
  %index.next307 = add nuw i64 %index305, 4       ; 2 uses
  %vec.ind.next308 = add <4 x i16> %vec.ind306, splat (i16 4)
  %i.du = icmp eq i64 %index.next307, %n.vec300
  br i1 %i.du, label %vec.epilog.middle.block309, label %vec.epilog.vector.body304, !llvm.loop !330

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body304
  %cmp.n310 = icmp eq i64 %smax249, %n.vec300
  br i1 %cmp.n310, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, label %vec.epilog.scalar.ph296.preheader

vec.epilog.scalar.ph296.preheader:                ; preds = %vector.scevcheck280, %iter.check295, %vec.epilog.iter.check297, %vec.epilog.middle.block309
  %indvars.iv.2.i72.ph = phi i64 [ 0, %iter.check295 ], [ 0, %vector.scevcheck280 ], [ %n.vec285, %vec.epilog.iter.check297 ], [ %n.vec300, %vec.epilog.middle.block309 ]
  br label %vec.epilog.scalar.ph296

vec.epilog.scalar.ph296:                          ; preds = %vec.epilog.scalar.ph296.preheader, %vec.epilog.scalar.ph296
  %indvars.iv.2.i72 = phi i64 [ %indvars.iv.next.2.i73, %vec.epilog.scalar.ph296 ], [ %indvars.iv.2.i72.ph, %vec.epilog.scalar.ph296.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv.2.i72
  %i.dw = trunc nuw i64 %indvars.iv.2.i72 to i16
  store i16 %i.dw, ptr %i.dv, align 2, !tbaa !107
  %indvars.iv.next.2.i73 = add i64 %indvars.iv.2.i72, 1 ; 2 uses
  %i.dx = and i64 %indvars.iv.next.2.i73, 65535
  %i.dy = icmp samesign ugt i64 %i.cb, %i.dx
  br i1 %i.dy, label %vec.epilog.scalar.ph296, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, !llvm.loop !331

.split.i64:                                       ; preds = %.split.i64.preheader, %.split.i64
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i66, %.split.i64 ], [ %indvars.iv.i65.ph, %.split.i64.preheader ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv.i65
  %i.ea = trunc nuw i64 %indvars.iv.i65 to i16
  store i16 %i.ea, ptr %i.dz, align 2, !tbaa !107
  %indvars.iv.next.i66 = add i64 %indvars.iv.i65, 1 ; 2 uses
  %i.eb = and i64 %indvars.iv.next.i66, 65535
  %i.ec = icmp ugt i64 %i.cb, %i.eb
  br i1 %i.ec, label %.split.i64, label %iter.check263, !llvm.loop !332

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74:     ; preds = %vec.epilog.scalar.ph296, %middle.block292, %vec.epilog.middle.block309, %.noexc
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 3 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !114 ; 5 uses
  %i.ef = load i64, ptr %1, align 8, !tbaa !132   ; 10 uses
  %i.eg = mul i64 %i.ef, %i.c
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ef
  %i.ej = mul nuw nsw i64 %i.cb, %i.c
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.ej ; 2 uses
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = ptrtoint ptr %i.ed to i64
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = icmp sgt i64 %i.en, 2
  br i1 %i.eo, label %bb.e, label %bb.f, !prof !171

bb.e:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ek, ptr nonnull align 2 %i.ed, i64 %i.en, i1 false)
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

bb.f:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74
  %i.ep = icmp eq i64 %i.en, 2
  br i1 %i.ep, label %bb.g, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

bb.g:                                             ; preds = %bb.f
  %i.eq = load i16, ptr %i.ed, align 2, !tbaa !107
  store i16 %i.eq, ptr %i.ek, align 2, !tbaa !107
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

_ZSt4copyIPKtPtET0_T_S4_S3_.exit75:               ; preds = %bb.e, %bb.f, %bb.g
  %i.er = icmp eq i8 %2, 0
  br i1 %i.er, label %.loopexit.thread, label %bb.h

.lr.ph127:                                        ; preds = %.loopexit.2
  %i.es = load ptr, ptr %3, align 8, !tbaa !135   ; 3 uses
  %i.et = add nsw i64 %.idx128, -2                ; 2 uses
  %i.eu = and i64 %i.et, 2
  %lcmp.mod315.not.not = icmp eq i64 %i.eu, 0
  br i1 %lcmp.mod315.not.not, label %.prol.loopexit313.unr-lcssa, label %.prol.loopexit313

.prol.loopexit313.unr-lcssa:                      ; preds = %.lr.ph127
  %i.ev = load i16, ptr %i.f, align 2, !tbaa !107 ; 2 uses
  %i.ew = lshr i16 %i.ev, 6
  %.zext112.prol = zext nneg i16 %i.ew to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.zext112.prol ; 2 uses
  %i.ey = and i16 %i.ev, 63
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = xor i64 %i.fa, -1
  %i.fc = load i64, ptr %i.ex, align 8, !tbaa !111
  %i.fd = and i64 %i.fc, %i.fb
  store i64 %i.fd, ptr %i.ex, align 8, !tbaa !111
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.prol.loopexit313

.prol.loopexit313:                                ; preds = %.prol.loopexit313.unr-lcssa, %.lr.ph127
  %.0126.unr = phi ptr [ %i.f, %.lr.ph127 ], [ %i.fe, %.prol.loopexit313.unr-lcssa ]
  %i.ff = icmp eq i64 %i.et, 0
  br i1 %i.ff, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit82, label %.lr.ph127.new

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit92:     ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.by) #27
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
  %i.fi = load i16, ptr %.044121, align 2, !tbaa !107 ; 4 uses
  %i.fj = load i16, ptr %i.i, align 2, !tbaa !107
  %.not59 = icmp eq i16 %i.fi, %i.fj
  br i1 %.not59, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph123
  %i.fk = load ptr, ptr %3, align 8, !tbaa !135
  %i.fl = lshr i16 %i.fi, 6
  %.zext = zext nneg i16 %i.fl to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.zext
  %i.fn = and i16 %i.fi, 63
  %i.fo = zext nneg i16 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = load i64, ptr %i.fm, align 8, !tbaa !111
  %i.fr = and i64 %i.fq, %i.fp
  %.not115 = icmp eq i64 %i.fr, 0                 ; 3 uses
  %.045120.sink = select i1 %.not115, ptr %.045120, ptr %.046119
  %.147.ph.idx = select i1 %.not115, i64 0, i64 2
  %.147.ph = getelementptr inbounds nuw i8, ptr %.046119, i64 %.147.ph.idx
  %.1.ph.idx = select i1 %.not115, i64 2, i64 0
  %.1.ph = getelementptr inbounds nuw i8, ptr %.045120, i64 %.1.ph.idx
  store i16 %i.fi, ptr %.045120.sink, align 2, !tbaa !107
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph123
  %.147 = phi ptr [ %.046119, %.lr.ph123 ], [ %.147.ph, %.sink.split ]
  %.1 = phi ptr [ %.045120, %.lr.ph123 ], [ %.1.ph, %.sink.split ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.044121, i64 2 ; 2 uses
  %.not58 = icmp eq ptr %i.fs, %i.fh
  br i1 %.not58, label %.loopexit, label %.lr.ph123, !llvm.loop !333

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
  %i.fy = load i16, ptr %.044121.1, align 2, !tbaa !107 ; 4 uses
  %i.fz = load i16, ptr %i.i, align 2, !tbaa !107
  %.not59.1 = icmp eq i16 %i.fy, %i.fz
  br i1 %.not59.1, label %bb.j, label %.sink.split145

.sink.split145:                                   ; preds = %.lr.ph123.1
  %i.ga = load ptr, ptr %3, align 8, !tbaa !135
  %i.gb = lshr i16 %i.fy, 6
  %.zext.1 = zext nneg i16 %i.gb to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.zext.1
  %i.gd = and i16 %i.fy, 63
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !111
  %i.gh = and i64 %i.gg, %i.gf
  %.not115.1 = icmp eq i64 %i.gh, 0               ; 3 uses
  %.045120.1.sink = select i1 %.not115.1, ptr %.045120.1, ptr %.046119.1
  %.147.1.ph.idx = select i1 %.not115.1, i64 0, i64 2
  %.147.1.ph = getelementptr inbounds nuw i8, ptr %.046119.1, i64 %.147.1.ph.idx
  %.1.1.ph.idx = select i1 %.not115.1, i64 2, i64 0
  %.1.1.ph = getelementptr inbounds nuw i8, ptr %.045120.1, i64 %.1.1.ph.idx
  store i16 %i.fy, ptr %.045120.1.sink, align 2, !tbaa !107
  br label %bb.j

bb.j:                                             ; preds = %.sink.split145, %.lr.ph123.1
  %.147.1 = phi ptr [ %.046119.1, %.lr.ph123.1 ], [ %.147.1.ph, %.sink.split145 ]
  %.1.1 = phi ptr [ %.045120.1, %.lr.ph123.1 ], [ %.1.1.ph, %.sink.split145 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.044121.1, i64 2 ; 2 uses
  %.not58.1 = icmp eq ptr %i.gi, %i.fv
  br i1 %.not58.1, label %.loopexit.1, label %.lr.ph123.1, !llvm.loop !333

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
begin_hunk_1_@_ZNSt6vectorIN8k_d_tree6KdTreeILh3EftEESaIS2_EE8pop_backEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.j) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #27
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #27
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #27
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i:   ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #27
  br label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit

_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit:             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EfEC2EmSt5arrayIPKfLm3EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef byval(%"struct.std::array.149") align 8 %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 20 uses
  store i64 %1, ptr %0, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = mul i64 %1, 3                            ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4611686018427387903
  %i.e = mul i64 %1, 12
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #29 ; 7 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !116
  %i.h = icmp ugt i64 %1, 1
  br i1 %i.h, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, label %.split.i, !prof !171

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 2                 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %i.i, i64 %.idx.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.l = load i64, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.k, i64 %.idx.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116
  %.idx18.i = shl i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx18.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.o, i64 %.idx.i, i1 false)
  br label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

.split.i:                                         ; preds = %bb.a
  %i.q = icmp eq i64 %1, 1
  br i1 %i.q, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i, label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i:     ; preds = %.split.i
  %i.r = load ptr, ptr %2, align 8, !tbaa !116
  %i.s = load float, ptr %i.r, align 4, !tbaa !113
  store float %i.s, ptr %i.g, align 4, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116
  %i.v = load i64, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.v
  %i.x = load float, ptr %i.u, align 4, !tbaa !113
  store float %i.x, ptr %i.w, align 4, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116
  %.idx17.i = shl i64 %i.v, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx17.i
  %i.ab = load float, ptr %i.z, align 4, !tbaa !113
  store float %i.ab, ptr %i.aa, align 4, !tbaa !113
  br label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit: ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, %.split.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 %1, ptr %i.ac, align 8, !tbaa !132
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ae = mul i64 %1, 6
  %.inv.i.i = icmp sgt i64 %i.c, -1
  %i.af = select i1 %.inv.i.i, i64 %i.ae, i64 -1
  %i.ag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #29
          to label %.noexc unwind label %bb.b     ; 9 uses

.noexc:                                           ; preds = %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !114
  %.not.i = icmp eq i64 %1, 0
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !132 ; 5 uses
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
  store <8 x i16> %vec.ind, ptr %i.an, align 2, !tbaa !107
  store <8 x i16> %step.add, ptr %i.ao, align 2, !tbaa !107
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %iter.check62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.split.i12.preheader, label %vec.epilog.ph, !prof !175

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
  store <4 x i16> %vec.ind43, ptr %i.ar, align 2, !tbaa !107
  %index.next44 = add nuw i64 %index42, 4         ; 2 uses
  %vec.ind.next45 = add <4 x i16> %vec.ind43, splat (i16 4)
  %i.as = icmp eq i64 %index.next44, %n.vec41
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !350

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %1, %n.vec41
  br i1 %cmp.n46, label %iter.check62, label %.split.i12.preheader

.split.i12.preheader:                             ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec41, %vec.epilog.middle.block ]
  br label %.split.i12

iter.check62:                                     ; preds = %.split.i12, %vec.epilog.middle.block, %middle.block
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.pre ; 3 uses
  %smax48 = tail call i64 @llvm.smax.i64(i64 %1, i64 1) ; 11 uses
  %min.iters.check49 = icmp slt i64 %1, 4
  br i1 %min.iters.check49, label %vec.epilog.scalar.ph63.preheader, label %vector.scevcheck47

vector.scevcheck47:                               ; preds = %iter.check62
  %i.au = add nsw i64 %1, -1                      ; 2 uses
  %i.av = and i64 %i.au, 65535
  %i.aw = icmp eq i64 %i.av, 65535
  %i.ax = icmp ugt i64 %i.au, 65535
  %i.ay = or i1 %i.aw, %i.ax
  br i1 %i.ay, label %vec.epilog.scalar.ph63.preheader, label %vector.main.loop.iter.check49

vector.main.loop.iter.check49:                    ; preds = %vector.scevcheck47
  %min.iters.check51 = icmp slt i64 %1, 16
  br i1 %min.iters.check51, label %vec.epilog.ph66, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check49
  %i.az = and i64 %smax48, 12
  %n.vec52 = and i64 %smax48, 131056              ; 4 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body53 ] ; 2 uses
  %vec.ind55 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph51 ], [ %vec.ind.next58, %vector.body53 ] ; 3 uses
  %step.add56 = add <8 x i16> %vec.ind55, splat (i16 8)
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index54 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <8 x i16> %vec.ind55, ptr %i.ba, align 2, !tbaa !107
  store <8 x i16> %step.add56, ptr %i.bb, align 2, !tbaa !107
  %index.next57 = add nuw i64 %index54, 16        ; 2 uses
  %vec.ind.next58 = add <8 x i16> %vec.ind55, splat (i16 16)
  %i.bc = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.bc, label %middle.block59, label %vector.body53, !llvm.loop !351

middle.block59:                                   ; preds = %vector.body53
  %cmp.n60 = icmp eq i64 %smax48, %n.vec52
  br i1 %cmp.n60, label %iter.check94, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block59
  %min.epilog.iters.check65 = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check65, label %vec.epilog.scalar.ph63.preheader, label %vec.epilog.ph66, !prof !175

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check49, %vec.epilog.iter.check64
  %vec.epilog.resume.val61 = phi i64 [ %n.vec52, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check49 ] ; 2 uses
  %n.vec67 = and i64 %smax48, 131068              ; 3 uses
  %i.bd = trunc i64 %vec.epilog.resume.val61 to i16
  %broadcast.splatinsert68 = insertelement <4 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat69 = shufflevector <4 x i16> %broadcast.splatinsert68, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction70 = or disjoint <4 x i16> %broadcast.splat69, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body71

vec.epilog.vector.body71:                         ; preds = %vec.epilog.vector.body71, %vec.epilog.ph66
  %index72 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph66 ], [ %index.next74, %vec.epilog.vector.body71 ] ; 2 uses
  %vec.ind73 = phi <4 x i16> [ %induction70, %vec.epilog.ph66 ], [ %vec.ind.next75, %vec.epilog.vector.body71 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index72
  store <4 x i16> %vec.ind73, ptr %i.be, align 2, !tbaa !107
  %index.next74 = add nuw i64 %index72, 4         ; 2 uses
  %vec.ind.next75 = add <4 x i16> %vec.ind73, splat (i16 4)
  %i.bf = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.bf, label %vec.epilog.middle.block76, label %vec.epilog.vector.body71, !llvm.loop !352

vec.epilog.middle.block76:                        ; preds = %vec.epilog.vector.body71
  %cmp.n77 = icmp eq i64 %smax48, %n.vec67
  br i1 %cmp.n77, label %iter.check94, label %vec.epilog.scalar.ph63.preheader

vec.epilog.scalar.ph63.preheader:                 ; preds = %vector.scevcheck47, %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block76
  %indvars.iv.1.i.ph = phi i64 [ 0, %iter.check62 ], [ 0, %vector.scevcheck47 ], [ %n.vec52, %vec.epilog.iter.check64 ], [ %n.vec67, %vec.epilog.middle.block76 ]
  br label %vec.epilog.scalar.ph63

vec.epilog.scalar.ph63:                           ; preds = %vec.epilog.scalar.ph63.preheader, %vec.epilog.scalar.ph63
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %vec.epilog.scalar.ph63 ], [ %indvars.iv.1.i.ph, %vec.epilog.scalar.ph63.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.1.i
  %i.bh = trunc nuw i64 %indvars.iv.1.i to i16
  store i16 %i.bh, ptr %i.bg, align 2, !tbaa !107
  %indvars.iv.next.1.i = add i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.bi = and i64 %indvars.iv.next.1.i, 65535
  %i.bj = icmp samesign ugt i64 %1, %i.bi
  br i1 %i.bj, label %vec.epilog.scalar.ph63, label %iter.check94, !llvm.loop !353

iter.check94:                                     ; preds = %vec.epilog.scalar.ph63, %vec.epilog.middle.block76, %middle.block59
  %.idx.i13 = shl i64 %.pre, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i13 ; 3 uses
  %min.iters.check81 = icmp slt i64 %1, 4
  br i1 %min.iters.check81, label %vec.epilog.scalar.ph95.preheader, label %vector.scevcheck79

vector.scevcheck79:                               ; preds = %iter.check94
  %3 = sub nsw i64 0, %smax48
  %i.bl = and i64 %3, 65535
  %i.bm = icmp eq i64 %i.bl, 0
  %4 = icmp sgt i64 %1, 65536
  %i.bn = or i1 %i.bm, %4
  br i1 %i.bn, label %vec.epilog.scalar.ph95.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %vector.scevcheck79
  %min.iters.check83 = icmp slt i64 %1, 16
  br i1 %min.iters.check83, label %vec.epilog.ph98, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check81
  %i.bo = and i64 %smax48, 12
  %n.vec84 = and i64 %smax48, 9223372036854775792 ; 4 uses
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next89, %vector.body85 ] ; 2 uses
  %vec.ind87 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph83 ], [ %vec.ind.next90, %vector.body85 ] ; 3 uses
  %step.add88 = add <8 x i16> %vec.ind87, splat (i16 8)
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %index86 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <8 x i16> %vec.ind87, ptr %i.bp, align 2, !tbaa !107
  store <8 x i16> %step.add88, ptr %i.bq, align 2, !tbaa !107
  %index.next89 = add nuw i64 %index86, 16        ; 2 uses
  %vec.ind.next90 = add <8 x i16> %vec.ind87, splat (i16 16)
  %i.br = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.br, label %middle.block91, label %vector.body85, !llvm.loop !354

middle.block91:                                   ; preds = %vector.body85
  %cmp.n92 = icmp eq i64 %smax48, %n.vec84
  br i1 %cmp.n92, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.iter.check96

vec.epilog.iter.check96:                          ; preds = %middle.block91
  %min.epilog.iters.check97 = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check97, label %vec.epilog.scalar.ph95.preheader, label %vec.epilog.ph98, !prof !175

vec.epilog.ph98:                                  ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check96
  %vec.epilog.resume.val93 = phi i64 [ %n.vec84, %vec.epilog.iter.check96 ], [ 0, %vector.main.loop.iter.check81 ] ; 2 uses
  %n.vec99 = and i64 %smax48, 9223372036854775804 ; 3 uses
  %i.bs = trunc i64 %vec.epilog.resume.val93 to i16
  %broadcast.splatinsert100 = insertelement <4 x i16> poison, i16 %i.bs, i64 0
  %broadcast.splat101 = shufflevector <4 x i16> %broadcast.splatinsert100, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction102 = or disjoint <4 x i16> %broadcast.splat101, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body103

vec.epilog.vector.body103:                        ; preds = %vec.epilog.vector.body103, %vec.epilog.ph98
  %index104 = phi i64 [ %vec.epilog.resume.val93, %vec.epilog.ph98 ], [ %index.next106, %vec.epilog.vector.body103 ] ; 2 uses
  %vec.ind105 = phi <4 x i16> [ %induction102, %vec.epilog.ph98 ], [ %vec.ind.next107, %vec.epilog.vector.body103 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %index104
  store <4 x i16> %vec.ind105, ptr %i.bt, align 2, !tbaa !107
  %index.next106 = add nuw i64 %index104, 4       ; 2 uses
  %vec.ind.next107 = add <4 x i16> %vec.ind105, splat (i16 4)
  %i.bu = icmp eq i64 %index.next106, %n.vec99
  br i1 %i.bu, label %vec.epilog.middle.block108, label %vec.epilog.vector.body103, !llvm.loop !355

vec.epilog.middle.block108:                       ; preds = %vec.epilog.vector.body103
  %cmp.n109 = icmp eq i64 %smax48, %n.vec99
  br i1 %cmp.n109, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.scalar.ph95.preheader

vec.epilog.scalar.ph95.preheader:                 ; preds = %vector.scevcheck79, %iter.check94, %vec.epilog.iter.check96, %vec.epilog.middle.block108
  %indvars.iv.2.i.ph = phi i64 [ 0, %iter.check94 ], [ 0, %vector.scevcheck79 ], [ %n.vec84, %vec.epilog.iter.check96 ], [ %n.vec99, %vec.epilog.middle.block108 ]
  br label %vec.epilog.scalar.ph95

vec.epilog.scalar.ph95:                           ; preds = %vec.epilog.scalar.ph95.preheader, %vec.epilog.scalar.ph95
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %vec.epilog.scalar.ph95 ], [ %indvars.iv.2.i.ph, %vec.epilog.scalar.ph95.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.2.i
  %i.bw = trunc nuw i64 %indvars.iv.2.i to i16
  store i16 %i.bw, ptr %i.bv, align 2, !tbaa !107
  %indvars.iv.next.2.i = add i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.bx = and i64 %indvars.iv.next.2.i, 65535
  %i.by = icmp samesign ugt i64 %1, %i.bx
  br i1 %i.by, label %vec.epilog.scalar.ph95, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, !llvm.loop !356

.split.i12:                                       ; preds = %.split.i12.preheader, %.split.i12
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i12 ], [ %indvars.iv.i.ph, %.split.i12.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ca = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.ca, ptr %i.bz, align 2, !tbaa !107
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.cb = and i64 %indvars.iv.next.i, 65535
  %i.cc = icmp ugt i64 %1, %i.cb
  br i1 %i.cc, label %.split.i12, label %iter.check62, !llvm.loop !357

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit:       ; preds = %vec.epilog.scalar.ph95, %middle.block91, %vec.epilog.middle.block108, %.noexc
  %i.cd = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.cd, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us, label %bb.c

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.split.us.sink.split

.split.us.sink.split:                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit, %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1, %.noexc14.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.b:                                             ; preds = %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

bb.c:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !116
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !116
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
  %.pre23 = load i64, ptr %i.ac, align 8, !tbaa !132 ; 4 uses
  %.pre28 = shl nuw nsw i64 %.pre23, 1
  %.pre22 = load ptr, ptr %i.ad, align 8, !tbaa !114
  %.pre21 = load ptr, ptr %i.b, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ck = load i64, ptr %0, align 8, !tbaa !124
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.pre21, i64 %i.ck
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !116
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
  %.pre24 = load ptr, ptr %i.b, align 8, !tbaa !116
  %.pre25 = load i64, ptr %0, align 8, !tbaa !124
  %.pre26 = load ptr, ptr %i.ad, align 8, !tbaa !114
  %.pre27 = load i64, ptr %i.ac, align 8, !tbaa !132 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.idx33 = shl i64 %.pre25, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre24, i64 %.idx33
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !116
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cy = load ptr, ptr %i.ad, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #27
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.b ], [ %i.cx, %bb.f ], [ %i.cx, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i ]
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i16, label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #27
  br label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit

_ZN8k_d_tree6PointsILh3EfED2Ev.exit:              ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
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
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !358

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
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107  ; 2 uses
  %i.j = load i16, ptr %0, align 2, !tbaa !107
  store i16 %i.j, ptr %i.h, align 2, !tbaa !107
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !116    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 2 uses
  %i.r = shl i64 %.030.i.i.i.i, 1                 ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [2 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %i.w = load i16, ptr %i.t, align 2, !tbaa !107
  %i.x = load i16, ptr %i.v, align 2, !tbaa !107
  %i.y = zext i16 %i.w to i64
end_hunk_1
begin_hunk_2_@"_ZNK8k_d_tree6KdTreeILh3EftE10rangeQueryIZN6server15ActiveObjectMgr16getObjectsInAreaERKN4core8aabbox3dIfEERSt6vectorIP18ServerActiveObjectSaISC_EESt8functionIFbSC_EEE3$_0EEvmhRKSt5arrayIfLm3EESN_RKT_":bb.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !114
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.l
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !107 ; 4 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !163   ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !31
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bh = load float, ptr %4, align 4, !tbaa !113
  %i.bi = fcmp nsz ogt float %i.aj, %i.bh
  br i1 %i.bi, label %.loopexit, label %bb.f

bb.k:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not10.i.i.i.i.i, label %.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bk, %bb.k ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bl, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !107
  %i.bo = icmp ult i16 %i.bn, %i.bd               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bo, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bo, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bp = icmp eq ptr %.19.i.i.i.i.i, %i.bl
  br i1 %i.bp, label %.thread.i.i, label %_ZNKSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i

_ZNKSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !107
  %i.bs = icmp ult i16 %i.bd, %i.br
  br i1 %i.bs, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNKSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  br label %_ZNK13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE3getERKt.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %bb.k, %.critedge
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !109 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %.not10.i.i.i5.i.i = icmp eq ptr %i.bv, null
  br i1 %.not10.i.i.i5.i.i, label %_ZNK13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE3getERKt.exit.i, label %.lr.ph.i.i.i6.i.i

.lr.ph.i.i.i6.i.i:                                ; preds = %.thread.i.i, %.lr.ph.i.i.i6.i.i
  %.012.i.i.i7.i.i = phi ptr [ %.1.i.i.i12.i.i, %.lr.ph.i.i.i6.i.i ], [ %i.bv, %.thread.i.i ] ; 3 uses
  %.0811.i.i.i8.i.i = phi ptr [ %.19.i.i.i9.i.i, %.lr.ph.i.i.i6.i.i ], [ %i.bw, %.thread.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i, i64 32
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !107
  %i.bz = icmp ult i16 %i.by, %i.bd               ; 2 uses
  %.19.i.i.i9.i.i = select i1 %i.bz, ptr %.0811.i.i.i8.i.i, ptr %.012.i.i.i7.i.i ; 4 uses
  %.1.in.v.i.i.i10.i.i = select i1 %i.bz, i64 24, i64 16
  %.1.in.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i, i64 %.1.in.v.i.i.i10.i.i
  %.1.i.i.i12.i.i = load ptr, ptr %.1.in.i.i.i11.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i13.i.i = icmp eq ptr %.1.i.i.i12.i.i, null
  br i1 %.not.i.i.i13.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i, label %.lr.ph.i.i.i6.i.i, !llvm.loop !2

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i: ; preds = %.lr.ph.i.i.i6.i.i
  %i.ca = icmp eq ptr %.19.i.i.i9.i.i, %i.bw
  br i1 %i.ca, label %_ZNK13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE3getERKt.exit.i, label %_ZNKSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i

_ZNKSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i, i64 32
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !107
  %i.cd = icmp ult i16 %i.bd, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i, i64 40
  %spec.select.i.i = select i1 %i.cd, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.ce
  br label %_ZNK13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE3getERKt.exit.i

_ZNK13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE3getERKt.exit.i: ; preds = %_ZNKSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i, %.thread.i.i, %bb.l
  %.2.i.i = phi ptr [ %i.bt, %bb.l ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i ], [ %spec.select.i.i, %_ZNKSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i ]
  %i.cf = load ptr, ptr %.2.i.i, align 8, !tbaa !35 ; 4 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZNK13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE3getERKt.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !377, !nonnull !51, !align !52 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108
  %.not.i.i.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.not.i, label %bb.n, label %_ZNKSt8functionIFbP18ServerActiveObjectEEclES1_.exit.i

_ZNKSt8functionIFbP18ServerActiveObjectEEclES1_.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !181
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.cm, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_ZNKSt8functionIFbP18ServerActiveObjectEEclES1_.exit.i, %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !378, !nonnull !51, !align !52 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !184 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !185
  %.not.i3.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i3.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.cf, ptr %i.cq, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !184
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !186 ; 4 uses
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 5 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.q, label %_ZNKSt6vectorIP18ServerActiveObjectSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
  unreachable

_ZNKSt6vectorIP18ServerActiveObjectSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #29 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store ptr %i.cf, ptr %i.dg, align 8, !tbaa !35
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.r, label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIP18ServerActiveObjectSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %i.cu, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIP18ServerActiveObjectSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.dj = load ptr, ptr %i.cr, align 8, !tbaa !185
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dl) #27
  br label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.df, ptr %i.co, align 8, !tbaa !186
  store ptr %i.di, ptr %i.cp, align 8, !tbaa !184
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dm, ptr %i.cr, align 8, !tbaa !185
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.e, %bb.j, %bb.f, %bb.g, %bb.h, %bb.i, %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.o, %_ZNKSt8functionIFbP18ServerActiveObjectEEclES1_.exit.i, %_ZNK13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE3getERKt.exit.i, %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #21

declare extern_weak void @_ZTH13warningstream() #8

declare extern_weak void @_ZTH11errorstream() #8

declare extern_weak void @_ZTH13verbosestream() #8

declare extern_weak void @_ZTH10infostream() #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

attributes #0 = { nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !87}
!1 = distinct !{null, null, null, null, null}
!2 = distinct !{!2, !87}
!3 = distinct !{!3, !87}
!4 = distinct !{null, null, null, null, null}
!5 = distinct !{!5, !87}
!6 = distinct !{null, null, null, ptr @_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev, null}
!7 = distinct !{!7, !87}
!8 = distinct !{!8, !87}
!9 = distinct !{!9, !87}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"_ZTSSt4lessItE"}
!20 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessItEE", !19, i64 0}
!21 = !{!"_ZTSSt14_Rb_tree_color", !15, i64 0}
!22 = !{!"any pointer", !15, i64 0}
!23 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!24 = !{!"_ZTSSt18_Rb_tree_node_base", !21, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!25 = !{!"long", !15, i64 0}
!26 = !{!"_ZTSSt15_Rb_tree_header", !24, i64 0, !25, i64 32}
!27 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !20, i64 0, !26, i64 8}
!28 = !{!"_ZTSSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE", !27, i64 0}
!29 = !{!"_ZTSSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE", !28, i64 0}
!30 = !{!"_ZTS13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE", !29, i64 0, !29, i64 48, !16, i64 96, !25, i64 104}
!31 = !{!30, !16, i64 96}
!32 = !{!30, !25, i64 104}
!33 = !{!26, !23, i64 16}
!34 = !{!"p1 _ZTS18ServerActiveObject", !22, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!26, !25, i64 32}
!37 = !{!"p1 _ZTS9LogTarget", !22, i64 0}
!38 = !{!"p1 omnipotent char", !22, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!40 = !{!"_ZTSSt6locale", !39, i64 0}
!41 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !40, i64 56}
!42 = !{!"_ZTSSt14_Function_base", !15, i64 0, !22, i64 16}
!43 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !42, i64 0, !22, i64 24}
!44 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !41, i64 0, !43, i64 64, !16, i64 96, !15, i64 100}
!45 = !{!"_ZTS17DummyStreamBuffer", !41, i64 0}
!46 = !{!"_ZTSSo"}
!47 = !{!"p1 _ZTSSo", !22, i64 0}
!48 = !{!"_ZTS11StreamProxy", !47, i64 0}
!49 = !{!"_ZTS9LogStream", !37, i64 0, !44, i64 8, !45, i64 368, !46, i64 432, !46, i64 704, !48, i64 976, !48, i64 984}
!50 = !{!49, !37, i64 0}
!51 = !{}
!52 = !{i64 8}
!53 = !{!"vtable pointer", !14, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!38, !38, i64 0}
!56 = !{!48, !47, i64 0}
!57 = !{!"_ZTSSt13_Ios_Fmtflags", !15, i64 0}
!58 = !{!"_ZTSSt12_Ios_Iostate", !15, i64 0}
!59 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!60 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !25, i64 8}
!61 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!62 = !{!"_ZTSSt8ios_base", !25, i64 8, !25, i64 16, !57, i64 24, !58, i64 28, !58, i64 32, !59, i64 40, !60, i64 48, !15, i64 64, !16, i64 192, !61, i64 200, !40, i64 208}
!63 = !{!62, !58, i64 32}
!64 = !{!"bool", !15, i64 0}
!65 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!66 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!67 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!68 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!69 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !62, i64 0, !47, i64 216, !15, i64 224, !64, i64 225, !65, i64 232, !66, i64 240, !67, i64 248, !68, i64 256}
!70 = !{!69, !66, i64 240}
!71 = !{!"_ZTSNSt6locale5facetE", !16, i64 8}
!72 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!73 = !{!"p1 int", !22, i64 0}
!74 = !{!"p1 short", !22, i64 0}
!75 = !{!"_ZTSSt5ctypeIcE", !71, i64 0, !72, i64 16, !64, i64 24, !73, i64 32, !73, i64 40, !74, i64 48, !15, i64 56, !15, i64 57, !15, i64 313, !15, i64 569}
!76 = !{!75, !15, i64 56}
!77 = !{!15, !15, i64 0}
!78 = !{!"any p2 pointer", !22, i64 0}
!79 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !78, i64 0}
!80 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!81 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !80, i64 0}
!82 = !{!"float", !15, i64 0}
!83 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !82, i64 0, !25, i64 8}
!84 = !{!"_ZTSSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !79, i64 0, !25, i64 8, !81, i64 16, !25, i64 24, !83, i64 32, !80, i64 48}
!85 = !{!84, !80, i64 16}
!86 = !{!81, !80, i64 0}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!84, !79, i64 0}
!89 = !{!84, !25, i64 8}
!90 = !{!"p1 _ZTSN8k_d_tree6KdTreeILh3EftEE", !22, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!91, !90, i64 0}
!93 = !{!91, !90, i64 8}
!94 = !{!91, !90, i64 16}
!95 = !{!"p1 _ZTS13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE", !22, i64 0}
!96 = !{!"_ZTSN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE15IterationHelperE", !95, i64 0}
!97 = !{!96, !95, i64 0}
!98 = !{!"short", !15, i64 0}
!99 = !{!"_ZTSSt10_Head_baseILm0EP18ServerActiveObjectLb0EE", !34, i64 0}
!100 = !{!"_ZTSSt11_Tuple_implILm0EJP18ServerActiveObjectSt14default_deleteIS0_EEE", !99, i64 0}
!101 = !{!"_ZTSSt5tupleIJP18ServerActiveObjectSt14default_deleteIS0_EEE", !100, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_implI18ServerActiveObjectSt14default_deleteIS0_EE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_dataI18ServerActiveObjectSt14default_deleteIS0_ELb1ELb1EE", !102, i64 0}
!104 = !{!"_ZTSSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EE", !103, i64 0}
!105 = !{!"_ZTSSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS2_EEE", !98, i64 0, !104, i64 8}
!106 = !{!105, !98, i64 0}
!107 = !{!98, !98, i64 0}
!108 = !{!42, !22, i64 16}
!109 = !{!26, !23, i64 8}
!110 = !{!23, !23, i64 0}
!111 = !{!25, !25, i64 0}
!112 = !{!"_ZTS12ActiveObject", !98, i64 8}
!113 = !{!82, !82, i64 0}
!114 = !{!74, !74, i64 0}
!115 = !{!"p1 float", !22, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0EPfLb0EE", !115, i64 0}
!118 = !{!"_ZTSSt11_Tuple_implILm0EJPfSt14default_deleteIA_fEEE", !117, i64 0}
!119 = !{!"_ZTSSt5tupleIJPfSt14default_deleteIA_fEEE", !118, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implIfSt14default_deleteIA_fEE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_dataIfSt14default_deleteIA_fELb1ELb1EE", !120, i64 0}
!122 = !{!"_ZTSSt10unique_ptrIA_fSt14default_deleteIS0_EE", !121, i64 0}
!123 = !{!"_ZTSN8k_d_tree6PointsILh3EfEE", !25, i64 0, !122, i64 8}
!124 = !{!123, !25, i64 0}
!125 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !74, i64 0}
!126 = !{!"_ZTSSt11_Tuple_implILm0EJPtSt14default_deleteIA_tEEE", !125, i64 0}
!127 = !{!"_ZTSSt5tupleIJPtSt14default_deleteIA_tEEE", !126, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_implItSt14default_deleteIA_tEE", !127, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_dataItSt14default_deleteIA_tELb1ELb1EE", !128, i64 0}
!130 = !{!"_ZTSSt10unique_ptrIA_tSt14default_deleteIS0_EE", !129, i64 0}
!131 = !{!"_ZTSN8k_d_tree6PointsILh3EtEE", !25, i64 0, !130, i64 8}
!132 = !{!131, !25, i64 0}
!133 = !{!"p1 long", !22, i64 0}
!134 = !{!"_ZTSSt18_Bit_iterator_base", !133, i64 0, !16, i64 8}
!135 = !{!134, !133, i64 0}
!136 = !{!"_ZTSSt13_Bit_iterator", !134, i64 0}
!137 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !136, i64 0, !136, i64 16, !133, i64 32}
!138 = !{!137, !133, i64 32}
!139 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE12_Vector_implE", !91, i64 0}
!140 = !{!"_ZTSSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE", !139, i64 0}
!141 = !{!"_ZTSSt6vectorIN8k_d_tree6KdTreeILh3EftEESaIS2_EE", !140, i64 0}
!142 = !{!"_ZTSSt13unordered_mapItN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryESt4hashItESt8equal_toItESaISt4pairIKtS3_EEE", !84, i64 0}
!143 = !{!"_ZTSN8k_d_tree14DynamicKdTreesILh3EftEE", !141, i64 0, !142, i64 24, !25, i64 80, !25, i64 88}
!144 = !{!143, !25, i64 80}
!145 = !{!84, !25, i64 24}
!146 = !{!80, !80, i64 0}
!147 = !{!"_ZTSN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryE", !15, i64 0, !98, i64 2}
!148 = !{!"_ZTSSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEE", !98, i64 0, !147, i64 2}
!149 = !{!143, !25, i64 88}
!150 = !{!"p1 _ZTSN4core8vector3dIfEE", !22, i64 0}
!151 = !{!"p1 _ZTSN6server15ActiveObjectMgrE", !22, i64 0}
!152 = !{!"p1 _ZTSSt8functionIFbP18ServerActiveObjectEE", !22, i64 0}
!153 = !{!"p1 _ZTSSt6vectorIP18ServerActiveObjectSaIS1_EE", !22, i64 0}
!154 = !{!"_ZTSZN6server15ActiveObjectMgr22getObjectsInsideRadiusEN4core8vector3dIfEEfRSt6vectorIP18ServerActiveObjectSaIS6_EESt8functionIFbS6_EEE3$_0", !150, i64 0, !115, i64 8, !151, i64 16, !152, i64 24, !153, i64 32}
!155 = !{!154, !151, i64 16}
!156 = !{!152, !152, i64 0}
!157 = !{!153, !153, i64 0}
!158 = !{!90, !90, i64 0}
!159 = !{!"_ZTSN4core8vector3dIfEE", !82, i64 0, !82, i64 4, !82, i64 8}
!160 = !{!159, !82, i64 4}
!161 = !{!159, !82, i64 8}
!162 = !{!"_ZTSZN6server15ActiveObjectMgr16getObjectsInAreaERKN4core8aabbox3dIfEERSt6vectorIP18ServerActiveObjectSaIS8_EESt8functionIFbS8_EEE3$_0", !151, i64 0, !152, i64 8, !153, i64 16}
!163 = !{!162, !151, i64 0}
!164 = !{!24, !23, i64 24}
end_hunk_2
