Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonBitSimplify?download=true
inline.NumInlined: 3093
inline.NumDeleted: 1251
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_125RedundantInstrElimination15computeUsedBitsEjRN4llvm9BitVectorE:bb.a
  %i.fn = zext nneg i32 %i.fm to i64
  %.neg.i.i.i.i = shl nsw i64 -1, %i.fn
  %i.fo = add i64 %i.fl, %.neg.i.i.i.i
  br label %_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.fp = and i32 %i.fe, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nsw i64 -1, %i.fq
  %i.fs = zext nneg i32 %i.fg to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.fs ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !45
  %i.fv = or i64 %i.fu, %i.fr
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !45
  %i.fw = icmp ne i16 %.0.ph, 0                   ; 2 uses
  %.neg28.i.i.i.i = sext i1 %i.fw to i32
  %i.fx = add nsw i32 %.neg28.i.i.i.i, %i.fe
  %i.fy = select i1 %i.fw, i32 64, i32 0
  %i.fz = add nsw i32 %i.fx, %i.fy                ; 2 uses
  %i.ga = and i32 %i.fz, -64                      ; 8 uses
  %i.gb = add nsw i32 %i.ga, 64                   ; 4 uses
  %.not29.i.i.i.i = icmp ugt i32 %i.gb, %i.ff
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.s
  %i.gc = add nsw i32 %i.fe, -56
  %i.gd = sub nsw i32 %i.gc, %i.ga                ; 2 uses
  %i.ge = lshr i32 %i.gd, 6
  %i.gf = add nuw nsw i32 %i.ge, 1                ; 2 uses
  %min.iters.check387 = icmp ult i32 %i.gd, 1856
  br i1 %min.iters.check387, label %.lr.ph.i.i.i.i.preheader433, label %vector.scevcheck382

vector.scevcheck382:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %reass.sub412 = sub nsw i32 %i.ga, %i.fe
  %i.gg = add nsw i32 %reass.sub412, 55
  %i.gh = or i32 %i.gg, 63
  %i.gi = icmp ult i32 %i.gh, %i.ga
  br i1 %i.gi, label %.lr.ph.i.i.i.i.preheader433, label %vector.ph388

vector.ph388:                                     ; preds = %vector.scevcheck382
  %n.vec389 = and i32 %i.gf, 134217724            ; 3 uses
  %i.gj = shl i32 %n.vec389, 6                    ; 2 uses
  %i.gk = add i32 %i.gb, %i.gj
  %i.gl = add i32 %i.ga, %i.gj                    ; 2 uses
  %i.gm = lshr i32 %i.fz, 6
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i32 [ 0, %vector.ph388 ], [ %index.next392, %vector.body390 ] ; 2 uses
  %i.gn = add i32 %i.gm, %index391
  %i.go = and i32 %i.gn, 67108863
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.gq, align 8, !tbaa !45
  store <2 x i64> splat (i64 -1), ptr %i.gr, align 8, !tbaa !45
  %index.next392 = add nuw i32 %index391, 4       ; 2 uses
  %i.gs = icmp eq i32 %index.next392, %n.vec389
  br i1 %i.gs, label %middle.block393, label %vector.body390, !llvm.loop !874

middle.block393:                                  ; preds = %vector.body390
  %cmp.n394 = icmp eq i32 %i.gf, %n.vec389
  br i1 %cmp.n394, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader433

.lr.ph.i.i.i.i.preheader433:                      ; preds = %vector.scevcheck382, %.lr.ph.i.i.i.i.preheader, %middle.block393
  %.ph434.a = phi i32 [ %i.gb, %vector.scevcheck382 ], [ %i.gb, %.lr.ph.i.i.i.i.preheader ], [ %i.gk, %middle.block393 ]
  %.02430.i.i.i.i.ph = phi i32 [ %i.ga, %vector.scevcheck382 ], [ %i.ga, %.lr.ph.i.i.i.i.preheader ], [ %i.gl, %middle.block393 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader433, %.lr.ph.i.i.i.i
  %i.gt = phi i32 [ %i.gx, %.lr.ph.i.i.i.i ], [ %.ph434.a, %.lr.ph.i.i.i.i.preheader433 ] ; 3 uses
  %.02430.i.i.i.i = phi i32 [ %i.gt, %.lr.ph.i.i.i.i ], [ %.02430.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader433 ]
  %i.gu = lshr exact i32 %.02430.i.i.i.i, 6
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gv
  store i64 -1, ptr %i.gw, align 8, !tbaa !45
  %i.gx = add nuw nsw i32 %i.gt, 64               ; 2 uses
  %.not.i.i.i.i46 = icmp samesign ugt i32 %i.gx, %i.ff
  br i1 %.not.i.i.i.i46, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !875

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block393, %bb.s
  %.024.lcssa.i.i.i.i = phi i32 [ %i.ga, %bb.s ], [ %i.gl, %middle.block393 ], [ %i.gt, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.gy = icmp ult i32 %.024.lcssa.i.i.i.i, %i.ff
  br i1 %i.gy, label %bb.t, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gz = and i32 %i.ff, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.ha
  %i.hb = xor i64 %notmask.i.i.i.i, -1
  %i.hc = lshr exact i32 %.024.lcssa.i.i.i.i, 6
  br label %_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i

bb.u:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.hd = zext i16 %.0.ph to i32                  ; 7 uses
  %i.he = add nuw nsw i32 %i.hd, 16               ; 6 uses
  %i.hf = lshr i32 %i.hd, 6                       ; 2 uses
  %i.hg = lshr i32 %i.he, 6                       ; 2 uses
  %i.hh = icmp eq i32 %i.hf, %i.hg
  br i1 %i.hh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hi = and i32 %i.he, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw i64 1, %i.hj
  %i.hl = and i32 %i.hd, 63
  %i.hm = zext nneg i32 %i.hl to i64
  %.neg.i18.i.i.i = shl nsw i64 -1, %i.hm
  %i.hn = add i64 %i.hk, %.neg.i18.i.i.i
  br label %_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ho = and i32 %i.hd, 63
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl nsw i64 -1, %i.hp
  %i.hr = zext nneg i32 %i.hf to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hr ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !45
  %i.hu = or i64 %i.ht, %i.hq
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !45
  %i.hv = icmp ne i16 %.0.ph, 0                   ; 2 uses
  %.neg28.i10.i.i.i = sext i1 %i.hv to i32
  %i.hw = add nsw i32 %.neg28.i10.i.i.i, %i.hd
  %i.hx = select i1 %i.hv, i32 64, i32 0
  %i.hy = add nsw i32 %i.hw, %i.hx                ; 2 uses
  %i.hz = and i32 %i.hy, -64                      ; 8 uses
  %i.ia = add nsw i32 %i.hz, 64                   ; 4 uses
  %.not29.i11.i.i.i = icmp ugt i32 %i.ia, %i.he
  br i1 %.not29.i11.i.i.i, label %._crit_edge.i15.i.i.i, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %bb.w
  %i.ib = add nsw i32 %i.hd, -48
  %i.ic = sub nsw i32 %i.ib, %i.hz                ; 2 uses
  %i.id = lshr i32 %i.ic, 6
  %i.ie = add nuw nsw i32 %i.id, 1                ; 2 uses
  %min.iters.check402 = icmp ult i32 %i.ic, 1856
  br i1 %min.iters.check402, label %.lr.ph.i12.i.i.i.preheader435, label %vector.scevcheck397

vector.scevcheck397:                              ; preds = %.lr.ph.i12.i.i.i.preheader
  %reass.sub.a = sub nsw i32 %i.hz, %i.hd
  %i.if = add nsw i32 %reass.sub.a, 47
  %i.ig = or i32 %i.if, 63
  %i.ih = icmp ult i32 %i.ig, %i.hz
  br i1 %i.ih, label %.lr.ph.i12.i.i.i.preheader435, label %vector.ph403

vector.ph403:                                     ; preds = %vector.scevcheck397
  %n.vec404 = and i32 %i.ie, 134217724            ; 3 uses
  %i.ii = shl i32 %n.vec404, 6                    ; 2 uses
  %i.ij = add i32 %i.ia, %i.ii
  %i.ik = add i32 %i.hz, %i.ii                    ; 2 uses
  %i.il = lshr i32 %i.hy, 6
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i32 [ 0, %vector.ph403 ], [ %index.next407, %vector.body405 ] ; 2 uses
  %i.im = add i32 %i.il, %index406
  %i.in = and i32 %i.im, 67108863
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ip, align 8, !tbaa !45
  store <2 x i64> splat (i64 -1), ptr %i.iq, align 8, !tbaa !45
  %index.next407 = add nuw i32 %index406, 4       ; 2 uses
  %i.ir = icmp eq i32 %index.next407, %n.vec404
  br i1 %i.ir, label %middle.block408, label %vector.body405, !llvm.loop !876

middle.block408:                                  ; preds = %vector.body405
  %cmp.n409 = icmp eq i32 %i.ie, %n.vec404
  br i1 %cmp.n409, label %._crit_edge.i15.i.i.i, label %.lr.ph.i12.i.i.i.preheader435

.lr.ph.i12.i.i.i.preheader435:                    ; preds = %vector.scevcheck397, %.lr.ph.i12.i.i.i.preheader, %middle.block408
  %.ph436.a = phi i32 [ %i.ia, %vector.scevcheck397 ], [ %i.ia, %.lr.ph.i12.i.i.i.preheader ], [ %i.ij, %middle.block408 ]
  %.02430.i13.i.i.i.ph = phi i32 [ %i.hz, %vector.scevcheck397 ], [ %i.hz, %.lr.ph.i12.i.i.i.preheader ], [ %i.ik, %middle.block408 ]
  br label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i.preheader435, %.lr.ph.i12.i.i.i
  %i.is = phi i32 [ %i.iw, %.lr.ph.i12.i.i.i ], [ %.ph436.a, %.lr.ph.i12.i.i.i.preheader435 ] ; 3 uses
  %.02430.i13.i.i.i = phi i32 [ %i.is, %.lr.ph.i12.i.i.i ], [ %.02430.i13.i.i.i.ph, %.lr.ph.i12.i.i.i.preheader435 ]
  %i.it = lshr exact i32 %.02430.i13.i.i.i, 6
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.iu
  store i64 -1, ptr %i.iv, align 8, !tbaa !45
  %i.iw = add nuw nsw i32 %i.is, 64               ; 2 uses
  %.not.i14.i.i.i = icmp samesign ugt i32 %i.iw, %i.he
  br i1 %.not.i14.i.i.i, label %._crit_edge.i15.i.i.i, label %.lr.ph.i12.i.i.i, !llvm.loop !877

._crit_edge.i15.i.i.i:                            ; preds = %.lr.ph.i12.i.i.i, %middle.block408, %bb.w
  %.024.lcssa.i16.i.i.i = phi i32 [ %i.hz, %bb.w ], [ %i.ik, %middle.block408 ], [ %i.is, %.lr.ph.i12.i.i.i ] ; 2 uses
  %i.ix = icmp ult i32 %.024.lcssa.i16.i.i.i, %i.he
  br i1 %i.ix, label %bb.x, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.x:                                             ; preds = %._crit_edge.i15.i.i.i
  %i.iy = and i32 %i.he, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %notmask.i17.i.i.i = shl nsw i64 -1, %i.iz
  %i.ja = xor i64 %notmask.i17.i.i.i, -1
  %i.jb = lshr exact i32 %.024.lcssa.i16.i.i.i, 6
  br label %_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i

bb.y:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.jc = zext i16 %.0.ph to i32                  ; 4 uses
  %i.jd = add nuw nsw i32 %i.jc, 16               ; 3 uses
  %i.je = add nuw nsw i32 %i.jc, 32               ; 5 uses
  %i.jf = lshr i32 %i.jd, 6                       ; 3 uses
  %i.jg = lshr i32 %i.je, 6
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ji = and i32 %i.je, 63
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = shl nuw i64 1, %i.jj
  %i.jl = and i32 %i.jd, 63
  %i.jm = zext nneg i32 %i.jl to i64
  %.neg.i28.i.i.i = shl nsw i64 -1, %i.jm
  %i.jn = add i64 %i.jk, %.neg.i28.i.i.i
  br label %_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.jo = and i32 %i.jd, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl nsw i64 -1, %i.jp
  %i.jr = zext nneg i32 %i.jf to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.jr ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !45
  %i.ju = or i64 %i.jt, %i.jq
  store i64 %i.ju, ptr %i.js, align 8, !tbaa !45
  %i.jv = add nuw nsw i32 %i.jc, 79
  %i.jw = and i32 %i.jv, 131008                   ; 3 uses
  %6 = add nuw nsw i32 %i.jw, 64
  %.not29.i21.i.i.i = icmp samesign ugt i32 %6, %i.je
  br i1 %.not29.i21.i.i.i, label %._crit_edge.i25.i.i.i, label %.lr.ph.i22.preheader.i.i.i

.lr.ph.i22.preheader.i.i.i:                       ; preds = %bb.aa
  %i.jx = zext i16 %.0.ph to i64                  ; 2 uses
  %i.jy = add nuw nsw i64 %i.jx, 79               ; 2 uses
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = and i64 %i.jz, 16376
  %scevgep.i.i.i = getelementptr i8, ptr %.val.i.i, i64 %i.ka
  %i.kb = add nsw i32 %i.jc, -32
  %i.kc = sub nsw i32 %i.kb, %i.jw
  %i.kd = lshr i32 %i.kc, 3
  %i.ke = and i32 %i.kd, 536870904
  %narrow.i.i.i = add nuw nsw i32 %i.ke, 8
  %i.kf = zext nneg i32 %narrow.i.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, i8 -1, i64 %i.kf, i1 false), !tbaa !45
  %i.kg = and i64 %i.jy, 131008                   ; 2 uses
  %i.kh = add nuw nsw i64 %i.jx, 4294967264
  %i.ki = sub nuw nsw i64 %i.kh, %i.kg
  %i.kj = and i64 %i.ki, 4294967232
  %i.kk = add nuw nsw i64 %i.kj, %i.kg
  %i.kl = trunc i64 %i.kk to i32
  %i.km = add i32 %i.kl, 64
  br label %._crit_edge.i25.i.i.i

._crit_edge.i25.i.i.i:                            ; preds = %.lr.ph.i22.preheader.i.i.i, %bb.aa
  %.024.lcssa.i26.i.i.i = phi i32 [ %i.jw, %bb.aa ], [ %i.km, %.lr.ph.i22.preheader.i.i.i ] ; 2 uses
  %i.kn = icmp samesign ult i32 %.024.lcssa.i26.i.i.i, %i.je
  br i1 %i.kn, label %bb.ab, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ab:                                            ; preds = %._crit_edge.i25.i.i.i
  %i.ko = and i32 %i.je, 63
  %i.kp = zext nneg i32 %i.ko to i64
  %notmask.i27.i.i.i = shl nsw i64 -1, %i.kp
  %i.kq = xor i64 %notmask.i27.i.i.i, -1
  %i.kr = lshr exact i32 %.024.lcssa.i26.i.i.i, 6
  br label %_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i

_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i:  ; preds = %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r
  %.sink.i.i.i = phi i32 [ %i.kr, %bb.ab ], [ %i.jf, %bb.z ], [ %i.jb, %bb.x ], [ %i.hg, %bb.v ], [ %i.hc, %bb.t ], [ %i.fg, %bb.r ]
  %.sink23.i.i.i = phi i64 [ %i.kq, %bb.ab ], [ %i.jn, %bb.z ], [ %i.ja, %bb.x ], [ %i.hn, %bb.v ], [ %i.hb, %bb.t ], [ %i.fo, %bb.r ]
  %i.ks = zext nneg i32 %.sink.i.i.i to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ks ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !45
  %i.kv = or i64 %i.ku, %.sink23.i.i.i
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ac:                                            ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i
  switch i32 %i.dk, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i [
    i32 1047, label %bb.ad
    i32 347, label %bb.ad
    i32 1128, label %bb.ad
    i32 1130, label %bb.ad
    i32 1132, label %bb.ad
    i32 968, label %bb.ai
    i32 1048, label %bb.ai
    i32 1119, label %bb.ai
    i32 1134, label %bb.ai
    i32 1136, label %bb.ai
    i32 1138, label %bb.ai
    i32 969, label %bb.an
    i32 1127, label %bb.as
    i32 1129, label %bb.as
    i32 1131, label %bb.as
    i32 1133, label %bb.ax
    i32 1135, label %bb.ax
    i32 1137, label %bb.ax
    i32 950, label %bb.ax
    i32 954, label %bb.ax
    i32 956, label %bb.ax
    i32 958, label %bb.ax
    i32 973, label %bb.ax
    i32 1025, label %bb.ax
    i32 1029, label %bb.ax
    i32 1031, label %bb.ax
    i32 1033, label %bb.ax
    i32 1846, label %bb.ax
    i32 1847, label %bb.ax
    i32 1854, label %bb.ax
    i32 1855, label %bb.ax
    i32 1862, label %bb.ax
    i32 1863, label %bb.ax
    i32 1870, label %bb.ax
    i32 1871, label %bb.ax
    i32 1878, label %bb.ax
    i32 1879, label %bb.ax
    i32 1886, label %bb.ax
    i32 1887, label %bb.ax
    i32 1894, label %bb.ax
    i32 1895, label %bb.ax
    i32 1902, label %bb.ax
    i32 1903, label %bb.ax
    i32 1913, label %bb.ax
    i32 1914, label %bb.ax
    i32 1921, label %bb.ax
    i32 1922, label %bb.ax
    i32 1929, label %bb.ax
    i32 1930, label %bb.ax
    i32 1937, label %bb.ax
    i32 1938, label %bb.ax
    i32 1949, label %bb.ax
    i32 1950, label %bb.ax
    i32 1957, label %bb.ax
    i32 1958, label %bb.ax
    i32 1965, label %bb.ax
    i32 1966, label %bb.ax
    i32 1974, label %bb.ax
    i32 1975, label %bb.ax
    i32 1982, label %bb.ax
    i32 1983, label %bb.ax
    i32 1990, label %bb.ax
    i32 1991, label %bb.ax
    i32 949, label %bb.bc
    i32 953, label %bb.bc
    i32 972, label %bb.bc
    i32 1024, label %bb.bc
    i32 1028, label %bb.bc
    i32 1844, label %bb.bc
    i32 1845, label %bb.bc
    i32 1852, label %bb.bc
    i32 1853, label %bb.bc
    i32 1860, label %bb.bc
    i32 1861, label %bb.bc
    i32 1868, label %bb.bc
    i32 1869, label %bb.bc
    i32 1876, label %bb.bc
    i32 1877, label %bb.bc
    i32 1884, label %bb.bc
    i32 1885, label %bb.bc
    i32 1892, label %bb.bc
    i32 1893, label %bb.bc
    i32 1900, label %bb.bc
    i32 1901, label %bb.bc
    i32 1911, label %bb.bc
    i32 1912, label %bb.bc
    i32 1919, label %bb.bc
    i32 1920, label %bb.bc
    i32 1927, label %bb.bc
    i32 1928, label %bb.bc
    i32 1935, label %bb.bc
    i32 1936, label %bb.bc
    i32 1947, label %bb.bc
    i32 1948, label %bb.bc
    i32 1955, label %bb.bc
    i32 1956, label %bb.bc
    i32 1963, label %bb.bc
    i32 1964, label %bb.bc
    i32 1972, label %bb.bc
    i32 1973, label %bb.bc
    i32 1980, label %bb.bc
    i32 1981, label %bb.bc
    i32 1988, label %bb.bc
    i32 1989, label %bb.bc
    i32 955, label %bb.bc
    i32 957, label %bb.bc
    i32 1030, label %bb.bc
    i32 1032, label %bb.bc
    i32 948, label %bb.bl
    i32 952, label %bb.bl
    i32 971, label %bb.bl
    i32 1023, label %bb.bl
    i32 1027, label %bb.bl
    i32 1842, label %bb.bl
    i32 1843, label %bb.bl
    i32 1850, label %bb.bl
    i32 1851, label %bb.bl
    i32 1858, label %bb.bl
    i32 1859, label %bb.bl
    i32 1866, label %bb.bl
    i32 1867, label %bb.bl
    i32 1874, label %bb.bl
    i32 1875, label %bb.bl
    i32 1882, label %bb.bl
    i32 1883, label %bb.bl
    i32 1890, label %bb.bl
    i32 1891, label %bb.bl
    i32 1898, label %bb.bl
    i32 1899, label %bb.bl
    i32 1909, label %bb.bl
    i32 1910, label %bb.bl
    i32 1917, label %bb.bl
    i32 1918, label %bb.bl
    i32 1925, label %bb.bl
    i32 1926, label %bb.bl
    i32 1933, label %bb.bl
    i32 1934, label %bb.bl
    i32 1945, label %bb.bl
    i32 1946, label %bb.bl
    i32 1953, label %bb.bl
    i32 1954, label %bb.bl
    i32 1961, label %bb.bl
    i32 1962, label %bb.bl
    i32 1970, label %bb.bl
    i32 1971, label %bb.bl
    i32 1978, label %bb.bl
    i32 1979, label %bb.bl
    i32 1986, label %bb.bl
    i32 1987, label %bb.bl
    i32 947, label %bb.bu
    i32 951, label %bb.bu
    i32 970, label %bb.bu
    i32 1022, label %bb.bu
    i32 1026, label %bb.bu
    i32 1840, label %bb.bu
    i32 1841, label %bb.bu
    i32 1848, label %bb.bu
    i32 1849, label %bb.bu
    i32 1856, label %bb.bu
    i32 1857, label %bb.bu
    i32 1864, label %bb.bu
    i32 1865, label %bb.bu
    i32 1872, label %bb.bu
    i32 1873, label %bb.bu
    i32 1880, label %bb.bu
    i32 1881, label %bb.bu
    i32 1888, label %bb.bu
    i32 1889, label %bb.bu
    i32 1896, label %bb.bu
    i32 1897, label %bb.bu
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_125RedundantInstrElimination15computeUsedBitsEjRN4llvm9BitVectorE:bb.a
  %i.mb = add nsw i32 %i.kx, -56
  %i.mc = sub nsw i32 %i.mb, %i.lz                ; 2 uses
  %i.md = lshr i32 %i.mc, 6
  %i.me = add nuw nsw i32 %i.md, 1                ; 2 uses
  %min.iters.check297 = icmp ult i32 %i.mc, 1856
  br i1 %min.iters.check297, label %.lr.ph.i75.preheader421, label %vector.scevcheck292

vector.scevcheck292:                              ; preds = %.lr.ph.i75.preheader
  %reass.sub418 = sub nsw i32 %i.lz, %i.kx
  %i.mf = add nsw i32 %reass.sub418, 55
  %i.mg = or i32 %i.mf, 63
  %i.mh = icmp ult i32 %i.mg, %i.lz
  br i1 %i.mh, label %.lr.ph.i75.preheader421, label %vector.ph298

vector.ph298:                                     ; preds = %vector.scevcheck292
  %n.vec299 = and i32 %i.me, 134217724            ; 3 uses
  %i.mi = shl i32 %n.vec299, 6                    ; 2 uses
  %i.mj = add i32 %i.ma, %i.mi
  %i.mk = add i32 %i.lz, %i.mi                    ; 2 uses
  %i.ml = lshr i32 %i.ly, 6
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i32 [ 0, %vector.ph298 ], [ %index.next302, %vector.body300 ] ; 2 uses
  %i.mm = add i32 %i.ml, %index301
  %i.mn = and i32 %i.mm, 67108863
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.mp, align 8, !tbaa !45
  store <2 x i64> splat (i64 -1), ptr %i.mq, align 8, !tbaa !45
  %index.next302 = add nuw i32 %index301, 4       ; 2 uses
  %i.mr = icmp eq i32 %index.next302, %n.vec299
  br i1 %i.mr, label %middle.block303, label %vector.body300, !llvm.loop !878

middle.block303:                                  ; preds = %vector.body300
  %cmp.n304 = icmp eq i32 %i.me, %n.vec299
  br i1 %cmp.n304, label %._crit_edge.i78, label %.lr.ph.i75.preheader421

.lr.ph.i75.preheader421:                          ; preds = %vector.scevcheck292, %.lr.ph.i75.preheader, %middle.block303
  %.ph422 = phi i32 [ %i.ma, %vector.scevcheck292 ], [ %i.ma, %.lr.ph.i75.preheader ], [ %i.mj, %middle.block303 ]
  %.02430.i76.ph = phi i32 [ %i.lz, %vector.scevcheck292 ], [ %i.lz, %.lr.ph.i75.preheader ], [ %i.mk, %middle.block303 ]
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.preheader421, %.lr.ph.i75
  %i.ms = phi i32 [ %i.mw, %.lr.ph.i75 ], [ %.ph422, %.lr.ph.i75.preheader421 ] ; 3 uses
  %.02430.i76 = phi i32 [ %i.ms, %.lr.ph.i75 ], [ %.02430.i76.ph, %.lr.ph.i75.preheader421 ]
  %i.mt = lshr exact i32 %.02430.i76, 6
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.mu
  store i64 -1, ptr %i.mv, align 8, !tbaa !45
  %i.mw = add nuw nsw i32 %i.ms, 64               ; 2 uses
  %.not.i77 = icmp ugt i32 %i.mw, %i.ky
  br i1 %.not.i77, label %._crit_edge.i78, label %.lr.ph.i75, !llvm.loop !879

._crit_edge.i78:                                  ; preds = %.lr.ph.i75, %middle.block303, %bb.ag
  %.024.lcssa.i79 = phi i32 [ %i.lz, %bb.ag ], [ %i.mk, %middle.block303 ], [ %i.ms, %.lr.ph.i75 ] ; 2 uses
  %i.mx = icmp ult i32 %.024.lcssa.i79, %i.ky
  br i1 %i.mx, label %bb.ah, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ah:                                            ; preds = %._crit_edge.i78
  %i.my = and i32 %i.ky, 63
  %i.mz = zext nneg i32 %i.my to i64
  %notmask.i80 = shl nsw i64 -1, %i.mz
  %i.na = xor i64 %notmask.i80, -1
  %i.nb = lshr exact i32 %.024.lcssa.i79, 6
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.nc ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !45
  %i.nf = or i64 %i.ne, %i.na
  store i64 %i.nf, ptr %i.nd, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ai:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.ng = icmp eq i32 %i.ek, 1
  br i1 %i.ng, label %bb.aj, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.nh = zext i16 %.0.ph to i32                  ; 7 uses
  %i.ni = add nuw nsw i32 %i.nh, 16               ; 6 uses
  %i.nj = lshr i32 %i.nh, 6                       ; 2 uses
  %i.nk = lshr i32 %i.ni, 6                       ; 2 uses
  %i.nl = icmp eq i32 %i.nj, %i.nk
  br i1 %i.nl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nm = and i32 %i.ni, 63
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl nuw i64 1, %i.nn
  %i.np = and i32 %i.nh, 63
  %i.nq = zext nneg i32 %i.np to i64
  %.neg.i71 = shl nsw i64 -1, %i.nq
  %i.nr = add i64 %i.no, %.neg.i71
  %i.ns = zext nneg i32 %i.nk to i64
  %i.nt = load ptr, ptr %3, align 8, !tbaa !38
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ns ; 2 uses
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !45
  %i.nw = or i64 %i.nv, %i.nr
  store i64 %i.nw, ptr %i.nu, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.nx = and i32 %i.nh, 63
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = shl nsw i64 -1, %i.ny
  %i.oa = zext nneg i32 %i.nj to i64
  %i.ob = load ptr, ptr %3, align 8, !tbaa !38    ; 4 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.oa ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !45
  %i.oe = or i64 %i.od, %i.nz
  store i64 %i.oe, ptr %i.oc, align 8, !tbaa !45
  %i.of = icmp ne i16 %.0.ph, 0                   ; 2 uses
  %.neg28.i63 = sext i1 %i.of to i32
  %i.og = add nsw i32 %.neg28.i63, %i.nh
  %i.oh = select i1 %i.of, i32 64, i32 0
  %i.oi = add nsw i32 %i.og, %i.oh                ; 2 uses
  %i.oj = and i32 %i.oi, -64                      ; 8 uses
  %i.ok = add nsw i32 %i.oj, 64                   ; 4 uses
  %.not29.i64 = icmp ugt i32 %i.ok, %i.ni
  br i1 %.not29.i64, label %._crit_edge.i68, label %.lr.ph.i65.preheader

.lr.ph.i65.preheader:                             ; preds = %bb.al
  %i.ol = add nsw i32 %i.nh, -48
  %i.om = sub nsw i32 %i.ol, %i.oj                ; 2 uses
  %i.on = lshr i32 %i.om, 6
  %i.oo = add nuw nsw i32 %i.on, 1                ; 2 uses
  %min.iters.check312 = icmp ult i32 %i.om, 1856
  br i1 %min.iters.check312, label %.lr.ph.i65.preheader423, label %vector.scevcheck307

vector.scevcheck307:                              ; preds = %.lr.ph.i65.preheader
  %reass.sub417 = sub nsw i32 %i.oj, %i.nh
  %i.op = add nsw i32 %reass.sub417, 47
  %i.oq = or i32 %i.op, 63
  %i.or = icmp ult i32 %i.oq, %i.oj
  br i1 %i.or, label %.lr.ph.i65.preheader423, label %vector.ph313

vector.ph313:                                     ; preds = %vector.scevcheck307
  %n.vec314 = and i32 %i.oo, 134217724            ; 3 uses
  %i.os = shl i32 %n.vec314, 6                    ; 2 uses
  %i.ot = add i32 %i.ok, %i.os
  %i.ou = add i32 %i.oj, %i.os                    ; 2 uses
  %i.ov = lshr i32 %i.oi, 6
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i32 [ 0, %vector.ph313 ], [ %index.next317, %vector.body315 ] ; 2 uses
  %i.ow = add i32 %i.ov, %index316
  %i.ox = and i32 %i.ow, 67108863
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.oy ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.oz, align 8, !tbaa !45
  store <2 x i64> splat (i64 -1), ptr %i.pa, align 8, !tbaa !45
  %index.next317 = add nuw i32 %index316, 4       ; 2 uses
  %i.pb = icmp eq i32 %index.next317, %n.vec314
  br i1 %i.pb, label %middle.block318, label %vector.body315, !llvm.loop !880

middle.block318:                                  ; preds = %vector.body315
  %cmp.n319 = icmp eq i32 %i.oo, %n.vec314
  br i1 %cmp.n319, label %._crit_edge.i68, label %.lr.ph.i65.preheader423

.lr.ph.i65.preheader423:                          ; preds = %vector.scevcheck307, %.lr.ph.i65.preheader, %middle.block318
  %.ph424 = phi i32 [ %i.ok, %vector.scevcheck307 ], [ %i.ok, %.lr.ph.i65.preheader ], [ %i.ot, %middle.block318 ]
  %.02430.i66.ph = phi i32 [ %i.oj, %vector.scevcheck307 ], [ %i.oj, %.lr.ph.i65.preheader ], [ %i.ou, %middle.block318 ]
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader423, %.lr.ph.i65
  %i.pc = phi i32 [ %i.pg, %.lr.ph.i65 ], [ %.ph424, %.lr.ph.i65.preheader423 ] ; 3 uses
  %.02430.i66 = phi i32 [ %i.pc, %.lr.ph.i65 ], [ %.02430.i66.ph, %.lr.ph.i65.preheader423 ]
  %i.pd = lshr exact i32 %.02430.i66, 6
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.pe
  store i64 -1, ptr %i.pf, align 8, !tbaa !45
  %i.pg = add nuw nsw i32 %i.pc, 64               ; 2 uses
  %.not.i67 = icmp ugt i32 %i.pg, %i.ni
  br i1 %.not.i67, label %._crit_edge.i68, label %.lr.ph.i65, !llvm.loop !881

._crit_edge.i68:                                  ; preds = %.lr.ph.i65, %middle.block318, %bb.al
  %.024.lcssa.i69 = phi i32 [ %i.oj, %bb.al ], [ %i.ou, %middle.block318 ], [ %i.pc, %.lr.ph.i65 ] ; 2 uses
  %i.ph = icmp ult i32 %.024.lcssa.i69, %i.ni
  br i1 %i.ph, label %bb.am, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.am:                                            ; preds = %._crit_edge.i68
  %i.pi = and i32 %i.ni, 63
  %i.pj = zext nneg i32 %i.pi to i64
  %notmask.i70 = shl nsw i64 -1, %i.pj
  %i.pk = xor i64 %notmask.i70, -1
  %i.pl = lshr exact i32 %.024.lcssa.i69, 6
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.pm ; 2 uses
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !45
  %i.pp = or i64 %i.po, %i.pk
  store i64 %i.pp, ptr %i.pn, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.an:                                            ; preds = %bb.ac
  %i.pq = icmp eq i32 %i.ek, 1
  br i1 %i.pq, label %bb.ao, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.pr = zext i16 %.0.ph to i32                  ; 4 uses
  %i.ps = add nuw nsw i32 %i.pr, 16               ; 3 uses
  %i.pt = add nuw nsw i32 %i.pr, 32               ; 6 uses
  %i.pu = lshr i32 %i.ps, 6                       ; 3 uses
  %i.pv = lshr i32 %i.pt, 6
  %i.pw = icmp eq i32 %i.pu, %i.pv
  br i1 %i.pw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.px = and i32 %i.pt, 63
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = shl nuw i64 1, %i.py
  %i.qa = and i32 %i.ps, 63
  %i.qb = zext nneg i32 %i.qa to i64
  %.neg.i61 = shl nsw i64 -1, %i.qb
  %i.qc = add i64 %i.pz, %.neg.i61
  %i.qd = zext nneg i32 %i.pu to i64
  %i.qe = load ptr, ptr %3, align 8, !tbaa !38
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qd ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !45
  %i.qh = or i64 %i.qg, %i.qc
  store i64 %i.qh, ptr %i.qf, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.qi = and i32 %i.ps, 63
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = shl nsw i64 -1, %i.qj
  %i.ql = zext nneg i32 %i.pu to i64
  %i.qm = load ptr, ptr %3, align 8, !tbaa !38    ; 3 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.ql ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !45
  %i.qp = or i64 %i.qo, %i.qk
  store i64 %i.qp, ptr %i.qn, align 8, !tbaa !45
  %i.qq = add nuw nsw i32 %i.pr, 79
  %i.qr = and i32 %i.qq, 131008                   ; 3 uses
  %7 = add nuw nsw i32 %i.qr, 64
  %.not29.i54 = icmp samesign ugt i32 %7, %i.pt
  br i1 %.not29.i54, label %._crit_edge.i58, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.aq
  %i.qs = zext i16 %.0.ph to i64
  %i.qt = add nuw nsw i64 %i.qs, 79               ; 2 uses
  %i.qu = lshr i64 %i.qt, 3
  %i.qv = and i64 %i.qu, 16376
  %scevgep = getelementptr i8, ptr %i.qm, i64 %i.qv
  %i.qw = add nsw i32 %i.pr, -32
  %i.qx = sub nsw i32 %i.qw, %i.qr
  %i.qy = lshr i32 %i.qx, 3
  %i.qz = and i32 %i.qy, 536870904
  %narrow = add nuw nsw i32 %i.qz, 8
  %i.ra = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.ra, i1 false), !tbaa !45
  %i.rb = and i64 %i.qt, 131008
  %i.rc = add nuw nsw i64 %i.rb, 64
  %i.rd = zext nneg i32 %i.pt to i64
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55
  %indvars.iv = phi i64 [ %i.rc, %.lr.ph.i55.preheader ], [ %indvars.iv.next, %.lr.ph.i55 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64 ; 2 uses
  %.not.i57 = icmp samesign ugt i64 %indvars.iv.next, %i.rd
  br i1 %.not.i57, label %._crit_edge.i58.loopexit, label %.lr.ph.i55, !llvm.loop !882

._crit_edge.i58.loopexit:                         ; preds = %.lr.ph.i55
  %i.re = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge.i58

._crit_edge.i58:                                  ; preds = %._crit_edge.i58.loopexit, %bb.aq
  %.024.lcssa.i59 = phi i32 [ %i.qr, %bb.aq ], [ %i.re, %._crit_edge.i58.loopexit ] ; 2 uses
  %i.rf = icmp samesign ult i32 %.024.lcssa.i59, %i.pt
  br i1 %i.rf, label %bb.ar, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ar:                                            ; preds = %._crit_edge.i58
  %i.rg = and i32 %i.pt, 63
  %i.rh = zext nneg i32 %i.rg to i64
  %notmask.i60 = shl nsw i64 -1, %i.rh
  %i.ri = xor i64 %notmask.i60, -1
  %i.rj = lshr exact i32 %.024.lcssa.i59, 6
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.rk ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !45
  %i.rn = or i64 %i.rm, %i.ri
  store i64 %i.rn, ptr %i.rl, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.as:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.ro = icmp eq i32 %i.ek, 1
  br i1 %i.ro, label %bb.at, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.at:                                            ; preds = %bb.as
  %i.rp = zext i16 %.0.ph to i32                  ; 7 uses
  %i.rq = add nuw nsw i32 %i.rp, 8                ; 6 uses
  %i.rr = lshr i32 %i.rp, 6                       ; 3 uses
  %i.rs = lshr i32 %i.rq, 6
  %i.rt = icmp eq i32 %i.rr, %i.rs
  br i1 %i.rt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ru = and i32 %i.rq, 63
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = shl nuw i64 1, %i.rv
  %i.rx = and i32 %i.rp, 63
  %i.ry = zext nneg i32 %i.rx to i64
  %.neg.i = shl nsw i64 -1, %i.ry
  %i.rz = add i64 %i.rw, %.neg.i
  %i.sa = zext nneg i32 %i.rr to i64
  %i.sb = load ptr, ptr %3, align 8, !tbaa !38
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.sa ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !45
  %i.se = or i64 %i.sd, %i.rz
  store i64 %i.se, ptr %i.sc, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.av:                                            ; preds = %bb.at
  %i.sf = and i32 %i.rp, 63
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = shl nsw i64 -1, %i.sg
  %i.si = zext nneg i32 %i.rr to i64
  %i.sj = load ptr, ptr %3, align 8, !tbaa !38    ; 4 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.si ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !45
  %i.sm = or i64 %i.sl, %i.sh
  store i64 %i.sm, ptr %i.sk, align 8, !tbaa !45
  %i.sn = icmp ne i16 %.0.ph, 0                   ; 2 uses
  %.neg28.i = sext i1 %i.sn to i32
  %i.so = add nsw i32 %.neg28.i, %i.rp
  %i.sp = select i1 %i.sn, i32 64, i32 0
  %i.sq = add nsw i32 %i.so, %i.sp                ; 2 uses
  %i.sr = and i32 %i.sq, -64                      ; 8 uses
  %i.ss = add nsw i32 %i.sr, 64                   ; 4 uses
  %.not29.i = icmp ugt i32 %i.ss, %i.rq
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.av
  %i.st = add nsw i32 %i.rp, -56
  %i.su = sub nsw i32 %i.st, %i.sr                ; 2 uses
  %i.sv = lshr i32 %i.su, 6
  %i.sw = add nuw nsw i32 %i.sv, 1                ; 2 uses
  %min.iters.check327 = icmp ult i32 %i.su, 1856
  br i1 %min.iters.check327, label %.lr.ph.i.preheader425, label %vector.scevcheck322

vector.scevcheck322:                              ; preds = %.lr.ph.i.preheader
  %reass.sub416 = sub nsw i32 %i.sr, %i.rp
  %i.sx = add nsw i32 %reass.sub416, 55
  %i.sy = or i32 %i.sx, 63
  %i.sz = icmp ult i32 %i.sy, %i.sr
  br i1 %i.sz, label %.lr.ph.i.preheader425, label %vector.ph328

vector.ph328:                                     ; preds = %vector.scevcheck322
  %n.vec329 = and i32 %i.sw, 134217724            ; 3 uses
  %i.ta = shl i32 %n.vec329, 6                    ; 2 uses
  %i.tb = add i32 %i.ss, %i.ta
  %i.tc = add i32 %i.sr, %i.ta                    ; 2 uses
  %i.td = lshr i32 %i.sq, 6
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i32 [ 0, %vector.ph328 ], [ %index.next332, %vector.body330 ] ; 2 uses
  %i.te = add i32 %i.td, %index331
  %i.tf = and i32 %i.te, 67108863
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.th, align 8, !tbaa !45
  store <2 x i64> splat (i64 -1), ptr %i.ti, align 8, !tbaa !45
  %index.next332 = add nuw i32 %index331, 4       ; 2 uses
  %i.tj = icmp eq i32 %index.next332, %n.vec329
  br i1 %i.tj, label %middle.block333, label %vector.body330, !llvm.loop !883

middle.block333:                                  ; preds = %vector.body330
  %cmp.n334 = icmp eq i32 %i.sw, %n.vec329
  br i1 %cmp.n334, label %._crit_edge.i, label %.lr.ph.i.preheader425

.lr.ph.i.preheader425:                            ; preds = %vector.scevcheck322, %.lr.ph.i.preheader, %middle.block333
  %.ph426 = phi i32 [ %i.ss, %vector.scevcheck322 ], [ %i.ss, %.lr.ph.i.preheader ], [ %i.tb, %middle.block333 ]
  %.02430.i.ph = phi i32 [ %i.sr, %vector.scevcheck322 ], [ %i.sr, %.lr.ph.i.preheader ], [ %i.tc, %middle.block333 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader425, %.lr.ph.i
  %i.tk = phi i32 [ %i.to, %.lr.ph.i ], [ %.ph426, %.lr.ph.i.preheader425 ] ; 3 uses
  %.02430.i = phi i32 [ %i.tk, %.lr.ph.i ], [ %.02430.i.ph, %.lr.ph.i.preheader425 ]
  %i.tl = lshr exact i32 %.02430.i, 6
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.tm
  store i64 -1, ptr %i.tn, align 8, !tbaa !45
  %i.to = add nuw nsw i32 %i.tk, 64               ; 2 uses
  %.not.i52 = icmp ugt i32 %i.to, %i.rq
  br i1 %.not.i52, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !884

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block333, %bb.av
  %.024.lcssa.i = phi i32 [ %i.sr, %bb.av ], [ %i.tc, %middle.block333 ], [ %i.tk, %.lr.ph.i ] ; 2 uses
  %i.tp = icmp ult i32 %.024.lcssa.i, %i.rq
  br i1 %i.tp, label %bb.aw, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.aw:                                            ; preds = %._crit_edge.i
  %i.tq = and i32 %i.rq, 63
  %i.tr = zext nneg i32 %i.tq to i64
  %notmask.i = shl nsw i64 -1, %i.tr
  %i.ts = xor i64 %notmask.i, -1
  %i.tt = lshr exact i32 %.024.lcssa.i, 6
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.tu ; 2 uses
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !45
  %i.tx = or i64 %i.tw, %i.ts
  store i64 %i.tx, ptr %i.tv, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ax:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.ty = add i32 %i.ek, -1
  %or.cond.i.i = icmp ult i32 %i.ty, 2
  br i1 %or.cond.i.i, label %bb.ay, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.tz = zext i16 %.0.ph to i32                  ; 7 uses
  %i.ua = add nuw nsw i32 %i.tz, 16               ; 6 uses
  %i.ub = lshr i32 %i.tz, 6                       ; 2 uses
  %i.uc = lshr i32 %i.ua, 6                       ; 2 uses
  %i.ud = icmp eq i32 %i.ub, %i.uc
  br i1 %i.ud, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ue = and i32 %i.ua, 63
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = shl nuw i64 1, %i.uf
  %i.uh = and i32 %i.tz, 63
  %i.ui = zext nneg i32 %i.uh to i64
  %.neg.i.i.i = shl nsw i64 -1, %i.ui
  %i.uj = add i64 %i.ug, %.neg.i.i.i
  %i.uk = zext nneg i32 %i.uc to i64
  %i.ul = load ptr, ptr %3, align 8, !tbaa !38
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %i.uk ; 2 uses
  %i.un = load i64, ptr %i.um, align 8, !tbaa !45
  %i.uo = or i64 %i.un, %i.uj
  store i64 %i.uo, ptr %i.um, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.ba:                                            ; preds = %bb.ay
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_125RedundantInstrElimination15computeUsedBitsEjRN4llvm9BitVectorE:bb.a

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ba
  %i.vd = add nsw i32 %i.tz, -48
  %i.ve = sub nsw i32 %i.vd, %i.vb                ; 2 uses
  %i.vf = lshr i32 %i.ve, 6
  %i.vg = add nuw nsw i32 %i.vf, 1                ; 2 uses
  %min.iters.check342 = icmp ult i32 %i.ve, 1856
  br i1 %min.iters.check342, label %.lr.ph.i.i.i.preheader427, label %vector.scevcheck337

vector.scevcheck337:                              ; preds = %.lr.ph.i.i.i.preheader
  %reass.sub415 = sub nsw i32 %i.vb, %i.tz
  %i.vh = add nsw i32 %reass.sub415, 47
  %i.vi = or i32 %i.vh, 63
  %i.vj = icmp ult i32 %i.vi, %i.vb
  br i1 %i.vj, label %.lr.ph.i.i.i.preheader427, label %vector.ph343

vector.ph343:                                     ; preds = %vector.scevcheck337
  %n.vec344 = and i32 %i.vg, 134217724            ; 3 uses
  %i.vk = shl i32 %n.vec344, 6                    ; 2 uses
  %i.vl = add i32 %i.vc, %i.vk
  %i.vm = add i32 %i.vb, %i.vk                    ; 2 uses
  %i.vn = lshr i32 %i.va, 6
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph343
  %index346 = phi i32 [ 0, %vector.ph343 ], [ %index.next347, %vector.body345 ] ; 2 uses
  %i.vo = add i32 %i.vn, %index346
  %i.vp = and i32 %i.vo, 67108863
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.vq ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.vr, align 8, !tbaa !45
  store <2 x i64> splat (i64 -1), ptr %i.vs, align 8, !tbaa !45
  %index.next347 = add nuw i32 %index346, 4       ; 2 uses
  %i.vt = icmp eq i32 %index.next347, %n.vec344
  br i1 %i.vt, label %middle.block348, label %vector.body345, !llvm.loop !885

middle.block348:                                  ; preds = %vector.body345
  %cmp.n349 = icmp eq i32 %i.vg, %n.vec344
  br i1 %cmp.n349, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader427

.lr.ph.i.i.i.preheader427:                        ; preds = %vector.scevcheck337, %.lr.ph.i.i.i.preheader, %middle.block348
  %.ph428 = phi i32 [ %i.vc, %vector.scevcheck337 ], [ %i.vc, %.lr.ph.i.i.i.preheader ], [ %i.vl, %middle.block348 ]
  %.02430.i.i.i.ph = phi i32 [ %i.vb, %vector.scevcheck337 ], [ %i.vb, %.lr.ph.i.i.i.preheader ], [ %i.vm, %middle.block348 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader427, %.lr.ph.i.i.i
  %i.vu = phi i32 [ %i.vy, %.lr.ph.i.i.i ], [ %.ph428, %.lr.ph.i.i.i.preheader427 ] ; 3 uses
  %.02430.i.i.i = phi i32 [ %i.vu, %.lr.ph.i.i.i ], [ %.02430.i.i.i.ph, %.lr.ph.i.i.i.preheader427 ]
  %i.vv = lshr exact i32 %.02430.i.i.i, 6
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.vw
  store i64 -1, ptr %i.vx, align 8, !tbaa !45
  %i.vy = add nuw nsw i32 %i.vu, 64               ; 2 uses
  %.not.i.i27.i = icmp ugt i32 %i.vy, %i.ua
  br i1 %.not.i.i27.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !886

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block348, %bb.ba
  %.024.lcssa.i.i.i = phi i32 [ %i.vb, %bb.ba ], [ %i.vm, %middle.block348 ], [ %i.vu, %.lr.ph.i.i.i ] ; 2 uses
  %i.vz = icmp ult i32 %.024.lcssa.i.i.i, %i.ua
  br i1 %i.vz, label %bb.bb, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bb:                                            ; preds = %._crit_edge.i.i.i
  %i.wa = and i32 %i.ua, 63
  %i.wb = zext nneg i32 %i.wa to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.wb
  %i.wc = xor i64 %notmask.i.i.i, -1
  %i.wd = lshr exact i32 %.024.lcssa.i.i.i, 6
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.we ; 2 uses
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !45
  %i.wh = or i64 %i.wg, %i.wc
  store i64 %i.wh, ptr %i.wf, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bc:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  switch i32 %i.ek, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i [
    i32 1, label %bb.bd
    i32 2, label %bb.bh
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.wi = zext i16 %.0.ph to i32                  ; 7 uses
  %i.wj = add nuw nsw i32 %i.wi, 16               ; 6 uses
  %i.wk = lshr i32 %i.wi, 6                       ; 2 uses
  %i.wl = lshr i32 %i.wj, 6                       ; 2 uses
  %i.wm = icmp eq i32 %i.wk, %i.wl
  br i1 %i.wm, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.wn = and i32 %i.wj, 63
  %i.wo = zext nneg i32 %i.wn to i64
  %i.wp = shl nuw i64 1, %i.wo
  %i.wq = and i32 %i.wi, 63
  %i.wr = zext nneg i32 %i.wq to i64
  %.neg.i63.i.i = shl nsw i64 -1, %i.wr
  %i.ws = add i64 %i.wp, %.neg.i63.i.i
  %i.wt = zext nneg i32 %i.wl to i64
  %i.wu = load ptr, ptr %3, align 8, !tbaa !38
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %i.wt ; 2 uses
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !45
  %i.wx = or i64 %i.ww, %i.ws
  store i64 %i.wx, ptr %i.wv, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.wy = and i32 %i.wi, 63
  %i.wz = zext nneg i32 %i.wy to i64
  %i.xa = shl nsw i64 -1, %i.wz
  %i.xb = zext nneg i32 %i.wk to i64
  %i.xc = load ptr, ptr %3, align 8, !tbaa !38    ; 4 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xb ; 2 uses
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !45
  %i.xf = or i64 %i.xe, %i.xa
  store i64 %i.xf, ptr %i.xd, align 8, !tbaa !45
  %i.xg = icmp ne i16 %.0.ph, 0                   ; 2 uses
  %.neg28.i55.i.i = sext i1 %i.xg to i32
  %i.xh = add nsw i32 %.neg28.i55.i.i, %i.wi
  %i.xi = select i1 %i.xg, i32 64, i32 0
  %i.xj = add nsw i32 %i.xh, %i.xi                ; 2 uses
  %i.xk = and i32 %i.xj, -64                      ; 8 uses
  %i.xl = add nsw i32 %i.xk, 64                   ; 4 uses
  %.not29.i56.i.i = icmp ugt i32 %i.xl, %i.wj
  br i1 %.not29.i56.i.i, label %._crit_edge.i60.i.i, label %.lr.ph.i57.i.i.preheader

.lr.ph.i57.i.i.preheader:                         ; preds = %bb.bf
  %i.xm = add nsw i32 %i.wi, -48
  %i.xn = sub nsw i32 %i.xm, %i.xk                ; 2 uses
  %i.xo = lshr i32 %i.xn, 6
  %i.xp = add nuw nsw i32 %i.xo, 1                ; 2 uses
  %min.iters.check357 = icmp ult i32 %i.xn, 1856
  br i1 %min.iters.check357, label %.lr.ph.i57.i.i.preheader429, label %vector.scevcheck352

vector.scevcheck352:                              ; preds = %.lr.ph.i57.i.i.preheader
  %reass.sub414 = sub nsw i32 %i.xk, %i.wi
  %i.xq = add nsw i32 %reass.sub414, 47
  %i.xr = or i32 %i.xq, 63
  %i.xs = icmp ult i32 %i.xr, %i.xk
  br i1 %i.xs, label %.lr.ph.i57.i.i.preheader429, label %vector.ph358

vector.ph358:                                     ; preds = %vector.scevcheck352
  %n.vec359 = and i32 %i.xp, 134217724            ; 3 uses
  %i.xt = shl i32 %n.vec359, 6                    ; 2 uses
  %i.xu = add i32 %i.xl, %i.xt
  %i.xv = add i32 %i.xk, %i.xt                    ; 2 uses
  %i.xw = lshr i32 %i.xj, 6
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i32 [ 0, %vector.ph358 ], [ %index.next362, %vector.body360 ] ; 2 uses
  %i.xx = add i32 %i.xw, %index361
  %i.xy = and i32 %i.xx, 67108863
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xz ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ya, align 8, !tbaa !45
  store <2 x i64> splat (i64 -1), ptr %i.yb, align 8, !tbaa !45
  %index.next362 = add nuw i32 %index361, 4       ; 2 uses
  %i.yc = icmp eq i32 %index.next362, %n.vec359
  br i1 %i.yc, label %middle.block363, label %vector.body360, !llvm.loop !887

middle.block363:                                  ; preds = %vector.body360
  %cmp.n364 = icmp eq i32 %i.xp, %n.vec359
  br i1 %cmp.n364, label %._crit_edge.i60.i.i, label %.lr.ph.i57.i.i.preheader429

.lr.ph.i57.i.i.preheader429:                      ; preds = %vector.scevcheck352, %.lr.ph.i57.i.i.preheader, %middle.block363
  %.ph430 = phi i32 [ %i.xl, %vector.scevcheck352 ], [ %i.xl, %.lr.ph.i57.i.i.preheader ], [ %i.xu, %middle.block363 ]
  %.02430.i58.i.i.ph = phi i32 [ %i.xk, %vector.scevcheck352 ], [ %i.xk, %.lr.ph.i57.i.i.preheader ], [ %i.xv, %middle.block363 ]
  br label %.lr.ph.i57.i.i

.lr.ph.i57.i.i:                                   ; preds = %.lr.ph.i57.i.i.preheader429, %.lr.ph.i57.i.i
  %i.yd = phi i32 [ %i.yh, %.lr.ph.i57.i.i ], [ %.ph430, %.lr.ph.i57.i.i.preheader429 ] ; 3 uses
  %.02430.i58.i.i = phi i32 [ %i.yd, %.lr.ph.i57.i.i ], [ %.02430.i58.i.i.ph, %.lr.ph.i57.i.i.preheader429 ]
  %i.ye = lshr exact i32 %.02430.i58.i.i, 6
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.yf
  store i64 -1, ptr %i.yg, align 8, !tbaa !45
  %i.yh = add nuw nsw i32 %i.yd, 64               ; 2 uses
  %.not.i59.i.i = icmp ugt i32 %i.yh, %i.wj
  br i1 %.not.i59.i.i, label %._crit_edge.i60.i.i, label %.lr.ph.i57.i.i, !llvm.loop !888

._crit_edge.i60.i.i:                              ; preds = %.lr.ph.i57.i.i, %middle.block363, %bb.bf
  %.024.lcssa.i61.i.i = phi i32 [ %i.xk, %bb.bf ], [ %i.xv, %middle.block363 ], [ %i.yd, %.lr.ph.i57.i.i ] ; 2 uses
  %i.yi = icmp ult i32 %.024.lcssa.i61.i.i, %i.wj
  br i1 %i.yi, label %bb.bg, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bg:                                            ; preds = %._crit_edge.i60.i.i
  %i.yj = and i32 %i.wj, 63
  %i.yk = zext nneg i32 %i.yj to i64
  %notmask.i62.i.i = shl nsw i64 -1, %i.yk
  %i.yl = xor i64 %notmask.i62.i.i, -1
  %i.ym = lshr exact i32 %.024.lcssa.i61.i.i, 6
  %i.yn = zext nneg i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.yn ; 2 uses
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !45
  %i.yq = or i64 %i.yp, %i.yl
  store i64 %i.yq, ptr %i.yo, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bh:                                            ; preds = %bb.bc
  %i.yr = zext i16 %.0.ph to i32                  ; 4 uses
  %i.ys = add nuw nsw i32 %i.yr, 16               ; 3 uses
  %i.yt = add nuw nsw i32 %i.yr, 32               ; 5 uses
  %i.yu = lshr i32 %i.ys, 6                       ; 3 uses
  %i.yv = lshr i32 %i.yt, 6
  %i.yw = icmp eq i32 %i.yu, %i.yv
  br i1 %i.yw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.yx = and i32 %i.yt, 63
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = shl nuw i64 1, %i.yy
  %i.za = and i32 %i.ys, 63
  %i.zb = zext nneg i32 %i.za to i64
  %.neg.i73.i.i = shl nsw i64 -1, %i.zb
  %i.zc = add i64 %i.yz, %.neg.i73.i.i
  %i.zd = zext nneg i32 %i.yu to i64
  %i.ze = load ptr, ptr %3, align 8, !tbaa !38
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.zd ; 2 uses
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !45
  %i.zh = or i64 %i.zg, %i.zc
  store i64 %i.zh, ptr %i.zf, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.zi = and i32 %i.ys, 63
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = shl nsw i64 -1, %i.zj
  %i.zl = zext nneg i32 %i.yu to i64
  %i.zm = load ptr, ptr %3, align 8, !tbaa !38    ; 3 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zl ; 2 uses
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !45
  %i.zp = or i64 %i.zo, %i.zk
  store i64 %i.zp, ptr %i.zn, align 8, !tbaa !45
  %i.zq = add nuw nsw i32 %i.yr, 79
  %i.zr = and i32 %i.zq, 131008                   ; 3 uses
  %8 = add nuw nsw i32 %i.zr, 64
  %.not29.i66.i.i = icmp samesign ugt i32 %8, %i.yt
  br i1 %.not29.i66.i.i, label %._crit_edge.i70.i.i, label %.lr.ph.i67.preheader.i.i

.lr.ph.i67.preheader.i.i:                         ; preds = %bb.bj
  %i.zs = zext i16 %.0.ph to i64                  ; 2 uses
  %i.zt = add nuw nsw i64 %i.zs, 79               ; 2 uses
  %i.zu = lshr i64 %i.zt, 3
  %i.zv = and i64 %i.zu, 16376
  %scevgep22.i.i = getelementptr i8, ptr %i.zm, i64 %i.zv
  %i.zw = add nsw i32 %i.yr, -32
  %i.zx = sub nsw i32 %i.zw, %i.zr
  %i.zy = lshr i32 %i.zx, 3
  %i.zz = and i32 %i.zy, 536870904
  %narrow67.i.i.a = add nuw nsw i32 %i.zz, 8
  %i.aaa = zext nneg i32 %narrow67.i.i.a to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep22.i.i, i8 -1, i64 %i.aaa, i1 false), !tbaa !45
  %i.aab = and i64 %i.zt, 131008                  ; 2 uses
  %i.aac = add nuw nsw i64 %i.zs, 4294967264
  %i.aad = sub nuw nsw i64 %i.aac, %i.aab
  %i.aae = and i64 %i.aad, 4294967232
  %i.aaf = add nuw nsw i64 %i.aae, %i.aab
  %i.aag = trunc i64 %i.aaf to i32
  %i.aah = add i32 %i.aag, 64
  br label %._crit_edge.i70.i.i

._crit_edge.i70.i.i:                              ; preds = %.lr.ph.i67.preheader.i.i, %bb.bj
  %.024.lcssa.i71.i.i = phi i32 [ %i.zr, %bb.bj ], [ %i.aah, %.lr.ph.i67.preheader.i.i ] ; 2 uses
  %i.aai = icmp samesign ult i32 %.024.lcssa.i71.i.i, %i.yt
  br i1 %i.aai, label %bb.bk, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bk:                                            ; preds = %._crit_edge.i70.i.i
  %i.aaj = and i32 %i.yt, 63
  %i.aak = zext nneg i32 %i.aaj to i64
  %notmask.i72.i.i = shl nsw i64 -1, %i.aak
  %i.aal = xor i64 %notmask.i72.i.i, -1
  %i.aam = lshr exact i32 %.024.lcssa.i71.i.i, 6
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.aan ; 2 uses
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !45
  %i.aaq = or i64 %i.aap, %i.aal
  store i64 %i.aaq, ptr %i.aao, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bl:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  switch i32 %i.ek, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i [
    i32 1, label %bb.bm
    i32 2, label %bb.bq
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.aar = zext i16 %.0.ph to i32                 ; 4 uses
  %i.aas = add nuw nsw i32 %i.aar, 16             ; 3 uses
  %i.aat = add nuw nsw i32 %i.aar, 32             ; 5 uses
  %i.aau = lshr i32 %i.aas, 6                     ; 3 uses
  %i.aav = lshr i32 %i.aat, 6
  %i.aaw = icmp eq i32 %i.aau, %i.aav
  br i1 %i.aaw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.aax = and i32 %i.aat, 63
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = shl nuw i64 1, %i.aay
  %i.aba = and i32 %i.aas, 63
  %i.abb = zext nneg i32 %i.aba to i64
  %.neg.i83.i.i = shl nsw i64 -1, %i.abb
  %i.abc = add i64 %i.aaz, %.neg.i83.i.i
  %i.abd = zext nneg i32 %i.aau to i64
  %i.abe = load ptr, ptr %3, align 8, !tbaa !38
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.abd ; 2 uses
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !45
  %i.abh = or i64 %i.abg, %i.abc
  store i64 %i.abh, ptr %i.abf, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.abi = and i32 %i.aas, 63
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = shl nsw i64 -1, %i.abj
  %i.abl = zext nneg i32 %i.aau to i64
  %i.abm = load ptr, ptr %3, align 8, !tbaa !38   ; 3 uses
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %i.abl ; 2 uses
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !45
  %i.abp = or i64 %i.abo, %i.abk
  store i64 %i.abp, ptr %i.abn, align 8, !tbaa !45
  %i.abq = add nuw nsw i32 %i.aar, 79
  %i.abr = and i32 %i.abq, 131008                 ; 3 uses
  %9 = add nuw nsw i32 %i.abr, 64
  %.not29.i76.i.i = icmp samesign ugt i32 %9, %i.aat
  br i1 %.not29.i76.i.i, label %._crit_edge.i80.i.i, label %.lr.ph.i77.preheader.i.i

.lr.ph.i77.preheader.i.i:                         ; preds = %bb.bo
  %i.abs = zext i16 %.0.ph to i64                 ; 2 uses
  %i.abt = add nuw nsw i64 %i.abs, 79             ; 2 uses
  %i.abu = lshr i64 %i.abt, 3
  %i.abv = and i64 %i.abu, 16376
  %scevgep17.i.i = getelementptr i8, ptr %i.abm, i64 %i.abv
  %i.abw = add nsw i32 %i.aar, -32
  %i.abx = sub nsw i32 %i.abw, %i.abr
  %i.aby = lshr i32 %i.abx, 3
  %i.abz = and i32 %i.aby, 536870904
  %narrow66.i.i = add nuw nsw i32 %i.abz, 8
  %i.aca = zext nneg i32 %narrow66.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep17.i.i, i8 -1, i64 %i.aca, i1 false), !tbaa !45
  %i.acb = and i64 %i.abt, 131008                 ; 2 uses
  %i.acc = add nuw nsw i64 %i.abs, 4294967264
  %i.acd = sub nuw nsw i64 %i.acc, %i.acb
  %i.ace = and i64 %i.acd, 4294967232
  %i.acf = add nuw nsw i64 %i.ace, %i.acb
  %i.acg = trunc i64 %i.acf to i32
  %i.ach = add i32 %i.acg, 64
  br label %._crit_edge.i80.i.i

._crit_edge.i80.i.i:                              ; preds = %.lr.ph.i77.preheader.i.i, %bb.bo
  %.024.lcssa.i81.i.i = phi i32 [ %i.abr, %bb.bo ], [ %i.ach, %.lr.ph.i77.preheader.i.i ] ; 2 uses
  %i.aci = icmp samesign ult i32 %.024.lcssa.i81.i.i, %i.aat
  br i1 %i.aci, label %bb.bp, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bp:                                            ; preds = %._crit_edge.i80.i.i
  %i.acj = and i32 %i.aat, 63
  %i.ack = zext nneg i32 %i.acj to i64
  %notmask.i82.i.i = shl nsw i64 -1, %i.ack
  %i.acl = xor i64 %notmask.i82.i.i, -1
  %i.acm = lshr exact i32 %.024.lcssa.i81.i.i, 6
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %i.acn ; 2 uses
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !45
  %i.acq = or i64 %i.acp, %i.acl
  store i64 %i.acq, ptr %i.aco, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bq:                                            ; preds = %bb.bl
  %i.acr = zext i16 %.0.ph to i32                 ; 7 uses
  %i.acs = add nuw nsw i32 %i.acr, 16             ; 6 uses
  %i.act = lshr i32 %i.acr, 6                     ; 2 uses
  %i.acu = lshr i32 %i.acs, 6                     ; 2 uses
  %i.acv = icmp eq i32 %i.act, %i.acu
  br i1 %i.acv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.acw = and i32 %i.acs, 63
  %i.acx = zext nneg i32 %i.acw to i64
  %i.acy = shl nuw i64 1, %i.acx
  %i.acz = and i32 %i.acr, 63
  %i.ada = zext nneg i32 %i.acz to i64
  %.neg.i93.i.i = shl nsw i64 -1, %i.ada
  %i.adb = add i64 %i.acy, %.neg.i93.i.i
  %i.adc = zext nneg i32 %i.acu to i64
  %i.add = load ptr, ptr %3, align 8, !tbaa !38
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %i.adc ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !45
  %i.adg = or i64 %i.adf, %i.adb
  store i64 %i.adg, ptr %i.ade, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bs:                                            ; preds = %bb.bq
  %i.adh = and i32 %i.acr, 63
  %i.adi = zext nneg i32 %i.adh to i64
  %i.adj = shl nsw i64 -1, %i.adi
  %i.adk = zext nneg i32 %i.act to i64
  %i.adl = load ptr, ptr %3, align 8, !tbaa !38   ; 4 uses
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %i.adk ; 2 uses
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !45
  %i.ado = or i64 %i.adn, %i.adj
  store i64 %i.ado, ptr %i.adm, align 8, !tbaa !45
  %i.adp = icmp ne i16 %.0.ph, 0                  ; 2 uses
  %.neg28.i85.i.i = sext i1 %i.adp to i32
  %i.adq = add nsw i32 %.neg28.i85.i.i, %i.acr
  %i.adr = select i1 %i.adp, i32 64, i32 0
  %i.ads = add nsw i32 %i.adq, %i.adr             ; 2 uses
  %i.adt = and i32 %i.ads, -64                    ; 8 uses
  %i.adu = add nsw i32 %i.adt, 64                 ; 4 uses
  %.not29.i86.i.i = icmp ugt i32 %i.adu, %i.acs
  br i1 %.not29.i86.i.i, label %._crit_edge.i90.i.i, label %.lr.ph.i87.i.i.preheader

.lr.ph.i87.i.i.preheader:                         ; preds = %bb.bs
  %i.adv = add nsw i32 %i.acr, -48
  %i.adw = sub nsw i32 %i.adv, %i.adt             ; 2 uses
  %i.adx = lshr i32 %i.adw, 6
  %i.ady = add nuw nsw i32 %i.adx, 1              ; 2 uses
  %min.iters.check372 = icmp ult i32 %i.adw, 1856
  br i1 %min.iters.check372, label %.lr.ph.i87.i.i.preheader431, label %vector.scevcheck367

vector.scevcheck367:                              ; preds = %.lr.ph.i87.i.i.preheader
  %reass.sub413 = sub nsw i32 %i.adt, %i.acr
  %i.adz = add nsw i32 %reass.sub413, 47
  %i.aea = or i32 %i.adz, 63
  %i.aeb = icmp ult i32 %i.aea, %i.adt
  br i1 %i.aeb, label %.lr.ph.i87.i.i.preheader431, label %vector.ph373

vector.ph373:                                     ; preds = %vector.scevcheck367
  %n.vec374 = and i32 %i.ady, 134217724           ; 3 uses
  %i.aec = shl i32 %n.vec374, 6                   ; 2 uses
  %i.aed = add i32 %i.adu, %i.aec
  %i.aee = add i32 %i.adt, %i.aec                 ; 2 uses
  %i.aef = lshr i32 %i.ads, 6
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph373
  %index376 = phi i32 [ 0, %vector.ph373 ], [ %index.next377, %vector.body375 ] ; 2 uses
  %i.aeg = add i32 %i.aef, %index376
  %i.aeh = and i32 %i.aeg, 67108863
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %i.aei ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.aej, align 8, !tbaa !45
  store <2 x i64> splat (i64 -1), ptr %i.aek, align 8, !tbaa !45
  %index.next377 = add nuw i32 %index376, 4       ; 2 uses
  %i.ael = icmp eq i32 %index.next377, %n.vec374
  br i1 %i.ael, label %middle.block378, label %vector.body375, !llvm.loop !889

middle.block378:                                  ; preds = %vector.body375
  %cmp.n379 = icmp eq i32 %i.ady, %n.vec374
  br i1 %cmp.n379, label %._crit_edge.i90.i.i, label %.lr.ph.i87.i.i.preheader431

.lr.ph.i87.i.i.preheader431:                      ; preds = %vector.scevcheck367, %.lr.ph.i87.i.i.preheader, %middle.block378
  %.ph432 = phi i32 [ %i.adu, %vector.scevcheck367 ], [ %i.adu, %.lr.ph.i87.i.i.preheader ], [ %i.aed, %middle.block378 ]
  %.02430.i88.i.i.ph = phi i32 [ %i.adt, %vector.scevcheck367 ], [ %i.adt, %.lr.ph.i87.i.i.preheader ], [ %i.aee, %middle.block378 ]
  br label %.lr.ph.i87.i.i

.lr.ph.i87.i.i:                                   ; preds = %.lr.ph.i87.i.i.preheader431, %.lr.ph.i87.i.i
  %i.aem = phi i32 [ %i.aeq, %.lr.ph.i87.i.i ], [ %.ph432, %.lr.ph.i87.i.i.preheader431 ] ; 3 uses
  %.02430.i88.i.i = phi i32 [ %i.aem, %.lr.ph.i87.i.i ], [ %.02430.i88.i.i.ph, %.lr.ph.i87.i.i.preheader431 ]
  %i.aen = lshr exact i32 %.02430.i88.i.i, 6
  %i.aeo = zext nneg i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %i.aeo
  store i64 -1, ptr %i.aep, align 8, !tbaa !45
  %i.aeq = add nuw nsw i32 %i.aem, 64             ; 2 uses
  %.not.i89.i.i = icmp ugt i32 %i.aeq, %i.acs
  br i1 %.not.i89.i.i, label %._crit_edge.i90.i.i, label %.lr.ph.i87.i.i, !llvm.loop !890

._crit_edge.i90.i.i:                              ; preds = %.lr.ph.i87.i.i, %middle.block378, %bb.bs
  %.024.lcssa.i91.i.i = phi i32 [ %i.adt, %bb.bs ], [ %i.aee, %middle.block378 ], [ %i.aem, %.lr.ph.i87.i.i ] ; 2 uses
  %i.aer = icmp ult i32 %.024.lcssa.i91.i.i, %i.acs
  br i1 %i.aer, label %bb.bt, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bt:                                            ; preds = %._crit_edge.i90.i.i
  %i.aes = and i32 %i.acs, 63
  %i.aet = zext nneg i32 %i.aes to i64
  %notmask.i92.i.i = shl nsw i64 -1, %i.aet
  %i.aeu = xor i64 %notmask.i92.i.i, -1
  %i.aev = lshr exact i32 %.024.lcssa.i91.i.i, 6
  %i.aew = zext nneg i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %i.aew ; 2 uses
  %i.aey = load i64, ptr %i.aex, align 8, !tbaa !45
  %i.aez = or i64 %i.aey, %i.aeu
  store i64 %i.aez, ptr %i.aex, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bu:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.afa = add i32 %i.ek, -1
  %or.cond3.i.i = icmp ult i32 %i.afa, 2
  br i1 %or.cond3.i.i, label %bb.bv, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.afb = zext i16 %.0.ph to i32                 ; 4 uses
  %i.afc = add nuw nsw i32 %i.afb, 16             ; 3 uses
  %i.afd = add nuw nsw i32 %i.afb, 32             ; 5 uses
  %i.afe = lshr i32 %i.afc, 6                     ; 3 uses
  %i.aff = lshr i32 %i.afd, 6
  %i.afg = icmp eq i32 %i.afe, %i.aff
  br i1 %i.afg, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.afh = and i32 %i.afd, 63
  %i.afi = zext nneg i32 %i.afh to i64
  %i.afj = shl nuw i64 1, %i.afi
  %i.afk = and i32 %i.afc, 63
  %i.afl = zext nneg i32 %i.afk to i64
  %.neg.i103.i.i = shl nsw i64 -1, %i.afl
  %i.afm = add i64 %i.afj, %.neg.i103.i.i
  %i.afn = zext nneg i32 %i.afe to i64
  %i.afo = load ptr, ptr %3, align 8, !tbaa !38
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %i.afn ; 2 uses
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !45
  %i.afr = or i64 %i.afq, %i.afm
  store i64 %i.afr, ptr %i.afp, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.afs = and i32 %i.afc, 63
  %i.aft = zext nneg i32 %i.afs to i64
  %i.afu = shl nsw i64 -1, %i.aft
  %i.afv = zext nneg i32 %i.afe to i64
  %i.afw = load ptr, ptr %3, align 8, !tbaa !38   ; 3 uses
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %i.afv ; 2 uses
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !45
  %i.afz = or i64 %i.afy, %i.afu
  store i64 %i.afz, ptr %i.afx, align 8, !tbaa !45
  %i.aga = add nuw nsw i32 %i.afb, 79
  %i.agb = and i32 %i.aga, 131008                 ; 3 uses
  %10 = add nuw nsw i32 %i.agb, 64
  %.not29.i96.i.i = icmp samesign ugt i32 %10, %i.afd
  br i1 %.not29.i96.i.i, label %._crit_edge.i100.i.i, label %.lr.ph.i97.preheader.i.i

.lr.ph.i97.preheader.i.i:                         ; preds = %bb.bx
  %i.agc = zext i16 %.0.ph to i64                 ; 2 uses
  %i.agd = add nuw nsw i64 %i.agc, 79             ; 2 uses
  %i.age = lshr i64 %i.agd, 3
  %i.agf = and i64 %i.age, 16376
  %scevgep.i.i = getelementptr i8, ptr %i.afw, i64 %i.agf
  %i.agg = add nsw i32 %i.afb, -32
  %i.agh = sub nsw i32 %i.agg, %i.agb
  %i.agi = lshr i32 %i.agh, 3
  %i.agj = and i32 %i.agi, 536870904
  %narrow.i.i = add nuw nsw i32 %i.agj, 8
  %i.agk = zext nneg i32 %narrow.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 -1, i64 %i.agk, i1 false), !tbaa !45
  %i.agl = and i64 %i.agd, 131008                 ; 2 uses
  %i.agm = add nuw nsw i64 %i.agc, 4294967264
  %i.agn = sub nuw nsw i64 %i.agm, %i.agl
  %i.ago = and i64 %i.agn, 4294967232
  %i.agp = add nuw nsw i64 %i.ago, %i.agl
  %i.agq = trunc i64 %i.agp to i32
  %i.agr = add i32 %i.agq, 64
  br label %._crit_edge.i100.i.i

._crit_edge.i100.i.i:                             ; preds = %.lr.ph.i97.preheader.i.i, %bb.bx
  %.024.lcssa.i101.i.i = phi i32 [ %i.agb, %bb.bx ], [ %i.agr, %.lr.ph.i97.preheader.i.i ] ; 2 uses
  %i.ags = icmp samesign ult i32 %.024.lcssa.i101.i.i, %i.afd
  br i1 %i.ags, label %bb.by, label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

bb.by:                                            ; preds = %._crit_edge.i100.i.i
  %i.agt = and i32 %i.afd, 63
  %i.agu = zext nneg i32 %i.agt to i64
  %notmask.i102.i.i = shl nsw i64 -1, %i.agu
  %i.agv = xor i64 %notmask.i102.i.i, -1
  %i.agw = lshr exact i32 %.024.lcssa.i101.i.i, 6
  %i.agx = zext nneg i32 %i.agw to i64
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %i.agx ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !45
  %i.aha = or i64 %i.agz, %i.agv
  store i64 %i.aha, ptr %i.agy, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i

_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i: ; preds = %bb.aw, %._crit_edge.i, %bb.au, %bb.ar, %._crit_edge.i58, %bb.ap, %bb.am, %._crit_edge.i68, %bb.ak, %bb.ah, %._crit_edge.i78, %bb.af, %bb.by, %._crit_edge.i100.i.i, %bb.bw, %bb.bu, %bb.bt, %._crit_edge.i90.i.i, %bb.br, %bb.bp, %._crit_edge.i80.i.i, %bb.bn, %bb.bl, %bb.bk, %._crit_edge.i70.i.i, %bb.bi, %bb.bg, %._crit_edge.i60.i.i, %bb.be, %bb.bc, %bb.bb, %._crit_edge.i.i.i, %bb.az, %bb.ax, %bb.as, %bb.an, %bb.ai, %bb.ad, %bb.ac, %_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i, %._crit_edge.i25.i.i.i, %._crit_edge.i15.i.i.i, %._crit_edge.i.i.i.i, %bb.p, %bb.o
  %.0.i.i44 = phi i1 [ false, %bb.ac ], [ true, %bb.bt ], [ false, %bb.o ], [ true, %bb.by ], [ true, %bb.ah ], [ true, %bb.am ], [ true, %bb.ar ], [ true, %_ZN4llvm9BitVector3setEjj.exit.sink.split.i.i.i ], [ true, %bb.bb ], [ true, %bb.bg ], [ true, %bb.bk ], [ true, %bb.bp ], [ false, %bb.bl ], [ false, %bb.bc ], [ false, %bb.bu ], [ false, %bb.ax ], [ false, %bb.as ], [ false, %bb.an ], [ false, %bb.ai ], [ false, %bb.ad ], [ true, %._crit_edge.i.i.i.i ], [ false, %bb.p ], [ true, %._crit_edge.i25.i.i.i ], [ true, %._crit_edge.i15.i.i.i ], [ true, %bb.az ], [ true, %._crit_edge.i.i.i ], [ true, %bb.be ], [ true, %._crit_edge.i60.i.i ], [ true, %bb.bi ], [ true, %._crit_edge.i70.i.i ], [ true, %bb.bn ], [ true, %._crit_edge.i80.i.i ], [ true, %bb.br ], [ true, %._crit_edge.i90.i.i ], [ true, %bb.bw ], [ true, %._crit_edge.i100.i.i ], [ true, %bb.af ], [ true, %._crit_edge.i78 ], [ true, %bb.ak ], [ true, %._crit_edge.i68 ], [ true, %bb.ap ], [ true, %._crit_edge.i58 ], [ true, %bb.au ], [ true, %._crit_edge.i ], [ true, %bb.aw ] ; 2 uses
  %.val23.i = load ptr, ptr %i.dl, align 8        ; 3 uses
  %.val24.i = load i32, ptr %i.dj, align 4, !tbaa !209 ; 2 uses
  switch i32 %.val24.i, label %bb.ce [
    i32 2143, label %bb.cc
    i32 2144, label %bb.bz
    i32 2145, label %bb.bz
    i32 2146, label %bb.bz
    i32 2147, label %bb.bz
    i32 2148, label %bb.bz
    i32 2149, label %bb.ca
    i32 2141, label %bb.cb
    i32 2425, label %bb.cb
    i32 2440, label %bb.cb
    i32 2423, label %bb.cb
    i32 2566, label %bb.cb
    i32 2150, label %bb.cb
    i32 2151, label %bb.cb
    i32 2152, label %bb.cb
    i32 2153, label %bb.cb
    i32 2154, label %bb.cb
    i32 2155, label %bb.cb
  ]

bb.bz:                                            ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i
  br label %bb.cc

bb.ca:                                            ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i
  br label %bb.cc

bb.cb:                                            ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i
  %.013.i.i = phi i64 [ 3, %bb.cb ], [ 3, %bb.bz ], [ 2, %bb.ca ], [ 2, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i ]
  %.012.i.i = phi i32 [ 2, %bb.cb ], [ 2, %bb.bz ], [ 1, %bb.ca ], [ 1, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i ]
  %.0.i28.i = phi i32 [ 32, %bb.cb ], [ 64, %bb.bz ], [ 32, %bb.ca ], [ 64, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i ] ; 2 uses
  %.not.i29.i = icmp eq i32 %.012.i.i, %i.ek
  br i1 %.not.i29.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ahb = getelementptr inbounds nuw [32 x i8], ptr %.val23.i, i64 %.013.i.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %i.ahd = load i64, ptr %i.ahc, align 8, !tbaa !266
  %i.ahe = trunc i64 %i.ahd to i32                ; 2 uses
  %.not1.i.i = icmp eq i32 %i.ahe, 0
  br i1 %.not1.i.i, label %bb.ce, label %_ZN12_GLOBAL__N_125RedundantInstrElimination16isLossyShiftLeftERKN4llvm12MachineInstrEjRjS5_.exit.i

_ZN12_GLOBAL__N_125RedundantInstrElimination16isLossyShiftLeftERKN4llvm12MachineInstrEjRjS5_.exit.i: ; preds = %bb.cd
  %i.ahf = sub i32 %.0.i28.i, %i.ahe
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %_ZN12_GLOBAL__N_118HexagonBitSimplify11getUsedBitsEjjRN4llvm9BitVectorEtRKNS1_16HexagonInstrInfoE.exit.i
  switch i32 %.val24.i, label %_ZN4llvm9BitVector5resetEjj.exit.i [
    i32 2172, label %bb.cg
    i32 2242, label %bb.cg
    i32 2173, label %bb.cf
    i32 2174, label %bb.cf
    i32 2175, label %bb.cf
    i32 2176, label %bb.cf
    i32 2243, label %bb.cf
    i32 2244, label %bb.cf
    i32 2245, label %bb.cf
    i32 2246, label %bb.cf
    i32 2247, label %bb.cf
    i32 2178, label %bb.cg
    i32 2248, label %bb.cg
    i32 2426, label %bb.cf
    i32 2441, label %bb.cf
    i32 2424, label %bb.cf
    i32 2567, label %bb.cf
    i32 2179, label %bb.cf
    i32 2180, label %bb.cf
    i32 2181, label %bb.cf
    i32 2182, label %bb.cf
    i32 2249, label %bb.cf
    i32 2250, label %bb.cf
    i32 2251, label %bb.cf
    i32 2252, label %bb.cf
    i32 2253, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.ce, %bb.ce, %bb.ce
  %.010.i.i = phi i64 [ 2, %bb.ce ], [ 3, %bb.cf ], [ 2, %bb.ce ], [ 2, %bb.ce ], [ 2, %bb.ce ]
  %.09.i.i = phi i32 [ 1, %bb.ce ], [ 2, %bb.cf ], [ 1, %bb.ce ], [ 1, %bb.ce ], [ 1, %bb.ce ]
  %.not.i30.i = icmp eq i32 %.09.i.i, %i.ek
  br i1 %.not.i30.i, label %_ZN12_GLOBAL__N_125RedundantInstrElimination17isLossyShiftRightERKN4llvm12MachineInstrEjRjS5_.exit.i, label %_ZN4llvm9BitVector5resetEjj.exit.i

_ZN12_GLOBAL__N_125RedundantInstrElimination17isLossyShiftRightERKN4llvm12MachineInstrEjRjS5_.exit.i: ; preds = %bb.cg
  %i.ahg = getelementptr inbounds nuw [32 x i8], ptr %.val23.i, i64 %.010.i.i
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  %i.ahi = load i64, ptr %i.ahh, align 8, !tbaa !266
  %i.ahj = trunc i64 %i.ahi to i32
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN12_GLOBAL__N_125RedundantInstrElimination17isLossyShiftRightERKN4llvm12MachineInstrEjRjS5_.exit.i, %_ZN12_GLOBAL__N_125RedundantInstrElimination16isLossyShiftLeftERKN4llvm12MachineInstrEjRjS5_.exit.i
  %.046.i = phi i32 [ %.0.i28.i, %_ZN12_GLOBAL__N_125RedundantInstrElimination16isLossyShiftLeftERKN4llvm12MachineInstrEjRjS5_.exit.i ], [ %i.ahj, %_ZN12_GLOBAL__N_125RedundantInstrElimination17isLossyShiftRightERKN4llvm12MachineInstrEjRjS5_.exit.i ] ; 2 uses
  %.045.i = phi i32 [ %i.ahf, %_ZN12_GLOBAL__N_125RedundantInstrElimination16isLossyShiftLeftERKN4llvm12MachineInstrEjRjS5_.exit.i ], [ 0, %_ZN12_GLOBAL__N_125RedundantInstrElimination17isLossyShiftRightERKN4llvm12MachineInstrEjRjS5_.exit.i ] ; 2 uses
  %i.ahk = and i64 %i.ej, 4294967295
  %i.ahl = getelementptr inbounds nuw [32 x i8], ptr %.val23.i, i64 %i.ahk ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 4
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !266 ; 2 uses
  %i.aho = load i32, ptr %i.ahl, align 8
  %i.ahp = load ptr, ptr %i.ai, align 8, !tbaa !412, !nonnull !35, !align !178 ; 2 uses
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 48
  %.val21.i = load ptr, ptr %i.ahq, align 8
  %i.ahr = icmp slt i32 %i.ahn, 0
  call void @llvm.assume(i1 %i.ahr)
  %i.ahs = and i32 %i.ahn, 2147483647
  %i.aht = zext nneg i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds nuw [16 x i8], ptr %.val21.i, i64 %i.aht
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ahu, align 8
  %i.ahv = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.ahw = inttoptr i64 %i.ahv to ptr             ; 2 uses
  %i.ahx = and i32 %i.aho, 1048320
  %i.ahy = icmp eq i32 %i.ahx, 0
  br i1 %i.ahy, label %_ZNK4llvm8TypeSizecvmEv.exit.i45, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.val.i = load ptr, ptr %i.ahp, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !179, !nonnull !35, !align !178 ; 2 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !26
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 200
  %i.aid = load ptr, ptr %i.aic, align 8
  %i.aie = call noundef ptr %i.aid(ptr noundef nonnull align 8 dereferenceable(344) %i.aia) #20, !inline_history !891 ; 0 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahw, i64 20
  %i.aig = load i16, ptr %i.aif, align 4, !tbaa !414 ; 2 uses
  %switch.selectcmp.i.i = icmp eq i16 %i.aig, 26
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), ptr null
  %switch.selectcmp1.i.i = icmp eq i16 %i.aig, 15
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), ptr %switch.select.i.i
  br label %_ZNK4llvm8TypeSizecvmEv.exit.i45

_ZNK4llvm8TypeSizecvmEv.exit.i45:                 ; preds = %bb.ci, %bb.ch
  %.2.i.i = phi ptr [ %switch.select2.i.i, %bb.ci ], [ %i.ahw, %bb.ch ]
  br i1 %.0.i.i44, label %_ZNK4llvm8TypeSizecvmEv.exit._ZN4llvm9BitVector3setEjj.exit_crit_edge.i, label %bb.cj

_ZNK4llvm8TypeSizecvmEv.exit._ZN4llvm9BitVector3setEjj.exit_crit_edge.i: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i45
  %.pre.i = zext i16 %.0.ph to i32
  br label %_ZN4llvm9BitVector3setEjj.exit.i

bb.cj:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i45
  %i.aih = load ptr, ptr %i.ao, align 8, !tbaa !898, !nonnull !35, !align !178 ; 3 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 296
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !415
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aih, i64 312
  %i.ail = load i32, ptr %i.aik, align 8, !tbaa !417
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aih, i64 40
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !416
  %i.aio = mul i32 %i.ain, %i.ail
  %i.aip = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 20
  %i.aiq = load i16, ptr %i.aip, align 4, !tbaa !414
  %i.air = zext i16 %i.aiq to i32
  %i.ais = add i32 %i.aio, %i.air
  %i.ait = zext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [16 x i8], ptr %i.aij, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !419
  %i.aiw = zext i16 %.0.ph to i32                 ; 11 uses
  %i.aix = and i32 %i.aiv, 65535                  ; 4 uses
  %i.aiy = add nuw nsw i32 %i.aix, %i.aiw         ; 6 uses
  %i.aiz = icmp eq i32 %i.aix, 0
  br i1 %i.aiz, label %_ZN4llvm9BitVector3setEjj.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aja = lshr i32 %i.aiw, 6                     ; 3 uses
  %i.ajb = lshr i32 %i.aiy, 6
  %i.ajc = icmp eq i32 %i.aja, %i.ajb
  br i1 %i.ajc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ajd = and i32 %i.aiy, 63
  %i.aje = zext nneg i32 %i.ajd to i64
end_hunk_2
