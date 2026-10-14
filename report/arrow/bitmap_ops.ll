Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bitmap_ops?download=true
inline.NumInlined: 424
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh:bb.a
  %i.fh = or disjoint i8 %i.fc, -128
  %spec.select.i42.6 = select i1 %.not21.i.6, i8 %i.fc, i8 %i.fh ; 2 uses
  %i.fi = add nsw i64 %.sroa.16.1.i.5, 1          ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 8
  br i1 %i.fj, label %bb.x, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !12

bb.x:                                             ; preds = %.lr.ph.i.6
  %i.fk = icmp eq i32 %.sroa.15.0112, 8
  br i1 %i.fk, label %bb.y, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.fl = getelementptr i8, ptr %.sroa.669.1113, i64 %.sroa.1319.1.i.5
  %i.fm = getelementptr i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6: ; preds = %bb.y, %bb.x, %.lr.ph.i.6
  %.sroa.16.1.i.6 = phi i64 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.fi, %.lr.ph.i.6 ] ; 2 uses
  %.sroa.9.2.i.6 = phi i8 [ %i.fn, %bb.y ], [ %.sroa.9.2.i.5, %bb.x ], [ %.sroa.9.2.i.5, %.lr.ph.i.6 ]
  %exitcond.not.i.6 = icmp eq i32 %.sroa.15.0112, 7
  br i1 %exitcond.not.i.6, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6
  %i.fo = lshr i8 %spec.select.i42.6, 1           ; 2 uses
  %i.fp = zext i8 %.sroa.9.2.i.6 to i32
  %i.fq = trunc nsw i64 %.sroa.16.1.i.6 to i32
  %i.fr = shl nuw nsw i32 1, %i.fq
  %i.fs = and i32 %i.fr, %i.fp
  %.not21.i.7 = icmp eq i32 %i.fs, 0
  %i.ft = or disjoint i8 %i.fo, -128
  %spec.select.i42.7 = select i1 %.not21.i.7, i8 %i.fo, i8 %i.ft
  %i.fu = icmp eq i64 %.sroa.16.1.i.6, 7          ; 0 uses
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread: ; preds = %bb.j
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.669.1113, i64 1 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1             ; 2 uses
  %.sroa.23.40.extract.trunc = trunc i64 %.sroa.23.1110 to i8
  %i.fx = trunc i64 %.sroa.23.1110 to i32
  %i.fy = and i32 %i.fx, 255
  %i.fz = lshr i32 %i.fy, %i.bp
  %i.ga = zext i8 %i.fw to i32
  %i.gb = shl nuw nsw i32 %i.ga, %i.bq
  %i.gc = or i32 %i.gb, %i.fz
  %i.gd = trunc i32 %i.gc to i8
  %.2.i = select i1 %.not.i41, i8 %.sroa.23.40.extract.trunc, i8 %i.gd
  %.sroa.23.40.insert.ext76 = zext i8 %i.fw to i64
  %i.ge = add nsw i32 %.sroa.15.0112, -8
  br label %bb.z

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit: ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i42.lcssa = phi i8 [ %spec.select.i42, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i42.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i42.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i42.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i42.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i42.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i42.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i42.7, %.lr.ph.i.7 ]
  %i.gf = zext i8 %spec.select.i42.lcssa to i32
  %i.gg = sub nuw nsw i32 8, %.sroa.15.0112
  %i.gh = lshr i32 %i.gf, %i.gg
  %i.gi = trunc nuw i32 %i.gh to i8               ; 2 uses
  %i.gj = icmp eq i32 %.sroa.15.0112, 8
  br i1 %i.gj, label %bb.z, label %.lr.ph.preheader.i43

bb.z:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %.3.i94 = phi i8 [ %.2.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %i.gi, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ] ; 2 uses
  %.sroa.669.293 = phi ptr [ %i.fv, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.669.1113, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.15.191 = phi i32 [ %i.ge, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.23.387 = phi i64 [ %.sroa.23.40.insert.ext76, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.23.1110, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  br i1 %.not.i39137151, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gk = zext i8 %.3.i94 to i32                  ; 2 uses
  %i.gl = shl nuw nsw i32 %i.gk, %i.bn
  %i.gm = lshr i32 %i.gk, %i.bs
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.6.1115, i64 1 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = and i64 %.sroa.22.1114, %i.bo
  %i.gq = or i32 %i.gl, %i.gm
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.gs = and i64 %i.gr, %i.bt
  %i.gt = or disjoint i64 %i.gs, %i.gp
  %i.gu = trunc i64 %i.gt to i8
  %i.gv = zext i8 %i.go to i64
  %i.gw = and i64 %i.gv, %i.bt
  %i.gx = and i64 %i.bo, %i.gr
  %i.gy = or disjoint i64 %i.gw, %i.gx            ; 2 uses
  %i.gz = trunc i64 %i.gy to i8
  store i8 %i.gz, ptr %i.gn, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sink = phi i8 [ %i.gu, %bb.aa ], [ %.3.i94, %bb.z ]
  %.sroa.22.4 = phi i64 [ %i.gy, %bb.aa ], [ %.sroa.22.1114, %bb.z ]
  store i8 %.sink, ptr %.sroa.6.1115, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.6.1115, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i43:                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.hb = load i8, ptr %i.br, align 1, !tbaa !9
  %i.hc = load i8, ptr %.sroa.6.1115, align 1, !tbaa !9
  br label %.lr.ph.i45

._crit_edge.i48:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i48
  %i.hd = getelementptr inbounds i8, ptr %.sroa.6.1115, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.hd, align 1, !tbaa !9
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i45:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i43
  %.01537.i = phi i8 [ %i.hq, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.gi, %.lr.ph.preheader.i43 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.hj, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i43 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.hc, %.lr.ph.preheader.i43 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.hb, %.lr.ph.preheader.i43 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i43 ] ; 3 uses
  %i.he = and i8 %.01537.i, 1
  %.not.i46 = icmp eq i8 %i.he, 0
  %i.hf = xor i8 %.sroa.22.034.i, -1
  %i.hg = and i8 %.sroa.14.035.i, %i.hf
  %i.hh = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i46, i8 %i.hg, i8 %i.hh ; 3 uses
  %i.hi = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.hj = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.hk = icmp eq i8 %i.hi, 0
  br i1 %i.hk, label %bb.ad, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.ad:                                            ; preds = %.lr.ph.i45
  %i.hl = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %.sroa.6.1115, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.hm, align 1, !tbaa !9
  %i.hn = icmp samesign ult i64 %i.hj, %wide.trip.count.i
  br i1 %i.hn, label %bb.ae, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.ho = getelementptr inbounds i8, ptr %.sroa.6.1115, i64 %i.hl
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.ae, %bb.ad, %.lr.ph.i45
  %.sroa.2930.1.i = phi i64 [ %i.hl, %bb.ae ], [ %i.hl, %bb.ad ], [ %.sroa.2930.033.i, %.lr.ph.i45 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.ae ], [ 1, %bb.ad ], [ %i.hi, %.lr.ph.i45 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.hp, %bb.ae ], [ %.sroa.14.1.i, %bb.ad ], [ %.sroa.14.1.i, %.lr.ph.i45 ] ; 2 uses
  %i.hq = lshr i8 %.01537.i, 1
  %exitcond.not.i47 = icmp eq i64 %i.hj, %wide.trip.count.i
  br i1 %exitcond.not.i47, label %._crit_edge.i48, label %.lr.ph.i45, !llvm.loop !0

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.k, %bb.ab, %._crit_edge.i48, %bb.ac
  %.sroa.669.292 = phi ptr [ %.sroa.669.293, %bb.ab ], [ %.sroa.669.1113, %._crit_edge.i48 ], [ %.sroa.669.1113, %bb.ac ], [ %.sroa.669.1113, %bb.k ]
  %.sroa.15.190 = phi i32 [ %.sroa.15.191, %bb.ab ], [ 0, %._crit_edge.i48 ], [ 0, %bb.ac ], [ 0, %bb.k ]
  %.sroa.23.386 = phi i64 [ %.sroa.23.387, %bb.ab ], [ %.sroa.23.1110, %._crit_edge.i48 ], [ %.sroa.23.1110, %bb.ac ], [ %.sroa.23.1110, %bb.k ]
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ab ], [ %.sroa.22.1114, %._crit_edge.i48 ], [ %.sroa.22.1114, %bb.ac ], [ %.sroa.22.1114, %bb.k ]
  %.sroa.6.2 = phi ptr [ %i.ha, %bb.ab ], [ %.sroa.6.1115, %._crit_edge.i48 ], [ %.sroa.6.1115, %bb.ac ], [ %.sroa.6.1115, %bb.k ]
  %.not38 = icmp eq i32 %i.cm, 0
  br i1 %.not38, label %.loopexit, label %bb.j, !llvm.loop !69

bb.af:                                            ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hr = ashr i64 %2, 3
  %i.hs = and i64 %2, 7
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = zext i1 %i.ht to i64
  %i.hv = add nsw i64 %i.hr, %i.hu                ; 2 uses
  %i.hw = sdiv i64 %1, 8
  %i.hx = getelementptr inbounds i8, ptr %0, i64 %i.hw ; 2 uses
  %i.hy = sdiv i64 %3, 8
  %i.hz = getelementptr inbounds i8, ptr %4, i64 %i.hy ; 2 uses
  %i.ia = shl nsw i64 %i.hv, 3
  %.neg = sub i64 %2, %i.ia
  %i.ib = trunc i64 %.neg to i32
  %i.ic = add i32 %i.ib, 8
  %notmask = shl nsw i32 -1, %i.ic
  %i.id = add nsw i64 %i.hv, -1                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hz, ptr align 1 %i.hx, i64 %i.id, i1 false)
  %i.ie = getelementptr inbounds i8, ptr %i.hx, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !9
  %i.ig = getelementptr inbounds i8, ptr %i.hz, i64 %i.id ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !9
  %i.ii = trunc i32 %notmask to i8                ; 2 uses
  %i.ij = and i8 %i.ih, %i.ii
  %i.ik = xor i8 %i.ii, -1
  %i.il = and i8 %i.if, %i.ik
  %i.im = or i8 %i.ij, %i.il
  store i8 %i.im, ptr %i.ig, align 1, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %bb.ag
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal12InvertBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = or i64 %3, %1
  %i.d = and i64 %i.c, 7
  %or.cond.not = icmp eq i64 %i.d, 0
  br i1 %or.cond.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = srem i64 %1, 8                           ; 10 uses
  %i.f = sdiv i64 %1, 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 8 uses
  %i.h = lshr i64 %2, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 1) ; 5 uses
  %i.i = shl nuw i64 %spec.select.i, 6
  %i.j = sub i64 %2, %i.i                         ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %sext.i = shl i64 %i.j, 32
  %i.l = ashr i64 %sext.i, 35
  %i.m = and i64 %2, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i64
  %i.p = add nsw i64 %i.l, %i.o                   ; 2 uses
  %i.q = trunc nsw i64 %i.p to i32
  %.not.i = icmp ult i64 %2, 128                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.g, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

bb.d:                                             ; preds = %bb.b
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.g, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.s to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit: ; preds = %bb.c, %bb.e
  %.sroa.23.2 = phi i64 [ %i.r, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.e ] ; 5 uses
  %i.t = srem i64 %3, 8                           ; 5 uses
  %i.u = sdiv i64 %3, 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u ; 7 uses
  %i.w = trunc nsw i64 %i.t to i32                ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.w
  %i.x = xor i32 %notmask.i, -1
  %i.y = zext nneg i32 %i.x to i64                ; 8 uses
  %.not.i45 = icmp eq i64 %i.t, 0                 ; 3 uses
  br i1 %.not.i45, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.f

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread: ; preds = %bb.d
  %i.z = srem i64 %3, 8                           ; 3 uses
  %i.aa = sdiv i64 %3, 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  %i.ac = trunc nsw i64 %i.z to i32               ; 2 uses
  %notmask.i140 = shl nsw i32 -1, %i.ac
  %i.ad = xor i32 %notmask.i140, -1
  %i.ae = zext nneg i32 %i.ad to i64
  %.not.i45141 = icmp eq i64 %i.z, 0
  br label %.preheader

bb.f:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit
  %i.af = icmp sgt i64 %2, 63
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %i.v, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp sgt i64 %2, 0
  br i1 %i.ah, label %bb.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.v, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ai to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit, %bb.g, %bb.h
  %i.aj = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.w, %bb.g ], [ %i.w, %bb.h ] ; 4 uses
  %i.ak = phi i64 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.t, %bb.g ], [ %i.t, %bb.h ] ; 6 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.ag, %bb.g ], [ undef, %bb.h ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.al = sub nsw i64 64, %i.ak
  %i.am = xor i64 %i.y, -1                        ; 2 uses
  br i1 %.not.i45, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.an = add nsw i64 %i.h, -1
  %i.ao = icmp ne i64 %i.h, 0
  %umin.neg = sext i1 %i.ao to i64
  %i.ap = add nsw i64 %i.an, %umin.neg
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol
  %.040107.us.prol = phi i64 [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.6.0106.us.prol = phi ptr [ %i.av, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ] ; 2 uses
  %.sroa.675.0104.us.prol = phi ptr [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.23.0103.us.prol = phi i64 [ %i.at, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ 0, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %i.aq = add nsw i64 %.040107.us.prol, -1        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us.prol, i64 8 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = freeze i64 %i.as                        ; 4 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.at, i64 %.sroa.23.0103.us.prol, i64 %i.e)
  %i.au = xor i64 %.0.i.us.prol, -1
  store i64 %i.au, ptr %.sroa.6.0106.us.prol, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, !llvm.loop !70

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa182.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa181.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.at, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.av, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.040107.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0106.us.unr = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.av, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.675.0104.us.unr = phi ptr [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0103.us.unr = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.at, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.aw = icmp ult i64 %i.ap, 3
  br i1 %i.aw, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.ax = and i64 %.sroa.22.2, %i.y
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.040107.us = phi i64 [ %i.bn, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.040107.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0106.us = phi ptr [ %i.bs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0106.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 5 uses
  %.sroa.675.0104.us = phi ptr [ %i.bo, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.675.0104.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 4 uses
  %.sroa.23.0103.us = phi i64 [ %i.bq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0103.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us, i64 8
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = freeze i64 %i.az                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.ba, i64 %.sroa.23.0103.us, i64 %i.e)
  %i.bb = xor i64 %.0.i.us, -1
  store i64 %i.bb, ptr %.sroa.6.0106.us, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us, i64 16
  %i.be = load i64, ptr %i.bd, align 1
  %i.bf = freeze i64 %i.be                        ; 2 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bf, i64 %i.ba, i64 %i.e)
  %i.bg = xor i64 %.0.i.us.1, -1
  store i64 %i.bg, ptr %i.bc, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us, i64 24
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = freeze i64 %i.bj                        ; 2 uses
  %.0.i.us.2 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bk, i64 %i.bf, i64 %i.e)
  %i.bl = xor i64 %.0.i.us.2, -1
  store i64 %i.bl, ptr %i.bh, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 24
  %i.bn = add nsw i64 %.040107.us, -4             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us, i64 32 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 1
  %i.bq = freeze i64 %i.bp                        ; 3 uses
  %.0.i.us.3 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bq, i64 %i.bk, i64 %i.e)
  %i.br = xor i64 %.0.i.us.3, -1
  store i64 %i.br, ptr %i.bm, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 32 ; 2 uses
  %.not43.us.3 = icmp eq i64 %i.bn, 0
  br i1 %.not43.us.3, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !71

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, %bb.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.bt = phi i64 [ %i.ak, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ak, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.z, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.t, %bb.i ], [ %i.ak, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ak, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.bu = phi i32 [ %i.aj, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.aj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.w, %bb.i ], [ %i.aj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.aj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.bv = phi i64 [ %i.y, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.y, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ae, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.y, %bb.i ], [ %i.y, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.y, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i45145159 = phi i1 [ %.not.i45, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i45141, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ false, %bb.i ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.23.2, %bb.i ], [ %.lcssa181.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ci, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.675.0.lcssa = phi ptr [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bo, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.g, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.g, %bb.i ], [ %.lcssa182.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.22.32.insert.ext, %bb.i ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ab, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.v, %bb.i ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cn, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not44114 = icmp eq i64 %i.p, 0
  br i1 %.not44114, label %.loopexit, label %.lr.ph122

.lr.ph122:                                        ; preds = %.preheader
  %.not.i47 = icmp eq i64 %i.e, 0
  %i.bw = trunc nsw i64 %i.e to i32               ; 2 uses
  %i.bx = sub nsw i32 8, %i.bw
  %i.by = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bt
  %i.bz = sub nsw i32 8, %i.bu
  %i.ca = xor i64 %i.bv, -1                       ; 2 uses
  %i.cb = trunc nsw i64 %i.e to i32
  %i.cc = shl nuw nsw i32 1, %i.cb
  %i.cd = add nsw i64 %i.e, 1                     ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 8
  br label %bb.j

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.040107 = phi i64 [ %i.cf, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0106 = phi ptr [ %i.cn, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0105 = phi i64 [ %i.cs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.ax, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.675.0104 = phi ptr [ %i.cg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.0103 = phi i64 [ %i.ci, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.cf = add nsw i64 %.040107, -1                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.675.0104, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh:bb.a
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5: ; preds = %bb.w, %bb.v, %.lr.ph.i.5
  %.sroa.1319.1.i.5 = phi i64 [ %i.fg, %bb.w ], [ %i.fg, %bb.v ], [ %.sroa.1319.1.i.4, %.lr.ph.i.5 ]
  %.sroa.16.1.i.5 = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.fe, %.lr.ph.i.5 ] ; 2 uses
  %.sroa.9.2.i.5 = phi i8 [ %i.fj, %bb.w ], [ %.sroa.9.2.i.4, %bb.v ], [ %.sroa.9.2.i.4, %.lr.ph.i.5 ] ; 3 uses
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
  br i1 %i.fr, label %bb.x, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !12

bb.x:                                             ; preds = %.lr.ph.i.6
  %i.fs = icmp eq i32 %.sroa.15.0117, 8
  br i1 %i.fs, label %bb.y, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.ft = getelementptr i8, ptr %.sroa.675.1118, i64 %.sroa.1319.1.i.5
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6: ; preds = %bb.y, %bb.x, %.lr.ph.i.6
  %.sroa.16.1.i.6 = phi i64 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.fq, %.lr.ph.i.6 ] ; 2 uses
  %.sroa.9.2.i.6 = phi i8 [ %i.fv, %bb.y ], [ %.sroa.9.2.i.5, %bb.x ], [ %.sroa.9.2.i.5, %.lr.ph.i.6 ]
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
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.675.1118, i64 1 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1             ; 2 uses
  %.sroa.23.40.extract.trunc = trunc i64 %.sroa.23.1115 to i8
  %i.gf = trunc i64 %.sroa.23.1115 to i32
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
  %.sroa.675.299 = phi ptr [ %i.gd, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.675.1118, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.15.197 = phi i32 [ %i.gm, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.23.393 = phi i64 [ %.sroa.23.40.insert.ext82, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.23.1115, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  br i1 %.not.i45145159, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = shl nuw nsw i32 %i.gv, %i.bu
  %i.gx = lshr i32 %i.gv, %i.bz
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.6.1120, i64 1 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = and i64 %.sroa.22.1119, %i.bv
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
  %.sroa.22.4 = phi i64 [ %i.hj, %bb.aa ], [ %.sroa.22.1119, %bb.z ]
  store i8 %.sink, ptr %.sroa.6.1120, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.6.1120, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i49:                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.hm = load i8, ptr %i.by, align 1, !tbaa !9
  %i.hn = load i8, ptr %.sroa.6.1120, align 1, !tbaa !9
  br label %.lr.ph.i51

._crit_edge.i54:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i54
  %i.ho = getelementptr inbounds i8, ptr %.sroa.6.1120, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.ho, align 1, !tbaa !9
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i51:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i49
  %.01537.i = phi i8 [ %i.ib, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.gs, %.lr.ph.preheader.i49 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.hu, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i49 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.hn, %.lr.ph.preheader.i49 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.hm, %.lr.ph.preheader.i49 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i49 ] ; 3 uses
  %i.hp = and i8 %.01537.i, 1
  %.not.i52 = icmp eq i8 %i.hp, 0
  %i.hq = xor i8 %.sroa.22.034.i, -1
  %i.hr = and i8 %.sroa.14.035.i, %i.hq
  %i.hs = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i52, i8 %i.hr, i8 %i.hs ; 3 uses
  %i.ht = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.hu = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.hv = icmp eq i8 %i.ht, 0
  br i1 %i.hv, label %bb.ad, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.ad:                                            ; preds = %.lr.ph.i51
  %i.hw = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.hx = getelementptr inbounds i8, ptr %.sroa.6.1120, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.hx, align 1, !tbaa !9
  %i.hy = icmp samesign ult i64 %i.hu, %wide.trip.count.i
  br i1 %i.hy, label %bb.ae, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.hz = getelementptr inbounds i8, ptr %.sroa.6.1120, i64 %i.hw
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.ae, %bb.ad, %.lr.ph.i51
  %.sroa.2930.1.i = phi i64 [ %i.hw, %bb.ae ], [ %i.hw, %bb.ad ], [ %.sroa.2930.033.i, %.lr.ph.i51 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.ae ], [ 1, %bb.ad ], [ %i.ht, %.lr.ph.i51 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.ia, %bb.ae ], [ %.sroa.14.1.i, %bb.ad ], [ %.sroa.14.1.i, %.lr.ph.i51 ] ; 2 uses
  %i.ib = lshr i8 %.01537.i, 1
  %exitcond.not.i53 = icmp eq i64 %i.hu, %wide.trip.count.i
  br i1 %exitcond.not.i53, label %._crit_edge.i54, label %.lr.ph.i51, !llvm.loop !0

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.k, %bb.ab, %._crit_edge.i54, %bb.ac
  %.sroa.675.298 = phi ptr [ %.sroa.675.299, %bb.ab ], [ %.sroa.675.1118, %._crit_edge.i54 ], [ %.sroa.675.1118, %bb.ac ], [ %.sroa.675.1118, %bb.k ]
  %.sroa.15.196 = phi i32 [ %.sroa.15.197, %bb.ab ], [ 0, %._crit_edge.i54 ], [ 0, %bb.ac ], [ 0, %bb.k ]
  %.sroa.23.392 = phi i64 [ %.sroa.23.393, %bb.ab ], [ %.sroa.23.1115, %._crit_edge.i54 ], [ %.sroa.23.1115, %bb.ac ], [ %.sroa.23.1115, %bb.k ]
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ab ], [ %.sroa.22.1119, %._crit_edge.i54 ], [ %.sroa.22.1119, %bb.ac ], [ %.sroa.22.1119, %bb.k ]
  %.sroa.6.2 = phi ptr [ %i.hl, %bb.ab ], [ %.sroa.6.1120, %._crit_edge.i54 ], [ %.sroa.6.1120, %bb.ac ], [ %.sroa.6.1120, %bb.k ]
  %.not44 = icmp eq i32 %i.cu, 0
  br i1 %.not44, label %.loopexit, label %bb.j, !llvm.loop !72

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
  %i.is = sub i64 %i.ir, %i.iq
  %diff.check = icmp ugt i64 %i.is, -32
  br i1 %diff.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check174 = icmp ult i64 %i.ig, 33
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.it = and i64 %i.io, 28
  %n.vec = and i64 %i.io, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load = load <16 x i8>, ptr %i.iu, align 1, !tbaa !9
  %wide.load175 = load <16 x i8>, ptr %i.iv, align 1, !tbaa !9
  %i.iw = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.ix = xor <16 x i8> %wide.load175, splat (i8 -1)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <16 x i8> %i.iw, ptr %i.iy, align 1, !tbaa !9
  store <16 x i8> %i.ix, ptr %i.iz, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ja = icmp eq i64 %index.next, %n.vec
  br i1 %i.ja, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.it, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec176 = and i64 %i.io, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next179, %vec.epilog.vector.body ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index177
  %wide.load178 = load <4 x i8>, ptr %i.jb, align 1, !tbaa !9
  %i.jc = xor <4 x i8> %wide.load178, splat (i8 -1)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index177
  store <4 x i8> %i.jc, ptr %i.jd, align 1, !tbaa !9
  %index.next179 = add nuw i64 %index177, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next179, %n.vec176
  br i1 %i.je, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n180 = icmp eq i64 %i.io, %n.vec176
  br i1 %cmp.n180, label %._crit_edge, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0123.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec176, %vec.epilog.middle.block ] ; 3 uses
  %i.jf = add nsw i64 %i.ic, %i.if                ; 2 uses
  %i.jg = add nsw i64 %i.jf, 3
  %i.jh = add nsw i64 %i.jf, -2
  %i.ji = sub nsw i64 %i.jh, %.0123.ph
  %xtraiter188 = and i64 %i.jg, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader, %.lr.ph124.prol
  %.0123.prol = phi i64 [ %i.jn, %.lr.ph124.prol ], [ %.0123.ph, %.lr.ph124.preheader ] ; 3 uses
  %prol.iter190 = phi i64 [ %prol.iter190.next, %.lr.ph124.prol ], [ 0, %.lr.ph124.preheader ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.0123.prol
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !9
  %i.jl = xor i8 %i.jk, -1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0123.prol
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !9
  %i.jn = add nuw nsw i64 %.0123.prol, 1          ; 2 uses
  %prol.iter190.next = add i64 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i64 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !75

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader
  %.0123.unr = phi i64 [ %.0123.ph, %.lr.ph124.preheader ], [ %i.jn, %.lr.ph124.prol ]
  %i.jo = icmp ult i64 %i.ji, 3
  br i1 %i.jo, label %._crit_edge, label %.lr.ph124

._crit_edge:                                      ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124, %middle.block, %vec.epilog.middle.block, %bb.ag
  %i.jp = getelementptr inbounds i8, ptr %i.ii, i64 %i.io
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !9
  %i.jr = getelementptr inbounds i8, ptr %i.ik, i64 %i.io ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !9
  %i.jt = trunc i32 %notmask to i8                ; 2 uses
  %i.ju = and i8 %i.js, %i.jt
  %.demorgan = or i8 %i.jq, %i.jt
  %i.jv = xor i8 %.demorgan, -1
  %i.jw = or i8 %i.ju, %i.jv
  store i8 %i.jw, ptr %i.jr, align 1, !tbaa !9
  br label %.loopexit

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
  %.0123 = phi i64 [ %i.kq, %.lr.ph124 ], [ %.0123.unr, %.lr.ph124.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.0123
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !9
  %i.jz = xor i8 %i.jy, -1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0123
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !9
  %i.kb = add nuw nsw i64 %.0123, 1               ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !9
  %i.ke = xor i8 %i.kd, -1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kb
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !9
  %i.kg = add nuw nsw i64 %.0123, 2               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !9
  %i.kj = xor i8 %i.ki, -1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kg
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !9
  %i.kl = add nuw nsw i64 %.0123, 3               ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !9
  %i.ko = xor i8 %i.kn, -1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kl
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !9
  %i.kq = add nuw nsw i64 %.0123, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kq, %i.io
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph124, !llvm.loop !76

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
  %.04858.i = phi i64 [ %i.bf, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.04957.i = phi i64 [ %spec.select.i, %bb.g ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.05056.i = phi i64 [ %i.bc, %bb.g ], [ %4, %.lr.ph.preheader.i ] ; 2 uses
  %.05155.i = phi i64 [ %i.bd, %bb.g ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %i.n = add nsw i64 %.05155.i, %1
  %i.o = srem i64 %i.n, 8                         ; 2 uses
  %i.p = trunc nsw i64 %i.o to i8
  %.not.i = icmp eq i64 %i.o, 0
  %i.q = select i1 %.not.i, i8 8, i8 %i.p         ; 2 uses
  %i.r = srem i64 %.05056.i, 8                    ; 2 uses
  %i.s = trunc nsw i64 %i.r to i8
  %i.t = sub nsw i8 8, %i.s                       ; 3 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = shl nuw nsw i32 255, %i.v                ; 3 uses
  %i.x = icmp samesign ult i64 %.05155.i, 9
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = add nsw i64 %i.r, %.05155.i              ; 2 uses
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
  %i.af = icmp eq i64 %.04957.i, 0
  %i.ag = zext nneg i8 %i.q to i32
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.ai
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.c, i64 %.04957.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i16, ptr %i.am, align 1
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  %spec.select.i62.5 = select i1 %.not21.i61.5, i8 %i.hw, i8 %i.ib ; 2 uses
  %i.ic = add nsw i64 %.sroa.16.1.i65.4, 1        ; 2 uses
  %i.id = icmp eq i64 %i.ic, 8
  br i1 %i.id, label %bb.ak, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5, !prof !12

bb.ak:                                            ; preds = %.lr.ph.i55.5
  %i.ie = add nsw i64 %.sroa.1319.1.i64.4, 1      ; 3 uses
  %i.if = icmp sgt i32 %.sroa.14.0154, 6
  br i1 %i.if, label %bb.al, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5, !prof !16

bb.al:                                            ; preds = %bb.ak
  %i.ig = getelementptr inbounds i8, ptr %.sroa.6.1155, i64 %i.ie
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5: ; preds = %bb.al, %bb.ak, %.lr.ph.i55.5
  %.sroa.1319.1.i64.5 = phi i64 [ %i.ie, %bb.al ], [ %i.ie, %bb.ak ], [ %.sroa.1319.1.i64.4, %.lr.ph.i55.5 ]
  %.sroa.16.1.i65.5 = phi i64 [ 0, %bb.al ], [ 0, %bb.ak ], [ %i.ic, %.lr.ph.i55.5 ] ; 2 uses
  %.sroa.9.2.i66.5 = phi i8 [ %i.ih, %bb.al ], [ %.sroa.9.2.i66.4, %bb.ak ], [ %.sroa.9.2.i66.4, %.lr.ph.i55.5 ] ; 3 uses
  %exitcond.not.i67.5 = icmp eq i32 %.sroa.14.0154, 6
  br i1 %exitcond.not.i67.5, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.6

.lr.ph.i55.6:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5
  %i.ii = lshr i8 %spec.select.i62.5, 1           ; 2 uses
  %i.ij = zext i8 %.sroa.9.2.i66.5 to i32
  %i.ik = trunc nsw i64 %.sroa.16.1.i65.5 to i32
  %i.il = shl nuw nsw i32 1, %i.ik
  %i.im = and i32 %i.il, %i.ij
  %.not21.i61.6 = icmp eq i32 %i.im, 0
  %i.in = or disjoint i8 %i.ii, -128
  %spec.select.i62.6 = select i1 %.not21.i61.6, i8 %i.ii, i8 %i.in ; 2 uses
  %i.io = add nsw i64 %.sroa.16.1.i65.5, 1        ; 2 uses
  %i.ip = icmp eq i64 %i.io, 8
  br i1 %i.ip, label %bb.am, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6, !prof !12

bb.am:                                            ; preds = %.lr.ph.i55.6
  %i.iq = icmp eq i32 %.sroa.14.0154, 8
  br i1 %i.iq, label %bb.an, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6, !prof !16

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr i8, ptr %.sroa.6.1155, i64 %.sroa.1319.1.i64.5
  %i.is = getelementptr i8, ptr %i.ir, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6: ; preds = %bb.an, %bb.am, %.lr.ph.i55.6
  %.sroa.16.1.i65.6 = phi i64 [ 0, %bb.an ], [ 0, %bb.am ], [ %i.io, %.lr.ph.i55.6 ] ; 2 uses
  %.sroa.9.2.i66.6 = phi i8 [ %i.it, %bb.an ], [ %.sroa.9.2.i66.5, %bb.am ], [ %.sroa.9.2.i66.5, %.lr.ph.i55.6 ]
  %exitcond.not.i67.6 = icmp eq i32 %.sroa.14.0154, 7
  br i1 %exitcond.not.i67.6, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.7

.lr.ph.i55.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6
  %i.iu = lshr i8 %spec.select.i62.6, 1           ; 2 uses
  %i.iv = zext i8 %.sroa.9.2.i66.6 to i32
  %i.iw = trunc nsw i64 %.sroa.16.1.i65.6 to i32
  %i.ix = shl nuw nsw i32 1, %i.iw
  %i.iy = and i32 %i.ix, %i.iv
  %.not21.i61.7 = icmp eq i32 %i.iy, 0
  %i.iz = or disjoint i8 %i.iu, -128
  %spec.select.i62.7 = select i1 %.not21.i61.7, i8 %i.iu, i8 %i.iz
  %i.ja = icmp eq i64 %.sroa.16.1.i65.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i68

bb.ao:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.6.1155, i64 1 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1             ; 2 uses
  %.sroa.21.40.extract.trunc = trunc i64 %.sroa.21.1153 to i8
  %i.jd = trunc i64 %.sroa.21.1153 to i32
  %i.je = and i32 %i.jd, 255
  %i.jf = lshr i32 %i.je, %i.bc
  %i.jg = zext i8 %i.jc to i32
  %i.jh = shl nuw nsw i32 %i.jg, %i.bd
  %i.ji = or i32 %i.jh, %i.jf
  %i.jj = trunc i32 %i.ji to i8
  %.2.i49 = select i1 %.not.i48, i8 %.sroa.21.40.extract.trunc, i8 %i.jj
  %.sroa.21.40.insert.ext77 = zext i8 %i.jc to i64
  %i.jk = add nsw i32 %.sroa.14.0154, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69: ; preds = %._crit_edge.i51, %bb.ao
  %.sroa.21.3 = phi i64 [ %.sroa.21.1153, %._crit_edge.i51 ], [ %.sroa.21.40.insert.ext77, %bb.ao ]
  %.sroa.14.1 = phi i32 [ 0, %._crit_edge.i51 ], [ %i.jk, %bb.ao ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.1155, %._crit_edge.i51 ], [ %i.jb, %bb.ao ]
  %.3.i50 = phi i8 [ %i.fx, %._crit_edge.i51 ], [ %.2.i49, %bb.ao ]
  %.not35 = icmp eq i8 %.3.i, %.3.i50
  br i1 %.not35, label %bb.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69..loopexit.loopexit132_crit_edge, !llvm.loop !103

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.6.ph = xor i1 %i.y, true
  br label %.loopexit

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69..loopexit.loopexit132_crit_edge: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69
  br label %.loopexit, !llvm.loop !103

.loopexit:                                        ; preds = %.lr.ph145, %bb.i, %.preheader, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69..loopexit.loopexit132_crit_edge, %.loopexit.loopexit, %bb.c, %bb.b
  %.6 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.6.ph, %.loopexit.loopexit ], [ true, %bb.i ], [ false, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69..loopexit.loopexit132_crit_edge ], [ true, %.preheader ], [ false, %.lr.ph145 ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll(ptr nofree noundef readonly %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 3 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond3.not = or i1 %i.a, %i.b
  br i1 %or.cond3.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %4)
  %i.e = icmp eq i64 %i.d, %4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.g = icmp eq i64 %i.f, %4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i1 [ %i.g, %bb.f ], [ %i.c, %bb.c ], [ %i.e, %bb.e ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsERKSt10shared_ptrINS_6BufferEElS5_ll(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !36, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.d, ptr %i.f, ptr null, !prof !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !27     ; 3 uses
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36, !range !37, !noundef !38
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ] ; 3 uses
  %i.q = icmp eq ptr %i.h, null                   ; 3 uses
  %i.r = icmp eq ptr %i.p, null                   ; 2 uses
  %or.cond.i = and i1 %i.q, %i.r
  br i1 %or.cond.i, label %_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %or.cond3.not.i = or i1 %i.q, %i.r
  br i1 %or.cond3.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef zeroext i1 @_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll(ptr noundef nonnull readonly %i.h, i64 noundef %1, ptr noundef nonnull readonly %i.p, i64 noundef %3, i64 noundef %4)
  br label %_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.q, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull readonly %i.h, i64 noundef %1, i64 noundef %4)
  %i.u = icmp eq i64 %i.t, %4
  br label %_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit

bb.j:                                             ; preds = %bb.h
  %i.v = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef readonly %i.p, i64 noundef %3, i64 noundef %4)
  %i.w = icmp eq i64 %i.v, %4
  br label %_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit

_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.j
  %.0.i = phi i1 [ %i.w, %bb.j ], [ %i.s, %bb.g ], [ %i.u, %bb.i ], [ true, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal9BitmapAndEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.c = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !115
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.c, ptr noundef %1), !noalias !115
  %i.d = load ptr, ptr %8, align 8, !tbaa !21, !noalias !115
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !22, !noalias !116
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !27, !noalias !116 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !115
  %i.j = load i8, ptr %i.i, align 1, !tbaa !36, !range !37, !noalias !115, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !37, !noalias !115
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false, !prof !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !115 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = select i1 %i.o, ptr %i.q, ptr null, !prof !16 ; 2 uses
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
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %i.z), !noalias !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i64 %6, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, %3                    ; 2 uses
  %i.ac = add nsw i64 %i.z, %5
  %i.ad = add nsw i64 %i.z, %7
  %i.ae = sub nuw nsw i64 %6, %i.z
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
  %i.av = sub i64 %i.au, %i.at
  %diff.check = icmp ugt i64 %i.av, -32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.aw, %i.at
  %diff.check11 = icmp ugt i64 %i.ax, -32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !tbaa !9, !noalias !115
  %wide.load13 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !9, !noalias !115
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !noalias !115
  %wide.load15 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !9, !noalias !115
  %i.bd = and <16 x i8> %wide.load14, %wide.load
  %i.be = and <16 x i8> %wide.load15, %wide.load13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !noalias !115
  store <16 x i8> %i.be, ptr %i.bg, align 1, !tbaa !9, !noalias !115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 %index17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !9, !noalias !115
  %wide.load19 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !9, !noalias !115
  %i.bk = and <4 x i8> %wide.load19, %wide.load18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index17
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !9, !noalias !115
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next20, %n.vec16
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.al, %n.vec16
  br i1 %cmp.n21, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %i.bn = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9, !noalias !115
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9, !noalias !115
  %i.bs = and i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9, !noalias !115
  %i.bu = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !112

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.016.i.i.i.ph, %i.bn
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !9, !noalias !115
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !9, !noalias !115
  %i.cb = and i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9, !noalias !115
  %i.cd = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cd
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !9, !noalias !115
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !9, !noalias !115
  %i.ci = and i8 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9, !noalias !115
  %i.ck = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ck
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9, !noalias !115
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !9, !noalias !115
  %i.cp = and i8 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9, !noalias !115
  %i.cr = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cr
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9, !noalias !115
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !9, !noalias !115
  %i.cw = and i8 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9, !noalias !115
  %i.cy = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cy, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !113

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !115
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !115
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cz, align 8, !tbaa !22, !alias.scope !115
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.da = load ptr, ptr %8, align 8, !tbaa !21, !noalias !115 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !39, !noalias !115 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.de, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !42
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !114
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !114
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.n ], [ %i.dr, %bb.o ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !115 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.dt = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.da, %bb.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !53, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !115
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
  %i.o = sub nuw nsw i64 %4, %i.j
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
  %i.af = sub i64 %i.ae, %i.ad
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ag, %i.ad
  %diff.check9 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load11 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load13 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = and <16 x i8> %wide.load12, %wide.load
  %i.ao = and <16 x i8> %wide.load13, %wide.load11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !9
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %index15
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %wide.load17 = load <4 x i8>, ptr %i.at, align 1, !tbaa !9
  %i.au = and <4 x i8> %wide.load17, %wide.load16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index15
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !9
  %index.next18 = add nuw i64 %index15, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.v, %n.vec14
  br i1 %cmp.n19, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %i.ax = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bc = and i8 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !119

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = sub i64 %.016.i.i.ph, %i.ax
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bl = and i8 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !9
  %i.bn = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bn
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.bs = and i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %i.bu = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bu
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.bz = and i8 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !9
  %i.cb = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cb
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cg = and i8 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !9
  %i.ci = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !120

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.c = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !132
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.c, ptr noundef %1), !noalias !132
  %i.d = load ptr, ptr %8, align 8, !tbaa !21, !noalias !132
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !22, !noalias !133
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !27, !noalias !133 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !132
  %i.j = load i8, ptr %i.i, align 1, !tbaa !36, !range !37, !noalias !132, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !37, !noalias !132
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false, !prof !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !132 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = select i1 %i.o, ptr %i.q, ptr null, !prof !16 ; 2 uses
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
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %i.z), !noalias !132
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i64 %6, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, %3                    ; 2 uses
  %i.ac = add nsw i64 %i.z, %5
  %i.ad = add nsw i64 %i.z, %7
  %i.ae = sub nuw nsw i64 %6, %i.z
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
  %i.av = sub i64 %i.au, %i.at
  %diff.check = icmp ugt i64 %i.av, -32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.aw, %i.at
  %diff.check11 = icmp ugt i64 %i.ax, -32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !tbaa !9, !noalias !132
  %wide.load13 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !9, !noalias !132
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !noalias !132
  %wide.load15 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !9, !noalias !132
  %i.bd = or <16 x i8> %wide.load14, %wide.load
  %i.be = or <16 x i8> %wide.load15, %wide.load13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !noalias !132
  store <16 x i8> %i.be, ptr %i.bg, align 1, !tbaa !9, !noalias !132
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 %index17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !9, !noalias !132
  %wide.load19 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !9, !noalias !132
  %i.bk = or <4 x i8> %wide.load19, %wide.load18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index17
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !9, !noalias !132
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next20, %n.vec16
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.al, %n.vec16
  br i1 %cmp.n21, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %i.bn = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9, !noalias !132
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9, !noalias !132
  %i.bs = or i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9, !noalias !132
  %i.bu = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !129

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.016.i.i.i.ph, %i.bn
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !9, !noalias !132
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !9, !noalias !132
  %i.cb = or i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9, !noalias !132
  %i.cd = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cd
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !9, !noalias !132
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !9, !noalias !132
  %i.ci = or i8 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9, !noalias !132
  %i.ck = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ck
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9, !noalias !132
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !9, !noalias !132
  %i.cp = or i8 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9, !noalias !132
  %i.cr = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cr
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9, !noalias !132
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !9, !noalias !132
  %i.cw = or i8 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9, !noalias !132
  %i.cy = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cy, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !130

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !132
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !132
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cz, align 8, !tbaa !22, !alias.scope !132
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.da = load ptr, ptr %8, align 8, !tbaa !21, !noalias !132 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !39, !noalias !132 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.de, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !42
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !131
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !131
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !132
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.n ], [ %i.dr, %bb.o ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !132 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.dt = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.da, %bb.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !53, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !132
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
  %i.o = sub nuw nsw i64 %4, %i.j
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
  %i.af = sub i64 %i.ae, %i.ad
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ag, %i.ad
  %diff.check9 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load11 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load13 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = or <16 x i8> %wide.load12, %wide.load
  %i.ao = or <16 x i8> %wide.load13, %wide.load11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !9
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %index15
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %wide.load17 = load <4 x i8>, ptr %i.at, align 1, !tbaa !9
  %i.au = or <4 x i8> %wide.load17, %wide.load16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index15
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !9
  %index.next18 = add nuw i64 %index15, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.v, %n.vec14
  br i1 %cmp.n19, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %i.ax = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bc = or i8 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !136

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = sub i64 %.016.i.i.ph, %i.ax
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bl = or i8 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !9
  %i.bn = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bn
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.bs = or i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %i.bu = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bu
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.bz = or i8 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !9
  %i.cb = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cb
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cg = or i8 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !9
  %i.ci = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !137

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.c = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !149
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.c, ptr noundef %1), !noalias !149
  %i.d = load ptr, ptr %8, align 8, !tbaa !21, !noalias !149
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !22, !noalias !150
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !27, !noalias !150 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !149
  %i.j = load i8, ptr %i.i, align 1, !tbaa !36, !range !37, !noalias !149, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !37, !noalias !149
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false, !prof !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !149 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = select i1 %i.o, ptr %i.q, ptr null, !prof !16 ; 2 uses
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
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %i.z), !noalias !149
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i64 %6, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, %3                    ; 2 uses
  %i.ac = add nsw i64 %i.z, %5
  %i.ad = add nsw i64 %i.z, %7
  %i.ae = sub nuw nsw i64 %6, %i.z
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
  %i.av = sub i64 %i.au, %i.at
  %diff.check = icmp ugt i64 %i.av, -32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.aw, %i.at
  %diff.check11 = icmp ugt i64 %i.ax, -32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !tbaa !9, !noalias !149
  %wide.load13 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !9, !noalias !149
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !noalias !149
  %wide.load15 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !9, !noalias !149
  %i.bd = xor <16 x i8> %wide.load14, %wide.load
  %i.be = xor <16 x i8> %wide.load15, %wide.load13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !noalias !149
  store <16 x i8> %i.be, ptr %i.bg, align 1, !tbaa !9, !noalias !149
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 %index17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !9, !noalias !149
  %wide.load19 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !9, !noalias !149
  %i.bk = xor <4 x i8> %wide.load19, %wide.load18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index17
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !9, !noalias !149
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next20, %n.vec16
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !145

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.al, %n.vec16
  br i1 %cmp.n21, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %i.bn = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9, !noalias !149
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9, !noalias !149
  %i.bs = xor i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9, !noalias !149
  %i.bu = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !146

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.016.i.i.i.ph, %i.bn
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !9, !noalias !149
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !9, !noalias !149
  %i.cb = xor i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9, !noalias !149
  %i.cd = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cd
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !9, !noalias !149
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !9, !noalias !149
  %i.ci = xor i8 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9, !noalias !149
  %i.ck = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ck
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9, !noalias !149
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !9, !noalias !149
  %i.cp = xor i8 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9, !noalias !149
  %i.cr = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cr
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9, !noalias !149
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !9, !noalias !149
  %i.cw = xor i8 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9, !noalias !149
  %i.cy = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cy, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !147

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !149
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !149
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cz, align 8, !tbaa !22, !alias.scope !149
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.da = load ptr, ptr %8, align 8, !tbaa !21, !noalias !149 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !39, !noalias !149 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.de, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !42
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !148
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !148
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !149
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.n ], [ %i.dr, %bb.o ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !149 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.dt = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.da, %bb.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !53, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !149
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
  %i.o = sub nuw nsw i64 %4, %i.j
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
  %i.af = sub i64 %i.ae, %i.ad
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ag, %i.ad
  %diff.check9 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load11 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load13 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = xor <16 x i8> %wide.load12, %wide.load
  %i.ao = xor <16 x i8> %wide.load13, %wide.load11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !9
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %index15
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %wide.load17 = load <4 x i8>, ptr %i.at, align 1, !tbaa !9
  %i.au = xor <4 x i8> %wide.load17, %wide.load16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index15
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !9
  %index.next18 = add nuw i64 %index15, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.v, %n.vec14
  br i1 %cmp.n19, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %i.ax = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bc = xor i8 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !153

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = sub i64 %.016.i.i.ph, %i.ax
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bl = xor i8 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !9
  %i.bn = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bn
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.bs = xor i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %i.bu = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bu
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.bz = xor i8 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !9
  %i.cb = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cb
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cg = xor i8 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !9
  %i.ci = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !154

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !162
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !162
  %i.b = load ptr, ptr %8, align 8, !tbaa !21, !noalias !162
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !22, !noalias !163
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !27, !noalias !163 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !162
  %i.i = load i8, ptr %i.h, align 1, !tbaa !36, !range !37, !noalias !162, !noundef !38
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !37, !noalias !162
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !162
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !16
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !162
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !162
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !22, !alias.scope !162
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39, !noalias !162 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !42
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !161
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !161
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !162
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !53, !range !37, !noundef !38
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !162
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
  %i.o = sub nuw nsw i64 %4, %i.j
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
  %i.af = sub i64 %i.ae, %i.ad
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ag, %i.ad
  %diff.check39 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load41 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load42 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load43 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = xor <16 x i8> %wide.load42, splat (i8 -1)
  %i.ao = xor <16 x i8> %wide.load43, splat (i8 -1)
  %i.ap = and <16 x i8> %wide.load, %i.an
  %i.aq = and <16 x i8> %wide.load41, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !9
  store <16 x i8> %i.aq, ptr %i.as, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %index45
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 %index45
  %wide.load46 = load <4 x i8>, ptr %i.au, align 1, !tbaa !9
  %wide.load47 = load <4 x i8>, ptr %i.av, align 1, !tbaa !9
  %i.aw = xor <4 x i8> %wide.load47, splat (i8 -1)
  %i.ax = and <4 x i8> %wide.load46, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index45
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !9
  %index.next48 = add nuw i64 %index45, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next48, %n.vec44
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !165

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.v, %n.vec44
  br i1 %cmp.n49, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ] ; 6 uses
  %i.ba = add nsw i64 %i.r, %i.u                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.ph
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.bf = xor i8 %i.be, -1
  %i.bg = and i8 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.ph
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !9
  %i.bi = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %i.bj = icmp eq i64 %i.ba, %.neg
  br i1 %i.bj, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bo = xor i8 %i.bn, -1
  %i.bp = and i8 %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !9
  %i.br = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.br
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bw = xor i8 %i.bv, -1
  %i.bx = and i8 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.br
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !9
  %i.bz = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bz, %i.v
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !166

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !174
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !174
  %i.b = load ptr, ptr %8, align 8, !tbaa !21, !noalias !174
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !22, !noalias !175
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !27, !noalias !175 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !174
  %i.i = load i8, ptr %i.h, align 1, !tbaa !36, !range !37, !noalias !174, !noundef !38
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !37, !noalias !174
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !174
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !16
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !174
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !174
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !22, !alias.scope !174
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !21, !noalias !174 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39, !noalias !174 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !42
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !173
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !173
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !174
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !174 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !53, !range !37, !noundef !38
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !174
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
  %i.o = sub nuw nsw i64 %4, %i.j
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
  %i.af = sub i64 %i.ae, %i.ad
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ag, %i.ad
  %diff.check39 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load41 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load42 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load43 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = xor <16 x i8> %wide.load42, splat (i8 -1)
  %i.ao = xor <16 x i8> %wide.load43, splat (i8 -1)
  %i.ap = or <16 x i8> %wide.load, %i.an
  %i.aq = or <16 x i8> %wide.load41, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !9
  store <16 x i8> %i.aq, ptr %i.as, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %index45
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 %index45
  %wide.load46 = load <4 x i8>, ptr %i.au, align 1, !tbaa !9
  %wide.load47 = load <4 x i8>, ptr %i.av, align 1, !tbaa !9
  %i.aw = xor <4 x i8> %wide.load47, splat (i8 -1)
  %i.ax = or <4 x i8> %wide.load46, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index45
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !9
  %index.next48 = add nuw i64 %index45, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next48, %n.vec44
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !177

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.v, %n.vec44
  br i1 %cmp.n49, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ] ; 6 uses
  %i.ba = add nsw i64 %i.r, %i.u                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.ph
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.bf = xor i8 %i.be, -1
  %i.bg = or i8 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.ph
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !9
  %i.bi = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %i.bj = icmp eq i64 %i.ba, %.neg
  br i1 %i.bj, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bo = xor i8 %i.bn, -1
  %i.bp = or i8 %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !9
  %i.br = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.br
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bw = xor i8 %i.bv, -1
  %i.bx = or i8 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.br
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !9
  %i.bz = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bz, %i.v
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !178

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
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !179
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_2
