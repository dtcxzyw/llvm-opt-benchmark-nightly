Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/bitmap_ops?download=true
inline.NumInlined: 402
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEEvPKhlllPh:bb.a
  %i.ew = or disjoint i8 %i.er, -128
  %spec.select.i46.6 = select i1 %.not21.i.6, i8 %i.er, i8 %i.ew ; 2 uses
  %i.ex = add nsw i64 %.sroa.16.1.i.5, 1          ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 8
  br i1 %i.ey, label %bb.x, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !17

bb.x:                                             ; preds = %.lr.ph.i.6
  %i.ez = icmp eq i32 %.sroa.15.0117, 8
  br i1 %i.ez, label %bb.y, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !19

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr i8, ptr %.sroa.674.1118, i64 %.sroa.1319.1.i.5
  %i.fb = getelementptr i8, ptr %i.fa, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6: ; preds = %bb.y, %bb.x, %.lr.ph.i.6
  %.sroa.16.1.i.6 = phi i64 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.ex, %.lr.ph.i.6 ] ; 2 uses
  %.sroa.9.2.i.6 = phi i8 [ %i.fc, %bb.y ], [ %.sroa.9.2.i.5, %bb.x ], [ %.sroa.9.2.i.5, %.lr.ph.i.6 ]
  %exitcond.not.i.6 = icmp eq i32 %.sroa.15.0117, 7
  br i1 %exitcond.not.i.6, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6
  %i.fd = lshr i8 %spec.select.i46.6, 1           ; 2 uses
  %i.fe = zext i8 %.sroa.9.2.i.6 to i32
  %i.ff = trunc nsw i64 %.sroa.16.1.i.6 to i32
  %i.fg = shl nuw nsw i32 1, %i.ff
  %i.fh = and i32 %i.fg, %i.fe
  %.not21.i.7 = icmp eq i32 %i.fh, 0
  %i.fi = or disjoint i8 %i.fd, -128
  %spec.select.i46.7 = select i1 %.not21.i.7, i8 %i.fd, i8 %i.fi
  %i.fj = icmp eq i64 %.sroa.16.1.i.6, 7          ; 0 uses
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread: ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.674.1118, i64 1 ; 2 uses
  %.0.copyload.i.i.i44 = load i8, ptr %i.fk, align 1 ; 2 uses
  %.sroa.23.40.extract.trunc = trunc i64 %.sroa.23.1115 to i8
  %i.fl = trunc i64 %.sroa.23.1115 to i32
  %i.fm = and i32 %i.fl, 255
  %i.fn = lshr i32 %i.fm, %i.bg
  %i.fo = zext i8 %.0.copyload.i.i.i44 to i32
  %i.fp = shl nuw nsw i32 %i.fo, %i.bh
  %i.fq = or i32 %i.fp, %i.fn
  %i.fr = trunc i32 %i.fq to i8
  %.2.i = select i1 %.not.i45, i8 %.sroa.23.40.extract.trunc, i8 %i.fr
  %.sroa.23.40.insert.ext81 = zext i8 %.0.copyload.i.i.i44 to i64
  %i.fs = add nsw i32 %.sroa.15.0117, -8
  br label %bb.z

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit: ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i46.lcssa = phi i8 [ %spec.select.i46, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i46.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i46.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i46.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i46.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i46.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i46.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i46.7, %.lr.ph.i.7 ]
  %i.ft = zext i8 %spec.select.i46.lcssa to i32
  %i.fu = sub nuw nsw i32 8, %.sroa.15.0117
  %i.fv = lshr i32 %i.ft, %i.fu
  %i.fw = trunc nuw i32 %i.fv to i8               ; 2 uses
  %i.fx = icmp eq i32 %.sroa.15.0117, 8
  br i1 %i.fx, label %bb.z, label %.lr.ph.preheader.i47

bb.z:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %.3.i99 = phi i8 [ %.2.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %i.fw, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ] ; 2 uses
  %.sroa.674.298 = phi ptr [ %i.fk, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.674.1118, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.15.196 = phi i32 [ %i.fs, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.23.392 = phi i64 [ %.sroa.23.40.insert.ext81, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.23.1115, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  br i1 %.not.i39142156, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = zext i8 %.3.i99 to i32                  ; 2 uses
  %i.fz = shl nuw nsw i32 %i.fy, %i.be
  %i.ga = lshr i32 %i.fy, %i.bj
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.6.1120, i64 1 ; 2 uses
  %.0.copyload.i.i.i53 = load i8, ptr %i.gb, align 1
  %i.gc = and i64 %.sroa.22.1119, %i.bf
  %i.gd = or i32 %i.fz, %i.ga
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = and i64 %i.ge, %i.bk
  %i.gg = or disjoint i64 %i.gf, %i.gc
  %i.gh = trunc i64 %i.gg to i8
  %i.gi = zext i8 %.0.copyload.i.i.i53 to i64
  %i.gj = and i64 %i.gi, %i.bk
  %i.gk = and i64 %i.bf, %i.ge
  %i.gl = or disjoint i64 %i.gj, %i.gk            ; 2 uses
  %i.gm = trunc i64 %i.gl to i8
  store i8 %i.gm, ptr %i.gb, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sink = phi i8 [ %i.gh, %bb.aa ], [ %.3.i99, %bb.z ]
  %.sroa.22.4 = phi i64 [ %i.gl, %bb.aa ], [ %.sroa.22.1119, %bb.z ]
  store i8 %.sink, ptr %.sroa.6.1120, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.6.1120, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i47:                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.go = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.gp = load i8, ptr %.sroa.6.1120, align 1, !tbaa !11
  br label %.lr.ph.i49

._crit_edge.i52:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i52
  %i.gq = getelementptr inbounds i8, ptr %.sroa.6.1120, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.gq, align 1, !tbaa !11
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i49:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i47
  %.01537.i = phi i8 [ %i.hd, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.fw, %.lr.ph.preheader.i47 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.gw, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i47 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.gp, %.lr.ph.preheader.i47 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.go, %.lr.ph.preheader.i47 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i47 ] ; 3 uses
  %i.gr = and i8 %.01537.i, 1
  %.not.i50 = icmp eq i8 %i.gr, 0
  %i.gs = xor i8 %.sroa.22.034.i, -1
  %i.gt = and i8 %.sroa.14.035.i, %i.gs
  %i.gu = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i50, i8 %i.gt, i8 %i.gu ; 3 uses
  %i.gv = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.gw = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.gx = icmp eq i8 %i.gv, 0
  br i1 %i.gx, label %bb.ad, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.ad:                                            ; preds = %.lr.ph.i49
  %i.gy = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %.sroa.6.1120, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.gz, align 1, !tbaa !11
  %i.ha = icmp samesign ult i64 %i.gw, %wide.trip.count.i
  br i1 %i.ha, label %bb.ae, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !19

bb.ae:                                            ; preds = %bb.ad
  %i.hb = getelementptr inbounds i8, ptr %.sroa.6.1120, i64 %i.gy
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.ae, %bb.ad, %.lr.ph.i49
  %.sroa.2930.1.i = phi i64 [ %i.gy, %bb.ae ], [ %i.gy, %bb.ad ], [ %.sroa.2930.033.i, %.lr.ph.i49 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.ae ], [ 1, %bb.ad ], [ %i.gv, %.lr.ph.i49 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.hc, %bb.ae ], [ %.sroa.14.1.i, %bb.ad ], [ %.sroa.14.1.i, %.lr.ph.i49 ] ; 2 uses
  %i.hd = lshr i8 %.01537.i, 1
  %exitcond.not.i51 = icmp eq i64 %i.gw, %wide.trip.count.i
  br i1 %exitcond.not.i51, label %._crit_edge.i52, label %.lr.ph.i49, !llvm.loop !1

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.k, %bb.ab, %._crit_edge.i52, %bb.ac
  %.sroa.674.297 = phi ptr [ %.sroa.674.298, %bb.ab ], [ %.sroa.674.1118, %._crit_edge.i52 ], [ %.sroa.674.1118, %bb.ac ], [ %.sroa.674.1118, %bb.k ]
  %.sroa.15.195 = phi i32 [ %.sroa.15.196, %bb.ab ], [ 0, %._crit_edge.i52 ], [ 0, %bb.ac ], [ 0, %bb.k ]
  %.sroa.23.391 = phi i64 [ %.sroa.23.392, %bb.ab ], [ %.sroa.23.1115, %._crit_edge.i52 ], [ %.sroa.23.1115, %bb.ac ], [ %.sroa.23.1115, %bb.k ]
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ab ], [ %.sroa.22.1119, %._crit_edge.i52 ], [ %.sroa.22.1119, %bb.ac ], [ %.sroa.22.1119, %bb.k ]
  %.sroa.6.2 = phi ptr [ %i.gn, %bb.ab ], [ %.sroa.6.1120, %._crit_edge.i52 ], [ %.sroa.6.1120, %bb.ac ], [ %.sroa.6.1120, %bb.k ]
  %.not38 = icmp eq i32 %i.cb, 0
  br i1 %.not38, label %.loopexit, label %bb.j, !llvm.loop !64

bb.af:                                            ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.he = ashr i64 %2, 3
  %i.hf = and i64 %2, 7
  %i.hg = icmp ne i64 %i.hf, 0
  %i.hh = zext i1 %i.hg to i64
  %i.hi = add nsw i64 %i.he, %i.hh                ; 2 uses
  %i.hj = sdiv i64 %1, 8
  %i.hk = getelementptr inbounds i8, ptr %0, i64 %i.hj ; 2 uses
  %i.hl = sdiv i64 %3, 8
  %i.hm = getelementptr inbounds i8, ptr %4, i64 %i.hl ; 2 uses
  %i.hn = shl nsw i64 %i.hi, 3
  %.neg = sub i64 %2, %i.hn
  %i.ho = trunc i64 %.neg to i32
  %i.hp = add i32 %i.ho, 8
  %notmask = shl nsw i32 -1, %i.hp
  %i.hq = add nsw i64 %i.hi, -1                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.hk, i64 %i.hq, i1 false)
  %i.hr = getelementptr inbounds i8, ptr %i.hk, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !11
  %i.ht = getelementptr inbounds i8, ptr %i.hm, i64 %i.hq ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !11
  %i.hv = trunc i32 %notmask to i8                ; 2 uses
  %i.hw = and i8 %i.hu, %i.hv
  %i.hx = xor i8 %i.hv, -1
  %i.hy = and i8 %i.hs, %i.hx
  %i.hz = or i8 %i.hw, %i.hy
  store i8 %i.hz, ptr %i.ht, align 1, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %bb.ag
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal12InvertBitmapEPKhllPhl(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %0 to i64
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
  %.0.copyload.i.i.i = load i64, ptr %i.g, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

bb.d:                                             ; preds = %bb.b
  %.not8.i = icmp eq i64 %2, 0
  br i1 %.not8.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i7.i = load i8, ptr %i.g, align 1
  %.sroa.23.40.insert.ext = zext i8 %.0.copyload.i.i7.i to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit: ; preds = %bb.c, %bb.e
  %.sroa.23.2 = phi i64 [ %.0.copyload.i.i.i, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.e ] ; 5 uses
  %i.r = srem i64 %3, 8                           ; 5 uses
  %i.s = sdiv i64 %3, 8
  %i.t = getelementptr inbounds i8, ptr %4, i64 %i.s ; 7 uses
  %i.u = trunc nsw i64 %i.r to i32                ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.u
  %i.v = xor i32 %notmask.i, -1
  %i.w = zext nneg i32 %i.v to i64                ; 8 uses
  %.not.i45 = icmp eq i64 %i.r, 0                 ; 3 uses
  br i1 %.not.i45, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.f

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread: ; preds = %bb.d
  %i.x = srem i64 %3, 8                           ; 3 uses
  %i.y = sdiv i64 %3, 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  %i.aa = trunc nsw i64 %i.x to i32               ; 2 uses
  %notmask.i145 = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask.i145, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %.not.i45146 = icmp eq i64 %i.x, 0
  br label %.preheader

bb.f:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit
  %i.ad = icmp sgt i64 %2, 63
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.0.copyload.i.i.i46 = load i64, ptr %i.t, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %2, 0
  br i1 %i.ae, label %bb.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.i:                                             ; preds = %bb.h
  %.0.copyload.i.i6.i = load i8, ptr %i.t, align 1
  %.sroa.22.32.insert.ext = zext i8 %.0.copyload.i.i6.i to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit, %bb.g, %bb.h
  %i.af = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.u, %bb.g ], [ %i.u, %bb.h ] ; 4 uses
  %i.ag = phi i64 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.r, %bb.g ], [ %i.r, %bb.h ] ; 6 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %.0.copyload.i.i.i46, %bb.g ], [ undef, %bb.h ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ah = sub nsw i64 64, %i.ag
  %i.ai = xor i64 %i.w, -1                        ; 2 uses
  br i1 %.not.i45, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.aj = add nsw i64 %i.h, -1
  %i.ak = icmp ne i64 %i.h, 0
  %umin.neg = sext i1 %i.ak to i64
  %i.al = add nsw i64 %i.aj, %umin.neg
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol
  %.040112.us.prol = phi i64 [ %i.am, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.6.0111.us.prol = phi ptr [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ] ; 2 uses
  %.sroa.680.0109.us.prol = phi ptr [ %i.an, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.23.0108.us.prol = phi i64 [ %i.ao, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ 0, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %i.am = add nsw i64 %.040112.us.prol, -1        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.680.0109.us.prol, i64 8 ; 4 uses
  %.0.copyload.i.i.i47.us.prol = load i64, ptr %i.an, align 1
  %i.ao = freeze i64 %.0.copyload.i.i.i47.us.prol ; 4 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.ao, i64 %.sroa.23.0108.us.prol, i64 %i.e)
  %i.ap = xor i64 %.0.i.us.prol, -1
  store i64 %i.ap, ptr %.sroa.6.0111.us.prol, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.6.0111.us.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, !llvm.loop !65

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa187.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.an, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa186.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ao, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.040112.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.am, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0111.us.unr = phi ptr [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.680.0109.us.unr = phi ptr [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.an, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0108.us.unr = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ao, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.ar = icmp ult i64 %i.al, 3
  br i1 %i.ar, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.as = and i64 %.sroa.22.2, %i.w
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.040112.us = phi i64 [ %i.bf, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.040112.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0111.us = phi ptr [ %i.bj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0111.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 5 uses
  %.sroa.680.0109.us = phi ptr [ %i.bg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.680.0109.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 4 uses
  %.sroa.23.0108.us = phi i64 [ %i.bh, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0108.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.680.0109.us, i64 8
  %.0.copyload.i.i.i47.us = load i64, ptr %i.at, align 1
  %i.au = freeze i64 %.0.copyload.i.i.i47.us      ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.au, i64 %.sroa.23.0108.us, i64 %i.e)
  %i.av = xor i64 %.0.i.us, -1
  store i64 %i.av, ptr %.sroa.6.0111.us, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.6.0111.us, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.680.0109.us, i64 16
  %.0.copyload.i.i.i47.us.1 = load i64, ptr %i.ax, align 1
  %i.ay = freeze i64 %.0.copyload.i.i.i47.us.1    ; 2 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.ay, i64 %i.au, i64 %i.e)
  %i.az = xor i64 %.0.i.us.1, -1
  store i64 %i.az, ptr %i.aw, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.0111.us, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.680.0109.us, i64 24
  %.0.copyload.i.i.i47.us.2 = load i64, ptr %i.bb, align 1
  %i.bc = freeze i64 %.0.copyload.i.i.i47.us.2    ; 2 uses
  %.0.i.us.2 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bc, i64 %i.ay, i64 %i.e)
  %i.bd = xor i64 %.0.i.us.2, -1
  store i64 %i.bd, ptr %i.ba, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.6.0111.us, i64 24
  %i.bf = add nsw i64 %.040112.us, -4             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.680.0109.us, i64 32 ; 3 uses
  %.0.copyload.i.i.i47.us.3 = load i64, ptr %i.bg, align 1
  %i.bh = freeze i64 %.0.copyload.i.i.i47.us.3    ; 3 uses
  %.0.i.us.3 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bh, i64 %i.bc, i64 %i.e)
  %i.bi = xor i64 %.0.i.us.3, -1
  store i64 %i.bi, ptr %i.be, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.6.0111.us, i64 32 ; 2 uses
  %.not43.us.3 = icmp eq i64 %i.bf, 0
  br i1 %.not43.us.3, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !66

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, %bb.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.bk = phi i64 [ %i.ag, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ag, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.x, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.r, %bb.i ], [ %i.ag, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ag, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.bl = phi i32 [ %i.af, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.af, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.aa, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.u, %bb.i ], [ %i.af, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.af, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.bm = phi i64 [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.w, %bb.i ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i45150164 = phi i1 [ %.not.i45, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i45146, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ false, %bb.i ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bh, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.23.2, %bb.i ], [ %.lcssa186.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.by, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.680.0.lcssa = phi ptr [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.g, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.g, %bb.i ], [ %.lcssa187.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.bx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.22.32.insert.ext, %bb.i ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ci, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.z, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.t, %bb.i ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not44119 = icmp eq i64 %i.p, 0
  br i1 %.not44119, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %.preheader
  %.not.i51 = icmp eq i64 %i.e, 0
  %i.bn = trunc nsw i64 %i.e to i32               ; 2 uses
  %i.bo = sub nsw i32 8, %i.bn
  %i.bp = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bk
  %i.bq = sub nsw i32 8, %i.bl
  %i.br = xor i64 %i.bm, -1                       ; 2 uses
  %i.bs = trunc nsw i64 %i.e to i32
  %i.bt = shl nuw nsw i32 1, %i.bs
  %i.bu = add nsw i64 %i.e, 1                     ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 8
  br label %bb.j

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.040112 = phi i64 [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0111 = phi ptr [ %i.cd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0110 = phi i64 [ %i.ch, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.as, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.680.0109 = phi ptr [ %i.bx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.0108 = phi i64 [ %i.by, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.bw = add nsw i64 %.040112, -1                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.680.0109, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEEvPKhlllPh:bb.a
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5: ; preds = %bb.w, %bb.v, %.lr.ph.i.5
  %.sroa.1319.1.i.5 = phi i64 [ %i.ev, %bb.w ], [ %i.ev, %bb.v ], [ %.sroa.1319.1.i.4, %.lr.ph.i.5 ]
  %.sroa.16.1.i.5 = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.et, %.lr.ph.i.5 ] ; 2 uses
  %.sroa.9.2.i.5 = phi i8 [ %i.ey, %bb.w ], [ %.sroa.9.2.i.4, %bb.v ], [ %.sroa.9.2.i.4, %.lr.ph.i.5 ] ; 3 uses
  %exitcond.not.i.5 = icmp eq i32 %.sroa.15.0122, 6
  br i1 %exitcond.not.i.5, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5
  %i.ez = lshr i8 %spec.select.i52.5, 1           ; 2 uses
  %i.fa = zext i8 %.sroa.9.2.i.5 to i32
  %i.fb = trunc nsw i64 %.sroa.16.1.i.5 to i32
  %i.fc = shl nuw nsw i32 1, %i.fb
  %i.fd = and i32 %i.fc, %i.fa
  %.not21.i.6 = icmp eq i32 %i.fd, 0
  %i.fe = or disjoint i8 %i.ez, -128
  %spec.select.i52.6 = select i1 %.not21.i.6, i8 %i.ez, i8 %i.fe ; 2 uses
  %i.ff = add nsw i64 %.sroa.16.1.i.5, 1          ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 8
  br i1 %i.fg, label %bb.x, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !17

bb.x:                                             ; preds = %.lr.ph.i.6
  %i.fh = icmp eq i32 %.sroa.15.0122, 8
  br i1 %i.fh, label %bb.y, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, !prof !19

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr i8, ptr %.sroa.680.1123, i64 %.sroa.1319.1.i.5
  %i.fj = getelementptr i8, ptr %i.fi, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6: ; preds = %bb.y, %bb.x, %.lr.ph.i.6
  %.sroa.16.1.i.6 = phi i64 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.ff, %.lr.ph.i.6 ] ; 2 uses
  %.sroa.9.2.i.6 = phi i8 [ %i.fk, %bb.y ], [ %.sroa.9.2.i.5, %bb.x ], [ %.sroa.9.2.i.5, %.lr.ph.i.6 ]
  %exitcond.not.i.6 = icmp eq i32 %.sroa.15.0122, 7
  br i1 %exitcond.not.i.6, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6
  %i.fl = lshr i8 %spec.select.i52.6, 1           ; 2 uses
  %i.fm = zext i8 %.sroa.9.2.i.6 to i32
  %i.fn = trunc nsw i64 %.sroa.16.1.i.6 to i32
  %i.fo = shl nuw nsw i32 1, %i.fn
  %i.fp = and i32 %i.fo, %i.fm
  %.not21.i.7 = icmp eq i32 %i.fp, 0
  %i.fq = or disjoint i8 %i.fl, -128
  %spec.select.i52.7 = select i1 %.not21.i.7, i8 %i.fl, i8 %i.fq
  %i.fr = icmp eq i64 %.sroa.16.1.i.6, 7          ; 0 uses
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread: ; preds = %bb.j
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.680.1123, i64 1 ; 2 uses
  %.0.copyload.i.i.i50 = load i8, ptr %i.fs, align 1 ; 2 uses
  %.sroa.23.40.extract.trunc = trunc i64 %.sroa.23.1120 to i8
  %i.ft = trunc i64 %.sroa.23.1120 to i32
  %i.fu = and i32 %i.ft, 255
  %i.fv = lshr i32 %i.fu, %i.bn
  %i.fw = zext i8 %.0.copyload.i.i.i50 to i32
  %i.fx = shl nuw nsw i32 %i.fw, %i.bo
  %i.fy = or i32 %i.fx, %i.fv
  %i.fz = trunc i32 %i.fy to i8
  %.2.i = select i1 %.not.i51, i8 %.sroa.23.40.extract.trunc, i8 %i.fz
  %.sroa.23.40.insert.ext87 = zext i8 %.0.copyload.i.i.i50 to i64
  %i.ga = add nsw i32 %.sroa.15.0122, -8
  %i.gb = xor i8 %.2.i, -1
  br label %bb.z

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit: ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i52.lcssa = phi i8 [ %spec.select.i52, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i52.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i52.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i52.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i52.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i52.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i52.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i52.7, %.lr.ph.i.7 ]
  %i.gc = zext i8 %spec.select.i52.lcssa to i32
  %i.gd = sub nuw nsw i32 8, %.sroa.15.0122
  %i.ge = lshr i32 %i.gc, %i.gd
  %i.gf = trunc nuw i32 %i.ge to i8
  %i.gg = xor i8 %i.gf, -1                        ; 2 uses
  %i.gh = icmp eq i32 %.sroa.15.0122, 8
  br i1 %i.gh, label %bb.z, label %.lr.ph.preheader.i53

bb.z:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.gi = phi i8 [ %i.gb, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %i.gg, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ] ; 2 uses
  %.sroa.680.2104 = phi ptr [ %i.fs, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.680.1123, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.15.1102 = phi i32 [ %i.ga, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.23.398 = phi i64 [ %.sroa.23.40.insert.ext87, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.23.1120, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  br i1 %.not.i45150164, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = zext i8 %i.gi to i32                    ; 2 uses
  %i.gk = shl nuw nsw i32 %i.gj, %i.bl
  %i.gl = lshr i32 %i.gj, %i.bq
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.6.1125, i64 1 ; 2 uses
  %.0.copyload.i.i.i59 = load i8, ptr %i.gm, align 1
  %i.gn = and i64 %.sroa.22.1124, %i.bm
  %i.go = or i32 %i.gk, %i.gl
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = and i64 %i.gp, %i.br
  %i.gr = or disjoint i64 %i.gq, %i.gn
  %i.gs = trunc i64 %i.gr to i8
  %i.gt = zext i8 %.0.copyload.i.i.i59 to i64
  %i.gu = and i64 %i.gt, %i.br
  %i.gv = and i64 %i.bm, %i.gp
  %i.gw = or disjoint i64 %i.gu, %i.gv            ; 2 uses
  %i.gx = trunc i64 %i.gw to i8
  store i8 %i.gx, ptr %i.gm, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sink = phi i8 [ %i.gs, %bb.aa ], [ %i.gi, %bb.z ]
  %.sroa.22.4 = phi i64 [ %i.gw, %bb.aa ], [ %.sroa.22.1124, %bb.z ]
  store i8 %.sink, ptr %.sroa.6.1125, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.6.1125, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i53:                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.gz = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.ha = load i8, ptr %.sroa.6.1125, align 1, !tbaa !11
  br label %.lr.ph.i55

._crit_edge.i58:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i58
  %i.hb = getelementptr inbounds i8, ptr %.sroa.6.1125, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.hb, align 1, !tbaa !11
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i55:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i53
  %.01537.i = phi i8 [ %i.ho, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.gg, %.lr.ph.preheader.i53 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.hh, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i53 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.ha, %.lr.ph.preheader.i53 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.gz, %.lr.ph.preheader.i53 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i53 ] ; 3 uses
  %i.hc = and i8 %.01537.i, 1
  %.not.i56 = icmp eq i8 %i.hc, 0
  %i.hd = xor i8 %.sroa.22.034.i, -1
  %i.he = and i8 %.sroa.14.035.i, %i.hd
  %i.hf = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i56, i8 %i.he, i8 %i.hf ; 3 uses
  %i.hg = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.hh = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.hi = icmp eq i8 %i.hg, 0
  br i1 %i.hi, label %bb.ad, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.ad:                                            ; preds = %.lr.ph.i55
  %i.hj = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.hk = getelementptr inbounds i8, ptr %.sroa.6.1125, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.hk, align 1, !tbaa !11
  %i.hl = icmp samesign ult i64 %i.hh, %wide.trip.count.i
  br i1 %i.hl, label %bb.ae, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !19

bb.ae:                                            ; preds = %bb.ad
  %i.hm = getelementptr inbounds i8, ptr %.sroa.6.1125, i64 %i.hj
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.ae, %bb.ad, %.lr.ph.i55
  %.sroa.2930.1.i = phi i64 [ %i.hj, %bb.ae ], [ %i.hj, %bb.ad ], [ %.sroa.2930.033.i, %.lr.ph.i55 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.ae ], [ 1, %bb.ad ], [ %i.hg, %.lr.ph.i55 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.hn, %bb.ae ], [ %.sroa.14.1.i, %bb.ad ], [ %.sroa.14.1.i, %.lr.ph.i55 ] ; 2 uses
  %i.ho = lshr i8 %.01537.i, 1
  %exitcond.not.i57 = icmp eq i64 %i.hh, %wide.trip.count.i
  br i1 %exitcond.not.i57, label %._crit_edge.i58, label %.lr.ph.i55, !llvm.loop !1

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.k, %bb.ab, %._crit_edge.i58, %bb.ac
  %.sroa.680.2103 = phi ptr [ %.sroa.680.2104, %bb.ab ], [ %.sroa.680.1123, %._crit_edge.i58 ], [ %.sroa.680.1123, %bb.ac ], [ %.sroa.680.1123, %bb.k ]
  %.sroa.15.1101 = phi i32 [ %.sroa.15.1102, %bb.ab ], [ 0, %._crit_edge.i58 ], [ 0, %bb.ac ], [ 0, %bb.k ]
  %.sroa.23.397 = phi i64 [ %.sroa.23.398, %bb.ab ], [ %.sroa.23.1120, %._crit_edge.i58 ], [ %.sroa.23.1120, %bb.ac ], [ %.sroa.23.1120, %bb.k ]
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ab ], [ %.sroa.22.1124, %._crit_edge.i58 ], [ %.sroa.22.1124, %bb.ac ], [ %.sroa.22.1124, %bb.k ]
  %.sroa.6.2 = phi ptr [ %i.gy, %bb.ab ], [ %.sroa.6.1125, %._crit_edge.i58 ], [ %.sroa.6.1125, %bb.ac ], [ %.sroa.6.1125, %bb.k ]
  %.not44 = icmp eq i32 %i.cj, 0
  br i1 %.not44, label %.loopexit, label %bb.j, !llvm.loop !67

bb.af:                                            ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hp = ashr i64 %2, 3                          ; 2 uses
  %i.hq = and i64 %2, 7
  %i.hr = icmp ne i64 %i.hq, 0
  %i.hs = zext i1 %i.hr to i64                    ; 2 uses
  %i.ht = add nsw i64 %i.hp, %i.hs                ; 5 uses
  %i.hu = sdiv i64 %1, 8                          ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %0, i64 %i.hu ; 8 uses
  %i.hw = sdiv i64 %3, 8                          ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %4, i64 %i.hw ; 8 uses
  %i.hy = shl nsw i64 %i.ht, 3
  %.neg = sub i64 %2, %i.hy
  %i.hz = trunc i64 %.neg to i32
  %i.ia = add i32 %i.hz, 8
  %notmask = shl nsw i32 -1, %i.ia
  %i.ib = add nsw i64 %i.ht, -1                   ; 8 uses
  %i.ic = icmp sgt i64 %i.ht, 1
  br i1 %i.ic, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.ag
  %min.iters.check = icmp ult i64 %i.ht, 5
  br i1 %min.iters.check, label %.lr.ph129.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.id = add i64 %i.hu, %i.b
  %i.ie = add i64 %i.hw, %i.a
  %i.if = sub i64 %i.id, %i.ie
  %diff.check = icmp ugt i64 %i.if, -32
  br i1 %diff.check, label %.lr.ph129.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check179 = icmp ult i64 %i.ht, 33
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ig = and i64 %i.ib, 28
  %n.vec = and i64 %i.ib, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %wide.load = load <16 x i8>, ptr %i.ih, align 1, !tbaa !11
  %wide.load180 = load <16 x i8>, ptr %i.ii, align 1, !tbaa !11
  %i.ij = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.ik = xor <16 x i8> %wide.load180, splat (i8 -1)
  %i.il = getelementptr inbounds nuw i8, ptr %i.hx, i64 %index ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <16 x i8> %i.ij, ptr %i.il, align 1, !tbaa !11
  store <16 x i8> %i.ik, ptr %i.im, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ib, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ig, 0
  br i1 %min.epilog.iters.check, label %.lr.ph129.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec181 = and i64 %i.ib, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index182 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hv, i64 %index182
  %wide.load183 = load <4 x i8>, ptr %i.io, align 1, !tbaa !11
  %i.ip = xor <4 x i8> %wide.load183, splat (i8 -1)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hx, i64 %index182
  store <4 x i8> %i.ip, ptr %i.iq, align 1, !tbaa !11
  %index.next184 = add nuw i64 %index182, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next184, %n.vec181
  br i1 %i.ir, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n185 = icmp eq i64 %i.ib, %n.vec181
  br i1 %cmp.n185, label %._crit_edge, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0128.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec181, %vec.epilog.middle.block ] ; 3 uses
  %i.is = add nsw i64 %i.hp, %i.hs                ; 2 uses
  %i.it = add nsw i64 %i.is, 3
  %i.iu = add nsw i64 %i.is, -2
  %i.iv = sub nsw i64 %i.iu, %.0128.ph
  %xtraiter193 = and i64 %i.it, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph129.prol.loopexit, label %.lr.ph129.prol

.lr.ph129.prol:                                   ; preds = %.lr.ph129.preheader, %.lr.ph129.prol
  %.0128.prol = phi i64 [ %i.ja, %.lr.ph129.prol ], [ %.0128.ph, %.lr.ph129.preheader ] ; 3 uses
  %prol.iter195 = phi i64 [ %prol.iter195.next, %.lr.ph129.prol ], [ 0, %.lr.ph129.preheader ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.0128.prol
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !11
  %i.iy = xor i8 %i.ix, -1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.0128.prol
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !11
  %i.ja = add nuw nsw i64 %.0128.prol, 1          ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.lr.ph129.prol.loopexit, label %.lr.ph129.prol, !llvm.loop !70

.lr.ph129.prol.loopexit:                          ; preds = %.lr.ph129.prol, %.lr.ph129.preheader
  %.0128.unr = phi i64 [ %.0128.ph, %.lr.ph129.preheader ], [ %i.ja, %.lr.ph129.prol ]
  %i.jb = icmp ult i64 %i.iv, 3
  br i1 %i.jb, label %._crit_edge, label %.lr.ph129

._crit_edge:                                      ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129, %middle.block, %vec.epilog.middle.block, %bb.ag
  %i.jc = getelementptr inbounds i8, ptr %i.hv, i64 %i.ib
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !11
  %i.je = getelementptr inbounds i8, ptr %i.hx, i64 %i.ib ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !11
  %i.jg = trunc i32 %notmask to i8                ; 2 uses
  %i.jh = and i8 %i.jf, %i.jg
  %.demorgan = or i8 %i.jd, %i.jg
  %i.ji = xor i8 %.demorgan, -1
  %i.jj = or i8 %i.jh, %i.ji
  store i8 %i.jj, ptr %i.je, align 1, !tbaa !11
  br label %.loopexit

.lr.ph129:                                        ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129
  %.0128 = phi i64 [ %i.kd, %.lr.ph129 ], [ %.0128.unr, %.lr.ph129.prol.loopexit ] ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.0128
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !11
  %i.jm = xor i8 %i.jl, -1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.0128
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !11
  %i.jo = add nuw nsw i64 %.0128, 1               ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !11
  %i.jr = xor i8 %i.jq, -1
  %i.js = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jo
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !11
  %i.jt = add nuw nsw i64 %.0128, 2               ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !11
  %i.jw = xor i8 %i.jv, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jt
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !11
  %i.jy = add nuw nsw i64 %.0128, 3               ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !11
  %i.kb = xor i8 %i.ka, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jy
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !11
  %i.kd = add nuw nsw i64 %.0128, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kd, %i.ib
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph129, !llvm.loop !71

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal13ReverseBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = sdiv i64 %4, 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh.exit

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
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !11
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.ai
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.c, i64 %.04957.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i16, ptr %i.am, align 1
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll:bb.a
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !39, !range !40, !noundef !41
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.d, ptr %i.f, ptr null, !prof !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !29     ; 3 uses
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39, !range !40, !noundef !41
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !19
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
define void @_ZN5arrow8internal9BitmapAndEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !111
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !111
  %i.b = load ptr, ptr %8, align 8, !tbaa !24, !noalias !111
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !49, !noalias !112
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !29, !noalias !112 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !111
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !40, !noalias !111, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !40, !noalias !111
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !111
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !19
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !111
  store ptr null, ptr %0, align 8, !tbaa !24, !alias.scope !111
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !49, !alias.scope !111
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !24, !noalias !111
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30, !noalias !111 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !44
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !110
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !110
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11, !noalias !111
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !17

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !24, !noalias !111
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !48

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #5 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 12 uses
  %i.e = sdiv i64 %5, 8
  %i.f = srem i64 %1, 8                           ; 9 uses
  %i.g = sdiv i64 %1, 8
  %i.h = icmp eq i64 %i.d, %i.f
  %i.i = srem i64 %3, 8                           ; 9 uses
  %i.j = sdiv i64 %3, 8
  %i.k = icmp eq i64 %i.d, %i.i
  %or.cond = and i1 %i.h, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %4, %i.d                     ; 2 uses
  %i.m = ashr i64 %i.l, 3                         ; 2 uses
  %i.n = and i64 %i.l, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64                      ; 2 uses
  %i.q = add nsw i64 %i.m, %i.p                   ; 9 uses
  %i.r = sdiv i64 %1, 8                           ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 7 uses
  %i.t = sdiv i64 %3, 8                           ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t ; 7 uses
  %i.v = sdiv i64 %5, 8                           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %6, i64 %i.v ; 7 uses
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_andEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.r, %i.a
  %i.z = add i64 %i.v, %i.b                       ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.aa, -32
  %i.ab = add i64 %i.t, %i.c
  %i.ac = sub i64 %i.ab, %i.z
  %diff.check97 = icmp ugt i64 %i.ac, -32
  %conflict.rdx = or i1 %diff.check, %diff.check97
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.q, 28
  %n.vec = and i64 %i.q, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !11
  %wide.load99 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load100 = load <16 x i8>, ptr %i.af, align 1, !tbaa !11
  %wide.load101 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !11
  %i.ai = and <16 x i8> %wide.load100, %wide.load
  %i.aj = and <16 x i8> %wide.load101, %wide.load99
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %i.ai, ptr %i.ak, align 1, !tbaa !11
  store <16 x i8> %i.aj, ptr %i.al, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_andEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.q, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %index103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.an, align 1, !tbaa !11
  %wide.load105 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !11
  %i.ap = and <4 x i8> %wide.load105, %wide.load104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %index103
  store <4 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !11
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.q, %n.vec102
  br i1 %cmp.n107, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_andEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 3 uses
  %i.as = add nsw i64 %i.m, %i.p                  ; 2 uses
  %xtraiter120 = and i64 %i.as, 3                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.az, %.lr.ph.i.prol ], [ %.016.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i.prol
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i.prol
  %i.av = load i8, ptr %i.at, align 1, !tbaa !11
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !11
  %i.ax = and i8 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !11
  %i.az = add nuw nsw i64 %.016.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !115

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.az, %.lr.ph.i.prol ]
  %i.ba = sub i64 %.016.i.ph, %i.as
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_andEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.cd, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bg = and i8 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !11
  %i.bi = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bn = and i8 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !11
  %i.bp = add nuw nsw i64 %.016.i, 2              ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bu = and i8 %i.bt, %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bp
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !11
  %i.bw = add nuw nsw i64 %.016.i, 3              ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bw
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !11
  %i.cb = and i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bw
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !11
  %i.cd = add nuw nsw i64 %.016.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cd, %i.q
  br i1 %exitcond.not.i.3, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_andEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !116

bb.c:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.g ; 9 uses
  %i.cf = lshr i64 %4, 6                          ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cf, i64 1) ; 5 uses
  %i.cg = shl nuw i64 %spec.select.i.i, 6
  %i.ch = sub i64 %4, %i.cg                       ; 2 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %sext.i.i = shl i64 %i.ch, 32
  %i.cj = ashr i64 %sext.i.i, 35
  %i.ck = and i64 %4, 7
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add nsw i64 %i.cj, %i.cm                ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  %.not.i.i = icmp ult i64 %4, 128                ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp eq i64 %4, 0
  br i1 %.not8.i.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.thread.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i: ; preds = %bb.d
  %.0.copyload.i.i7.i.i = load i8, ptr %i.ce, align 1
  %.sroa.23.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i.i to i64 ; 2 uses
  %i.cp = sdiv i64 %3, 8
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %i.cp ; 3 uses
  %.0.copyload.i.i7.i17.i = load i8, ptr %i.cq, align 1
  %.sroa.21.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i17.i to i64 ; 2 uses
  %i.cr = sdiv i64 %5, 8
  %i.cs = getelementptr inbounds i8, ptr %6, i64 %i.cr ; 2 uses
  %i.ct = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.ct
  %i.cu = xor i32 %notmask.i.i, -1
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %.not.i19.i = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i, label %.preheader.i, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread: ; preds = %bb.c
  %.0.copyload.i.i.i.i = load i64, ptr %i.ce, align 1 ; 3 uses
  %i.cw = sdiv i64 %3, 8
  %i.cx = getelementptr inbounds i8, ptr %2, i64 %i.cw ; 4 uses
  %.0.copyload.i.i.i15.i = load i64, ptr %i.cx, align 1 ; 3 uses
  %i.cy = sdiv i64 %5, 8
  %i.cz = getelementptr inbounds i8, ptr %6, i64 %i.cy ; 4 uses
  %i.da = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i58 = shl nsw i32 -1, %i.da
  %i.db = xor i32 %notmask.i.i58, -1
  %i.dc = zext nneg i32 %i.db to i64              ; 3 uses
  %.not.i19.i59 = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i59, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader, label %bb.e

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread
  %i.dd = add nsw i64 %i.cf, -1
  %i.de = icmp ne i64 %i.cf, 0
  %umin.neg.neg = zext i1 %i.de to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader
  %i.df = add nsw i64 %spec.select.i.i, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %.0.copyload.i.i.i21.us.i.prol = load i64, ptr %i.dg, align 1
  %i.dh = freeze i64 %.0.copyload.i.i.i21.us.i.prol ; 3 uses
  %.0.i.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.dh, i64 %.0.copyload.i.i.i.i, i64 %i.f)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %.0.copyload.i.i.i22.us.i.prol = load i64, ptr %i.di, align 1
  %i.dj = freeze i64 %.0.copyload.i.i.i22.us.i.prol ; 3 uses
  %.0.i23.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.dj, i64 %.0.copyload.i.i.i15.i, i64 %i.i)
  %i.dk = and i64 %.0.i23.us.i.prol, %.0.i.us.i.prol
  store i64 %i.dk, ptr %i.cz, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh:bb.a
  %i.nv = or disjoint i64 %i.nu, %i.nr
  %i.nw = trunc i64 %i.nv to i8
  %i.nx = zext i8 %.0.copyload.i.i.i58.i to i64
  %i.ny = and i64 %i.nx, %i.ew
  %i.nz = and i64 %i.ep, %i.nt
  %i.oa = or disjoint i64 %i.ny, %i.nz            ; 2 uses
  %i.ob = trunc i64 %i.oa to i8
  store i8 %i.ob, ptr %i.nq, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink.i = phi i8 [ %i.nw, %bb.aq ], [ %i.nl, %bb.ap ]
  %.sroa.22.4.i = phi i64 [ %i.oa, %bb.aq ], [ %.sroa.22.1138.i, %bb.ap ]
  store i8 %.sink.i, ptr %.sroa.6.1139.i, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.6.1139.i, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit51.i
  %i.od = sext i32 %.0110.i to i64
  %i.oe = icmp sgt i32 %.0110.i, 0
  br i1 %i.oe, label %.lr.ph.preheader.i52.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

.lr.ph.preheader.i52.i:                           ; preds = %bb.as
  %i.of = load i8, ptr %i.eu, align 1, !tbaa !11
  %i.og = load i8, ptr %.sroa.6.1139.i, align 1, !tbaa !11
  %wide.trip.count.i53.i = zext nneg i32 %.0110.i to i64
  br label %.lr.ph.i54.i

._crit_edge.i57.i:                                ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i
  %.not.i.not.i.i = icmp eq i8 %.sroa.22.1.i.i, 1
  br i1 %.not.i.not.i.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i57.i
  %i.oh = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %.sroa.2930.1.i.i
  store i8 %.sroa.14.2.i.i, ptr %i.oh, align 1, !tbaa !11
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

.lr.ph.i54.i:                                     ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i, %.lr.ph.preheader.i52.i
  %.01537.i.i = phi i8 [ %i.ou, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.nl, %.lr.ph.preheader.i52.i ] ; 2 uses
  %.sroa.6.036.i.i = phi i64 [ %i.on, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ 0, %.lr.ph.preheader.i52.i ]
  %.sroa.14.035.i.i = phi i8 [ %.sroa.14.2.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.og, %.lr.ph.preheader.i52.i ] ; 2 uses
  %.sroa.22.034.i.i = phi i8 [ %.sroa.22.1.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.of, %.lr.ph.preheader.i52.i ] ; 3 uses
  %.sroa.2930.033.i.i = phi i64 [ %.sroa.2930.1.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ 0, %.lr.ph.preheader.i52.i ] ; 3 uses
  %i.oi = and i8 %.01537.i.i, 1
  %.not.i55.i = icmp eq i8 %i.oi, 0
  %i.oj = xor i8 %.sroa.22.034.i.i, -1
  %i.ok = and i8 %.sroa.14.035.i.i, %i.oj
  %i.ol = or i8 %.sroa.22.034.i.i, %.sroa.14.035.i.i
  %.sroa.14.1.i.i = select i1 %.not.i55.i, i8 %i.ok, i8 %i.ol ; 3 uses
  %i.om = shl i8 %.sroa.22.034.i.i, 1             ; 2 uses
  %i.on = add nuw nsw i64 %.sroa.6.036.i.i, 1     ; 3 uses
  %i.oo = icmp eq i8 %i.om, 0
  br i1 %i.oo, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i

bb.au:                                            ; preds = %.lr.ph.i54.i
  %i.op = add nsw i64 %.sroa.2930.033.i.i, 1      ; 3 uses
  %i.oq = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %.sroa.2930.033.i.i
  store i8 %.sroa.14.1.i.i, ptr %i.oq, align 1, !tbaa !11
  %i.or = icmp slt i64 %i.on, %i.od
  br i1 %i.or, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i, !prof !19

bb.av:                                            ; preds = %bb.au
  %i.os = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %i.op
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i: ; preds = %bb.av, %bb.au, %.lr.ph.i54.i
  %.sroa.2930.1.i.i = phi i64 [ %i.op, %bb.av ], [ %i.op, %bb.au ], [ %.sroa.2930.033.i.i, %.lr.ph.i54.i ] ; 2 uses
  %.sroa.22.1.i.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.om, %.lr.ph.i54.i ] ; 2 uses
  %.sroa.14.2.i.i = phi i8 [ %i.ot, %bb.av ], [ %.sroa.14.1.i.i, %bb.au ], [ %.sroa.14.1.i.i, %.lr.ph.i54.i ] ; 2 uses
  %i.ou = lshr i8 %.01537.i.i, 1
  %exitcond.not.i56.i = icmp eq i64 %i.on, %wide.trip.count.i53.i
  br i1 %exitcond.not.i56.i, label %._crit_edge.i57.i, label %.lr.ph.i54.i, !llvm.loop !1

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i: ; preds = %bb.at, %._crit_edge.i57.i, %bb.as, %bb.ar
  %.sroa.22.5.i = phi i64 [ %.sroa.22.4.i, %bb.ar ], [ %.sroa.22.1138.i, %._crit_edge.i57.i ], [ %.sroa.22.1138.i, %bb.at ], [ %.sroa.22.1138.i, %bb.as ]
  %.sroa.6.2.i = phi ptr [ %i.oc, %bb.ar ], [ %.sroa.6.1139.i, %._crit_edge.i57.i ], [ %.sroa.6.1139.i, %bb.at ], [ %.sroa.6.1139.i, %bb.as ]
  %.not11.i = icmp eq i32 %i.fu, 0
  br i1 %.not11.i, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_andEEvPKhlS5_lPhll.exit, label %bb.i, !llvm.loop !118

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_andEEvPKhlS5_lPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal8BitmapOrEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !126
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !126
  %i.b = load ptr, ptr %8, align 8, !tbaa !24, !noalias !126
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !49, !noalias !127
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !29, !noalias !127 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !126
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !40, !noalias !126, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !40, !noalias !126
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !126
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !19
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !126
  store ptr null, ptr %0, align 8, !tbaa !24, !alias.scope !126
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !49, !alias.scope !126
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !24, !noalias !126
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30, !noalias !126 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !44
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !125
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !125
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11, !noalias !126
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !17

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !24, !noalias !126
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !48

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal8BitmapOrEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #5 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 12 uses
  %i.e = sdiv i64 %5, 8
  %i.f = srem i64 %1, 8                           ; 9 uses
  %i.g = sdiv i64 %1, 8
  %i.h = icmp eq i64 %i.d, %i.f
  %i.i = srem i64 %3, 8                           ; 9 uses
  %i.j = sdiv i64 %3, 8
  %i.k = icmp eq i64 %i.d, %i.i
  %or.cond = and i1 %i.h, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %4, %i.d                     ; 2 uses
  %i.m = ashr i64 %i.l, 3                         ; 2 uses
  %i.n = and i64 %i.l, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64                      ; 2 uses
  %i.q = add nsw i64 %i.m, %i.p                   ; 9 uses
  %i.r = sdiv i64 %1, 8                           ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 7 uses
  %i.t = sdiv i64 %3, 8                           ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t ; 7 uses
  %i.v = sdiv i64 %5, 8                           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %6, i64 %i.v ; 7 uses
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt6bit_orEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.r, %i.a
  %i.z = add i64 %i.v, %i.b                       ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.aa, -32
  %i.ab = add i64 %i.t, %i.c
  %i.ac = sub i64 %i.ab, %i.z
  %diff.check97 = icmp ugt i64 %i.ac, -32
  %conflict.rdx = or i1 %diff.check, %diff.check97
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.q, 28
  %n.vec = and i64 %i.q, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !11
  %wide.load99 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load100 = load <16 x i8>, ptr %i.af, align 1, !tbaa !11
  %wide.load101 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !11
  %i.ai = or <16 x i8> %wide.load100, %wide.load
  %i.aj = or <16 x i8> %wide.load101, %wide.load99
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %i.ai, ptr %i.ak, align 1, !tbaa !11
  store <16 x i8> %i.aj, ptr %i.al, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt6bit_orEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.q, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %index103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.an, align 1, !tbaa !11
  %wide.load105 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !11
  %i.ap = or <4 x i8> %wide.load105, %wide.load104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %index103
  store <4 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !11
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.q, %n.vec102
  br i1 %cmp.n107, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt6bit_orEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 3 uses
  %i.as = add nsw i64 %i.m, %i.p                  ; 2 uses
  %xtraiter120 = and i64 %i.as, 3                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.az, %.lr.ph.i.prol ], [ %.016.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i.prol
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i.prol
  %i.av = load i8, ptr %i.at, align 1, !tbaa !11
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !11
  %i.ax = or i8 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !11
  %i.az = add nuw nsw i64 %.016.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !130

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.az, %.lr.ph.i.prol ]
  %i.ba = sub i64 %.016.i.ph, %i.as
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt6bit_orEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.cd, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bg = or i8 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !11
  %i.bi = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bn = or i8 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !11
  %i.bp = add nuw nsw i64 %.016.i, 2              ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bu = or i8 %i.bt, %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bp
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !11
  %i.bw = add nuw nsw i64 %.016.i, 3              ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bw
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !11
  %i.cb = or i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bw
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !11
  %i.cd = add nuw nsw i64 %.016.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cd, %i.q
  br i1 %exitcond.not.i.3, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt6bit_orEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !131

bb.c:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.g ; 9 uses
  %i.cf = lshr i64 %4, 6                          ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cf, i64 1) ; 5 uses
  %i.cg = shl nuw i64 %spec.select.i.i, 6
  %i.ch = sub i64 %4, %i.cg                       ; 2 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %sext.i.i = shl i64 %i.ch, 32
  %i.cj = ashr i64 %sext.i.i, 35
  %i.ck = and i64 %4, 7
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add nsw i64 %i.cj, %i.cm                ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  %.not.i.i = icmp ult i64 %4, 128                ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp eq i64 %4, 0
  br i1 %.not8.i.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.thread.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i: ; preds = %bb.d
  %.0.copyload.i.i7.i.i = load i8, ptr %i.ce, align 1
  %.sroa.23.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i.i to i64 ; 2 uses
  %i.cp = sdiv i64 %3, 8
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %i.cp ; 3 uses
  %.0.copyload.i.i7.i17.i = load i8, ptr %i.cq, align 1
  %.sroa.21.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i17.i to i64 ; 2 uses
  %i.cr = sdiv i64 %5, 8
  %i.cs = getelementptr inbounds i8, ptr %6, i64 %i.cr ; 2 uses
  %i.ct = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.ct
  %i.cu = xor i32 %notmask.i.i, -1
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %.not.i19.i = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i, label %.preheader.i, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread: ; preds = %bb.c
  %.0.copyload.i.i.i.i = load i64, ptr %i.ce, align 1 ; 3 uses
  %i.cw = sdiv i64 %3, 8
  %i.cx = getelementptr inbounds i8, ptr %2, i64 %i.cw ; 4 uses
  %.0.copyload.i.i.i15.i = load i64, ptr %i.cx, align 1 ; 3 uses
  %i.cy = sdiv i64 %5, 8
  %i.cz = getelementptr inbounds i8, ptr %6, i64 %i.cy ; 4 uses
  %i.da = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i58 = shl nsw i32 -1, %i.da
  %i.db = xor i32 %notmask.i.i58, -1
  %i.dc = zext nneg i32 %i.db to i64              ; 3 uses
  %.not.i19.i59 = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i59, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader, label %bb.e

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread
  %i.dd = add nsw i64 %i.cf, -1
  %i.de = icmp ne i64 %i.cf, 0
  %umin.neg.neg = zext i1 %i.de to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader
  %i.df = add nsw i64 %spec.select.i.i, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %.0.copyload.i.i.i21.us.i.prol = load i64, ptr %i.dg, align 1
  %i.dh = freeze i64 %.0.copyload.i.i.i21.us.i.prol ; 3 uses
  %.0.i.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.dh, i64 %.0.copyload.i.i.i.i, i64 %i.f)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %.0.copyload.i.i.i22.us.i.prol = load i64, ptr %i.di, align 1
  %i.dj = freeze i64 %.0.copyload.i.i.i22.us.i.prol ; 3 uses
  %.0.i23.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.dj, i64 %.0.copyload.i.i.i15.i, i64 %i.i)
  %i.dk = or i64 %.0.i23.us.i.prol, %.0.i.us.i.prol
  store i64 %i.dk, ptr %i.cz, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh:bb.a
  %i.nv = or disjoint i64 %i.nu, %i.nr
  %i.nw = trunc i64 %i.nv to i8
  %i.nx = zext i8 %.0.copyload.i.i.i58.i to i64
  %i.ny = and i64 %i.nx, %i.ew
  %i.nz = and i64 %i.ep, %i.nt
  %i.oa = or disjoint i64 %i.ny, %i.nz            ; 2 uses
  %i.ob = trunc i64 %i.oa to i8
  store i8 %i.ob, ptr %i.nq, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink.i = phi i8 [ %i.nw, %bb.aq ], [ %i.nl, %bb.ap ]
  %.sroa.22.4.i = phi i64 [ %i.oa, %bb.aq ], [ %.sroa.22.1138.i, %bb.ap ]
  store i8 %.sink.i, ptr %.sroa.6.1139.i, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.6.1139.i, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit51.i
  %i.od = sext i32 %.0110.i to i64
  %i.oe = icmp sgt i32 %.0110.i, 0
  br i1 %i.oe, label %.lr.ph.preheader.i52.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

.lr.ph.preheader.i52.i:                           ; preds = %bb.as
  %i.of = load i8, ptr %i.eu, align 1, !tbaa !11
  %i.og = load i8, ptr %.sroa.6.1139.i, align 1, !tbaa !11
  %wide.trip.count.i53.i = zext nneg i32 %.0110.i to i64
  br label %.lr.ph.i54.i

._crit_edge.i57.i:                                ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i
  %.not.i.not.i.i = icmp eq i8 %.sroa.22.1.i.i, 1
  br i1 %.not.i.not.i.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i57.i
  %i.oh = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %.sroa.2930.1.i.i
  store i8 %.sroa.14.2.i.i, ptr %i.oh, align 1, !tbaa !11
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

.lr.ph.i54.i:                                     ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i, %.lr.ph.preheader.i52.i
  %.01537.i.i = phi i8 [ %i.ou, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.nl, %.lr.ph.preheader.i52.i ] ; 2 uses
  %.sroa.6.036.i.i = phi i64 [ %i.on, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ 0, %.lr.ph.preheader.i52.i ]
  %.sroa.14.035.i.i = phi i8 [ %.sroa.14.2.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.og, %.lr.ph.preheader.i52.i ] ; 2 uses
  %.sroa.22.034.i.i = phi i8 [ %.sroa.22.1.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.of, %.lr.ph.preheader.i52.i ] ; 3 uses
  %.sroa.2930.033.i.i = phi i64 [ %.sroa.2930.1.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ 0, %.lr.ph.preheader.i52.i ] ; 3 uses
  %i.oi = and i8 %.01537.i.i, 1
  %.not.i55.i = icmp eq i8 %i.oi, 0
  %i.oj = xor i8 %.sroa.22.034.i.i, -1
  %i.ok = and i8 %.sroa.14.035.i.i, %i.oj
  %i.ol = or i8 %.sroa.22.034.i.i, %.sroa.14.035.i.i
  %.sroa.14.1.i.i = select i1 %.not.i55.i, i8 %i.ok, i8 %i.ol ; 3 uses
  %i.om = shl i8 %.sroa.22.034.i.i, 1             ; 2 uses
  %i.on = add nuw nsw i64 %.sroa.6.036.i.i, 1     ; 3 uses
  %i.oo = icmp eq i8 %i.om, 0
  br i1 %i.oo, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i

bb.au:                                            ; preds = %.lr.ph.i54.i
  %i.op = add nsw i64 %.sroa.2930.033.i.i, 1      ; 3 uses
  %i.oq = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %.sroa.2930.033.i.i
  store i8 %.sroa.14.1.i.i, ptr %i.oq, align 1, !tbaa !11
  %i.or = icmp slt i64 %i.on, %i.od
  br i1 %i.or, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i, !prof !19

bb.av:                                            ; preds = %bb.au
  %i.os = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %i.op
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i: ; preds = %bb.av, %bb.au, %.lr.ph.i54.i
  %.sroa.2930.1.i.i = phi i64 [ %i.op, %bb.av ], [ %i.op, %bb.au ], [ %.sroa.2930.033.i.i, %.lr.ph.i54.i ] ; 2 uses
  %.sroa.22.1.i.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.om, %.lr.ph.i54.i ] ; 2 uses
  %.sroa.14.2.i.i = phi i8 [ %i.ot, %bb.av ], [ %.sroa.14.1.i.i, %bb.au ], [ %.sroa.14.1.i.i, %.lr.ph.i54.i ] ; 2 uses
  %i.ou = lshr i8 %.01537.i.i, 1
  %exitcond.not.i56.i = icmp eq i64 %i.on, %wide.trip.count.i53.i
  br i1 %exitcond.not.i56.i, label %._crit_edge.i57.i, label %.lr.ph.i54.i, !llvm.loop !1

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i: ; preds = %bb.at, %._crit_edge.i57.i, %bb.as, %bb.ar
  %.sroa.22.5.i = phi i64 [ %.sroa.22.4.i, %bb.ar ], [ %.sroa.22.1138.i, %._crit_edge.i57.i ], [ %.sroa.22.1138.i, %bb.at ], [ %.sroa.22.1138.i, %bb.as ]
  %.sroa.6.2.i = phi ptr [ %i.oc, %bb.ar ], [ %.sroa.6.1139.i, %._crit_edge.i57.i ], [ %.sroa.6.1139.i, %bb.at ], [ %.sroa.6.1139.i, %bb.as ]
  %.not11.i = icmp eq i32 %i.fu, 0
  br i1 %.not11.i, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt6bit_orEEvPKhlS5_lPhll.exit, label %bb.i, !llvm.loop !133

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt6bit_orEEvPKhlS5_lPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal9BitmapXorEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !141
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !141
  %i.b = load ptr, ptr %8, align 8, !tbaa !24, !noalias !141
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !49, !noalias !142
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !29, !noalias !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !141
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !40, !noalias !141, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !40, !noalias !141
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !141
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !19
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !141
  store ptr null, ptr %0, align 8, !tbaa !24, !alias.scope !141
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !49, !alias.scope !141
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !24, !noalias !141
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30, !noalias !141 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !44
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !140
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !140
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11, !noalias !141
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !17

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !24, !noalias !141
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !48

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !141
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal9BitmapXorEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #5 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 12 uses
  %i.e = sdiv i64 %5, 8
  %i.f = srem i64 %1, 8                           ; 9 uses
  %i.g = sdiv i64 %1, 8
  %i.h = icmp eq i64 %i.d, %i.f
  %i.i = srem i64 %3, 8                           ; 9 uses
  %i.j = sdiv i64 %3, 8
  %i.k = icmp eq i64 %i.d, %i.i
  %or.cond = and i1 %i.h, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %4, %i.d                     ; 2 uses
  %i.m = ashr i64 %i.l, 3                         ; 2 uses
  %i.n = and i64 %i.l, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64                      ; 2 uses
  %i.q = add nsw i64 %i.m, %i.p                   ; 9 uses
  %i.r = sdiv i64 %1, 8                           ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 7 uses
  %i.t = sdiv i64 %3, 8                           ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t ; 7 uses
  %i.v = sdiv i64 %5, 8                           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %6, i64 %i.v ; 7 uses
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.r, %i.a
  %i.z = add i64 %i.v, %i.b                       ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.aa, -32
  %i.ab = add i64 %i.t, %i.c
  %i.ac = sub i64 %i.ab, %i.z
  %diff.check97 = icmp ugt i64 %i.ac, -32
  %conflict.rdx = or i1 %diff.check, %diff.check97
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.q, 28
  %n.vec = and i64 %i.q, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !11
  %wide.load99 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load100 = load <16 x i8>, ptr %i.af, align 1, !tbaa !11
  %wide.load101 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !11
  %i.ai = xor <16 x i8> %wide.load100, %wide.load
  %i.aj = xor <16 x i8> %wide.load101, %wide.load99
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %i.ai, ptr %i.ak, align 1, !tbaa !11
  store <16 x i8> %i.aj, ptr %i.al, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.q, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %index103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.an, align 1, !tbaa !11
  %wide.load105 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !11
  %i.ap = xor <4 x i8> %wide.load105, %wide.load104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %index103
  store <4 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !11
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !144

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.q, %n.vec102
  br i1 %cmp.n107, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 3 uses
  %i.as = add nsw i64 %i.m, %i.p                  ; 2 uses
  %xtraiter120 = and i64 %i.as, 3                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.az, %.lr.ph.i.prol ], [ %.016.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i.prol
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i.prol
  %i.av = load i8, ptr %i.at, align 1, !tbaa !11
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !11
  %i.ax = xor i8 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !11
  %i.az = add nuw nsw i64 %.016.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !145

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.az, %.lr.ph.i.prol ]
  %i.ba = sub i64 %.016.i.ph, %i.as
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.cd, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bg = xor i8 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !11
  %i.bi = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bn = xor i8 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !11
  %i.bp = add nuw nsw i64 %.016.i, 2              ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bu = xor i8 %i.bt, %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bp
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !11
  %i.bw = add nuw nsw i64 %.016.i, 3              ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bw
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !11
  %i.cb = xor i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bw
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !11
  %i.cd = add nuw nsw i64 %.016.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cd, %i.q
  br i1 %exitcond.not.i.3, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !146

bb.c:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.g ; 9 uses
  %i.cf = lshr i64 %4, 6                          ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cf, i64 1) ; 5 uses
  %i.cg = shl nuw i64 %spec.select.i.i, 6
  %i.ch = sub i64 %4, %i.cg                       ; 2 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %sext.i.i = shl i64 %i.ch, 32
  %i.cj = ashr i64 %sext.i.i, 35
  %i.ck = and i64 %4, 7
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add nsw i64 %i.cj, %i.cm                ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  %.not.i.i = icmp ult i64 %4, 128                ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp eq i64 %4, 0
  br i1 %.not8.i.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.thread.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i: ; preds = %bb.d
  %.0.copyload.i.i7.i.i = load i8, ptr %i.ce, align 1
  %.sroa.23.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i.i to i64 ; 2 uses
  %i.cp = sdiv i64 %3, 8
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %i.cp ; 3 uses
  %.0.copyload.i.i7.i17.i = load i8, ptr %i.cq, align 1
  %.sroa.21.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i17.i to i64 ; 2 uses
  %i.cr = sdiv i64 %5, 8
  %i.cs = getelementptr inbounds i8, ptr %6, i64 %i.cr ; 2 uses
  %i.ct = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.ct
  %i.cu = xor i32 %notmask.i.i, -1
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %.not.i19.i = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i, label %.preheader.i, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread: ; preds = %bb.c
  %.0.copyload.i.i.i.i = load i64, ptr %i.ce, align 1 ; 3 uses
  %i.cw = sdiv i64 %3, 8
  %i.cx = getelementptr inbounds i8, ptr %2, i64 %i.cw ; 4 uses
  %.0.copyload.i.i.i15.i = load i64, ptr %i.cx, align 1 ; 3 uses
  %i.cy = sdiv i64 %5, 8
  %i.cz = getelementptr inbounds i8, ptr %6, i64 %i.cy ; 4 uses
  %i.da = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i58 = shl nsw i32 -1, %i.da
  %i.db = xor i32 %notmask.i.i58, -1
  %i.dc = zext nneg i32 %i.db to i64              ; 3 uses
  %.not.i19.i59 = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i59, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader, label %bb.e

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread
  %i.dd = add nsw i64 %i.cf, -1
  %i.de = icmp ne i64 %i.cf, 0
  %umin.neg.neg = zext i1 %i.de to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader
  %i.df = add nsw i64 %spec.select.i.i, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %.0.copyload.i.i.i21.us.i.prol = load i64, ptr %i.dg, align 1
  %i.dh = freeze i64 %.0.copyload.i.i.i21.us.i.prol ; 3 uses
  %.0.i.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.dh, i64 %.0.copyload.i.i.i.i, i64 %i.f)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %.0.copyload.i.i.i22.us.i.prol = load i64, ptr %i.di, align 1
  %i.dj = freeze i64 %.0.copyload.i.i.i22.us.i.prol ; 3 uses
  %.0.i23.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.dj, i64 %.0.copyload.i.i.i15.i, i64 %i.i)
  %i.dk = xor i64 %.0.i23.us.i.prol, %.0.i.us.i.prol
  store i64 %i.dk, ptr %i.cz, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh:bb.a
  %i.nv = or disjoint i64 %i.nu, %i.nr
  %i.nw = trunc i64 %i.nv to i8
  %i.nx = zext i8 %.0.copyload.i.i.i58.i to i64
  %i.ny = and i64 %i.nx, %i.ew
  %i.nz = and i64 %i.ep, %i.nt
  %i.oa = or disjoint i64 %i.ny, %i.nz            ; 2 uses
  %i.ob = trunc i64 %i.oa to i8
  store i8 %i.ob, ptr %i.nq, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink.i = phi i8 [ %i.nw, %bb.aq ], [ %i.nl, %bb.ap ]
  %.sroa.22.4.i = phi i64 [ %i.oa, %bb.aq ], [ %.sroa.22.1138.i, %bb.ap ]
  store i8 %.sink.i, ptr %.sroa.6.1139.i, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.6.1139.i, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit51.i
  %i.od = sext i32 %.0110.i to i64
  %i.oe = icmp sgt i32 %.0110.i, 0
  br i1 %i.oe, label %.lr.ph.preheader.i52.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

.lr.ph.preheader.i52.i:                           ; preds = %bb.as
  %i.of = load i8, ptr %i.eu, align 1, !tbaa !11
  %i.og = load i8, ptr %.sroa.6.1139.i, align 1, !tbaa !11
  %wide.trip.count.i53.i = zext nneg i32 %.0110.i to i64
  br label %.lr.ph.i54.i

._crit_edge.i57.i:                                ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i
  %.not.i.not.i.i = icmp eq i8 %.sroa.22.1.i.i, 1
  br i1 %.not.i.not.i.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i57.i
  %i.oh = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %.sroa.2930.1.i.i
  store i8 %.sroa.14.2.i.i, ptr %i.oh, align 1, !tbaa !11
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

.lr.ph.i54.i:                                     ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i, %.lr.ph.preheader.i52.i
  %.01537.i.i = phi i8 [ %i.ou, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.nl, %.lr.ph.preheader.i52.i ] ; 2 uses
  %.sroa.6.036.i.i = phi i64 [ %i.on, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ 0, %.lr.ph.preheader.i52.i ]
  %.sroa.14.035.i.i = phi i8 [ %.sroa.14.2.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.og, %.lr.ph.preheader.i52.i ] ; 2 uses
  %.sroa.22.034.i.i = phi i8 [ %.sroa.22.1.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.of, %.lr.ph.preheader.i52.i ] ; 3 uses
  %.sroa.2930.033.i.i = phi i64 [ %.sroa.2930.1.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ 0, %.lr.ph.preheader.i52.i ] ; 3 uses
  %i.oi = and i8 %.01537.i.i, 1
  %.not.i55.i = icmp eq i8 %i.oi, 0
  %i.oj = xor i8 %.sroa.22.034.i.i, -1
  %i.ok = and i8 %.sroa.14.035.i.i, %i.oj
  %i.ol = or i8 %.sroa.22.034.i.i, %.sroa.14.035.i.i
  %.sroa.14.1.i.i = select i1 %.not.i55.i, i8 %i.ok, i8 %i.ol ; 3 uses
  %i.om = shl i8 %.sroa.22.034.i.i, 1             ; 2 uses
  %i.on = add nuw nsw i64 %.sroa.6.036.i.i, 1     ; 3 uses
  %i.oo = icmp eq i8 %i.om, 0
  br i1 %i.oo, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i

bb.au:                                            ; preds = %.lr.ph.i54.i
  %i.op = add nsw i64 %.sroa.2930.033.i.i, 1      ; 3 uses
  %i.oq = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %.sroa.2930.033.i.i
  store i8 %.sroa.14.1.i.i, ptr %i.oq, align 1, !tbaa !11
  %i.or = icmp slt i64 %i.on, %i.od
  br i1 %i.or, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i, !prof !19

bb.av:                                            ; preds = %bb.au
  %i.os = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %i.op
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i: ; preds = %bb.av, %bb.au, %.lr.ph.i54.i
  %.sroa.2930.1.i.i = phi i64 [ %i.op, %bb.av ], [ %i.op, %bb.au ], [ %.sroa.2930.033.i.i, %.lr.ph.i54.i ] ; 2 uses
  %.sroa.22.1.i.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.om, %.lr.ph.i54.i ] ; 2 uses
  %.sroa.14.2.i.i = phi i8 [ %i.ot, %bb.av ], [ %.sroa.14.1.i.i, %bb.au ], [ %.sroa.14.1.i.i, %.lr.ph.i54.i ] ; 2 uses
  %i.ou = lshr i8 %.01537.i.i, 1
  %exitcond.not.i56.i = icmp eq i64 %i.on, %wide.trip.count.i53.i
  br i1 %exitcond.not.i56.i, label %._crit_edge.i57.i, label %.lr.ph.i54.i, !llvm.loop !1

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i: ; preds = %bb.at, %._crit_edge.i57.i, %bb.as, %bb.ar
  %.sroa.22.5.i = phi i64 [ %.sroa.22.4.i, %bb.ar ], [ %.sroa.22.1138.i, %._crit_edge.i57.i ], [ %.sroa.22.1138.i, %bb.at ], [ %.sroa.22.1138.i, %bb.as ]
  %.sroa.6.2.i = phi ptr [ %i.oc, %bb.ar ], [ %.sroa.6.1139.i, %._crit_edge.i57.i ], [ %.sroa.6.1139.i, %bb.at ], [ %.sroa.6.1139.i, %bb.as ]
  %.not11.i = icmp eq i32 %i.fu, 0
  br i1 %.not11.i, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll.exit, label %bb.i, !llvm.loop !148

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal12BitmapAndNotEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !156
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !156
  %i.b = load ptr, ptr %8, align 8, !tbaa !24, !noalias !156
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !49, !noalias !157
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !29, !noalias !157 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !156
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !40, !noalias !156, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !40, !noalias !156
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !156
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !19
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !156
  store ptr null, ptr %0, align 8, !tbaa !24, !alias.scope !156
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !49, !alias.scope !156
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !24, !noalias !156
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30, !noalias !156 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !44
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !155
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !155
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11, !noalias !156
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !17

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !24, !noalias !156
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !48

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !156
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal12BitmapAndNotEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #5 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 12 uses
  %i.e = sdiv i64 %5, 8
  %i.f = srem i64 %1, 8                           ; 9 uses
  %i.g = sdiv i64 %1, 8
  %i.h = icmp eq i64 %i.d, %i.f
  %i.i = srem i64 %3, 8                           ; 9 uses
  %i.j = sdiv i64 %3, 8
  %i.k = icmp eq i64 %i.d, %i.i
  %or.cond = and i1 %i.h, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %4, %i.d                     ; 2 uses
  %i.m = ashr i64 %i.l, 3                         ; 2 uses
  %i.n = and i64 %i.l, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64                      ; 2 uses
  %i.q = add nsw i64 %i.m, %i.p                   ; 9 uses
  %i.r = sdiv i64 %1, 8                           ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 5 uses
  %i.t = sdiv i64 %3, 8                           ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t ; 5 uses
  %i.v = sdiv i64 %5, 8                           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %6, i64 %i.v ; 5 uses
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.r, %i.a
  %i.z = add i64 %i.v, %i.b                       ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.aa, -32
  %i.ab = add i64 %i.t, %i.c
  %i.ac = sub i64 %i.ab, %i.z
  %diff.check97 = icmp ugt i64 %i.ac, -32
  %conflict.rdx = or i1 %diff.check, %diff.check97
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.q, 28
  %n.vec = and i64 %i.q, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !11
  %wide.load99 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load100 = load <16 x i8>, ptr %i.af, align 1, !tbaa !11
  %wide.load101 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !11
  %i.ai = xor <16 x i8> %wide.load100, splat (i8 -1)
  %i.aj = xor <16 x i8> %wide.load101, splat (i8 -1)
  %i.ak = and <16 x i8> %wide.load, %i.ai
  %i.al = and <16 x i8> %wide.load99, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <16 x i8> %i.ak, ptr %i.am, align 1, !tbaa !11
  store <16 x i8> %i.al, ptr %i.an, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.q, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %index103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !11
  %wide.load105 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !11
  %i.ar = xor <4 x i8> %wide.load105, splat (i8 -1)
  %i.as = and <4 x i8> %wide.load104, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 %index103
  store <4 x i8> %i.as, ptr %i.at, align 1, !tbaa !11
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.q, %n.vec102
  br i1 %cmp.n107, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 6 uses
  %i.av = add nsw i64 %i.m, %i.p                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter120 = and i64 %i.av, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i.ph
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.ba = xor i8 %i.az, -1
  %i.bb = and i8 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i.ph
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !11
  %i.bd = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = icmp eq i64 %i.av, %.neg
  br i1 %i.be, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bj = xor i8 %i.bi, -1
  %i.bk = and i8 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !11
  %i.bm = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bm
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.br = xor i8 %i.bq, -1
  %i.bs = and i8 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bm
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !11
  %i.bu = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bu, %i.q
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !160

bb.c:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.g ; 9 uses
  %i.bw = lshr i64 %4, 6                          ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bw, i64 1) ; 5 uses
  %i.bx = shl nuw i64 %spec.select.i.i, 6
  %i.by = sub i64 %4, %i.bx                       ; 2 uses
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %sext.i.i = shl i64 %i.by, 32
  %i.ca = ashr i64 %sext.i.i, 35
  %i.cb = and i64 %4, 7
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add nsw i64 %i.ca, %i.cd                ; 2 uses
  %i.cf = trunc nsw i64 %i.ce to i32
  %.not.i.i = icmp ult i64 %4, 128                ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp eq i64 %4, 0
  br i1 %.not8.i.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.thread.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i: ; preds = %bb.d
  %.0.copyload.i.i7.i.i = load i8, ptr %i.bv, align 1
  %.sroa.23.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i.i to i64 ; 2 uses
  %i.cg = sdiv i64 %3, 8
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg ; 3 uses
  %.0.copyload.i.i7.i17.i = load i8, ptr %i.ch, align 1
  %.sroa.21.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i17.i to i64 ; 2 uses
  %i.ci = sdiv i64 %5, 8
  %i.cj = getelementptr inbounds i8, ptr %6, i64 %i.ci ; 2 uses
  %i.ck = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.ck
  %i.cl = xor i32 %notmask.i.i, -1
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %.not.i19.i = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i, label %.preheader.i, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread: ; preds = %bb.c
  %.0.copyload.i.i.i.i = load i64, ptr %i.bv, align 1 ; 3 uses
  %i.cn = sdiv i64 %3, 8
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn ; 4 uses
  %.0.copyload.i.i.i15.i = load i64, ptr %i.co, align 1 ; 3 uses
  %i.cp = sdiv i64 %5, 8
  %i.cq = getelementptr inbounds i8, ptr %6, i64 %i.cp ; 4 uses
  %i.cr = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i58 = shl nsw i32 -1, %i.cr
  %i.cs = xor i32 %notmask.i.i58, -1
  %i.ct = zext nneg i32 %i.cs to i64              ; 3 uses
  %.not.i19.i59 = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i59, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader, label %bb.e

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread
  %i.cu = add nsw i64 %i.bw, -1
  %i.cv = icmp ne i64 %i.bw, 0
  %umin.neg.neg = zext i1 %i.cv to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader
  %i.cw = add nsw i64 %spec.select.i.i, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %.0.copyload.i.i.i21.us.i.prol = load i64, ptr %i.cx, align 1
  %i.cy = freeze i64 %.0.copyload.i.i.i21.us.i.prol ; 3 uses
  %.0.i.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.cy, i64 %.0.copyload.i.i.i.i, i64 %i.f)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %.0.copyload.i.i.i22.us.i.prol = load i64, ptr %i.cz, align 1
  %i.da = freeze i64 %.0.copyload.i.i.i22.us.i.prol ; 3 uses
  %.0.i23.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.da, i64 %.0.copyload.i.i.i15.i, i64 %i.i)
  %i.db = xor i64 %.0.i23.us.i.prol, -1
  %i.dc = and i64 %.0.i.us.i.prol, %i.db
  store i64 %i.dc, ptr %i.cq, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader
  %.lcssa119.unr.a = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.lcssa118.unr.a = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cy, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.lcssa117.unr.a = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.lcssa116.unr.a = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.da, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.lcssa115.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.dd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.010118.us.i.unr = phi i64 [ %spec.select.i.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.sroa.6.0117.us.i.unr = phi ptr [ %i.cq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.dd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.sroa.684.0115.us.i.unr = phi ptr [ %i.co, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.sroa.21.0114.us.i.unr = phi i64 [ %.0.copyload.i.i.i15.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.da, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.sroa.696.0113.us.i.unr = phi ptr [ %i.bv, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh:bb.a
  %i.nr = or disjoint i64 %i.nq, %i.nn
  %i.ns = trunc i64 %i.nr to i8
  %i.nt = zext i8 %.0.copyload.i.i.i58.i to i64
  %i.nu = and i64 %i.nt, %i.eq
  %i.nv = and i64 %i.ej, %i.np
  %i.nw = or disjoint i64 %i.nu, %i.nv            ; 2 uses
  %i.nx = trunc i64 %i.nw to i8
  store i8 %i.nx, ptr %i.nm, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink.i = phi i8 [ %i.ns, %bb.aq ], [ %i.nh, %bb.ap ]
  %.sroa.22.4.i = phi i64 [ %i.nw, %bb.aq ], [ %.sroa.22.1138.i, %bb.ap ]
  store i8 %.sink.i, ptr %.sroa.6.1139.i, align 1
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.6.1139.i, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit51.i
  %i.nz = sext i32 %.0110.i to i64
  %i.oa = icmp sgt i32 %.0110.i, 0
  br i1 %i.oa, label %.lr.ph.preheader.i52.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

.lr.ph.preheader.i52.i:                           ; preds = %bb.as
  %i.ob = load i8, ptr %i.eo, align 1, !tbaa !11
  %i.oc = load i8, ptr %.sroa.6.1139.i, align 1, !tbaa !11
  %wide.trip.count.i53.i = zext nneg i32 %.0110.i to i64
  br label %.lr.ph.i54.i

._crit_edge.i57.i:                                ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i
  %.not.i.not.i.i = icmp eq i8 %.sroa.22.1.i.i, 1
  br i1 %.not.i.not.i.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i57.i
  %i.od = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %.sroa.2930.1.i.i
  store i8 %.sroa.14.2.i.i, ptr %i.od, align 1, !tbaa !11
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i

.lr.ph.i54.i:                                     ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i, %.lr.ph.preheader.i52.i
  %.01537.i.i = phi i8 [ %i.oq, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.nh, %.lr.ph.preheader.i52.i ] ; 2 uses
  %.sroa.6.036.i.i = phi i64 [ %i.oj, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ 0, %.lr.ph.preheader.i52.i ]
  %.sroa.14.035.i.i = phi i8 [ %.sroa.14.2.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.oc, %.lr.ph.preheader.i52.i ] ; 2 uses
  %.sroa.22.034.i.i = phi i8 [ %.sroa.22.1.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ %i.ob, %.lr.ph.preheader.i52.i ] ; 3 uses
  %.sroa.2930.033.i.i = phi i64 [ %.sroa.2930.1.i.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i ], [ 0, %.lr.ph.preheader.i52.i ] ; 3 uses
  %i.oe = and i8 %.01537.i.i, 1
  %.not.i55.i = icmp eq i8 %i.oe, 0
  %i.of = xor i8 %.sroa.22.034.i.i, -1
  %i.og = and i8 %.sroa.14.035.i.i, %i.of
  %i.oh = or i8 %.sroa.22.034.i.i, %.sroa.14.035.i.i
  %.sroa.14.1.i.i = select i1 %.not.i55.i, i8 %i.og, i8 %i.oh ; 3 uses
  %i.oi = shl i8 %.sroa.22.034.i.i, 1             ; 2 uses
  %i.oj = add nuw nsw i64 %.sroa.6.036.i.i, 1     ; 3 uses
  %i.ok = icmp eq i8 %i.oi, 0
  br i1 %i.ok, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i

bb.au:                                            ; preds = %.lr.ph.i54.i
  %i.ol = add nsw i64 %.sroa.2930.033.i.i, 1      ; 3 uses
  %i.om = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %.sroa.2930.033.i.i
  store i8 %.sroa.14.1.i.i, ptr %i.om, align 1, !tbaa !11
  %i.on = icmp slt i64 %i.oj, %i.nz
  br i1 %i.on, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i, !prof !19

bb.av:                                            ; preds = %bb.au
  %i.oo = getelementptr inbounds i8, ptr %.sroa.6.1139.i, i64 %i.ol
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !11
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i.i: ; preds = %bb.av, %bb.au, %.lr.ph.i54.i
  %.sroa.2930.1.i.i = phi i64 [ %i.ol, %bb.av ], [ %i.ol, %bb.au ], [ %.sroa.2930.033.i.i, %.lr.ph.i54.i ] ; 2 uses
  %.sroa.22.1.i.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.oi, %.lr.ph.i54.i ] ; 2 uses
  %.sroa.14.2.i.i = phi i8 [ %i.op, %bb.av ], [ %.sroa.14.1.i.i, %bb.au ], [ %.sroa.14.1.i.i, %.lr.ph.i54.i ] ; 2 uses
  %i.oq = lshr i8 %.01537.i.i, 1
  %exitcond.not.i56.i = icmp eq i64 %i.oj, %wide.trip.count.i53.i
  br i1 %exitcond.not.i56.i, label %._crit_edge.i57.i, label %.lr.ph.i54.i, !llvm.loop !1

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i: ; preds = %bb.at, %._crit_edge.i57.i, %bb.as, %bb.ar
  %.sroa.22.5.i = phi i64 [ %.sroa.22.4.i, %bb.ar ], [ %.sroa.22.1138.i, %._crit_edge.i57.i ], [ %.sroa.22.1138.i, %bb.at ], [ %.sroa.22.1138.i, %bb.as ]
  %.sroa.6.2.i = phi ptr [ %i.ny, %bb.ar ], [ %.sroa.6.1139.i, %._crit_edge.i57.i ], [ %.sroa.6.1139.i, %bb.at ], [ %.sroa.6.1139.i, %bb.as ]
  %.not11.i = icmp eq i32 %i.fp, 0
  br i1 %.not11.i, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %bb.i, !llvm.loop !162

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11BitmapOrNotEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !170
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !170
  %i.b = load ptr, ptr %8, align 8, !tbaa !24, !noalias !170
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !49, !noalias !171
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !29, !noalias !171 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !170
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !40, !noalias !170, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !40, !noalias !170
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !170
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !19
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !170
  store ptr null, ptr %0, align 8, !tbaa !24, !alias.scope !170
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !49, !alias.scope !170
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !24, !noalias !170
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30, !noalias !170 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !44
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !169
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !169
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11, !noalias !170
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !17

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !24, !noalias !170
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !48

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !170
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal11BitmapOrNotEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #5 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 12 uses
  %i.e = sdiv i64 %5, 8
  %i.f = srem i64 %1, 8                           ; 9 uses
  %i.g = sdiv i64 %1, 8
  %i.h = icmp eq i64 %i.d, %i.f
  %i.i = srem i64 %3, 8                           ; 9 uses
  %i.j = sdiv i64 %3, 8
  %i.k = icmp eq i64 %i.d, %i.i
  %or.cond = and i1 %i.h, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %4, %i.d                     ; 2 uses
  %i.m = ashr i64 %i.l, 3                         ; 2 uses
  %i.n = and i64 %i.l, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64                      ; 2 uses
  %i.q = add nsw i64 %i.m, %i.p                   ; 9 uses
  %i.r = sdiv i64 %1, 8                           ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 5 uses
  %i.t = sdiv i64 %3, 8                           ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t ; 5 uses
  %i.v = sdiv i64 %5, 8                           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %6, i64 %i.v ; 5 uses
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.r, %i.a
  %i.z = add i64 %i.v, %i.b                       ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.aa, -32
  %i.ab = add i64 %i.t, %i.c
  %i.ac = sub i64 %i.ab, %i.z
  %diff.check97 = icmp ugt i64 %i.ac, -32
  %conflict.rdx = or i1 %diff.check, %diff.check97
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.q, 28
  %n.vec = and i64 %i.q, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !11
  %wide.load99 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load100 = load <16 x i8>, ptr %i.af, align 1, !tbaa !11
  %wide.load101 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !11
  %i.ai = xor <16 x i8> %wide.load100, splat (i8 -1)
  %i.aj = xor <16 x i8> %wide.load101, splat (i8 -1)
  %i.ak = or <16 x i8> %wide.load, %i.ai
  %i.al = or <16 x i8> %wide.load99, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <16 x i8> %i.ak, ptr %i.am, align 1, !tbaa !11
  store <16 x i8> %i.al, ptr %i.an, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.q, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %index103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !11
  %wide.load105 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !11
  %i.ar = xor <4 x i8> %wide.load105, splat (i8 -1)
  %i.as = or <4 x i8> %wide.load104, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 %index103
  store <4 x i8> %i.as, ptr %i.at, align 1, !tbaa !11
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !173

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.q, %n.vec102
  br i1 %cmp.n107, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 6 uses
  %i.av = add nsw i64 %i.m, %i.p                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter120 = and i64 %i.av, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i.ph
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.ba = xor i8 %i.az, -1
  %i.bb = or i8 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i.ph
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !11
  %i.bd = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = icmp eq i64 %i.av, %.neg
  br i1 %i.be, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bj = xor i8 %i.bi, -1
  %i.bk = or i8 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !11
  %i.bm = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bm
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.br = xor i8 %i.bq, -1
  %i.bs = or i8 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bm
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !11
  %i.bu = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bu, %i.q
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !174

bb.c:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.g ; 9 uses
  %i.bw = lshr i64 %4, 6                          ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bw, i64 1) ; 5 uses
  %i.bx = shl nuw i64 %spec.select.i.i, 6
  %i.by = sub i64 %4, %i.bx                       ; 2 uses
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %sext.i.i = shl i64 %i.by, 32
  %i.ca = ashr i64 %sext.i.i, 35
  %i.cb = and i64 %4, 7
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add nsw i64 %i.ca, %i.cd                ; 2 uses
  %i.cf = trunc nsw i64 %i.ce to i32
  %.not.i.i = icmp ult i64 %4, 128                ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp eq i64 %4, 0
  br i1 %.not8.i.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.thread.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i: ; preds = %bb.d
  %.0.copyload.i.i7.i.i = load i8, ptr %i.bv, align 1
  %.sroa.23.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i.i to i64 ; 2 uses
  %i.cg = sdiv i64 %3, 8
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg ; 3 uses
  %.0.copyload.i.i7.i17.i = load i8, ptr %i.ch, align 1
  %.sroa.21.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i17.i to i64 ; 2 uses
  %i.ci = sdiv i64 %5, 8
  %i.cj = getelementptr inbounds i8, ptr %6, i64 %i.ci ; 2 uses
  %i.ck = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.ck
  %i.cl = xor i32 %notmask.i.i, -1
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %.not.i19.i = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i, label %.preheader.i, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread: ; preds = %bb.c
  %.0.copyload.i.i.i.i = load i64, ptr %i.bv, align 1 ; 3 uses
  %i.cn = sdiv i64 %3, 8
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn ; 4 uses
  %.0.copyload.i.i.i15.i = load i64, ptr %i.co, align 1 ; 3 uses
  %i.cp = sdiv i64 %5, 8
  %i.cq = getelementptr inbounds i8, ptr %6, i64 %i.cp ; 4 uses
  %i.cr = trunc nsw i64 %i.d to i32               ; 2 uses
  %notmask.i.i58 = shl nsw i32 -1, %i.cr
  %i.cs = xor i32 %notmask.i.i58, -1
  %i.ct = zext nneg i32 %i.cs to i64              ; 3 uses
  %.not.i19.i59 = icmp eq i64 %i.d, 0
  br i1 %.not.i19.i59, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader, label %bb.e

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit18.i.thread
  %i.cu = add nsw i64 %i.bw, -1
  %i.cv = icmp ne i64 %i.bw, 0
  %umin.neg.neg = zext i1 %i.cv to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader
  %i.cw = add nsw i64 %spec.select.i.i, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %.0.copyload.i.i.i21.us.i.prol = load i64, ptr %i.cx, align 1
  %i.cy = freeze i64 %.0.copyload.i.i.i21.us.i.prol ; 3 uses
  %.0.i.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.cy, i64 %.0.copyload.i.i.i.i, i64 %i.f)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %.0.copyload.i.i.i22.us.i.prol = load i64, ptr %i.cz, align 1
  %i.da = freeze i64 %.0.copyload.i.i.i22.us.i.prol ; 3 uses
  %.0.i23.us.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.da, i64 %.0.copyload.i.i.i15.i, i64 %i.i)
  %i.db = xor i64 %.0.i23.us.i.prol, -1
  %i.dc = or i64 %.0.i.us.i.prol, %i.db
  store i64 %i.dc, ptr %i.cq, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader
  %.lcssa119.unr.a = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.lcssa118.unr.a = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cy, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.lcssa117.unr.a = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.lcssa116.unr.a = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.da, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.lcssa115.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.dd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.010118.us.i.unr = phi i64 [ %spec.select.i.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.sroa.6.0117.us.i.unr = phi ptr [ %i.cq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.dd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.sroa.684.0115.us.i.unr = phi ptr [ %i.co, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.sroa.21.0114.us.i.unr = phi i64 [ %.0.copyload.i.i.i15.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.da, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
  %.sroa.696.0113.us.i.unr = phi ptr [ %i.bv, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.preheader ], [ %i.cx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.i.prol ]
end_hunk_6
