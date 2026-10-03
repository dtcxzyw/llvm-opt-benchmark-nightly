Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hxprops?download=true
inline.NumInlined: 101
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z12do_start_endiP4t_bbPiS1_S1_S1_bii:bb.a
  %i.c = icmp sge <8 x i32> %wide.masked.gather, %broadcast.splat
  %i.d = icmp sge <8 x i32> %wide.masked.gather101, %broadcast.splat
  %i.e = icmp sle <8 x i32> %wide.masked.gather, %broadcast.splat92
  %i.f = icmp sle <8 x i32> %wide.masked.gather101, %broadcast.splat92
  %.not172 = and <8 x i1> %i.c, %i.e              ; 8 uses
  %.not174 = and <8 x i1> %i.d, %i.f              ; 8 uses
  %i.g = extractelement <8 x i1> %.not172, i64 0
  br i1 %i.g, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.h = extractelement <8 x ptr> %wide.gep, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 1, ptr %i.i, align 4, !tbaa !19
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.j = extractelement <8 x i1> %.not172, i64 1
  br i1 %i.j, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue
  %i.k = extractelement <8 x ptr> %wide.gep, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 1, ptr %i.l, align 4, !tbaa !19
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue
  %i.m = extractelement <8 x i1> %.not172, i64 2
  br i1 %i.m, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %i.n = extractelement <8 x ptr> %wide.gep, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i8 1, ptr %i.o, align 4, !tbaa !19
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.p = extractelement <8 x i1> %.not172, i64 3
  br i1 %i.p, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %i.q = extractelement <8 x ptr> %wide.gep, i64 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i8 1, ptr %i.r, align 4, !tbaa !19
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.s = extractelement <8 x i1> %.not172, i64 4
  br i1 %i.s, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.t = extractelement <8 x ptr> %wide.gep, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i8 1, ptr %i.u, align 4, !tbaa !19
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.v = extractelement <8 x i1> %.not172, i64 5
  br i1 %i.v, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.w = extractelement <8 x ptr> %wide.gep, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i8 1, ptr %i.x, align 4, !tbaa !19
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.y = extractelement <8 x i1> %.not172, i64 6
  br i1 %i.y, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.z = extractelement <8 x ptr> %wide.gep, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i8 1, ptr %i.aa, align 4, !tbaa !19
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.ab = extractelement <8 x i1> %.not172, i64 7
  br i1 %i.ab, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.ac = extractelement <8 x ptr> %wide.gep, i64 7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i8 1, ptr %i.ad, align 4, !tbaa !19
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.ae = extractelement <8 x i1> %.not174, i64 0
  br i1 %i.ae, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %i.af = extractelement <8 x ptr> %wide.gep98, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i8 1, ptr %i.ag, align 4, !tbaa !19
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.ah = extractelement <8 x i1> %.not174, i64 1
  br i1 %i.ah, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.ai = extractelement <8 x ptr> %wide.gep98, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i8 1, ptr %i.aj, align 4, !tbaa !19
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.ak = extractelement <8 x i1> %.not174, i64 2
  br i1 %i.ak, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  %i.al = extractelement <8 x ptr> %wide.gep98, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i8 1, ptr %i.am, align 4, !tbaa !19
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.an = extractelement <8 x i1> %.not174, i64 3
  br i1 %i.an, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  %i.ao = extractelement <8 x ptr> %wide.gep98, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i8 1, ptr %i.ap, align 4, !tbaa !19
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.aq = extractelement <8 x i1> %.not174, i64 4
  br i1 %i.aq, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  %i.ar = extractelement <8 x ptr> %wide.gep98, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i8 1, ptr %i.as, align 4, !tbaa !19
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.at = extractelement <8 x i1> %.not174, i64 5
  br i1 %i.at, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  %i.au = extractelement <8 x ptr> %wide.gep98, i64 5
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i8 1, ptr %i.av, align 4, !tbaa !19
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.aw = extractelement <8 x i1> %.not174, i64 6
  br i1 %i.aw, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  %i.ax = extractelement <8 x ptr> %wide.gep98, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i8 1, ptr %i.ay, align 4, !tbaa !19
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.az = extractelement <8 x i1> %.not174, i64 7
  br i1 %i.az, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.ba = extractelement <8 x ptr> %wide.gep98, i64 7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i8 1, ptr %i.bb, align 4, !tbaa !19
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.bc = icmp eq <8 x i32> %wide.masked.gather, %broadcast.splat
  %i.bd = icmp eq <8 x i32> %wide.masked.gather101, %broadcast.splat
  %i.be = select <8 x i1> %i.bc, <8 x i32> %vec.ind96, <8 x i32> %vec.phi94 ; 2 uses
  %i.bf = select <8 x i1> %i.bd, <8 x i32> %step.add97, <8 x i32> %vec.phi95 ; 2 uses
  %i.bg = icmp eq <8 x i32> %wide.masked.gather, %broadcast.splat92
  %i.bh = icmp eq <8 x i32> %wide.masked.gather101, %broadcast.splat92
  %i.bi = select <8 x i1> %i.bg, <8 x i32> %vec.ind96, <8 x i32> %vec.phi ; 2 uses
  %i.bj = select <8 x i1> %i.bh, <8 x i32> %step.add97, <8 x i32> %vec.phi93 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next132 = add <8 x i32> %vec.ind96, splat (i32 16)
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %pred.store.continue131
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bi, <8 x i32> %i.bj)
  %i.bl = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax) ; 2 uses
  %.not = icmp eq i32 %i.bl, -2147483648
  %i.bm = select i1 %.not, i32 0, i32 %i.bl       ; 3 uses
  %rdx.minmax133 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.be, <8 x i32> %i.bf)
  %i.bn = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax133) ; 2 uses
  %.not175 = icmp eq i32 %i.bn, -2147483648
  %i.bo = select i1 %.not175, i32 0, i32 %i.bn    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZL9check_ahxiP4t_bbPiS1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %bc.merge.rdx = phi i32 [ %i.bm, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx134 = phi i32 [ %i.bo, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec135 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %9 = icmp eq i32 %bc.merge.rdx, 0
  %10 = select i1 %9, i32 -2147483648, i32 %bc.merge.rdx
  %broadcast.splatinsert136 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat137 = shufflevector <4 x i32> %broadcast.splatinsert136, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = icmp eq i32 %bc.merge.rdx134, 0
  %12 = select i1 %11, i32 -2147483648, i32 %bc.merge.rdx134
  %broadcast.splatinsert138 = insertelement <4 x i32> poison, i32 %12, i64 0
  %broadcast.splat139 = shufflevector <4 x i32> %broadcast.splatinsert138, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert140 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat141 = shufflevector <4 x i32> %broadcast.splatinsert140, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert144 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat145 = shufflevector <4 x i64> %broadcast.splatinsert144, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat145, <i64 0, i64 1, i64 2, i64 3>
  %i.bp = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction148 = or disjoint <4 x i32> %broadcast.splat147, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue164, %vec.epilog.ph
  %index149 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next165, %pred.store.continue164 ]
  %vec.ind150 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next166, %pred.store.continue164 ] ; 2 uses
  %vec.phi151 = phi <4 x i32> [ %broadcast.splat137, %vec.epilog.ph ], [ %i.ch, %pred.store.continue164 ]
  %vec.phi152 = phi <4 x i32> [ %broadcast.splat139, %vec.epilog.ph ], [ %i.cf, %pred.store.continue164 ]
  %vec.ind153 = phi <4 x i32> [ %induction148, %vec.epilog.ph ], [ %vec.ind.next167, %pred.store.continue164 ] ; 3 uses
  %wide.gep154 = getelementptr inbounds nuw [108 x i8], ptr %1, <4 x i64> %vec.ind150 ; 5 uses
  %wide.gep155 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep154, i64 44
  %wide.masked.gather156 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep155, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !32 ; 4 uses
  %i.bq = icmp sge <4 x i32> %wide.masked.gather156, %broadcast.splat141
  %i.br = icmp sle <4 x i32> %wide.masked.gather156, %broadcast.splat143
  %.not178 = and <4 x i1> %i.bq, %i.br            ; 4 uses
  %i.bs = extractelement <4 x i1> %.not178, i64 0
  br i1 %i.bs, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %vec.epilog.vector.body
  %i.bt = extractelement <4 x ptr> %wide.gep154, i64 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i8 1, ptr %i.bu, align 4, !tbaa !19
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %vec.epilog.vector.body
  %i.bv = extractelement <4 x i1> %.not178, i64 1
  br i1 %i.bv, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  %i.bw = extractelement <4 x ptr> %wide.gep154, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i8 1, ptr %i.bx, align 4, !tbaa !19
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.by = extractelement <4 x i1> %.not178, i64 2
  br i1 %i.by, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  %i.bz = extractelement <4 x ptr> %wide.gep154, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i8 1, ptr %i.ca, align 4, !tbaa !19
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.cb = extractelement <4 x i1> %.not178, i64 3
  br i1 %i.cb, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  %i.cc = extractelement <4 x ptr> %wide.gep154, i64 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i8 1, ptr %i.cd, align 4, !tbaa !19
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %i.ce = icmp eq <4 x i32> %wide.masked.gather156, %broadcast.splat141
  %i.cf = select <4 x i1> %i.ce, <4 x i32> %vec.ind153, <4 x i32> %vec.phi152 ; 2 uses
  %i.cg = icmp eq <4 x i32> %wide.masked.gather156, %broadcast.splat143
  %i.ch = select <4 x i1> %i.cg, <4 x i32> %vec.ind153, <4 x i32> %vec.phi151 ; 2 uses
  %index.next165 = add nuw i64 %index149, 4       ; 2 uses
  %vec.ind.next166 = add nuw nsw <4 x i64> %vec.ind150, splat (i64 4)
  %vec.ind.next167 = add <4 x i32> %vec.ind153, splat (i32 4)
  %i.ci = icmp eq i64 %index.next165, %n.vec135
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %pred.store.continue164
  %i.cj = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ch) ; 2 uses
  %.not179 = icmp eq i32 %i.cj, -2147483648
  %i.ck = select i1 %.not179, i32 0, i32 %i.cj    ; 2 uses
  %i.cl = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.cf) ; 2 uses
  %.not180 = icmp eq i32 %i.cl, -2147483648
  %i.cm = select i1 %.not180, i32 0, i32 %i.cl    ; 2 uses
  %cmp.n168 = icmp eq i64 %n.vec135, %wide.trip.count
  br i1 %cmp.n168, label %_ZL9check_ahxiP4t_bbPiS1_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec135, %vec.epilog.middle.block ]
  %.06269.ph = phi i32 [ 0, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  %.06468.ph = phi i32 [ 0, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %.06269 = phi i32 [ %.163, %bb.c ], [ %.06269.ph, %.lr.ph.preheader ]
  %.06468 = phi i32 [ %spec.select, %bb.c ], [ %.06468.ph, %.lr.ph.preheader ]
  %i.cn = getelementptr inbounds nuw [108 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32 ; 4 uses
  %.not54 = icmp slt i32 %i.cp, %7
  %.not55 = icmp sgt i32 %i.cp, %8
  %or.cond = or i1 %.not54, %.not55
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i8 1, ptr %i.cq, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.cr = icmp eq i32 %i.cp, %7
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %spec.select = select i1 %i.cr, i32 %i.cs, i32 %.06468 ; 2 uses
  %i.ct = icmp eq i32 %i.cp, %8
  %.163 = select i1 %i.ct, i32 %i.cs, i32 %.06269 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9check_ahxiP4t_bbPiS1_.exit, label %.lr.ph, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.preheader.i.i, label %_ZL10set_ahcityiP4t_bb.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %0 to i64
  %i.cu = load <2 x float>, ptr %1, align 4, !tbaa !10
  %i.cv = fpext <2 x float> %i.cu to <2 x double>
  %i.cw = fadd <2 x double> %i.cv, <double 5.500000e+01, double 4.500000e+01> ; 2 uses
  %i.cx = fmul <2 x double> %i.cw, %i.cw          ; 2 uses
  %shift = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cx, %shift
  %i.cy = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i8 0, ptr %i.cz, align 4, !tbaa !19
  %i.da = fcmp olt double %i.cy, f0x40A387FFF0000000
  br i1 %i.da, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.preheader.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dc = load float, ptr %i.db, align 4, !tbaa !23
  %i.dd = fpext float %i.dc to double
  %i.de = fcmp olt double %i.dd, 3.600000e-01
  br i1 %i.de, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.cz, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.preheader.i.i
  %exitcond.peel.not.i.i = icmp eq i32 %0, 1
  br i1 %exitcond.peel.not.i.i, label %_ZL10set_ahcityiP4t_bb.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.df = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter = and i64 %i.df, 1
  %i.dg = icmp eq i32 %0, 2
  br i1 %i.dg, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.df, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %bb.n ]
  %i.dh = getelementptr inbounds nuw [108 x i8], ptr %1, i64 %indvars.iv.i.i ; 4 uses
  %i.di = load <2 x float>, ptr %i.dh, align 4, !tbaa !10
  %i.dj = fpext <2 x float> %i.di to <2 x double>
  %i.dk = fadd <2 x double> %i.dj, <double 5.500000e+01, double 4.500000e+01> ; 2 uses
  %i.dl = fmul <2 x double> %i.dk, %i.dk          ; 2 uses
  %shift182 = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop183 = fadd <2 x double> %i.dl, %shift182
  %i.dm = extractelement <2 x double> %foldExtExtBinop183, i64 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  store i8 0, ptr %i.dn, align 4, !tbaa !19
  %i.do = fcmp olt double %i.dm, f0x40A387FFF0000000
  br i1 %i.do, label %bb.h, label %.lr.ph.i.i.1

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !23
  %i.dr = fpext float %i.dq to double
  %i.ds = fcmp olt double %i.dr, 3.600000e-01
  br i1 %i.ds, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr i8, ptr %i.dh, i64 -76
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !19, !range !20, !noundef !21
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.j, label %.lr.ph.i.i.1

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 1, ptr %i.dn, align 4, !tbaa !19
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.dw = getelementptr inbounds nuw [108 x i8], ptr %1, i64 %indvars.iv.i.i ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 108
  %i.dy = load <2 x float>, ptr %i.dx, align 4, !tbaa !10
  %i.dz = fpext <2 x float> %i.dy to <2 x double>
  %i.ea = fadd <2 x double> %i.dz, <double 5.500000e+01, double 4.500000e+01> ; 2 uses
  %i.eb = fmul <2 x double> %i.ea, %i.ea          ; 2 uses
  %shift182.1 = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop183.1 = fadd <2 x double> %i.eb, %shift182.1
  %i.ec = extractelement <2 x double> %foldExtExtBinop183.1, i64 0
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 140 ; 2 uses
  store i8 0, ptr %i.ed, align 4, !tbaa !19
  %i.ee = fcmp olt double %i.ec, f0x40A387FFF0000000
  br i1 %i.ee, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i.i.1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !23
  %i.eh = fpext float %i.eg to double
  %i.ei = fcmp olt double %i.eh, 3.600000e-01
  br i1 %i.ei, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ej = getelementptr i8, ptr %i.dw, i64 32
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !19, !range !20, !noundef !21
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i8 1, ptr %i.ed, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i.i.1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL10set_ahcityiP4t_bb.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !99

_ZL10set_ahcityiP4t_bb.exit.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL10set_ahcityiP4t_bb.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZL10set_ahcityiP4t_bb.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.1, %_ZL10set_ahcityiP4t_bb.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod192 = trunc i64 %i.df to i1
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.em = getelementptr inbounds nuw [108 x i8], ptr %1, i64 %indvars.iv.i.i.epil.init ; 4 uses
  %i.en = load <2 x float>, ptr %i.em, align 4, !tbaa !10
  %i.eo = fpext <2 x float> %i.en to <2 x double>
  %i.ep = fadd <2 x double> %i.eo, <double 5.500000e+01, double 4.500000e+01> ; 2 uses
  %i.eq = fmul <2 x double> %i.ep, %i.ep          ; 2 uses
  %shift182.epil = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop183.epil = fadd <2 x double> %i.eq, %shift182.epil
  %i.er = extractelement <2 x double> %foldExtExtBinop183.epil, i64 0
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 2 uses
  store i8 0, ptr %i.es, align 4, !tbaa !19
  %i.et = fcmp olt double %i.er, f0x40A387FFF0000000
  br i1 %i.et, label %bb.o, label %_ZL10set_ahcityiP4t_bb.exit.i

bb.o:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !23
  %i.ew = fpext float %i.ev to double
  %i.ex = fcmp olt double %i.ew, 3.600000e-01
  br i1 %i.ex, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ey = getelementptr i8, ptr %i.em, i64 -76
  %i.ez = load i8, ptr %i.ey, align 4, !tbaa !19, !range !20, !noundef !21
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.q, label %_ZL10set_ahcityiP4t_bb.exit.i

bb.q:                                             ; preds = %bb.p, %bb.o
  store i8 1, ptr %i.es, align 4, !tbaa !19
  br label %_ZL10set_ahcityiP4t_bb.exit.i
end_hunk_0
