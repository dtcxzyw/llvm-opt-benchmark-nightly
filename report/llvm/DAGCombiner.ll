Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30678
inline.NumDeleted: 6200
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEEEEEvPPT_jPjPKj:bb.a
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index
  store <2 x i64> %wide.load165, ptr %i.dk, align 8, !tbaa !367, !alias.scope !2634, !noalias !2633
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !2607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.co
  br i1 %cmp.n, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i7.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i7.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.015.i.i.i.ph = phi i32 [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.i7.i.i ], [ %i.dd, %middle.block ] ; 5 uses
  %i.dm = sub i32 %i.r, %.015.i.i.i.ph
  %.neg = add i32 %.015.i.i.i.ph, 1
  %xtraiter357 = and i32 %i.dm, 1
  %lcmp.mod358.not = icmp eq i32 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dn = zext i32 %.015.i.i.i.ph to i64          ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.ph
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !75
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !75
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !367
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i.ph
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !367
  %i.du = add i32 %.015.i.i.i.ph, 1
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %.015.i.i.i.unr = phi i32 [ %.015.i.i.i.ph, %scalar.ph.preheader ], [ %i.du, %scalar.ph.prol ]
  %i.dv = icmp eq i32 %i.r, %.neg
  br i1 %i.dv, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.015.i.i.i = phi i32 [ %i.el, %scalar.ph ], [ %.015.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dw = zext i32 %.015.i.i.i to i64             ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !75
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !75
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !367
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !367
  %i.ed = add i32 %.015.i.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !75
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !75
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ee
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !367
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.i.i
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !367
  %i.el = add i32 %.015.i.i.i, 2                  ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %.not.i8.i.i.1 = icmp eq i32 %i.el, %i.r
  br i1 %.not.i8.i.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph, !llvm.loop !2608

.lr.ph.i.i24.i:                                   ; preds = %.lr.ph156
  %i.em = sub nsw i32 0, %i.s                     ; 2 uses
  %i.en = sub i32 12, %i.r                        ; 2 uses
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.em)
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.en, i32 %i.eo) ; 5 uses
  %.not13.i.i29.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not13.i.i29.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i, label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i24.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 4 uses
  %i.er = zext i32 %.sroa.speculated.i to i64     ; 7 uses
  %min.iters.check225 = icmp ult i32 %.sroa.speculated.i, 12
  br i1 %min.iters.check225, label %scalar.ph224.preheader, label %vector.scevcheck215

vector.scevcheck215:                              ; preds = %.lr.ph.i.i30.i
  %i.es = add nsw i64 %i.er, -1                   ; 2 uses
  %i.et = trunc nsw i64 %i.es to i32
  %i.eu = xor i32 %i.r, -1
  %i.ev = icmp ult i32 %i.eu, %i.et
  %i.ew = icmp ugt i64 %i.es, 4294967295
  %i.ex = or i1 %i.ev, %i.ew
  br i1 %i.ex, label %scalar.ph224.preheader, label %vector.memcheck226

vector.memcheck226:                               ; preds = %vector.scevcheck215
  %i.ey = shl nuw nsw i64 %i.er, 3                ; 2 uses
  %i.ez = getelementptr i8, ptr %i.n, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 96
  %i.fb = zext i32 %i.r to i64
  %i.fc = shl nuw nsw i64 %i.fb, 3                ; 2 uses
  %i.fd = getelementptr i8, ptr %i.p, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.p, i64 %i.ey
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %i.fg = getelementptr i8, ptr %i.ff, i64 96
  %bound0227 = icmp ult ptr %i.n, %i.fg
  %bound1228 = icmp ult ptr %i.fd, %i.fa
  %found.conflict229 = and i1 %bound0227, %bound1228
  br i1 %found.conflict229, label %scalar.ph224.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck226
  %n.vec231 = and i64 %i.er, 2147483646           ; 4 uses
  %i.fh = trunc nuw nsw i64 %n.vec231 to i32
  %i.fi = add i32 %i.r, %i.fh
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next236, %vector.body232 ] ; 4 uses
  %i.fj = trunc i64 %index233 to i32
  %i.fk = add i32 %i.r, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index233
  %i.fm = zext i32 %i.fk to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fm
  %wide.load234 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !75, !alias.scope !2635, !noalias !2636
  store <2 x i64> %wide.load234, ptr %i.fn, align 8, !tbaa !75, !alias.scope !2636
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index233
  %wide.load235 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !367, !alias.scope !2635, !noalias !2636
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fm
  store <2 x i64> %wide.load235, ptr %i.fp, align 8, !tbaa !367, !alias.scope !2636
  %index.next236 = add nuw i64 %index233, 2       ; 2 uses
  %i.fq = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.fq, label %middle.block237, label %vector.body232, !llvm.loop !2612

middle.block237:                                  ; preds = %vector.body232
  %cmp.n238 = icmp eq i64 %n.vec231, %i.er
  br i1 %cmp.n238, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i, label %scalar.ph224.preheader

scalar.ph224.preheader:                           ; preds = %vector.memcheck226, %vector.scevcheck215, %.lr.ph.i.i30.i, %middle.block237
  %indvars.iv.i31.i.ph = phi i64 [ 0, %vector.memcheck226 ], [ 0, %vector.scevcheck215 ], [ 0, %.lr.ph.i.i30.i ], [ %n.vec231, %middle.block237 ] ; 5 uses
  %.01214.i.i.i.ph = phi i32 [ %i.r, %vector.memcheck226 ], [ %i.r, %vector.scevcheck215 ], [ %i.r, %.lr.ph.i.i30.i ], [ %i.fi, %middle.block237 ] ; 3 uses
  %xtraiter = and i64 %i.er, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph224.prol.loopexit, label %scalar.ph224.prol

scalar.ph224.prol:                                ; preds = %scalar.ph224.preheader
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i31.i.ph
  %i.fs = zext i32 %.01214.i.i.i.ph to i64        ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fs
  %i.fu = load i64, ptr %i.fr, align 8, !tbaa !75
  store i64 %i.fu, ptr %i.ft, align 8, !tbaa !75
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i31.i.ph
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !367
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fs
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !367
  %indvars.iv.next.i32.i.prol = or disjoint i64 %indvars.iv.i31.i.ph, 1
  %i.fy = add i32 %.01214.i.i.i.ph, 1
  br label %scalar.ph224.prol.loopexit

scalar.ph224.prol.loopexit:                       ; preds = %scalar.ph224.prol, %scalar.ph224.preheader
  %indvars.iv.i31.i.unr = phi i64 [ %indvars.iv.i31.i.ph, %scalar.ph224.preheader ], [ %indvars.iv.next.i32.i.prol, %scalar.ph224.prol ]
  %.01214.i.i.i.unr = phi i32 [ %.01214.i.i.i.ph, %scalar.ph224.preheader ], [ %i.fy, %scalar.ph224.prol ]
  %i.fz = add nsw i64 %i.er, -1
  %i.ga = icmp eq i64 %indvars.iv.i31.i.ph, %i.fz
  br i1 %i.ga, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i, label %scalar.ph224

scalar.ph224:                                     ; preds = %scalar.ph224.prol.loopexit, %scalar.ph224
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph224 ], [ %indvars.iv.i31.i.unr, %scalar.ph224.prol.loopexit ] ; 4 uses
  %.01214.i.i.i = phi i32 [ %i.gq, %scalar.ph224 ], [ %.01214.i.i.i.unr, %scalar.ph224.prol.loopexit ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i31.i
  %i.gc = zext i32 %.01214.i.i.i to i64           ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gc
  %i.ge = load i64, ptr %i.gb, align 8, !tbaa !75
  store i64 %i.ge, ptr %i.gd, align 8, !tbaa !75
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i31.i
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !367
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gc
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !367
  %indvars.iv.next.i32.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.gi = add i32 %.01214.i.i.i, 1
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i32.i
  %i.gk = zext i32 %i.gi to i64                   ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gk
  %i.gm = load i64, ptr %i.gj, align 8, !tbaa !75
  store i64 %i.gm, ptr %i.gl, align 8, !tbaa !75
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next.i32.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !367
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gk
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !367
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %i.gq = add i32 %.01214.i.i.i, 2
  %.not.i.i33.i.1 = icmp eq i64 %indvars.iv.next.i32.i.1, %i.er
  br i1 %.not.i.i33.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i, label %scalar.ph224, !llvm.loop !2613

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i: ; preds = %scalar.ph224.prol.loopexit, %scalar.ph224, %middle.block237, %.lr.ph.i.i24.i
  %.not13.i.i.i.i.i = icmp eq i32 %i.l, %.sroa.speculated.i
  br i1 %.not13.i.i.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 8 uses
  %i.gs = zext i32 %i.l to i64                    ; 4 uses
  %i.gt = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.em)
  %i.gu = tail call i32 @llvm.umin.i32(i32 %i.gt, i32 %i.en)
  %umin122 = zext i32 %i.gu to i64                ; 6 uses
  %i.gv = sub nsw i64 %i.gs, %umin122             ; 3 uses
  %min.iters.check197 = icmp ult i64 %i.gv, 10
  br i1 %min.iters.check197, label %scalar.ph196.preheader, label %vector.memcheck198

vector.memcheck198:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.gw = shl nuw nsw i64 %umin122, 3
  %i.gx = add nsw i64 %i.gw, -81
  %diff.check202 = icmp ult i64 %i.gx, 15
  br i1 %diff.check202, label %scalar.ph196.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck198
  %n.vec205 = and i64 %i.gv, -2                   ; 4 uses
  %i.gy = add nsw i64 %n.vec205, %umin122
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next210, %vector.body206 ] ; 4 uses
  %i.gz = add nuw i64 %index207, %umin122         ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index207
  %wide.load208 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !75
  store <2 x i64> %wide.load208, ptr %i.hb, align 8, !tbaa !75
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gz
  %wide.load209 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !367
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index207
  store <2 x i64> %wide.load209, ptr %i.hd, align 8, !tbaa !367
  %index.next210 = add nuw i64 %index207, 2       ; 2 uses
  %i.he = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.he, label %middle.block211, label %vector.body206, !llvm.loop !2614

middle.block211:                                  ; preds = %vector.body206
  %cmp.n212 = icmp eq i64 %i.gv, %n.vec205
  br i1 %cmp.n212, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i, label %scalar.ph196.preheader

scalar.ph196.preheader:                           ; preds = %vector.memcheck198, %.lr.ph.i.i.i.i.i, %middle.block211
  %indvars.iv.ph = phi i64 [ %umin122, %vector.memcheck198 ], [ %umin122, %.lr.ph.i.i.i.i.i ], [ %i.gy, %middle.block211 ] ; 6 uses
  %indvars.iv6.i.i.ph = phi i64 [ 0, %vector.memcheck198 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec205, %middle.block211 ] ; 4 uses
  %i.hf = sub nsw i64 %i.gs, %indvars.iv.ph
  %xtraiter353 = and i64 %i.hf, 1
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod354.not, label %scalar.ph196.prol.loopexit, label %scalar.ph196.prol

scalar.ph196.prol:                                ; preds = %scalar.ph196.preheader
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.ph
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv6.i.i.ph
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !75
  store i64 %i.hi, ptr %i.hh, align 8, !tbaa !75
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.ph
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !367
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv6.i.i.ph
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !367
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  %indvars.iv.next7.i.i.prol = or disjoint i64 %indvars.iv6.i.i.ph, 1
  br label %scalar.ph196.prol.loopexit

scalar.ph196.prol.loopexit:                       ; preds = %scalar.ph196.prol, %scalar.ph196.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph196.preheader ], [ %indvars.iv.next.prol, %scalar.ph196.prol ]
  %indvars.iv6.i.i.unr = phi i64 [ %indvars.iv6.i.i.ph, %scalar.ph196.preheader ], [ %indvars.iv.next7.i.i.prol, %scalar.ph196.prol ]
  %i.hm = add nsw i64 %i.gs, -1
  %i.hn = icmp eq i64 %indvars.iv.ph, %i.hm
  br i1 %i.hn, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i, label %scalar.ph196

scalar.ph196:                                     ; preds = %scalar.ph196.prol.loopexit, %scalar.ph196
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph196 ], [ %indvars.iv.unr, %scalar.ph196.prol.loopexit ] ; 4 uses
  %indvars.iv6.i.i = phi i64 [ %indvars.iv.next7.i.i.1, %scalar.ph196 ], [ %indvars.iv6.i.i.unr, %scalar.ph196.prol.loopexit ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv6.i.i
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !75
  store i64 %i.hq, ptr %i.hp, align 8, !tbaa !75
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !367
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv6.i.i
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !367
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv6.i.i, 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next7.i.i
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !75
  store i64 %i.hw, ptr %i.hv, align 8, !tbaa !75
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !367
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next7.i.i
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !367
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next7.i.i.1 = add nuw nsw i64 %indvars.iv6.i.i, 2
  %.not.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.1, %i.gs
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i, label %scalar.ph196, !llvm.loop !2615

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i: ; preds = %scalar.ph196.prol.loopexit, %scalar.ph196, %middle.block211, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i
  %i.ia = sub nsw i32 0, %.sroa.speculated.i
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE9moveRightEjjj.exit.i.i, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i
  %.0.i = phi i32 [ %i.ia, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE9moveRightEjjj.exit.i.i ], [ %.sroa.speculated46.i, %middle.block ], [ %.sroa.speculated46.i, %scalar.ph ], [ %.sroa.speculated46.i, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.ib = load i32, ptr %i.q, align 4, !tbaa !198
  %i.ic = sub i32 %i.ib, %.0.i
  store i32 %i.ic, ptr %i.q, align 4, !tbaa !198
  %i.id = load i32, ptr %i.d, align 4, !tbaa !198
  %i.ie = add i32 %i.id, %.0.i                    ; 3 uses
  store i32 %i.ie, ptr %i.d, align 4, !tbaa !198
  %i.if = load i32, ptr %i.f, align 4, !tbaa !198 ; 2 uses
  %.not77 = icmp ult i32 %i.ie, %i.if
  br i1 %.not77, label %bb.b, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit..loopexit116.loopexit_crit_edge, !llvm.loop !2601

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit..loopexit116.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit
  br label %.loopexit116, !llvm.loop !2601

.loopexit116:                                     ; preds = %bb.b, %.preheader115, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit..loopexit116.loopexit_crit_edge, %.lr.ph
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, -1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next124, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2616

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.loopexit
  %indvars.iv133 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next134, %.loopexit ] ; 5 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv133 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !198 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv133 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !198 ; 2 uses
  %i.ik = icmp eq i32 %i.ih, %i.ij
  br i1 %i.ik, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph121
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv133
  %i.im = trunc nuw nsw i64 %indvars.iv133 to i32
  %.0157 = add i32 %i.im, 1                       ; 2 uses
  %.not74158 = icmp eq i32 %.0157, %1
  br i1 %.not74158, label %.loopexit, label %.lr.ph160

bb.c:                                             ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112
  %.0 = add i32 %.0159, 1                         ; 2 uses
  %.not74 = icmp eq i32 %.0, %1
  br i1 %.not74, label %.loopexit, label %.lr.ph160, !llvm.loop !2617

.lr.ph160:                                        ; preds = %.preheader, %bb.c
  %.0159 = phi i32 [ %.0, %bb.c ], [ %.0157, %.preheader ] ; 2 uses
  %i.in = phi i32 [ %i.rh, %bb.c ], [ %i.ih, %.preheader ] ; 16 uses
  %i.io = phi i32 [ %i.ri, %bb.c ], [ %i.ij, %.preheader ]
  %i.ip = zext i32 %.0159 to i64                  ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !976 ; 32 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ip ; 3 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !198 ; 11 uses
  %i.iu = load ptr, ptr %i.il, align 8, !tbaa !976 ; 14 uses
  %i.iv = sub i32 %i.in, %i.io                    ; 4 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph.i.i.i96, label %.lr.ph.i.i24.i78

.lr.ph.i.i.i96:                                   ; preds = %.lr.ph160
  %i.ix = sub i32 12, %i.it                       ; 2 uses
  %i.iy = tail call i32 @llvm.umin.i32(i32 %i.in, i32 %i.iv)
  %.sroa.speculated46.i98 = tail call i32 @llvm.umin.i32(i32 %i.ix, i32 %i.iy) ; 12 uses
  %.not9.i.i.i99 = icmp eq i32 %i.it, 0
  br i1 %.not9.i.i.i99, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE9moveRightEjjj.exit.i.i105, label %.lr.ph.i.i21.i100

.lr.ph.i.i21.i100:                                ; preds = %.lr.ph.i.i.i96
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 96 ; 8 uses
  %i.ja = zext i32 %i.it to i64                   ; 6 uses
  %min.iters.check275 = icmp ult i32 %i.it, 14
  %i.jb = sub i32 0, %i.it
  %i.jc = icmp ugt i32 %.sroa.speculated46.i98, %i.jb
  %or.cond350 = select i1 %min.iters.check275, i1 true, i1 %i.jc
  br i1 %or.cond350, label %scalar.ph274.preheader, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph.i.i21.i100
  %i.jd = add i32 %i.it, -1
  %i.je = zext i32 %i.jd to i64
  %i.jf = shl nuw nsw i64 %i.je, 3                ; 3 uses
  %i.jg = add i32 %i.it, %.sroa.speculated46.i98
  %i.jh = add i32 %i.jg, -1
  %i.ji = zext i32 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 3                ; 3 uses
  %i.jk = sub nsw i64 %i.jj, %i.jf
  %diff.check277 = icmp ugt i64 %i.jk, -32
  %i.jl = sub nsw i64 %i.jj, %i.jf
  %i.jm = add nsw i64 %i.jl, -97
  %diff.check278 = icmp ult i64 %i.jm, 31
  %conflict.rdx279 = or i1 %diff.check277, %diff.check278
  %i.jn = sub nsw i64 %i.jf, %i.jj
  %i.jo = add nsw i64 %i.jn, -97
  %diff.check280 = icmp ult i64 %i.jo, 31
  %conflict.rdx281 = or i1 %conflict.rdx279, %diff.check280
  br i1 %conflict.rdx281, label %scalar.ph274.preheader, label %vector.ph282

vector.ph282:                                     ; preds = %vector.memcheck276
  %n.vec283 = and i64 %i.ja, 4294967292           ; 2 uses
  %i.jp = and i64 %i.ja, 3
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph282
  %index285 = phi i64 [ 0, %vector.ph282 ], [ %index.next290, %vector.body284 ] ; 2 uses
  %i.jq = xor i64 %index285, -1
  %i.jr = add i64 %i.jq, %i.ja                    ; 2 uses
  %i.js = trunc i64 %i.jr to i32
  %i.jt = and i64 %i.jr, 4294967295               ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.jt ; 2 uses
  %i.jv = add i32 %.sroa.speculated46.i98, %i.js
  %i.jw = zext i32 %i.jv to i64                   ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.jw ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.ju, i64 -8
  %i.jz = getelementptr inbounds i8, ptr %i.ju, i64 -24
  %wide.load286 = load <2 x i64>, ptr %i.jy, align 8, !tbaa !75
  %wide.load287 = load <2 x i64>, ptr %i.jz, align 8, !tbaa !75
end_hunk_0
begin_hunk_1_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEEEEEvPPT_jPjPKj:bb.a
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %index259
  store <2 x i64> %wide.load261, ptr %i.mn, align 8, !tbaa !367, !alias.scope !2638, !noalias !2637
  %index.next262 = add nuw i64 %index259, 2       ; 2 uses
  %i.mo = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.mo, label %middle.block263, label %vector.body258, !llvm.loop !2623

middle.block263:                                  ; preds = %vector.body258
  %cmp.n264 = icmp eq i64 %n.vec257, %i.lr
  br i1 %cmp.n264, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph250.preheader

scalar.ph250.preheader:                           ; preds = %vector.memcheck252, %.lr.ph.i7.i.i107, %middle.block263
  %indvars.iv.i.i108.ph = phi i64 [ 0, %vector.memcheck252 ], [ 0, %.lr.ph.i7.i.i107 ], [ %n.vec257, %middle.block263 ] ; 4 uses
  %.015.i.i.i109.ph = phi i32 [ %i.lm, %vector.memcheck252 ], [ %i.lm, %.lr.ph.i7.i.i107 ], [ %i.mg, %middle.block263 ] ; 5 uses
  %i.mp = sub i32 %i.in, %.015.i.i.i109.ph
  %.neg367 = add i32 %.015.i.i.i109.ph, 1
  %xtraiter365 = and i32 %i.mp, 1
  %lcmp.mod366.not = icmp eq i32 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %scalar.ph250.prol.loopexit, label %scalar.ph250.prol

scalar.ph250.prol:                                ; preds = %scalar.ph250.preheader
  %i.mq = zext i32 %.015.i.i.i109.ph to i64       ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.mq
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i.i108.ph
  %i.mt = load i64, ptr %i.mr, align 8, !tbaa !75
  store i64 %i.mt, ptr %i.ms, align 8, !tbaa !75
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.mq
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !367
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv.i.i108.ph
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !367
  %i.mx = add i32 %.015.i.i.i109.ph, 1
  %indvars.iv.next.i.i110.prol = or disjoint i64 %indvars.iv.i.i108.ph, 1
  br label %scalar.ph250.prol.loopexit

scalar.ph250.prol.loopexit:                       ; preds = %scalar.ph250.prol, %scalar.ph250.preheader
  %indvars.iv.i.i108.unr = phi i64 [ %indvars.iv.i.i108.ph, %scalar.ph250.preheader ], [ %indvars.iv.next.i.i110.prol, %scalar.ph250.prol ]
  %.015.i.i.i109.unr = phi i32 [ %.015.i.i.i109.ph, %scalar.ph250.preheader ], [ %i.mx, %scalar.ph250.prol ]
  %i.my = icmp eq i32 %i.in, %.neg367
  br i1 %i.my, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph250

scalar.ph250:                                     ; preds = %scalar.ph250.prol.loopexit, %scalar.ph250
  %indvars.iv.i.i108 = phi i64 [ %indvars.iv.next.i.i110.1, %scalar.ph250 ], [ %indvars.iv.i.i108.unr, %scalar.ph250.prol.loopexit ] ; 4 uses
  %.015.i.i.i109 = phi i32 [ %i.no, %scalar.ph250 ], [ %.015.i.i.i109.unr, %scalar.ph250.prol.loopexit ] ; 3 uses
  %i.mz = zext i32 %.015.i.i.i109 to i64          ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.mz
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i.i108
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !75
  store i64 %i.nc, ptr %i.nb, align 8, !tbaa !75
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.mz
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !367
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv.i.i108
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !367
  %i.ng = add i32 %.015.i.i.i109, 1
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %i.nh = zext i32 %i.ng to i64                   ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.nh
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i.i110
  %i.nk = load i64, ptr %i.ni, align 8, !tbaa !75
  store i64 %i.nk, ptr %i.nj, align 8, !tbaa !75
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.nh
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !367
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv.next.i.i110
  store i64 %i.nm, ptr %i.nn, align 8, !tbaa !367
  %i.no = add i32 %.015.i.i.i109, 2               ; 2 uses
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i108, 2
  %.not.i8.i.i111.1 = icmp eq i32 %i.no, %i.in
  br i1 %.not.i8.i.i111.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph250, !llvm.loop !2624

.lr.ph.i.i24.i78:                                 ; preds = %.lr.ph160
  %i.np = sub nsw i32 0, %i.iv                    ; 2 uses
  %i.nq = sub i32 12, %i.in                       ; 2 uses
  %i.nr = tail call i32 @llvm.umin.i32(i32 %i.it, i32 %i.np)
  %.sroa.speculated.i80 = tail call i32 @llvm.umin.i32(i32 %i.nq, i32 %i.nr) ; 5 uses
  %.not13.i.i29.i81 = icmp eq i32 %.sroa.speculated.i80, 0
  br i1 %.not13.i.i29.i81, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i87, label %.lr.ph.i.i30.i82

.lr.ph.i.i30.i82:                                 ; preds = %.lr.ph.i.i24.i78
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ir, i64 96 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.iu, i64 96 ; 4 uses
  %i.nu = zext i32 %.sroa.speculated.i80 to i64   ; 7 uses
  %min.iters.check329 = icmp ult i32 %.sroa.speculated.i80, 12
  br i1 %min.iters.check329, label %scalar.ph328.preheader, label %vector.scevcheck319

vector.scevcheck319:                              ; preds = %.lr.ph.i.i30.i82
  %i.nv = add nsw i64 %i.nu, -1                   ; 2 uses
  %i.nw = trunc nsw i64 %i.nv to i32
  %i.nx = xor i32 %i.in, -1
  %i.ny = icmp ult i32 %i.nx, %i.nw
  %i.nz = icmp ugt i64 %i.nv, 4294967295
  %i.oa = or i1 %i.ny, %i.nz
  br i1 %i.oa, label %scalar.ph328.preheader, label %vector.memcheck330

vector.memcheck330:                               ; preds = %vector.scevcheck319
  %i.ob = shl nuw nsw i64 %i.nu, 3                ; 2 uses
  %i.oc = getelementptr i8, ptr %i.ir, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.oc, i64 96
  %i.oe = zext i32 %i.in to i64
  %i.of = shl nuw nsw i64 %i.oe, 3                ; 2 uses
  %i.og = getelementptr i8, ptr %i.iu, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.iu, i64 %i.ob
  %i.oi = getelementptr i8, ptr %i.oh, i64 %i.of
  %i.oj = getelementptr i8, ptr %i.oi, i64 96
  %bound0331 = icmp ult ptr %i.ir, %i.oj
  %bound1332 = icmp ult ptr %i.og, %i.od
  %found.conflict333 = and i1 %bound0331, %bound1332
  br i1 %found.conflict333, label %scalar.ph328.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck330
  %n.vec335 = and i64 %i.nu, 2147483646           ; 4 uses
  %i.ok = trunc nuw nsw i64 %n.vec335 to i32
  %i.ol = add i32 %i.in, %i.ok
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next340, %vector.body336 ] ; 4 uses
  %i.om = trunc i64 %index337 to i32
  %i.on = add i32 %i.in, %i.om
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %index337
  %i.op = zext i32 %i.on to i64                   ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.op
  %wide.load338 = load <2 x i64>, ptr %i.oo, align 8, !tbaa !75, !alias.scope !2639, !noalias !2640
  store <2 x i64> %wide.load338, ptr %i.oq, align 8, !tbaa !75, !alias.scope !2640
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %index337
  %wide.load339 = load <2 x i64>, ptr %i.or, align 8, !tbaa !367, !alias.scope !2639, !noalias !2640
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.op
  store <2 x i64> %wide.load339, ptr %i.os, align 8, !tbaa !367, !alias.scope !2640
  %index.next340 = add nuw i64 %index337, 2       ; 2 uses
  %i.ot = icmp eq i64 %index.next340, %n.vec335
  br i1 %i.ot, label %middle.block341, label %vector.body336, !llvm.loop !2628

middle.block341:                                  ; preds = %vector.body336
  %cmp.n342 = icmp eq i64 %n.vec335, %i.nu
  br i1 %cmp.n342, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i87, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %vector.memcheck330, %vector.scevcheck319, %.lr.ph.i.i30.i82, %middle.block341
  %indvars.iv.i31.i83.ph = phi i64 [ 0, %vector.memcheck330 ], [ 0, %vector.scevcheck319 ], [ 0, %.lr.ph.i.i30.i82 ], [ %n.vec335, %middle.block341 ] ; 5 uses
  %.01214.i.i.i84.ph = phi i32 [ %i.in, %vector.memcheck330 ], [ %i.in, %vector.scevcheck319 ], [ %i.in, %.lr.ph.i.i30.i82 ], [ %i.ol, %middle.block341 ] ; 3 uses
  %xtraiter359 = and i64 %i.nu, 1
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol

scalar.ph328.prol:                                ; preds = %scalar.ph328.preheader
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i31.i83.ph
  %i.ov = zext i32 %.01214.i.i.i84.ph to i64      ; 2 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.ov
  %i.ox = load i64, ptr %i.ou, align 8, !tbaa !75
  store i64 %i.ox, ptr %i.ow, align 8, !tbaa !75
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv.i31.i83.ph
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !367
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ov
  store i64 %i.oz, ptr %i.pa, align 8, !tbaa !367
  %indvars.iv.next.i32.i85.prol = or disjoint i64 %indvars.iv.i31.i83.ph, 1
  %i.pb = add i32 %.01214.i.i.i84.ph, 1
  br label %scalar.ph328.prol.loopexit

scalar.ph328.prol.loopexit:                       ; preds = %scalar.ph328.prol, %scalar.ph328.preheader
  %indvars.iv.i31.i83.unr = phi i64 [ %indvars.iv.i31.i83.ph, %scalar.ph328.preheader ], [ %indvars.iv.next.i32.i85.prol, %scalar.ph328.prol ]
  %.01214.i.i.i84.unr = phi i32 [ %.01214.i.i.i84.ph, %scalar.ph328.preheader ], [ %i.pb, %scalar.ph328.prol ]
  %i.pc = add nsw i64 %i.nu, -1
  %i.pd = icmp eq i64 %indvars.iv.i31.i83.ph, %i.pc
  br i1 %i.pd, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i87, label %scalar.ph328

scalar.ph328:                                     ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328
  %indvars.iv.i31.i83 = phi i64 [ %indvars.iv.next.i32.i85.1, %scalar.ph328 ], [ %indvars.iv.i31.i83.unr, %scalar.ph328.prol.loopexit ] ; 4 uses
  %.01214.i.i.i84 = phi i32 [ %i.pt, %scalar.ph328 ], [ %.01214.i.i.i84.unr, %scalar.ph328.prol.loopexit ] ; 3 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i31.i83
  %i.pf = zext i32 %.01214.i.i.i84 to i64         ; 2 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.pf
  %i.ph = load i64, ptr %i.pe, align 8, !tbaa !75
  store i64 %i.ph, ptr %i.pg, align 8, !tbaa !75
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv.i31.i83
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !367
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.pf
  store i64 %i.pj, ptr %i.pk, align 8, !tbaa !367
  %indvars.iv.next.i32.i85 = add nuw nsw i64 %indvars.iv.i31.i83, 1 ; 2 uses
  %i.pl = add i32 %.01214.i.i.i84, 1
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i32.i85
  %i.pn = zext i32 %i.pl to i64                   ; 2 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.pn
  %i.pp = load i64, ptr %i.pm, align 8, !tbaa !75
  store i64 %i.pp, ptr %i.po, align 8, !tbaa !75
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv.next.i32.i85
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !367
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.pn
  store i64 %i.pr, ptr %i.ps, align 8, !tbaa !367
  %indvars.iv.next.i32.i85.1 = add nuw nsw i64 %indvars.iv.i31.i83, 2 ; 2 uses
  %i.pt = add i32 %.01214.i.i.i84, 2
  %.not.i.i33.i86.1 = icmp eq i64 %indvars.iv.next.i32.i85.1, %i.nu
  br i1 %.not.i.i33.i86.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i87, label %scalar.ph328, !llvm.loop !2629

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i87: ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328, %middle.block341, %.lr.ph.i.i24.i78
  %.not13.i.i.i.i.i88 = icmp eq i32 %i.it, %.sroa.speculated.i80
  br i1 %.not13.i.i.i.i.i88, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i94, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i87
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ir, i64 96 ; 8 uses
  %i.pv = zext i32 %i.it to i64                   ; 4 uses
  %i.pw = tail call i32 @llvm.umin.i32(i32 %i.it, i32 %i.np)
  %i.px = tail call i32 @llvm.umin.i32(i32 %i.pw, i32 %i.nq)
  %umin130 = zext i32 %i.px to i64                ; 6 uses
  %i.py = sub nsw i64 %i.pv, %umin130             ; 3 uses
  %min.iters.check301 = icmp ult i64 %i.py, 10
  br i1 %min.iters.check301, label %scalar.ph300.preheader, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i.i.i.i.i89
  %i.pz = shl nuw nsw i64 %umin130, 3
  %i.qa = add nsw i64 %i.pz, -81
  %diff.check306 = icmp ult i64 %i.qa, 15
  br i1 %diff.check306, label %scalar.ph300.preheader, label %vector.ph308

vector.ph308:                                     ; preds = %vector.memcheck302
  %n.vec309 = and i64 %i.py, -2                   ; 4 uses
  %i.qb = add nsw i64 %n.vec309, %umin130
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next314, %vector.body310 ] ; 4 uses
  %i.qc = add nuw i64 %index311, %umin130         ; 2 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.qc
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %index311
  %wide.load312 = load <2 x i64>, ptr %i.qd, align 8, !tbaa !75
  store <2 x i64> %wide.load312, ptr %i.qe, align 8, !tbaa !75
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qc
  %wide.load313 = load <2 x i64>, ptr %i.qf, align 8, !tbaa !367
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %index311
  store <2 x i64> %wide.load313, ptr %i.qg, align 8, !tbaa !367
  %index.next314 = add nuw i64 %index311, 2       ; 2 uses
  %i.qh = icmp eq i64 %index.next314, %n.vec309
  br i1 %i.qh, label %middle.block315, label %vector.body310, !llvm.loop !2630

middle.block315:                                  ; preds = %vector.body310
  %cmp.n316 = icmp eq i64 %i.py, %n.vec309
  br i1 %cmp.n316, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i94, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %vector.memcheck302, %.lr.ph.i.i.i.i.i89, %middle.block315
  %indvars.iv131.ph = phi i64 [ %umin130, %vector.memcheck302 ], [ %umin130, %.lr.ph.i.i.i.i.i89 ], [ %i.qb, %middle.block315 ] ; 6 uses
  %indvars.iv6.i.i90.ph = phi i64 [ 0, %vector.memcheck302 ], [ 0, %.lr.ph.i.i.i.i.i89 ], [ %n.vec309, %middle.block315 ] ; 4 uses
  %i.qi = sub nsw i64 %i.pv, %indvars.iv131.ph
  %xtraiter361 = and i64 %i.qi, 1
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %scalar.ph300.prol.loopexit, label %scalar.ph300.prol

scalar.ph300.prol:                                ; preds = %scalar.ph300.preheader
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv131.ph
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv6.i.i90.ph
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !75
  store i64 %i.ql, ptr %i.qk, align 8, !tbaa !75
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv131.ph
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !367
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv6.i.i90.ph
  store i64 %i.qn, ptr %i.qo, align 8, !tbaa !367
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.ph, 1
  %indvars.iv.next7.i.i92.prol = or disjoint i64 %indvars.iv6.i.i90.ph, 1
  br label %scalar.ph300.prol.loopexit

scalar.ph300.prol.loopexit:                       ; preds = %scalar.ph300.prol, %scalar.ph300.preheader
  %indvars.iv131.unr = phi i64 [ %indvars.iv131.ph, %scalar.ph300.preheader ], [ %indvars.iv.next132.prol, %scalar.ph300.prol ]
  %indvars.iv6.i.i90.unr = phi i64 [ %indvars.iv6.i.i90.ph, %scalar.ph300.preheader ], [ %indvars.iv.next7.i.i92.prol, %scalar.ph300.prol ]
  %i.qp = add nsw i64 %i.pv, -1
  %i.qq = icmp eq i64 %indvars.iv131.ph, %i.qp
  br i1 %i.qq, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i94, label %scalar.ph300

scalar.ph300:                                     ; preds = %scalar.ph300.prol.loopexit, %scalar.ph300
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.1, %scalar.ph300 ], [ %indvars.iv131.unr, %scalar.ph300.prol.loopexit ] ; 4 uses
  %indvars.iv6.i.i90 = phi i64 [ %indvars.iv.next7.i.i92.1, %scalar.ph300 ], [ %indvars.iv6.i.i90.unr, %scalar.ph300.prol.loopexit ] ; 4 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv131
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv6.i.i90
  %i.qt = load i64, ptr %i.qr, align 8, !tbaa !75
  store i64 %i.qt, ptr %i.qs, align 8, !tbaa !75
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv131
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !367
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv6.i.i90
  store i64 %i.qv, ptr %i.qw, align 8, !tbaa !367
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %indvars.iv.next7.i.i92 = add nuw nsw i64 %indvars.iv6.i.i90, 1 ; 2 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next132
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next7.i.i92
  %i.qz = load i64, ptr %i.qx, align 8, !tbaa !75
  store i64 %i.qz, ptr %i.qy, align 8, !tbaa !75
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.next132
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !367
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.next7.i.i92
  store i64 %i.rb, ptr %i.rc, align 8, !tbaa !367
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %indvars.iv.next7.i.i92.1 = add nuw nsw i64 %indvars.iv6.i.i90, 2
  %.not.i.i.i.i.i93.1 = icmp eq i64 %indvars.iv.next132.1, %i.pv
  br i1 %.not.i.i.i.i.i93.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i94, label %scalar.ph300, !llvm.loop !2631

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i94: ; preds = %scalar.ph300.prol.loopexit, %scalar.ph300, %middle.block315, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE4copyILj12EEEvRKNS1_IS2_lXT_EEEjjj.exit.i.i87
  %i.rd = sub nsw i32 0, %.sroa.speculated.i80
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112: ; preds = %scalar.ph250.prol.loopexit, %scalar.ph250, %middle.block263, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE9moveRightEjjj.exit.i.i105, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i94
  %.0.i95 = phi i32 [ %i.rd, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17transferToLeftSibEjRS3_jj.exit.i94 ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE9moveRightEjjj.exit.i.i105 ], [ %.sroa.speculated46.i98, %middle.block263 ], [ %.sroa.speculated46.i98, %scalar.ph250 ], [ %.sroa.speculated46.i98, %scalar.ph250.prol.loopexit ] ; 2 uses
  %i.re = load i32, ptr %i.is, align 4, !tbaa !198
  %i.rf = add i32 %i.re, %.0.i95
  store i32 %i.rf, ptr %i.is, align 4, !tbaa !198
  %i.rg = load i32, ptr %i.ig, align 4, !tbaa !198
  %i.rh = sub i32 %i.rg, %.0.i95                  ; 3 uses
  store i32 %i.rh, ptr %i.ig, align 4, !tbaa !198
  %i.ri = load i32, ptr %i.ii, align 4, !tbaa !198 ; 2 uses
  %.not75 = icmp ult i32 %i.rh, %i.ri
  br i1 %.not75, label %bb.c, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112..loopexit.loopexit_crit_edge, !llvm.loop !2617

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112..loopexit.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112
  br label %.loopexit, !llvm.loop !2617

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefElLj12EE17adjustFromLeftSibEjRS3_ji.exit112..loopexit.loopexit_crit_edge, %.lr.ph121
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %.not73 = icmp eq i64 %indvars.iv.next134, %i.c
  br i1 %.not73, label %.loopexit114, label %.lr.ph121, !llvm.loop !2632

.loopexit114:                                     ; preds = %.loopexit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iterator8treeFindEl(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !743    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !733  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = zext i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !367
  %.not5.i = icmp sgt i64 %i.h, %1
  br i1 %.not5.i, label %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not.i, label %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !2641

_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit.loopexit: ; preds = %bb.b
  %i.i = zext i32 %i.d to i64
  br label %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit

_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit: ; preds = %.lr.ph.i, %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit.loopexit
  %.0.lcssa.i.ph = phi i64 [ %i.i, %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit.loopexit ], [ %indvars.iv, %.lr.ph.i ]
  %i.j = shl nuw i64 %.0.lcssa.i.ph, 32
  br label %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit

_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit: ; preds = %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.j, %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.loopexit ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = load i32, ptr %i.k, align 8, !tbaa !732
  %.not.i2 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.n, align 8, !tbaa !76
  %.sroa.2.8.insert.ext.i4.i = zext i32 %i.d to i64
  %.sroa.2.8.insert.insert.i5.i = or disjoint i64 %.0.lcssa.i, %.sroa.2.8.insert.ext.i4.i ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !77
  %.not.i.not.i6.i = icmp eq i32 %i.p, 0          ; 2 uses
  br i1 %.not.i2, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit
  br i1 %.not.i.not.i6.i, label %bb.d, label %bb.e, !prof !526

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_15IntervalMapImpl4Path5EntryELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr nonnull %i.b, i64 %.sroa.2.8.insert.insert.i5.i)
  br label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iterator7setRootEj.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  store ptr %i.b, ptr %i.q, align 1
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.2.8.insert.insert.i5.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1
  %i.r = load i32, ptr %i.n, align 8, !tbaa !76
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.n, align 8, !tbaa !76
  br label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iterator7setRootEj.exit

bb.f:                                             ; preds = %_ZNK4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit
  br i1 %.not.i.not.i6.i, label %bb.g, label %bb.h, !prof !526

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_15IntervalMapImpl4Path5EntryELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr nonnull %i.a, i64 %.sroa.2.8.insert.insert.i5.i)
  br label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iterator7setRootEj.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  store ptr %i.a, ptr %i.t, align 1
  %.sroa.3.0..sroa_idx.i.i7.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.2.8.insert.insert.i5.i, ptr %.sroa.3.0..sroa_idx.i.i7.i, align 1
  %i.u = load i32, ptr %i.n, align 8, !tbaa !76
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.n, align 8, !tbaa !76
  br label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iterator7setRootEj.exit

_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iterator7setRootEj.exit: ; preds = %bb.d, %bb.e, %bb.g, %bb.h
end_hunk_1
