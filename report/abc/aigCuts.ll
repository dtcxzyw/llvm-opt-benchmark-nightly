Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/aigCuts?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Aig_ObjComputeCuts:bb.a
  %wide.load218 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !52
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <4 x i32> %wide.load, ptr %i.ej, align 4, !tbaa !52
  store <4 x i32> %wide.load218, ptr %i.ek, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count137.i93
  br i1 %cmp.n, label %Aig_CutMergeOrdered.exit116, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph117.i92, %middle.block
  %indvars.iv134.i94.ph = phi i64 [ 0, %.lr.ph117.i92 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter267 = and i64 %wide.trip.count137.i93, 3 ; 2 uses
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv134.i94.prol = phi i64 [ %indvars.iv.next135.i95.prol, %scalar.ph.prol ], [ %indvars.iv134.i94.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter269 = phi i64 [ %prol.iter269.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv134.i94.prol
  %i.en = load i32, ptr %i.em, align 4, !tbaa !52
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv134.i94.prol
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !52
  %indvars.iv.next135.i95.prol = add nuw nsw i64 %indvars.iv134.i94.prol, 1 ; 2 uses
  %prol.iter269.next = add i64 %prol.iter269, 1   ; 2 uses
  %prol.iter269.cmp.not = icmp eq i64 %prol.iter269.next, %xtraiter267
  br i1 %prol.iter269.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !90

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv134.i94.unr = phi i64 [ %indvars.iv134.i94.ph, %scalar.ph.preheader ], [ %indvars.iv.next135.i95.prol, %scalar.ph.prol ]
  %i.ep = sub nsw i64 %indvars.iv134.i94.ph, %wide.trip.count137.i93
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %Aig_CutMergeOrdered.exit116, label %scalar.ph

bb.o:                                             ; preds = %.lr.ph213
  %i.er = trunc nuw i64 %i.et to i32
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph213, label %._crit_edge214, !llvm.loop !7

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.o
  %indvars.iv127.i100212 = phi i64 [ %i.et, %bb.o ], [ %i.dz, %.lr.ph213.preheader ]
  %i.et = add nsw i64 %indvars.iv127.i100212, -1  ; 4 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !52
  %i.ew = icmp eq i32 %i.ev, %i.ec
  br i1 %i.ew, label %.thread.i101, label %bb.o, !llvm.loop !7

._crit_edge214:                                   ; preds = %bb.o, %.preheader103.i98
  %indvars.iv127.i100.lcssa = phi i64 [ %i.dz, %.preheader103.i98 ], [ %i.et, %bb.o ]
  %i.ex = icmp eq i64 %indvars.iv127.i100.lcssa, 0
  br i1 %i.ex, label %Aig_CutMerge.exit.thread, label %.thread.i101

.thread.i101:                                     ; preds = %.lr.ph213, %._crit_edge214
  %indvars.iv.next132.i102 = add nuw nsw i64 %indvars.iv131.i99, 1 ; 2 uses
  %exitcond.not.i103 = icmp eq i64 %indvars.iv.next132.i102, %wide.trip.count.i89
  br i1 %exitcond.not.i103, label %.preheader102.i91, label %.preheader103.i98, !llvm.loop !8

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv134.i94 = phi i64 [ %indvars.iv.next135.i95.3, %scalar.ph ], [ %indvars.iv134.i94.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv134.i94
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !52
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv134.i94
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !52
  %indvars.iv.next135.i95 = add nuw nsw i64 %indvars.iv134.i94, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next135.i95
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !52
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next135.i95
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !52
  %indvars.iv.next135.i95.1 = add nuw nsw i64 %indvars.iv134.i94, 2 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next135.i95.1
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !52
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next135.i95.1
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !52
  %indvars.iv.next135.i95.2 = add nuw nsw i64 %indvars.iv134.i94, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next135.i95.2
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !52
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next135.i95.2
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !52
  %indvars.iv.next135.i95.3 = add nuw nsw i64 %indvars.iv134.i94, 4 ; 2 uses
  %exitcond138.not.i96.3 = icmp eq i64 %indvars.iv.next135.i95.3, %wide.trip.count137.i93
  br i1 %exitcond138.not.i96.3, label %Aig_CutMergeOrdered.exit116, label %scalar.ph, !llvm.loop !91

bb.p:                                             ; preds = %.critedge.i84, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ 0, %.lr.ph.i80 ], [ %indvars.iv.next.i87, %.critedge.i84 ] ; 5 uses
  %.1111.i82 = phi i32 [ 0, %.lr.ph.i80 ], [ %.2.i86, %.critedge.i84 ] ; 7 uses
  %.4110.i83 = phi i32 [ 0, %.lr.ph.i80 ], [ %.5.i85, %.critedge.i84 ] ; 7 uses
  %i.fk = icmp eq i32 %.1111.i82, %i.du
  %i.fl = icmp eq i32 %.4110.i83, %i.dr           ; 2 uses
  br i1 %i.fk, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %i.fl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fm = trunc i64 %indvars.iv.i81 to i8
  br label %Aig_CutMergeOrdered.exit116

bb.s:                                             ; preds = %bb.q
  %i.fn = add nsw i32 %.4110.i83, 1
  %i.fo = sext i32 %.4110.i83 to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !52
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i81
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !52
  br label %.critedge.i84

bb.t:                                             ; preds = %bb.p
  br i1 %i.fl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fs = add nsw i32 %.1111.i82, 1
  %i.ft = sext i32 %.1111.i82 to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !52
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i81
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !52
  br label %.critedge.i84

bb.v:                                             ; preds = %bb.t
  %i.fx = sext i32 %.4110.i83 to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !52 ; 4 uses
  %i.ga = sext i32 %.1111.i82 to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !52 ; 3 uses
  %i.gd = icmp slt i32 %i.fz, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i81 ; 3 uses
  br i1 %i.gd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gf = add nsw i32 %.4110.i83, 1
  store i32 %i.fz, ptr %i.ge, align 4, !tbaa !52
  br label %.critedge.i84

bb.x:                                             ; preds = %bb.v
  %i.gg = icmp sgt i32 %i.fz, %i.gc
  br i1 %i.gg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gh = add nsw i32 %.1111.i82, 1
  store i32 %i.gc, ptr %i.ge, align 4, !tbaa !52
  br label %.critedge.i84

bb.z:                                             ; preds = %bb.x
  %i.gi = add nsw i32 %.4110.i83, 1
  store i32 %i.fz, ptr %i.ge, align 4, !tbaa !52
  %i.gj = add nsw i32 %.1111.i82, 1
  br label %.critedge.i84

.critedge.i84:                                    ; preds = %bb.z, %bb.y, %bb.w, %bb.u, %bb.s
  %.5.i85 = phi i32 [ %i.fn, %bb.s ], [ %i.dr, %bb.u ], [ %i.gf, %bb.w ], [ %.4110.i83, %bb.y ], [ %i.gi, %bb.z ] ; 2 uses
  %.2.i86 = phi i32 [ %i.du, %bb.s ], [ %i.fs, %bb.u ], [ %.1111.i82, %bb.w ], [ %i.gh, %bb.y ], [ %i.gj, %bb.z ] ; 2 uses
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i81, 1 ; 3 uses
  %i.gk = load i32, ptr %i.by, align 4, !tbaa !26
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next.i87, %i.gl
  br i1 %i.gm, label %bb.p, label %.critedge._crit_edge.loopexit.i88, !llvm.loop !9

.critedge._crit_edge.loopexit.i88:                ; preds = %.critedge.i84
  %i.gn = trunc i64 %indvars.iv.next.i87 to i8
  br label %.critedge._crit_edge.i73

.critedge._crit_edge.i73:                         ; preds = %.critedge.preheader.i72, %.critedge._crit_edge.loopexit.i88
  %.4.lcssa.i74 = phi i32 [ %.5.i85, %.critedge._crit_edge.loopexit.i88 ], [ 0, %.critedge.preheader.i72 ]
  %.1.lcssa.i75 = phi i32 [ %.2.i86, %.critedge._crit_edge.loopexit.i88 ], [ 0, %.critedge.preheader.i72 ]
  %.0.lcssa.i76 = phi i8 [ %i.gn, %.critedge._crit_edge.loopexit.i88 ], [ 0, %.critedge.preheader.i72 ]
  %i.go = icmp slt i32 %.4.lcssa.i74, %i.dr
  %i.gp = icmp slt i32 %.1.lcssa.i75, %i.du
  %or.cond = select i1 %i.go, i1 true, i1 %i.gp
  br i1 %or.cond, label %Aig_CutMerge.exit.thread, label %Aig_CutMergeOrdered.exit116

bb.aa:                                            ; preds = %Aig_CutFindFree.exit
  %i.gq = sext i8 %i.dp to i32                    ; 4 uses
  %i.gr = icmp eq i32 %i.ct, %i.gq
  br i1 %i.gr, label %bb.ab, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.aa
  %i.gs = icmp sgt i32 %i.ct, 0
  %i.gt = sext i8 %i.do to i32                    ; 3 uses
  br i1 %i.gs, label %.lr.ph.i66, label %.critedge._crit_edge.i

.lr.ph.i66:                                       ; preds = %.critedge.preheader.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.041138, i64 24 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.016.i, i64 24 ; 3 uses
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %wide.trip.count.i69 = sext i8 %i.do to i64
  %i.gw = icmp eq i8 %i.dp, %i.do
  %i.gx = icmp sgt i8 %i.do, 0                    ; 2 uses
  br i1 %i.gw, label %.preheader101.i, label %.preheader104.i

.preheader104.i:                                  ; preds = %bb.ab
  br i1 %i.gx, label %.preheader103.lr.ph.i, label %.preheader102.i

.preheader103.lr.ph.i:                            ; preds = %.preheader104.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.041138, i64 24
  %i.gz = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.ha = icmp sgt i32 %i.ct, 0
  br label %.preheader103.i

.preheader101.i:                                  ; preds = %bb.ab
  br i1 %i.gx, label %.lr.ph119.i, label %Aig_CutMergeOrdered.exit116

.lr.ph119.i:                                      ; preds = %.preheader101.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.041138, i64 24
  %wide.trip.count142.i = zext i32 %i.ct to i64   ; 6 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %exitcond143.not.i = icmp eq i64 %indvars.iv.next140.i, %wide.trip.count142.i
  br i1 %exitcond143.not.i, label %.preheader.i, label %bb.ad, !llvm.loop !6

.preheader.i:                                     ; preds = %bb.ac
  %i.hc = getelementptr inbounds nuw i8, ptr %.016.i, i64 24 ; 6 uses
  %min.iters.check223 = icmp ult i32 %i.ct, 8
  %i.hd = sub i64 %.042144220, %.016.i216
  %diff.check221 = icmp ugt i64 %i.hd, -32
  %or.cond249 = select i1 %min.iters.check223, i1 true, i1 %diff.check221
  br i1 %or.cond249, label %scalar.ph222.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %.preheader.i
  %n.vec225 = and i64 %wide.trip.count142.i, 4294967288 ; 3 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next230, %vector.body226 ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index227 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load228 = load <4 x i32>, ptr %i.he, align 4, !tbaa !52
  %wide.load229 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !52
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %index227 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <4 x i32> %wide.load228, ptr %i.hg, align 4, !tbaa !52
  store <4 x i32> %wide.load229, ptr %i.hh, align 4, !tbaa !52
  %index.next230 = add nuw i64 %index227, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next230, %n.vec225
  br i1 %i.hi, label %middle.block231, label %vector.body226, !llvm.loop !92

middle.block231:                                  ; preds = %vector.body226
  %cmp.n232 = icmp eq i64 %n.vec225, %wide.trip.count142.i
  br i1 %cmp.n232, label %Aig_CutMergeOrdered.exit116, label %scalar.ph222.preheader

scalar.ph222.preheader:                           ; preds = %.preheader.i, %middle.block231
  %indvars.iv144.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec225, %middle.block231 ] ; 3 uses
  %xtraiter264 = and i64 %wide.trip.count142.i, 3 ; 2 uses
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %scalar.ph222.prol.loopexit, label %scalar.ph222.prol

scalar.ph222.prol:                                ; preds = %scalar.ph222.preheader, %scalar.ph222.prol
  %indvars.iv144.i.prol = phi i64 [ %indvars.iv.next145.i.prol, %scalar.ph222.prol ], [ %indvars.iv144.i.ph, %scalar.ph222.preheader ] ; 3 uses
  %prol.iter266 = phi i64 [ %prol.iter266.next, %scalar.ph222.prol ], [ 0, %scalar.ph222.preheader ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv144.i.prol
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !52
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv144.i.prol
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !52
  %indvars.iv.next145.i.prol = add nuw nsw i64 %indvars.iv144.i.prol, 1 ; 2 uses
  %prol.iter266.next = add i64 %prol.iter266, 1   ; 2 uses
  %prol.iter266.cmp.not = icmp eq i64 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %scalar.ph222.prol.loopexit, label %scalar.ph222.prol, !llvm.loop !93

scalar.ph222.prol.loopexit:                       ; preds = %scalar.ph222.prol, %scalar.ph222.preheader
  %indvars.iv144.i.unr = phi i64 [ %indvars.iv144.i.ph, %scalar.ph222.preheader ], [ %indvars.iv.next145.i.prol, %scalar.ph222.prol ]
  %i.hm = sub nsw i64 %indvars.iv144.i.ph, %wide.trip.count142.i
  %i.hn = icmp ugt i64 %i.hm, -4
  br i1 %i.hn, label %Aig_CutMergeOrdered.exit116, label %scalar.ph222

bb.ad:                                            ; preds = %bb.ac, %.lr.ph119.i
  %indvars.iv139.i = phi i64 [ 0, %.lr.ph119.i ], [ %indvars.iv.next140.i, %bb.ac ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv139.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !52
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv139.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !52
  %.not.i71 = icmp eq i32 %i.hp, %i.hr
  br i1 %.not.i71, label %bb.ac, label %Aig_CutMerge.exit.thread

scalar.ph222:                                     ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i.3, %scalar.ph222 ], [ %indvars.iv144.i.unr, %scalar.ph222.prol.loopexit ] ; 6 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv144.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !52
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv144.i
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !52
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next145.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !52
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next145.i
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !52
  %indvars.iv.next145.i.1 = add nuw nsw i64 %indvars.iv144.i, 2 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next145.i.1
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !52
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next145.i.1
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !52
  %indvars.iv.next145.i.2 = add nuw nsw i64 %indvars.iv144.i, 3 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next145.i.2
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !52
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next145.i.2
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !52
  %indvars.iv.next145.i.3 = add nuw nsw i64 %indvars.iv144.i, 4 ; 2 uses
  %exitcond148.not.i.3 = icmp eq i64 %indvars.iv.next145.i.3, %wide.trip.count142.i
  br i1 %exitcond148.not.i.3, label %Aig_CutMergeOrdered.exit116, label %scalar.ph222, !llvm.loop !94

.preheader103.i:                                  ; preds = %.thread.i, %.preheader103.lr.ph.i
  %indvars.iv131.i = phi i64 [ 0, %.preheader103.lr.ph.i ], [ %indvars.iv.next132.i, %.thread.i ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv131.i
  br i1 %i.ha, label %.lr.ph210.preheader, label %._crit_edge211

.lr.ph210.preheader:                              ; preds = %.preheader103.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !52
  br label %.lr.ph210

.preheader102.i:                                  ; preds = %.thread.i, %.preheader104.i
  %i.ig = icmp sgt i8 %i.dp, 0
  br i1 %i.ig, label %.lr.ph117.i, label %Aig_CutMergeOrdered.exit116

.lr.ph117.i:                                      ; preds = %.preheader102.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.016.i, i64 24 ; 6 uses
  %wide.trip.count137.i = zext i32 %i.ct to i64   ; 5 uses
  %min.iters.check237 = icmp ult i32 %i.ct, 8
  %i.ii = sub i64 %.042144220, %.016.i216
  %diff.check235 = icmp ugt i64 %i.ii, -32
  %or.cond250 = select i1 %min.iters.check237, i1 true, i1 %diff.check235
  br i1 %or.cond250, label %scalar.ph236.preheader, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph117.i
  %n.vec239 = and i64 %wide.trip.count137.i, 2147483640 ; 3 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next244, %vector.body240 ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index241 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load242 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !52
  %wide.load243 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !52
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %index241 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <4 x i32> %wide.load242, ptr %i.il, align 4, !tbaa !52
  store <4 x i32> %wide.load243, ptr %i.im, align 4, !tbaa !52
  %index.next244 = add nuw i64 %index241, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next244, %n.vec239
  br i1 %i.in, label %middle.block245, label %vector.body240, !llvm.loop !95

middle.block245:                                  ; preds = %vector.body240
  %cmp.n246 = icmp eq i64 %n.vec239, %wide.trip.count137.i
  br i1 %cmp.n246, label %Aig_CutMergeOrdered.exit116, label %scalar.ph236.preheader

scalar.ph236.preheader:                           ; preds = %.lr.ph117.i, %middle.block245
  %indvars.iv134.i.ph = phi i64 [ 0, %.lr.ph117.i ], [ %n.vec239, %middle.block245 ] ; 3 uses
  %xtraiter262 = and i64 %wide.trip.count137.i, 3 ; 2 uses
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %scalar.ph236.prol.loopexit, label %scalar.ph236.prol

scalar.ph236.prol:                                ; preds = %scalar.ph236.preheader, %scalar.ph236.prol
  %indvars.iv134.i.prol = phi i64 [ %indvars.iv.next135.i.prol, %scalar.ph236.prol ], [ %indvars.iv134.i.ph, %scalar.ph236.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph236.prol ], [ 0, %scalar.ph236.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv134.i.prol
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !52
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv134.i.prol
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !52
  %indvars.iv.next135.i.prol = add nuw nsw i64 %indvars.iv134.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter262
  br i1 %prol.iter.cmp.not, label %scalar.ph236.prol.loopexit, label %scalar.ph236.prol, !llvm.loop !96

scalar.ph236.prol.loopexit:                       ; preds = %scalar.ph236.prol, %scalar.ph236.preheader
  %indvars.iv134.i.unr = phi i64 [ %indvars.iv134.i.ph, %scalar.ph236.preheader ], [ %indvars.iv.next135.i.prol, %scalar.ph236.prol ]
  %i.ir = sub nsw i64 %indvars.iv134.i.ph, %wide.trip.count137.i
  %i.is = icmp ugt i64 %i.ir, -4
  br i1 %i.is, label %Aig_CutMergeOrdered.exit116, label %scalar.ph236

bb.ae:                                            ; preds = %.lr.ph210
  %i.it = trunc nuw i64 %i.iv to i32
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %.lr.ph210, label %._crit_edge211, !llvm.loop !7

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %bb.ae
  %indvars.iv127.i209 = phi i64 [ %i.iv, %bb.ae ], [ %i.gz, %.lr.ph210.preheader ]
  %i.iv = add nsw i64 %indvars.iv127.i209, -1     ; 4 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !52
  %i.iy = icmp eq i32 %i.ix, %i.if
  br i1 %i.iy, label %.thread.i, label %bb.ae, !llvm.loop !7

._crit_edge211:                                   ; preds = %bb.ae, %.preheader103.i
  %indvars.iv127.i.lcssa = phi i64 [ %i.gz, %.preheader103.i ], [ %i.iv, %bb.ae ]
  %3 = icmp eq i64 %indvars.iv127.i.lcssa, 0
  br i1 %3, label %Aig_CutMerge.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph210, %._crit_edge211
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next132.i, %wide.trip.count.i69
  br i1 %exitcond.not.i70, label %.preheader102.i, label %.preheader103.i, !llvm.loop !8

scalar.ph236:                                     ; preds = %scalar.ph236.prol.loopexit, %scalar.ph236
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i.3, %scalar.ph236 ], [ %indvars.iv134.i.unr, %scalar.ph236.prol.loopexit ] ; 6 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv134.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !52
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv134.i
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !52
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next135.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !52
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next135.i
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !52
  %indvars.iv.next135.i.1 = add nuw nsw i64 %indvars.iv134.i, 2 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next135.i.1
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !52
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next135.i.1
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !52
  %indvars.iv.next135.i.2 = add nuw nsw i64 %indvars.iv134.i, 3 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next135.i.2
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !52
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next135.i.2
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !52
  %indvars.iv.next135.i.3 = add nuw nsw i64 %indvars.iv134.i, 4 ; 2 uses
  %exitcond138.not.i.3 = icmp eq i64 %indvars.iv.next135.i.3, %wide.trip.count137.i
  br i1 %exitcond138.not.i.3, label %Aig_CutMergeOrdered.exit116, label %scalar.ph236, !llvm.loop !97

bb.af:                                            ; preds = %.critedge.i, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.i66 ], [ %indvars.iv.next.i68, %.critedge.i ] ; 5 uses
  %.1111.i = phi i32 [ 0, %.lr.ph.i66 ], [ %.2.i, %.critedge.i ] ; 7 uses
  %.4110.i = phi i32 [ 0, %.lr.ph.i66 ], [ %.5.i, %.critedge.i ] ; 7 uses
  %i.jl = icmp eq i32 %.1111.i, %i.gt
  %i.jm = icmp eq i32 %.4110.i, %i.gq             ; 2 uses
  br i1 %i.jl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  br i1 %i.jm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jn = trunc i64 %indvars.iv.i67 to i8
  br label %Aig_CutMergeOrdered.exit116

bb.ai:                                            ; preds = %bb.ag
  %i.jo = add nsw i32 %.4110.i, 1
  %i.jp = sext i32 %.4110.i to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !52
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i67
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !52
  br label %.critedge.i

bb.aj:                                            ; preds = %bb.af
  br i1 %i.jm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jt = add nsw i32 %.1111.i, 1
  %i.ju = sext i32 %.1111.i to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !52
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i67
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !52
  br label %.critedge.i

bb.al:                                            ; preds = %bb.aj
  %i.jy = sext i32 %.4110.i to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !52 ; 4 uses
  %i.kb = sext i32 %.1111.i to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !52 ; 3 uses
  %i.ke = icmp slt i32 %i.ka, %i.kd
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i67 ; 3 uses
  br i1 %i.ke, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kg = add nsw i32 %.4110.i, 1
  store i32 %i.ka, ptr %i.kf, align 4, !tbaa !52
  br label %.critedge.i

bb.an:                                            ; preds = %bb.al
  %i.kh = icmp sgt i32 %i.ka, %i.kd
  br i1 %i.kh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ki = add nsw i32 %.1111.i, 1
  store i32 %i.kd, ptr %i.kf, align 4, !tbaa !52
  br label %.critedge.i

bb.ap:                                            ; preds = %bb.an
  %i.kj = add nsw i32 %.4110.i, 1
  store i32 %i.ka, ptr %i.kf, align 4, !tbaa !52
  %i.kk = add nsw i32 %.1111.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ai
  %.5.i = phi i32 [ %i.jo, %bb.ai ], [ %i.gq, %bb.ak ], [ %i.kg, %bb.am ], [ %.4110.i, %bb.ao ], [ %i.kj, %bb.ap ] ; 2 uses
  %.2.i = phi i32 [ %i.gt, %bb.ai ], [ %i.jt, %bb.ak ], [ %.1111.i, %bb.am ], [ %i.ki, %bb.ao ], [ %i.kk, %bb.ap ] ; 2 uses
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i67, 1 ; 3 uses
  %i.kl = load i32, ptr %i.by, align 4, !tbaa !26
  %i.km = sext i32 %i.kl to i64
  %i.kn = icmp slt i64 %indvars.iv.next.i68, %i.km
  br i1 %i.kn, label %bb.af, label %.critedge._crit_edge.loopexit.i, !llvm.loop !9

.critedge._crit_edge.loopexit.i:                  ; preds = %.critedge.i
  %i.ko = trunc i64 %indvars.iv.next.i68 to i8
  br label %.critedge._crit_edge.i

.critedge._crit_edge.i:                           ; preds = %.critedge.preheader.i, %.critedge._crit_edge.loopexit.i
  %.4.lcssa.i = phi i32 [ %.5.i, %.critedge._crit_edge.loopexit.i ], [ 0, %.critedge.preheader.i ]
  %.1.lcssa.i = phi i32 [ %.2.i, %.critedge._crit_edge.loopexit.i ], [ 0, %.critedge.preheader.i ]
  %.0.lcssa.i65 = phi i8 [ %i.ko, %.critedge._crit_edge.loopexit.i ], [ 0, %.critedge.preheader.i ]
  %i.kp = icmp slt i32 %.4.lcssa.i, %i.gq
  %i.kq = icmp slt i32 %.1.lcssa.i, %i.gt
  %or.cond127 = select i1 %i.kp, i1 true, i1 %i.kq
  br i1 %or.cond127, label %Aig_CutMerge.exit.thread, label %Aig_CutMergeOrdered.exit116

Aig_CutMergeOrdered.exit116:                      ; preds = %scalar.ph236.prol.loopexit, %scalar.ph236, %scalar.ph222.prol.loopexit, %scalar.ph222, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block245, %middle.block231, %middle.block, %bb.ah, %.preheader102.i, %.preheader101.i, %.critedge._crit_edge.i, %bb.r, %.preheader102.i91, %.critedge._crit_edge.i73
  %.0.lcssa.sink.i.sink = phi i8 [ %i.do, %middle.block ], [ %i.do, %.preheader102.i91 ], [ %i.fm, %bb.r ], [ %.0.lcssa.i76, %.critedge._crit_edge.i73 ], [ %i.dp, %.preheader102.i ], [ %i.jn, %bb.ah ], [ %.0.lcssa.i65, %.critedge._crit_edge.i ], [ %i.do, %middle.block231 ], [ %i.do, %.preheader101.i ], [ %i.dp, %middle.block245 ], [ %i.do, %scalar.ph222.prol.loopexit ], [ %i.do, %scalar.ph.prol.loopexit ], [ %i.do, %scalar.ph ], [ %i.do, %scalar.ph222 ], [ %i.dp, %scalar.ph236 ], [ %i.dp, %scalar.ph236.prol.loopexit ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.016.i, i64 23
  store i8 %.0.lcssa.sink.i.sink, ptr %i.kr, align 1, !tbaa !51
  %i.ks = load i32, ptr %i.ci, align 4, !tbaa !62
  %i.kt = load i32, ptr %i.cp, align 4, !tbaa !62
  %i.ku = or i32 %i.kt, %i.ks                     ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.016.i, i64 12
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !62
  %i.kw = load i32, ptr %i.p, align 8, !tbaa !25  ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %.lr.ph.i57, label %.loopexit

.lr.ph.i57:                                       ; preds = %Aig_CutMergeOrdered.exit116
  %.val30.i = load i32, ptr %i.m, align 4, !tbaa !54
  %i.ky = sext i32 %.val30.i to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ky
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !55
  %i.lb = getelementptr inbounds nuw i8, ptr %.016.i, i64 23 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.016.i, i64 24 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %Aig_CutCheckDominance.exit.thread.i, %.lr.ph.i57
  %.055.i = phi i32 [ 0, %.lr.ph.i57 ], [ %i.lz, %Aig_CutCheckDominance.exit.thread.i ]
  %.02354.i = phi ptr [ %i.la, %.lr.ph.i57 ], [ %i.md, %Aig_CutCheckDominance.exit.thread.i ] ; 7 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.02354.i, i64 23 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !51  ; 4 uses
  %i.lf = icmp slt i8 %i.le, 2
  %i.lg = icmp eq ptr %.02354.i, %.016.i
  %or.cond.i = or i1 %i.lg, %i.lf
  br i1 %or.cond.i, label %Aig_CutCheckDominance.exit.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lh = load i8, ptr %i.lb, align 1, !tbaa !51  ; 4 uses
  %i.li = icmp sgt i8 %i.le, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %.02354.i, i64 12
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !62 ; 2 uses
  %i.ll = and i32 %i.ku, %i.lk                    ; 2 uses
  br i1 %i.li, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %.not28.i = icmp eq i32 %i.ll, %i.ku
  br i1 %.not28.i, label %bb.at, label %Aig_CutCheckDominance.exit.thread.i

bb.at:                                            ; preds = %bb.as
  %wide.trip.count30.i.i = sext i8 %i.lh to i64
  %i.lm = icmp sgt i8 %i.lh, 0
  br i1 %i.lm, label %.preheader.us.preheader.i.i, label %Aig_CutCheckDominance.exit.i

.preheader.us.preheader.i.i:                      ; preds = %bb.at
  %i.ln = getelementptr inbounds nuw i8, ptr %.02354.i, i64 24
  %wide.trip.count.i.i = zext nneg i8 %i.le to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv27.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next28.i.i, %._crit_edge.us.i.i ] ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv27.i.i
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !52
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.av ] ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.i.i
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !52
  %i.ls = icmp eq i32 %i.lp, %i.lr
  br i1 %i.ls, label %._crit_edge.us.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Aig_CutCheckDominance.exit.thread.i, label %bb.au, !llvm.loop !3

._crit_edge.us.i.i:                               ; preds = %bb.au
  %indvars.iv.next28.i.i = add nuw nsw i64 %indvars.iv27.i.i, 1 ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %indvars.iv.next28.i.i, %wide.trip.count30.i.i
  br i1 %exitcond31.not.i.i, label %Aig_CutCheckDominance.exit.i, label %.preheader.us.i.i, !llvm.loop !4

Aig_CutCheckDominance.exit.i:                     ; preds = %._crit_edge.us.i.i, %bb.at
  store i8 0, ptr %i.ld, align 1, !tbaa !51
  br label %Aig_CutCheckDominance.exit.thread.i

bb.aw:                                            ; preds = %bb.ar
  %.not.i59 = icmp eq i32 %i.ll, %i.lk
  br i1 %.not.i59, label %.preheader.us.preheader.i36.i, label %Aig_CutCheckDominance.exit.thread.i

.preheader.us.preheader.i36.i:                    ; preds = %bb.aw
  %wide.trip.count30.i31.i = zext nneg i8 %i.le to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %.02354.i, i64 24
  %wide.trip.count.i37.i = zext nneg i8 %i.lh to i64
  br label %.preheader.us.i38.i

.preheader.us.i38.i:                              ; preds = %._crit_edge.us.i43.i, %.preheader.us.preheader.i36.i
  %indvars.iv27.i39.i = phi i64 [ 0, %.preheader.us.preheader.i36.i ], [ %indvars.iv.next28.i44.i, %._crit_edge.us.i43.i ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv27.i39.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !52
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.preheader.us.i38.i
  %indvars.iv.i40.i = phi i64 [ 0, %.preheader.us.i38.i ], [ %indvars.iv.next.i41.i, %bb.ay ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.i40.i
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !52
  %i.ly = icmp eq i32 %i.lv, %i.lx
  br i1 %i.ly, label %._crit_edge.us.i43.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i40.i, 1 ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %indvars.iv.next.i41.i, %wide.trip.count.i37.i
  br i1 %exitcond.not.i42.i, label %Aig_CutCheckDominance.exit.thread.i, label %bb.ax, !llvm.loop !3

._crit_edge.us.i43.i:                             ; preds = %bb.ax
  %indvars.iv.next28.i44.i = add nuw nsw i64 %indvars.iv27.i39.i, 1 ; 2 uses
  %exitcond31.not.i45.i = icmp eq i64 %indvars.iv.next28.i44.i, %wide.trip.count30.i31.i
  br i1 %exitcond31.not.i45.i, label %Aig_CutFilter.exit, label %.preheader.us.i38.i, !llvm.loop !4

Aig_CutCheckDominance.exit.thread.i:              ; preds = %bb.ay, %bb.av, %bb.aw, %Aig_CutCheckDominance.exit.i, %bb.as, %bb.aq
  %i.lz = add nuw nsw i32 %.055.i, 1              ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.02354.i, i64 20
  %i.mb = load i16, ptr %i.ma, align 4, !tbaa !56
  %i.mc = sext i16 %i.mb to i64
  %i.md = getelementptr inbounds i8, ptr %.02354.i, i64 %i.mc
  %exitcond.not.i60 = icmp eq i32 %i.lz, %i.kw
  br i1 %exitcond.not.i60, label %.loopexit, label %bb.aq, !llvm.loop !5

Aig_CutFilter.exit:                               ; preds = %._crit_edge.us.i43.i
  store i8 0, ptr %i.lb, align 1, !tbaa !51
  br label %Aig_CutMerge.exit.thread

.loopexit:                                        ; preds = %Aig_CutCheckDominance.exit.thread.i, %Aig_CutMergeOrdered.exit116
  %i.me = load i32, ptr %i.bz, align 8, !tbaa !27
  %.not44 = icmp eq i32 %i.me, 0
  br i1 %.not44, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %.val51 = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.mf = ptrtoint ptr %.val51 to i64
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = and i32 %i.mg, 1
  %.val52 = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.mi = ptrtoint ptr %.val52 to i64
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = and i32 %i.mj, 1
  %i.ml = tail call ptr @Aig_CutComputeTruth(ptr noundef nonnull %0, ptr noundef %.016.i, ptr noundef %.042144, ptr noundef %.041138, i32 noundef %i.mh, i32 noundef %i.mk) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit
  %i.mm = getelementptr inbounds nuw i8, ptr %.016.i, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %.016.i, i64 23
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !51  ; 2 uses
  %i.mp = sext i8 %i.mo to i32                    ; 2 uses
  %i.mq = icmp sgt i8 %i.mo, 0
  br i1 %i.mq, label %.lr.ph.i61, label %Aig_CutFindCost.exit

.lr.ph.i61:                                       ; preds = %bb.ba
  %i.mr = load ptr, ptr %0, align 8, !tbaa !28
  %i.ms = getelementptr i8, ptr %i.mr, i64 32
  %.val.i62 = load ptr, ptr %i.ms, align 8, !tbaa !40 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i62, null
  br i1 %.not.i.i, label %Aig_CutFindCost.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i61
  %i.mt = getelementptr i8, ptr %.val.i62, i64 8
  %.val.i.i = load ptr, ptr %i.mt, align 8, !tbaa !57
  %wide.trip.count.i = zext nneg i32 %i.mp to i64
  br label %Aig_ManObj.exit.i

Aig_ManObj.exit.i:                                ; preds = %bb.bb, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i ], [ %indvars.iv.next.i, %bb.bb ] ; 2 uses
  %.013.i = phi i32 [ 0, %.lr.ph.split.i ], [ %i.nd, %bb.bb ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv.i
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !52
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.mw
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !58 ; 2 uses
  %.not.i63 = icmp eq ptr %i.my, null
  br i1 %.not.i63, label %.critedge.loopexit.i, label %bb.bb

bb.bb:                                            ; preds = %Aig_ManObj.exit.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load i64, ptr %i.mz, align 8
  %i.nb = trunc i64 %i.na to i32
  %i.nc = lshr i32 %i.nb, 6
  %i.nd = add nuw nsw i32 %i.nc, %.013.i          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i64, label %.critedge.loopexit.i, label %Aig_ManObj.exit.i, !llvm.loop !98

.critedge.loopexit.i:                             ; preds = %bb.bb, %Aig_ManObj.exit.i
  %.0.lcssa.ph.i = phi i32 [ %.013.i, %Aig_ManObj.exit.i ], [ %i.nd, %bb.bb ]
  %i.ne = mul nuw nsw i32 %.0.lcssa.ph.i, 1000
  br label %Aig_CutFindCost.exit

Aig_CutFindCost.exit:                             ; preds = %bb.ba, %.lr.ph.i61, %.critedge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.ba ], [ 0, %.lr.ph.i61 ], [ %i.ne, %.critedge.loopexit.i ]
  %i.nf = sdiv i32 %.0.lcssa.i, %i.mp
  %i.ng = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  store i32 %i.nf, ptr %i.ng, align 8, !tbaa !65
  br label %Aig_CutMerge.exit.thread

Aig_CutMerge.exit.thread:                         ; preds = %._crit_edge211, %bb.ad, %._crit_edge214, %.critedge._crit_edge.i, %.critedge._crit_edge.i73, %Aig_CutFilter.exit, %bb.g, %Aig_CutFindCost.exit, %bb.h
  %i.nh = add nuw nsw i32 %.0143, 1               ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.041138, i64 20
  %i.nj = load i16, ptr %i.ni, align 4, !tbaa !56
  %i.nk = sext i16 %i.nj to i64
  %i.nl = getelementptr inbounds i8, ptr %.041138, i64 %i.nk
  %i.nm = load i32, ptr %i.p, align 8, !tbaa !25  ; 3 uses
  %i.nn = icmp slt i32 %i.nh, %i.nm
  br i1 %i.nn, label %bb.g, label %.loopexit132, !llvm.loop !99

.loopexit132:                                     ; preds = %Aig_CutMerge.exit.thread, %bb.f
  %i.no = phi i32 [ %i.ca, %bb.f ], [ %i.nm, %Aig_CutMerge.exit.thread ] ; 2 uses
  %i.np = add nuw nsw i32 %.040146, 1             ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.042144, i64 20
  %i.nr = load i16, ptr %i.nq, align 4, !tbaa !56
  %i.ns = sext i16 %i.nr to i64
  %i.nt = getelementptr inbounds i8, ptr %.042144, i64 %i.ns
  %i.nu = icmp slt i32 %i.np, %i.no
  br i1 %i.nu, label %bb.f, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %.loopexit132, %Aig_ObjPrepareCuts.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Aig_ComputeCuts(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #21
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %6, align 8, !tbaa !107
  %.neg48 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !108
  %.neg = sdiv i64 %i.e, -1000
  %.neg49 = add i64 %.neg, %.neg48
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg49, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.f = call ptr @Aig_ManCutStart(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val3650 = load i32, ptr %i.i, align 4, !tbaa !42
  %i.j = icmp sgt i32 %.val3650, 0
  br i1 %i.j, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Abc_Clock.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = getelementptr i8, ptr %i.f, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !46
  br label %bb.c

.critedge.preheader:                              ; preds = %Aig_ObjPrepareCuts.exit, %Abc_Clock.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val52 = load i32, ptr %i.t, align 4, !tbaa !42 ; 2 uses
  %i.u = icmp sgt i32 %.val52, 0
  br i1 %i.u, label %.lr.ph54, label %.critedge2

bb.c:                                             ; preds = %.lr.ph, %Aig_ObjPrepareCuts.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Aig_ObjPrepareCuts.exit ] ; 2 uses
  %i.v = phi ptr [ %i.h, %.lr.ph ], [ %i.ca, %Aig_ObjPrepareCuts.exit ]
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val38 = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val38, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.z = call ptr @Aig_MmFixedEntryFetch(ptr noundef %.pre) #21 ; 9 uses
  %.val33.i = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.aa = getelementptr i8, ptr %i.y, i64 36      ; 2 uses
  %.val34.i = load i32, ptr %i.aa, align 4, !tbaa !54 ; 8 uses
  %i.ab = sext i32 %.val34.i to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val33.i, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !55
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !25  ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.af = load i32, ptr %i.n, align 8, !tbaa !45
  %i.ag = trunc i32 %i.af to i16                  ; 6 uses
  %i.ah = load i32, ptr %i.o, align 4, !tbaa !26
  %i.ai = trunc i32 %i.ah to i8                   ; 5 uses
  %i.aj = sext i16 %i.ag to i64                   ; 5 uses
  %xtraiter = and i32 %i.ad, 3                    ; 3 uses
  %i.ak = icmp ult i32 %i.ad, 4
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.ad, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.03035.i = phi ptr [ %i.z, %.lr.ph.i.new ], [ %i.be, %bb.d ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %.03035.i, i64 23
  store i8 0, ptr %i.al, align 1, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %.03035.i, i64 16
  store i32 %.val34.i, ptr %i.am, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %.03035.i, i64 20
  store i16 %i.ag, ptr %i.an, align 4, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %.03035.i, i64 22
  store i8 %i.ai, ptr %i.ao, align 2, !tbaa !59
  %i.ap = getelementptr inbounds i8, ptr %.03035.i, i64 %i.aj ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 23
  store i8 0, ptr %i.aq, align 1, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 %.val34.i, ptr %i.ar, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i16 %i.ag, ptr %i.as, align 4, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 22
  store i8 %i.ai, ptr %i.at, align 2, !tbaa !59
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.aj ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 23
  store i8 0, ptr %i.av, align 1, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 %.val34.i, ptr %i.aw, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i16 %i.ag, ptr %i.ax, align 4, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 22
  store i8 %i.ai, ptr %i.ay, align 2, !tbaa !59
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.aj ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 23
  store i8 0, ptr %i.ba, align 1, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %.val34.i, ptr %i.bb, align 8, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  store i16 %i.ag, ptr %i.bc, align 4, !tbaa !56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 22
  store i8 %i.ai, ptr %i.bd, align 2, !tbaa !59
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.aj ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !10

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.03035.i.epil.init = phi ptr [ %i.z, %.lr.ph.i ], [ %i.be, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.03035.i.epil = phi ptr [ %.03035.i.epil.init, %.epil.preheader ], [ %i.bj, %bb.e ] ; 5 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.03035.i.epil, i64 23
  store i8 0, ptr %i.bf, align 1, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %.03035.i.epil, i64 16
  store i32 %.val34.i, ptr %i.bg, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %.03035.i.epil, i64 20
  store i16 %i.ag, ptr %i.bh, align 4, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %.03035.i.epil, i64 22
  store i8 %i.ai, ptr %i.bi, align 2, !tbaa !59
  %i.bj = getelementptr inbounds i8, ptr %.03035.i.epil, i64 %i.aj
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !103

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 0, ptr %i.bk, align 8, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 %.val34.i, ptr %i.bl, align 8, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 23
  store i8 1, ptr %i.bm, align 1, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store i32 %.val34.i, ptr %i.bn, align 8, !tbaa !52
  %i.bo = load i32, ptr %i.aa, align 4, !tbaa !54
  %i.bp = and i32 %i.bo, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !62
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !27
  %.not31.i = icmp eq i32 %i.bs, 0
  br i1 %.not31.i, label %Aig_ObjPrepareCuts.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 22
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !59
  %i.bv = sext i8 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bv
  %i.bx = load i32, ptr %i.q, align 4, !tbaa !44
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bw, i8 -86, i64 %i.bz, i1 false)
end_hunk_0
