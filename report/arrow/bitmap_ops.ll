inline.NumInlined: 424
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh:bb.a

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5: ; preds = %bb.w, %bb.v, %.lr.ph.i.5
  %.sroa.9.2.i.5 = phi i8 [ %i.fj, %bb.w ], [ %.sroa.9.2.i.4, %bb.v ], [ %.sroa.9.2.i.4, %.lr.ph.i.5 ] ; 3 uses
  %.sroa.1319.1.i.5 = phi i64 [ %i.fg, %bb.w ], [ %i.fg, %bb.v ], [ %.sroa.1319.1.i.4, %.lr.ph.i.5 ]
  %.sroa.16.1.i.5 = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.fe, %.lr.ph.i.5 ] ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %.sroa.15.0117, 6
  br i1 %exitcond.not.i.5, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5
  %i.fk = lshr i8 %spec.select.i48.5, 1           ; 2 uses
  %i.fl = zext i8 %.sroa.9.2.i.5 to i32
  %i.fm = trunc nsw i64 %.sroa.16.1.i.5 to i32
  %i.fn = shl nuw nsw i32 1, %i.fm
  %i.fo = and i32 %i.fn, %i.fl
  %.not21.i.6 = icmp eq i32 %i.fo, 0
  %i.fp = or disjoint i8 %i.fk, -128
  %spec.select.i48.6 = select i1 %.not21.i.6, i8 %i.fk, i8 %i.fp ; 2 uses
  %i.fq = add nsw i64 %.sroa.16.1.i.5, 1          ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 8
  br i1 %i.fr, label %bb.x, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !15

bb.x:                                             ; preds = %.lr.ph.i.6
  %i.fs = icmp eq i32 %.sroa.15.0117, 8
  br i1 %i.fs, label %bb.y, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !20

bb.y:                                             ; preds = %bb.x
  %i.ft = getelementptr i8, ptr %.sroa.675.1115, i64 %.sroa.1319.1.i.5
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6: ; preds = %bb.y, %bb.x, %.lr.ph.i.6
  %.sroa.9.2.i.6 = phi i8 [ %i.fv, %bb.y ], [ %.sroa.9.2.i.5, %bb.x ], [ %.sroa.9.2.i.5, %.lr.ph.i.6 ]
  %.sroa.16.1.i.6 = phi i64 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.fq, %.lr.ph.i.6 ] ; 2 uses
  %exitcond.not.i.6 = icmp eq i32 %.sroa.15.0117, 7
  br i1 %exitcond.not.i.6, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6
  %i.fw = lshr i8 %spec.select.i48.6, 1           ; 2 uses
  %i.fx = zext i8 %.sroa.9.2.i.6 to i32
  %i.fy = trunc nsw i64 %.sroa.16.1.i.6 to i32
  %i.fz = shl nuw nsw i32 1, %i.fy
  %i.ga = and i32 %i.fz, %i.fx
  %.not21.i.7 = icmp eq i32 %i.ga, 0
  %i.gb = or disjoint i8 %i.fw, -128
  %spec.select.i48.7 = select i1 %.not21.i.7, i8 %i.fw, i8 %i.gb
  %i.gc = icmp eq i64 %.sroa.16.1.i.6, 7          ; 0 uses
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread: ; preds = %bb.j
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.675.1115, i64 1 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1             ; 2 uses
  %.sroa.23.40.extract.trunc = trunc i64 %.sroa.23.1120 to i8
  %i.gf = trunc i64 %.sroa.23.1120 to i32
  %i.gg = and i32 %i.gf, 255
  %i.gh = lshr i32 %i.gg, %i.bw
  %i.gi = zext i8 %i.ge to i32
  %i.gj = shl nuw nsw i32 %i.gi, %i.bx
  %i.gk = or i32 %i.gj, %i.gh
  %i.gl = trunc i32 %i.gk to i8
  %.2.i = select i1 %.not.i47, i8 %.sroa.23.40.extract.trunc, i8 %i.gl
  %.sroa.23.40.insert.ext82 = zext i8 %i.ge to i64
  %i.gm = add nsw i32 %.sroa.15.0117, -8
  %i.gn = xor i8 %.2.i, -1
  br label %bb.z

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit: ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i48.lcssa = phi i8 [ %spec.select.i48, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i48.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i48.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i48.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i48.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i48.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i48.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i48.7, %.lr.ph.i.7 ]
  %i.go = zext i8 %spec.select.i48.lcssa to i32
  %i.gp = sub nuw nsw i32 8, %.sroa.15.0117
  %i.gq = lshr i32 %i.go, %i.gp
  %i.gr = trunc nuw i32 %i.gq to i8
  %i.gs = xor i8 %i.gr, -1                        ; 2 uses
  %i.gt = icmp eq i32 %.sroa.15.0117, 8
  br i1 %i.gt, label %bb.z, label %.lr.ph.preheader.i49

bb.z:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.gu = phi i8 [ %i.gn, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %i.gs, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ] ; 2 uses
  %.sroa.23.399 = phi i64 [ %.sroa.23.40.insert.ext82, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.23.1120, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.15.195 = phi i32 [ %i.gm, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.675.293 = phi ptr [ %i.gd, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.675.1115, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  br i1 %.not.i45145159, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = shl nuw nsw i32 %i.gv, %i.bu
  %i.gx = lshr i32 %i.gv, %i.bz
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.6.1119, i64 1 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = and i64 %.sroa.22.1116, %i.bv
  %i.hb = or i32 %i.gw, %i.gx
  %i.hc = zext nneg i32 %i.hb to i64              ; 2 uses
  %i.hd = and i64 %i.hc, %i.ca
  %i.he = or disjoint i64 %i.hd, %i.ha
  %i.hf = trunc i64 %i.he to i8
  %i.hg = zext i8 %i.gz to i64
  %i.hh = and i64 %i.hg, %i.ca
  %i.hi = and i64 %i.bv, %i.hc
  %i.hj = or disjoint i64 %i.hh, %i.hi            ; 2 uses
  %i.hk = trunc i64 %i.hj to i8
  store i8 %i.hk, ptr %i.gy, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sink = phi i8 [ %i.hf, %bb.aa ], [ %i.gu, %bb.z ]
  %.sroa.22.4 = phi i64 [ %i.hj, %bb.aa ], [ %.sroa.22.1116, %bb.z ]
  store i8 %.sink, ptr %.sroa.6.1119, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.6.1119, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i49:                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.hm = load i8, ptr %i.by, align 1, !tbaa !7
  %i.hn = load i8, ptr %.sroa.6.1119, align 1, !tbaa !7
  br label %.lr.ph.i51

._crit_edge.i54:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i54
  %i.ho = getelementptr inbounds i8, ptr %.sroa.6.1119, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.ho, align 1, !tbaa !7
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i51:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i49
  %.01537.i = phi i8 [ %i.ib, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.gs, %.lr.ph.preheader.i49 ] ; 2 uses
  %.sroa.2930.036.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i49 ] ; 3 uses
  %.sroa.6.035.i = phi i64 [ %i.hu, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i49 ]
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.hm, %.lr.ph.preheader.i49 ] ; 3 uses
  %.sroa.14.033.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.hn, %.lr.ph.preheader.i49 ] ; 2 uses
  %i.hp = and i8 %.01537.i, 1
  %.not.i52 = icmp eq i8 %i.hp, 0
  %i.hq = xor i8 %.sroa.22.034.i, -1
  %i.hr = and i8 %.sroa.14.033.i, %i.hq
  %i.hs = or i8 %.sroa.14.033.i, %.sroa.22.034.i
  %.sroa.14.1.i = select i1 %.not.i52, i8 %i.hr, i8 %i.hs ; 3 uses
  %i.ht = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.hu = add nuw nsw i64 %.sroa.6.035.i, 1       ; 3 uses
  %i.hv = icmp eq i8 %i.ht, 0
  br i1 %i.hv, label %bb.ad, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.ad:                                            ; preds = %.lr.ph.i51
  %i.hw = add nsw i64 %.sroa.2930.036.i, 1        ; 3 uses
  %i.hx = getelementptr inbounds i8, ptr %.sroa.6.1119, i64 %.sroa.2930.036.i
  store i8 %.sroa.14.1.i, ptr %i.hx, align 1, !tbaa !7
  %i.hy = icmp samesign ult i64 %i.hu, %wide.trip.count.i
  br i1 %i.hy, label %bb.ae, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !20

bb.ae:                                            ; preds = %bb.ad
  %i.hz = getelementptr inbounds i8, ptr %.sroa.6.1119, i64 %i.hw
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.ae, %bb.ad, %.lr.ph.i51
  %.sroa.14.2.i = phi i8 [ %i.ia, %bb.ae ], [ %.sroa.14.1.i, %bb.ad ], [ %.sroa.14.1.i, %.lr.ph.i51 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.ae ], [ 1, %bb.ad ], [ %i.ht, %.lr.ph.i51 ] ; 2 uses
  %.sroa.2930.1.i = phi i64 [ %i.hw, %bb.ae ], [ %i.hw, %bb.ad ], [ %.sroa.2930.036.i, %.lr.ph.i51 ] ; 2 uses
  %i.ib = lshr i8 %.01537.i, 1
  %exitcond.not.i53 = icmp eq i64 %i.hu, %wide.trip.count.i
  br i1 %exitcond.not.i53, label %._crit_edge.i54, label %.lr.ph.i51, !llvm.loop !21

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.k, %bb.ab, %._crit_edge.i54, %bb.ac
  %.sroa.23.398 = phi i64 [ %.sroa.23.399, %bb.ab ], [ %.sroa.23.1120, %._crit_edge.i54 ], [ %.sroa.23.1120, %bb.ac ], [ %.sroa.23.1120, %bb.k ]
  %.sroa.15.194 = phi i32 [ %.sroa.15.195, %bb.ab ], [ 0, %._crit_edge.i54 ], [ 0, %bb.ac ], [ 0, %bb.k ]
  %.sroa.675.292 = phi ptr [ %.sroa.675.293, %bb.ab ], [ %.sroa.675.1115, %._crit_edge.i54 ], [ %.sroa.675.1115, %bb.ac ], [ %.sroa.675.1115, %bb.k ]
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ab ], [ %.sroa.22.1116, %._crit_edge.i54 ], [ %.sroa.22.1116, %bb.ac ], [ %.sroa.22.1116, %bb.k ]
  %.sroa.6.2 = phi ptr [ %i.hl, %bb.ab ], [ %.sroa.6.1119, %._crit_edge.i54 ], [ %.sroa.6.1119, %bb.ac ], [ %.sroa.6.1119, %bb.k ]
  %.not44 = icmp eq i32 %i.cu, 0
  br i1 %.not44, label %.loopexit, label %bb.j, !llvm.loop !25

bb.af:                                            ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = ashr i64 %2, 3                          ; 2 uses
  %i.id = and i64 %2, 7
  %i.ie = icmp ne i64 %i.id, 0
  %i.if = zext i1 %i.ie to i64                    ; 2 uses
  %i.ig = add nsw i64 %i.ic, %i.if                ; 5 uses
  %i.ih = sdiv i64 %1, 8                          ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %0, i64 %i.ih ; 8 uses
  %i.ij = sdiv i64 %3, 8                          ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %4, i64 %i.ij ; 8 uses
  %i.il = shl nsw i64 %i.ig, 3
  %.neg = sub i64 %2, %i.il
  %i.im = trunc i64 %.neg to i32
  %i.in = add i32 %i.im, 8
  %notmask = shl nsw i32 -1, %i.in
  %i.io = add nsw i64 %i.ig, -1                   ; 8 uses
  %i.ip = icmp sgt i64 %i.ig, 1
  br i1 %i.ip, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.ag
  %min.iters.check = icmp ult i64 %i.ig, 5
  br i1 %min.iters.check, label %.lr.ph124.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iq = add i64 %i.ij, %i.b
  %i.ir = add i64 %i.ih, %i.a
  %i.is = sub i64 %i.iq, %i.ir
  %diff.check = icmp ult i64 %i.is, 32
  br i1 %diff.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check174 = icmp ult i64 %i.ig, 33
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.io, 28
  %n.vec = and i64 %i.io, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load = load <16 x i8>, ptr %i.it, align 1, !tbaa !7
  %wide.load175 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !7
  %i.iv = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.iw = xor <16 x i8> %wide.load175, splat (i8 -1)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store <16 x i8> %i.iv, ptr %i.ix, align 1, !tbaa !7
  store <16 x i8> %i.iw, ptr %i.iy, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec177 = and i64 %i.io, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index178 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next180, %vec.epilog.vector.body ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index178
  %wide.load179 = load <4 x i8>, ptr %i.ja, align 1, !tbaa !7
  %i.jb = xor <4 x i8> %wide.load179, splat (i8 -1)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index178
  store <4 x i8> %i.jb, ptr %i.jc, align 1, !tbaa !7
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next180, %n.vec177
  br i1 %i.jd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n181 = icmp eq i64 %i.io, %n.vec177
  br i1 %cmp.n181, label %._crit_edge, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0123.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec177, %vec.epilog.middle.block ] ; 3 uses
  %i.je = add nsw i64 %i.ic, %i.if                ; 2 uses
  %i.jf = add nsw i64 %i.je, 3
  %i.jg = add nsw i64 %i.je, -2
  %i.jh = sub nsw i64 %i.jg, %.0123.ph
  %xtraiter189 = and i64 %i.jf, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader, %.lr.ph124.prol
  %.0123.prol = phi i64 [ %i.jm, %.lr.ph124.prol ], [ %.0123.ph, %.lr.ph124.preheader ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph124.prol ], [ 0, %.lr.ph124.preheader ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.0123.prol
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !7
  %i.jk = xor i8 %i.jj, -1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0123.prol
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !7
  %i.jm = add nuw nsw i64 %.0123.prol, 1          ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !31

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader
  %.0123.unr = phi i64 [ %.0123.ph, %.lr.ph124.preheader ], [ %i.jm, %.lr.ph124.prol ]
  %i.jn = icmp ult i64 %i.jh, 3
  br i1 %i.jn, label %._crit_edge, label %.lr.ph124

._crit_edge:                                      ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124, %middle.block, %vec.epilog.middle.block, %bb.ag
  %i.jo = getelementptr inbounds i8, ptr %i.ii, i64 %i.io
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !7
  %i.jq = getelementptr inbounds i8, ptr %i.ik, i64 %i.io ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !7
  %i.js = trunc i32 %notmask to i8                ; 2 uses
  %i.jt = and i8 %i.jr, %i.js
  %.demorgan = or i8 %i.jp, %i.js
  %i.ju = xor i8 %.demorgan, -1
  %i.jv = or i8 %i.jt, %i.ju
  store i8 %i.jv, ptr %i.jq, align 1, !tbaa !7
  br label %.loopexit

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
  %.0123 = phi i64 [ %i.kp, %.lr.ph124 ], [ %.0123.unr, %.lr.ph124.prol.loopexit ] ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.0123
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !7
  %i.jy = xor i8 %i.jx, -1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0123
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !7
  %i.ka = add nuw nsw i64 %.0123, 1               ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !7
  %i.kd = xor i8 %i.kc, -1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ka
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !7
  %i.kf = add nuw nsw i64 %.0123, 2               ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !7
  %i.ki = xor i8 %i.kh, -1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kf
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !7
  %i.kk = add nuw nsw i64 %.0123, 3               ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !7
  %i.kn = xor i8 %i.km, -1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kk
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !7
  %i.kp = add nuw nsw i64 %.0123, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kp, %i.io
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph124, !llvm.loop !32

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal13ReverseBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = sdiv i64 %4, 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %_ZN5arrow8internal12_GLOBAL__N_119ReverseBlockOffsetsEPKhlllPh.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = add nsw i64 %i.b, %2                     ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.g, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nsw i64 %i.i, %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.04858.i = phi i64 [ %i.bd, %bb.g ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %.04957.i = phi i64 [ %i.bf, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.05056.i = phi i64 [ %spec.select.i, %bb.g ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.05155.i = phi i64 [ %i.bc, %bb.g ], [ %4, %.lr.ph.preheader.i ] ; 2 uses
  %i.n = add nsw i64 %.04858.i, %1
  %i.o = srem i64 %i.n, 8                         ; 2 uses
  %i.p = trunc nsw i64 %i.o to i8
  %.not.i = icmp eq i64 %i.o, 0
  %i.q = select i1 %.not.i, i8 8, i8 %i.p         ; 2 uses
  %i.r = srem i64 %.05155.i, 8                    ; 2 uses
  %i.s = trunc nsw i64 %i.r to i8
  %i.t = sub nsw i8 8, %i.s                       ; 3 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = shl nuw nsw i32 255, %i.v                ; 3 uses
  %i.x = icmp samesign ult i64 %.04858.i, 9
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = add nsw i64 %i.r, %.04858.i              ; 2 uses
  %i.z = icmp slt i64 %i.y, 8
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = trunc nsw i64 %i.y to i32
  %i.ab = sub nsw i32 8, %i.aa                    ; 2 uses
  %i.ac = shl i32 %i.w, %i.ab
  %i.ad = and i32 %i.ac, 255
  %i.ae = lshr i32 %i.ad, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.047.in.i = phi i32 [ %i.ae, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.af = icmp eq i64 %.05056.i, 0
  %i.ag = zext nneg i8 %i.q to i32
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !7
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.ai
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.c, i64 %.05056.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = zext i16 %i.an to i32
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  br i1 %.not35, label %bb.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69..loopexit.loopexit132_crit_edge, !llvm.loop !97

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.6.ph = xor i1 %i.y, true
  br label %.loopexit

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69..loopexit.loopexit132_crit_edge: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69
  br label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %.lr.ph145, %bb.i, %.preheader, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69..loopexit.loopexit132_crit_edge, %.loopexit.loopexit, %bb.c, %bb.b
  %.6 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.6.ph, %.loopexit.loopexit ], [ true, %bb.i ], [ false, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69..loopexit.loopexit132_crit_edge ], [ true, %.preheader ], [ false, %.lr.ph145 ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll(ptr nofree noundef readonly %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null                     ; 2 uses
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.c, %i.d
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %4)
  %i.g = icmp eq i64 %i.f, %4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.i = icmp eq i64 %i.h, %4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i1 [ %i.i, %bb.f ], [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsERKSt10shared_ptrINS_6BufferEElS5_ll(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !52, !range !61, !noundef !62
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.d, ptr %i.f, ptr null, !prof !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !47     ; 3 uses
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52, !range !61, !noundef !62
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.q = icmp eq ptr %i.h, null
  %i.r = icmp eq ptr %i.p, null
  %or.cond.i = and i1 %i.q, %i.r
  br i1 %or.cond.i, label %_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ne ptr %i.h, null                   ; 2 uses
  %i.t = icmp ne ptr %i.p, null
  %or.cond3.i = and i1 %i.s, %i.t
  br i1 %or.cond3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef zeroext i1 @_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll(ptr noundef nonnull readonly %i.h, i64 noundef %1, ptr noundef nonnull readonly %i.p, i64 noundef %3, i64 noundef %4)
  br label %_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull readonly %i.h, i64 noundef %1, i64 noundef %4)
  %i.w = icmp eq i64 %i.v, %4
  br label %_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef readonly %i.p, i64 noundef %3, i64 noundef %4)
  %i.y = icmp eq i64 %i.x, %4
  br label %_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit

_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.j
  %.0.i = phi i1 [ %i.y, %bb.j ], [ %i.u, %bb.g ], [ %i.w, %bb.i ], [ true, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal9BitmapAndEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.c = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !98
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.c, ptr noundef %1), !noalias !98
  %i.d = load ptr, ptr %8, align 8, !tbaa !37, !noalias !98
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !41, !noalias !101
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !47, !noalias !101 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !98
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52, !range !61, !noalias !98, !noundef !62
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !61, !noalias !98
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false, !prof !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !98 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = select i1 %i.o, ptr %i.q, ptr null, !prof !20 ; 2 uses
  %i.t = srem i64 %7, 8                           ; 3 uses
  %i.u = srem i64 %3, 8
  %i.v = icmp eq i64 %i.t, %i.u
  %i.w = srem i64 %5, 8
  %i.x = icmp eq i64 %i.t, %i.w
  %or.cond.i.i = and i1 %i.v, %i.x
  br i1 %or.cond.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 0, %i.t
  %i.z = and i64 %i.y, 7                          ; 7 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %i.z), !noalias !98
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i64 %6, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, %3                    ; 2 uses
  %i.ac = add nsw i64 %i.z, %5
  %i.ad = add nsw i64 %i.z, %7
  %i.ae = sub nsw i64 %6, %i.z
  %i.af = srem i64 %i.ab, 8
  %i.ag = add nsw i64 %i.af, %i.ae                ; 2 uses
  %i.ah = ashr i64 %i.ag, 3                       ; 2 uses
  %i.ai = and i64 %i.ag, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i64                    ; 2 uses
  %i.al = add nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = sdiv i64 %i.ab, 8                       ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am ; 7 uses
  %i.ao = sdiv i64 %i.ac, 8                       ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao ; 7 uses
  %i.aq = sdiv i64 %i.ad, 8                       ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.q, i64 %i.aq ; 7 uses
  %i.as = icmp sgt i64 %i.al, 0
  br i1 %i.as, label %iter.check, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = add i64 %i.aq, %i.r                     ; 2 uses
  %i.au = add i64 %i.am, %i.b
  %i.av = sub i64 %i.at, %i.au
  %diff.check = icmp ult i64 %i.av, 32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.at, %i.aw
  %diff.check11 = icmp ult i64 %i.ax, 32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !7, !noalias !98
  %wide.load13 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !7, !noalias !98
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.az, align 1, !tbaa !7, !noalias !98
  %wide.load15 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !7, !noalias !98
  %i.bc = and <16 x i8> %wide.load14, %wide.load
  %i.bd = and <16 x i8> %wide.load15, %wide.load13
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !7, !noalias !98
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !7, !noalias !98
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !7, !noalias !98
  %wide.load20 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !7, !noalias !98
  %i.bj = and <4 x i8> %wide.load20, %wide.load19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !7, !noalias !98
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bm = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7, !noalias !98
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7, !noalias !98
  %i.br = and i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7, !noalias !98
  %i.bt = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !108

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.prol ]
  %i.bu = sub i64 %.016.i.i.i.ph, %i.bm
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !7, !noalias !98
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !7, !noalias !98
  %i.ca = and i8 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !7, !noalias !98
  %i.cc = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cc
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !7, !noalias !98
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !7, !noalias !98
  %i.ch = and i8 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !7, !noalias !98
  %i.cj = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cj
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !7, !noalias !98
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !98
  %i.co = and i8 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cj
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7, !noalias !98
  %i.cq = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cq
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !7, !noalias !98
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !7, !noalias !98
  %i.cv = and i8 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cq
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !7, !noalias !98
  %i.cx = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cx, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !109

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !98
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !98
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cy, align 8, !tbaa !41, !alias.scope !98
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.cz = load ptr, ptr %8, align 8, !tbaa !37, !noalias !98 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63, !noalias !98 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.dd, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !66
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21, !inline_history !110
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21, !inline_history !110
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !98
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.n ], [ %i.dq, %bb.o ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !98 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.ds = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.cz, %bb.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !71, !range !61, !noundef !62
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check9 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load11 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load13 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = and <16 x i8> %wide.load12, %wide.load
  %i.an = and <16 x i8> %wide.load13, %wide.load11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %i.am, ptr %i.ao, align 1, !tbaa !7
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !7
  %wide.load18 = load <4 x i8>, ptr %i.as, align 1, !tbaa !7
  %i.at = and <4 x i8> %wide.load18, %wide.load17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.at, ptr %i.au, align 1, !tbaa !7
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.aw = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.bb = and i8 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !7
  %i.bd = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !113

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.prol ]
  %i.be = sub i64 %.016.i.i.ph, %i.aw
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bk = and i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.br = and i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bm
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7
  %i.bt = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bt
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.by = and i8 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !7
  %i.ca = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ca
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !7
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !7
  %i.cf = and i8 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ca
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !7
  %i.ch = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !114

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal8BitmapOrEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.c = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !115
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.c, ptr noundef %1), !noalias !115
  %i.d = load ptr, ptr %8, align 8, !tbaa !37, !noalias !115
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !41, !noalias !118
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !47, !noalias !118 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !115
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52, !range !61, !noalias !115, !noundef !62
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !61, !noalias !115
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false, !prof !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !115 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = select i1 %i.o, ptr %i.q, ptr null, !prof !20 ; 2 uses
  %i.t = srem i64 %7, 8                           ; 3 uses
  %i.u = srem i64 %3, 8
  %i.v = icmp eq i64 %i.t, %i.u
  %i.w = srem i64 %5, 8
  %i.x = icmp eq i64 %i.t, %i.w
  %or.cond.i.i = and i1 %i.v, %i.x
  br i1 %or.cond.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 0, %i.t
  %i.z = and i64 %i.y, 7                          ; 7 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %i.z), !noalias !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i64 %6, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, %3                    ; 2 uses
  %i.ac = add nsw i64 %i.z, %5
  %i.ad = add nsw i64 %i.z, %7
  %i.ae = sub nsw i64 %6, %i.z
  %i.af = srem i64 %i.ab, 8
  %i.ag = add nsw i64 %i.af, %i.ae                ; 2 uses
  %i.ah = ashr i64 %i.ag, 3                       ; 2 uses
  %i.ai = and i64 %i.ag, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i64                    ; 2 uses
  %i.al = add nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = sdiv i64 %i.ab, 8                       ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am ; 7 uses
  %i.ao = sdiv i64 %i.ac, 8                       ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao ; 7 uses
  %i.aq = sdiv i64 %i.ad, 8                       ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.q, i64 %i.aq ; 7 uses
  %i.as = icmp sgt i64 %i.al, 0
  br i1 %i.as, label %iter.check, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = add i64 %i.aq, %i.r                     ; 2 uses
  %i.au = add i64 %i.am, %i.b
  %i.av = sub i64 %i.at, %i.au
  %diff.check = icmp ult i64 %i.av, 32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.at, %i.aw
  %diff.check11 = icmp ult i64 %i.ax, 32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !7, !noalias !115
  %wide.load13 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !7, !noalias !115
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.az, align 1, !tbaa !7, !noalias !115
  %wide.load15 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !7, !noalias !115
  %i.bc = or <16 x i8> %wide.load14, %wide.load
  %i.bd = or <16 x i8> %wide.load15, %wide.load13
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !7, !noalias !115
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !7, !noalias !115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !7, !noalias !115
  %wide.load20 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !7, !noalias !115
  %i.bj = or <4 x i8> %wide.load20, %wide.load19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !7, !noalias !115
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bm = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7, !noalias !115
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7, !noalias !115
  %i.br = or i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7, !noalias !115
  %i.bt = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !125

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.prol ]
  %i.bu = sub i64 %.016.i.i.i.ph, %i.bm
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !7, !noalias !115
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !7, !noalias !115
  %i.ca = or i8 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !7, !noalias !115
  %i.cc = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cc
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !7, !noalias !115
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !7, !noalias !115
  %i.ch = or i8 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !7, !noalias !115
  %i.cj = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cj
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !7, !noalias !115
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !115
  %i.co = or i8 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cj
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7, !noalias !115
  %i.cq = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cq
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !7, !noalias !115
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !7, !noalias !115
  %i.cv = or i8 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cq
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !7, !noalias !115
  %i.cx = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cx, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !126

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !115
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !115
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cy, align 8, !tbaa !41, !alias.scope !115
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.cz = load ptr, ptr %8, align 8, !tbaa !37, !noalias !115 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63, !noalias !115 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.dd, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !66
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21, !inline_history !127
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21, !inline_history !127
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.n ], [ %i.dq, %bb.o ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !115 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.ds = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.cz, %bb.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !71, !range !61, !noundef !62
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !115
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal8BitmapOrEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check9 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load11 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load13 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = or <16 x i8> %wide.load12, %wide.load
  %i.an = or <16 x i8> %wide.load13, %wide.load11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %i.am, ptr %i.ao, align 1, !tbaa !7
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !7
  %wide.load18 = load <4 x i8>, ptr %i.as, align 1, !tbaa !7
  %i.at = or <4 x i8> %wide.load18, %wide.load17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.at, ptr %i.au, align 1, !tbaa !7
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.aw = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.bb = or i8 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !7
  %i.bd = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !130

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.prol ]
  %i.be = sub i64 %.016.i.i.ph, %i.aw
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bk = or i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.br = or i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bm
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7
  %i.bt = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bt
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.by = or i8 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !7
  %i.ca = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ca
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !7
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !7
  %i.cf = or i8 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ca
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !7
  %i.ch = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !131

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal9BitmapXorEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.c = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !132
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.c, ptr noundef %1), !noalias !132
  %i.d = load ptr, ptr %8, align 8, !tbaa !37, !noalias !132
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !41, !noalias !135
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !47, !noalias !135 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !132
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52, !range !61, !noalias !132, !noundef !62
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !61, !noalias !132
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false, !prof !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !132 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = select i1 %i.o, ptr %i.q, ptr null, !prof !20 ; 2 uses
  %i.t = srem i64 %7, 8                           ; 3 uses
  %i.u = srem i64 %3, 8
  %i.v = icmp eq i64 %i.t, %i.u
  %i.w = srem i64 %5, 8
  %i.x = icmp eq i64 %i.t, %i.w
  %or.cond.i.i = and i1 %i.v, %i.x
  br i1 %or.cond.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 0, %i.t
  %i.z = and i64 %i.y, 7                          ; 7 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %i.z), !noalias !132
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i64 %6, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, %3                    ; 2 uses
  %i.ac = add nsw i64 %i.z, %5
  %i.ad = add nsw i64 %i.z, %7
  %i.ae = sub nsw i64 %6, %i.z
  %i.af = srem i64 %i.ab, 8
  %i.ag = add nsw i64 %i.af, %i.ae                ; 2 uses
  %i.ah = ashr i64 %i.ag, 3                       ; 2 uses
  %i.ai = and i64 %i.ag, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i64                    ; 2 uses
  %i.al = add nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = sdiv i64 %i.ab, 8                       ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am ; 7 uses
  %i.ao = sdiv i64 %i.ac, 8                       ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao ; 7 uses
  %i.aq = sdiv i64 %i.ad, 8                       ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.q, i64 %i.aq ; 7 uses
  %i.as = icmp sgt i64 %i.al, 0
  br i1 %i.as, label %iter.check, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = add i64 %i.aq, %i.r                     ; 2 uses
  %i.au = add i64 %i.am, %i.b
  %i.av = sub i64 %i.at, %i.au
  %diff.check = icmp ult i64 %i.av, 32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.at, %i.aw
  %diff.check11 = icmp ult i64 %i.ax, 32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !7, !noalias !132
  %wide.load13 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !7, !noalias !132
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.az, align 1, !tbaa !7, !noalias !132
  %wide.load15 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !7, !noalias !132
  %i.bc = xor <16 x i8> %wide.load14, %wide.load
  %i.bd = xor <16 x i8> %wide.load15, %wide.load13
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !7, !noalias !132
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !7, !noalias !132
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !7, !noalias !132
  %wide.load20 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !7, !noalias !132
  %i.bj = xor <4 x i8> %wide.load20, %wide.load19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !7, !noalias !132
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bm = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7, !noalias !132
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7, !noalias !132
  %i.br = xor i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7, !noalias !132
  %i.bt = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !142

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.prol ]
  %i.bu = sub i64 %.016.i.i.i.ph, %i.bm
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !7, !noalias !132
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !7, !noalias !132
  %i.ca = xor i8 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !7, !noalias !132
  %i.cc = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cc
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !7, !noalias !132
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !7, !noalias !132
  %i.ch = xor i8 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !7, !noalias !132
  %i.cj = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cj
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !7, !noalias !132
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !132
  %i.co = xor i8 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cj
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7, !noalias !132
  %i.cq = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cq
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !7, !noalias !132
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !7, !noalias !132
  %i.cv = xor i8 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cq
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !7, !noalias !132
  %i.cx = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cx, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !143

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !132
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !132
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cy, align 8, !tbaa !41, !alias.scope !132
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.cz = load ptr, ptr %8, align 8, !tbaa !37, !noalias !132 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63, !noalias !132 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.dd, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !66
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21, !inline_history !144
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21, !inline_history !144
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !132
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.n ], [ %i.dq, %bb.o ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !132 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.ds = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.cz, %bb.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !71, !range !61, !noundef !62
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal9BitmapXorEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check9 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load11 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load13 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = xor <16 x i8> %wide.load12, %wide.load
  %i.an = xor <16 x i8> %wide.load13, %wide.load11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %i.am, ptr %i.ao, align 1, !tbaa !7
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !7
  %wide.load18 = load <4 x i8>, ptr %i.as, align 1, !tbaa !7
  %i.at = xor <4 x i8> %wide.load18, %wide.load17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.at, ptr %i.au, align 1, !tbaa !7
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.aw = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.bb = xor i8 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !7
  %i.bd = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !147

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.prol ]
  %i.be = sub i64 %.016.i.i.ph, %i.aw
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bk = xor i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.br = xor i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bm
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7
  %i.bt = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bt
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.by = xor i8 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !7
  %i.ca = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ca
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !7
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !7
  %i.cf = xor i8 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ca
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !7
  %i.ch = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !148

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal12BitmapAndNotEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !149
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !149
  %i.b = load ptr, ptr %8, align 8, !tbaa !37, !noalias !149
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !41, !noalias !152
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !152 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !149
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52, !range !61, !noalias !149, !noundef !62
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !61, !noalias !149
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !149
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !20
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !149
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !149
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !41, !alias.scope !149
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !37, !noalias !149 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63, !noalias !149 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !66
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !157
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !157
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !149
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !149 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !71, !range !61, !noundef !62
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal12BitmapAndNotEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond = and i1 %i.f, %i.h
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %3, %i.j
  %i.n = add nsw i64 %5, %i.j
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.o, %i.p                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 5 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 5 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 5 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check39 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load41 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load42 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load43 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = xor <16 x i8> %wide.load42, splat (i8 -1)
  %i.an = xor <16 x i8> %wide.load43, splat (i8 -1)
  %i.ao = and <16 x i8> %wide.load, %i.am
  %i.ap = and <16 x i8> %wide.load41, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !7
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 %index46
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 %index46
  %wide.load47 = load <4 x i8>, ptr %i.at, align 1, !tbaa !7
  %wide.load48 = load <4 x i8>, ptr %i.au, align 1, !tbaa !7
  %i.av = xor <4 x i8> %wide.load48, splat (i8 -1)
  %i.aw = and <4 x i8> %wide.load47, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index46
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !7
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.v, %n.vec45
  br i1 %cmp.n50, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 6 uses
  %i.az = add nsw i64 %i.r, %i.u                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.ph
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.be = xor i8 %i.bd, -1
  %i.bf = and i8 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.ph
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !7
  %i.bh = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bi = icmp eq i64 %i.az, %.neg
  br i1 %i.bi, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.by, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !7
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bn = xor i8 %i.bm, -1
  %i.bo = and i8 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !7
  %i.bq = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bq
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !7
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bv = xor i8 %i.bu, -1
  %i.bw = and i8 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bq
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !7
  %i.by = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.by, %i.v
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !160

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11BitmapOrNotEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !161
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !161
  %i.b = load ptr, ptr %8, align 8, !tbaa !37, !noalias !161
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !41, !noalias !164
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !164 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !161
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52, !range !61, !noalias !161, !noundef !62
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !61, !noalias !161
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !161
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !20
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !161
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !161
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !41, !alias.scope !161
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !37, !noalias !161 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63, !noalias !161 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !66
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !169
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !169
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !161
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !161 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !71, !range !61, !noundef !62
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !161
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal11BitmapOrNotEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond = and i1 %i.f, %i.h
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %3, %i.j
  %i.n = add nsw i64 %5, %i.j
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.o, %i.p                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 5 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 5 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 5 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check39 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load41 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load42 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load43 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = xor <16 x i8> %wide.load42, splat (i8 -1)
  %i.an = xor <16 x i8> %wide.load43, splat (i8 -1)
  %i.ao = or <16 x i8> %wide.load, %i.am
  %i.ap = or <16 x i8> %wide.load41, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !7
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 %index46
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 %index46
  %wide.load47 = load <4 x i8>, ptr %i.at, align 1, !tbaa !7
  %wide.load48 = load <4 x i8>, ptr %i.au, align 1, !tbaa !7
  %i.av = xor <4 x i8> %wide.load48, splat (i8 -1)
  %i.aw = or <4 x i8> %wide.load47, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index46
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !7
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !171

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.v, %n.vec45
  br i1 %cmp.n50, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 6 uses
  %i.az = add nsw i64 %i.r, %i.u                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.ph
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.be = xor i8 %i.bd, -1
  %i.bf = or i8 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.ph
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !7
  %i.bh = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bi = icmp eq i64 %i.az, %.neg
  br i1 %i.bi, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.by, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !7
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bn = xor i8 %i.bm, -1
  %i.bo = or i8 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !7
  %i.bq = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bq
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !7
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bv = xor i8 %i.bu, -1
  %i.bw = or i8 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bq
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !7
  %i.by = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.by, %i.v
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !172

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !173
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !173
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !64
end_hunk_1
