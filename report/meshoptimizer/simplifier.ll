Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
.lr.ph319.split.us.i.1:                           ; preds = %bb.ba, %.lr.ph319.split.us.i
  %i.ru = or disjoint i64 %.0223318.us.i, 1       ; 2 uses
  %i.rv = and i64 %i.ru, 4294967295
  %i.rw = getelementptr inbounds nuw i8, ptr %10, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !29
  %i.ry = and i8 %i.rx, 1
  %.not258.us.i.1 = icmp eq i8 %i.ry, 0
  br i1 %.not258.us.i.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph319.split.us.i.1
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ru
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !28
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.sb
  store i8 4, ptr %i.sc, align 1, !tbaa !29
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph319.split.us.i.1
  %i.sd = add nuw i64 %.0223318.us.i, 2           ; 2 uses
  %niter1299.next.1 = add i64 %niter1299, 2       ; 2 uses
  %niter1299.ncmp.1 = icmp eq i64 %niter1299.next.1, %unroll_iter1298
  br i1 %niter1299.ncmp.1, label %.lr.ph321.i.preheader.loopexit.unr-lcssa, label %.lr.ph319.split.us.i, !llvm.loop !76

.lr.ph319.split.i:                                ; preds = %bb.bf, %.lr.ph319.split.i.preheader.new
  %.0223318.i = phi i64 [ 0, %.lr.ph319.split.i.preheader.new ], [ %i.sz, %bb.bf ] ; 4 uses
  %niter1293 = phi i64 [ 0, %.lr.ph319.split.i.preheader.new ], [ %niter1293.next.1, %bb.bf ]
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.0223318.i
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !28
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %10, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !29
  %i.sj = and i8 %i.si, 1
  %.not258.i = icmp eq i8 %i.sj, 0
  br i1 %.not258.i, label %.lr.ph319.split.i.1, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph319.split.i
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0223318.i
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !28
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.sm
  store i8 4, ptr %i.sn, align 1, !tbaa !29
  br label %.lr.ph319.split.i.1

.lr.ph319.split.i.1:                              ; preds = %bb.bd, %.lr.ph319.split.i
  %i.so = or disjoint i64 %.0223318.i, 1          ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.so
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !28
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %10, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !29
  %i.su = and i8 %i.st, 1
  %.not258.i.1 = icmp eq i8 %i.su, 0
  br i1 %.not258.i.1, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph319.split.i.1
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.so
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !28
  %i.sx = zext i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.sx
  store i8 4, ptr %i.sy, align 1, !tbaa !29
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph319.split.i.1
  %i.sz = add nuw i64 %.0223318.i, 2              ; 2 uses
  %niter1293.next.1 = add i64 %niter1293, 2       ; 2 uses
  %niter1293.ncmp.1 = icmp eq i64 %niter1293.next.1, %unroll_iter1292
  br i1 %niter1293.ncmp.1, label %.lr.ph321.i.preheader.loopexit1253.unr-lcssa, label %.lr.ph319.split.i, !llvm.loop !76

.lr.ph321.i.preheader.loopexit.unr-lcssa:         ; preds = %bb.bc
  %lcmp.mod1296.not = icmp eq i64 %xtraiter1294, 0
  br i1 %lcmp.mod1296.not, label %.lr.ph321.i.preheader, label %.lr.ph319.split.us.i.epil.preheader

.lr.ph319.split.us.i.epil.preheader:              ; preds = %.lr.ph321.i.preheader.loopexit.unr-lcssa, %.lr.ph319.split.us.i.preheader
  %.0223318.us.i.epil.init = phi i64 [ 0, %.lr.ph319.split.us.i.preheader ], [ %i.sd, %.lr.ph321.i.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1297 = trunc i64 %.0702 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1297)
  %i.ta = and i64 %.0223318.us.i.epil.init, 4294967295
  %i.tb = getelementptr inbounds nuw i8, ptr %10, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !29
  %i.td = and i8 %i.tc, 1
  %.not258.us.i.epil = icmp eq i8 %i.td, 0
  br i1 %.not258.us.i.epil, label %.lr.ph321.i.preheader, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph319.split.us.i.epil.preheader
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0223318.us.i.epil.init
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !28
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.tg
  store i8 4, ptr %i.th, align 1, !tbaa !29
  br label %.lr.ph321.i.preheader

.lr.ph321.i.preheader.loopexit1253.unr-lcssa:     ; preds = %bb.bf
  %lcmp.mod1290.not = icmp eq i64 %xtraiter1288, 0
  br i1 %lcmp.mod1290.not, label %.lr.ph321.i.preheader, label %.lr.ph319.split.i.epil.preheader

.lr.ph319.split.i.epil.preheader:                 ; preds = %.lr.ph321.i.preheader.loopexit1253.unr-lcssa, %.lr.ph319.split.i.preheader
  %.0223318.i.epil.init = phi i64 [ 0, %.lr.ph319.split.i.preheader ], [ %i.sz, %.lr.ph321.i.preheader.loopexit1253.unr-lcssa ] ; 2 uses
  %lcmp.mod1291 = trunc i64 %.0702 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1291)
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.0223318.i.epil.init
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !28
  %i.tk = zext i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %10, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !29
  %i.tn = and i8 %i.tm, 1
  %.not258.i.epil = icmp eq i8 %i.tn, 0
  br i1 %.not258.i.epil, label %.lr.ph321.i.preheader, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph319.split.i.epil.preheader
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0223318.i.epil.init
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !28
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.tq
  store i8 4, ptr %i.tr, align 1, !tbaa !29
  br label %.lr.ph321.i.preheader

.lr.ph321.i.preheader:                            ; preds = %.lr.ph321.i.preheader.loopexit1253.unr-lcssa, %bb.bh, %.lr.ph319.split.i.epil.preheader, %.lr.ph321.i.preheader.loopexit.unr-lcssa, %bb.bg, %.lr.ph319.split.us.i.epil.preheader
  %xtraiter1300 = and i64 %.0702, 1
  %i.ts = icmp eq i64 %.0702, 1
  br i1 %i.ts, label %.lr.ph321.i.epil.preheader, label %.lr.ph321.i.preheader.new

.lr.ph321.i.preheader.new:                        ; preds = %.lr.ph321.i.preheader
  %unroll_iter1304 = and i64 %.0702, -2
  br label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %bb.bk, %.lr.ph321.i.preheader.new
  %.0222320.i = phi i64 [ 0, %.lr.ph321.i.preheader.new ], [ %i.ui, %bb.bk ] ; 4 uses
  %niter1305 = phi i64 [ 0, %.lr.ph321.i.preheader.new ], [ %niter1305.next.1, %bb.bk ]
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0222320.i
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !28
  %i.tv = zext i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.tv
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !29
  %i.ty = icmp eq i8 %i.tx, 4
  br i1 %i.ty, label %bb.bi, label %.lr.ph321.i.1

bb.bi:                                            ; preds = %.lr.ph321.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0222320.i
  store i8 4, ptr %i.tz, align 1, !tbaa !29
  br label %.lr.ph321.i.1

.lr.ph321.i.1:                                    ; preds = %bb.bi, %.lr.ph321.i
  %i.ua = or disjoint i64 %.0222320.i, 1          ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !28
  %i.ud = zext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !29
  %i.ug = icmp eq i8 %i.uf, 4
  br i1 %i.ug, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph321.i.1
  %i.uh = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ua
  store i8 4, ptr %i.uh, align 1, !tbaa !29
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph321.i.1
  %i.ui = add nuw i64 %.0222320.i, 2              ; 2 uses
  %niter1305.next.1 = add i64 %niter1305, 2       ; 2 uses
  %niter1305.ncmp.1 = icmp eq i64 %niter1305.next.1, %unroll_iter1304
  br i1 %niter1305.ncmp.1, label %.loopexit284.i.loopexit.unr-lcssa, label %.lr.ph321.i, !llvm.loop !77

.loopexit284.i.loopexit.unr-lcssa:                ; preds = %bb.bk
  %lcmp.mod1302.not = icmp eq i64 %xtraiter1300, 0
  br i1 %lcmp.mod1302.not, label %.loopexit284.i, label %.lr.ph321.i.epil.preheader

.lr.ph321.i.epil.preheader:                       ; preds = %.loopexit284.i.loopexit.unr-lcssa, %.lr.ph321.i.preheader
  %.0222320.i.epil.init = phi i64 [ 0, %.lr.ph321.i.preheader ], [ %i.ui, %.loopexit284.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1303 = trunc i64 %.0702 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1303)
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0222320.i.epil.init
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !28
  %i.ul = zext i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !29
  %i.uo = icmp eq i8 %i.un, 4
  br i1 %i.uo, label %bb.bl, label %.loopexit284.i

bb.bl:                                            ; preds = %.lr.ph321.i.epil.preheader
  %i.up = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0222320.i.epil.init
  store i8 4, ptr %i.up, align 1, !tbaa !29
  br label %.loopexit284.i

.loopexit284.i:                                   ; preds = %.loopexit284.i.loopexit.unr-lcssa, %bb.bl, %.lr.ph321.i.epil.preheader, %.loopexit289.i
  %.not256.i = trunc i32 %13 to i1
  br i1 %.not256.i, label %iter.check, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit

iter.check:                                       ; preds = %.loopexit284.i
  %min.iters.check = icmp ult i64 %.0702, 8
  br i1 %min.iters.check, label %.lr.ph323.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1099 = icmp ult i64 %.0702, 32
  br i1 %min.iters.check1099, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.uq = and i64 %.0702, 24
  %n.vec = and i64 %.0702, -32                    ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue1162, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue1162 ] ; 33 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %wide.load = load <16 x i8>, ptr %i.ur, align 1, !tbaa !29
  %wide.load1100 = load <16 x i8>, ptr %i.us, align 1, !tbaa !29
  %i.ut = icmp eq <16 x i8> %wide.load, splat (i8 1) ; 16 uses
  %i.uu = icmp eq <16 x i8> %wide.load1100, splat (i8 1) ; 16 uses
  %i.uv = extractelement <16 x i1> %i.ut, i64 0
  br i1 %i.uv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 4, ptr %i.ur, align 1, !tbaa !29
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.uw = extractelement <16 x i1> %i.ut, i64 1
  br i1 %i.uw, label %pred.store.if1101, label %pred.store.continue1102

pred.store.if1101:                                ; preds = %pred.store.continue
  %i.ux = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 1
  store i8 4, ptr %i.uy, align 1, !tbaa !29
  br label %pred.store.continue1102

pred.store.continue1102:                          ; preds = %pred.store.if1101, %pred.store.continue
  %i.uz = extractelement <16 x i1> %i.ut, i64 2
  br i1 %i.uz, label %pred.store.if1103, label %pred.store.continue1104

pred.store.if1103:                                ; preds = %pred.store.continue1102
  %i.va = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  store i8 4, ptr %i.vb, align 1, !tbaa !29
  br label %pred.store.continue1104

pred.store.continue1104:                          ; preds = %pred.store.if1103, %pred.store.continue1102
  %i.vc = extractelement <16 x i1> %i.ut, i64 3
  br i1 %i.vc, label %pred.store.if1105, label %pred.store.continue1106

pred.store.if1105:                                ; preds = %pred.store.continue1104
  %i.vd = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 3
  store i8 4, ptr %i.ve, align 1, !tbaa !29
  br label %pred.store.continue1106

pred.store.continue1106:                          ; preds = %pred.store.if1105, %pred.store.continue1104
  %i.vf = extractelement <16 x i1> %i.ut, i64 4
  br i1 %i.vf, label %pred.store.if1107, label %pred.store.continue1108

pred.store.if1107:                                ; preds = %pred.store.continue1106
  %i.vg = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  store i8 4, ptr %i.vh, align 1, !tbaa !29
  br label %pred.store.continue1108

pred.store.continue1108:                          ; preds = %pred.store.if1107, %pred.store.continue1106
  %i.vi = extractelement <16 x i1> %i.ut, i64 5
  br i1 %i.vi, label %pred.store.if1109, label %pred.store.continue1110

pred.store.if1109:                                ; preds = %pred.store.continue1108
  %i.vj = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 5
  store i8 4, ptr %i.vk, align 1, !tbaa !29
  br label %pred.store.continue1110

pred.store.continue1110:                          ; preds = %pred.store.if1109, %pred.store.continue1108
  %i.vl = extractelement <16 x i1> %i.ut, i64 6
  br i1 %i.vl, label %pred.store.if1111, label %pred.store.continue1112

pred.store.if1111:                                ; preds = %pred.store.continue1110
  %i.vm = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 6
  store i8 4, ptr %i.vn, align 1, !tbaa !29
  br label %pred.store.continue1112

pred.store.continue1112:                          ; preds = %pred.store.if1111, %pred.store.continue1110
  %i.vo = extractelement <16 x i1> %i.ut, i64 7
  br i1 %i.vo, label %pred.store.if1113, label %pred.store.continue1114

pred.store.if1113:                                ; preds = %pred.store.continue1112
  %i.vp = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 7
  store i8 4, ptr %i.vq, align 1, !tbaa !29
  br label %pred.store.continue1114

pred.store.continue1114:                          ; preds = %pred.store.if1113, %pred.store.continue1112
  %i.vr = extractelement <16 x i1> %i.ut, i64 8
  br i1 %i.vr, label %pred.store.if1115, label %pred.store.continue1116

pred.store.if1115:                                ; preds = %pred.store.continue1114
  %i.vs = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  store i8 4, ptr %i.vt, align 1, !tbaa !29
  br label %pred.store.continue1116

pred.store.continue1116:                          ; preds = %pred.store.if1115, %pred.store.continue1114
  %i.vu = extractelement <16 x i1> %i.ut, i64 9
  br i1 %i.vu, label %pred.store.if1117, label %pred.store.continue1118

pred.store.if1117:                                ; preds = %pred.store.continue1116
  %i.vv = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 9
  store i8 4, ptr %i.vw, align 1, !tbaa !29
  br label %pred.store.continue1118

pred.store.continue1118:                          ; preds = %pred.store.if1117, %pred.store.continue1116
  %i.vx = extractelement <16 x i1> %i.ut, i64 10
  br i1 %i.vx, label %pred.store.if1119, label %pred.store.continue1120

pred.store.if1119:                                ; preds = %pred.store.continue1118
  %i.vy = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 10
  store i8 4, ptr %i.vz, align 1, !tbaa !29
  br label %pred.store.continue1120

pred.store.continue1120:                          ; preds = %pred.store.if1119, %pred.store.continue1118
  %i.wa = extractelement <16 x i1> %i.ut, i64 11
  br i1 %i.wa, label %pred.store.if1121, label %pred.store.continue1122

pred.store.if1121:                                ; preds = %pred.store.continue1120
  %i.wb = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 11
  store i8 4, ptr %i.wc, align 1, !tbaa !29
  br label %pred.store.continue1122

pred.store.continue1122:                          ; preds = %pred.store.if1121, %pred.store.continue1120
  %i.wd = extractelement <16 x i1> %i.ut, i64 12
  br i1 %i.wd, label %pred.store.if1123, label %pred.store.continue1124

pred.store.if1123:                                ; preds = %pred.store.continue1122
  %i.we = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 12
  store i8 4, ptr %i.wf, align 1, !tbaa !29
  br label %pred.store.continue1124

pred.store.continue1124:                          ; preds = %pred.store.if1123, %pred.store.continue1122
  %i.wg = extractelement <16 x i1> %i.ut, i64 13
  br i1 %i.wg, label %pred.store.if1125, label %pred.store.continue1126

pred.store.if1125:                                ; preds = %pred.store.continue1124
  %i.wh = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 13
  store i8 4, ptr %i.wi, align 1, !tbaa !29
  br label %pred.store.continue1126

pred.store.continue1126:                          ; preds = %pred.store.if1125, %pred.store.continue1124
  %i.wj = extractelement <16 x i1> %i.ut, i64 14
  br i1 %i.wj, label %pred.store.if1127, label %pred.store.continue1128

pred.store.if1127:                                ; preds = %pred.store.continue1126
  %i.wk = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 14
  store i8 4, ptr %i.wl, align 1, !tbaa !29
  br label %pred.store.continue1128

pred.store.continue1128:                          ; preds = %pred.store.if1127, %pred.store.continue1126
  %i.wm = extractelement <16 x i1> %i.ut, i64 15
  br i1 %i.wm, label %pred.store.if1129, label %pred.store.continue1130

pred.store.if1129:                                ; preds = %pred.store.continue1128
  %i.wn = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 15
  store i8 4, ptr %i.wo, align 1, !tbaa !29
  br label %pred.store.continue1130

pred.store.continue1130:                          ; preds = %pred.store.if1129, %pred.store.continue1128
  %i.wp = extractelement <16 x i1> %i.uu, i64 0
  br i1 %i.wp, label %pred.store.if1131, label %pred.store.continue1132

pred.store.if1131:                                ; preds = %pred.store.continue1130
  %i.wq = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store i8 4, ptr %i.wr, align 1, !tbaa !29
  br label %pred.store.continue1132

pred.store.continue1132:                          ; preds = %pred.store.if1131, %pred.store.continue1130
  %i.ws = extractelement <16 x i1> %i.uu, i64 1
  br i1 %i.ws, label %pred.store.if1133, label %pred.store.continue1134

pred.store.if1133:                                ; preds = %pred.store.continue1132
  %i.wt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 17
  store i8 4, ptr %i.wu, align 1, !tbaa !29
  br label %pred.store.continue1134

pred.store.continue1134:                          ; preds = %pred.store.if1133, %pred.store.continue1132
  %i.wv = extractelement <16 x i1> %i.uu, i64 2
  br i1 %i.wv, label %pred.store.if1135, label %pred.store.continue1136

pred.store.if1135:                                ; preds = %pred.store.continue1134
  %i.ww = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 18
  store i8 4, ptr %i.wx, align 1, !tbaa !29
  br label %pred.store.continue1136

pred.store.continue1136:                          ; preds = %pred.store.if1135, %pred.store.continue1134
  %i.wy = extractelement <16 x i1> %i.uu, i64 3
  br i1 %i.wy, label %pred.store.if1137, label %pred.store.continue1138

pred.store.if1137:                                ; preds = %pred.store.continue1136
  %i.wz = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
end_hunk_0
