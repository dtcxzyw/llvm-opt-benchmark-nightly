inline.NumInlined: 19
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5arrow8internal17ComputeBitmapHashEPKhmll(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i64 %3, -4132994306676758123
  %i.b = xor i64 %i.a, %1                         ; 4 uses
  %i.c = srem i64 %2, 8                           ; 7 uses
  %i.d = sdiv i64 %2, 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 6 uses
  %i.f = lshr i64 %3, 6                           ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1) ; 4 uses
  %i.g = shl nuw i64 %spec.select.i.i, 6
  %i.h = sub i64 %3, %i.g                         ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %sext.i.i = shl i64 %i.h, 32
  %i.j = ashr i64 %sext.i.i, 35
  %i.k = and i64 %3, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i64
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = trunc nsw i64 %i.n to i32                ; 2 uses
  %.not.i.i = icmp ult i64 %3, 128
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i7.i.i = load i8, ptr %i.e, align 1
  %.sroa.23.40.insert.ext.i = zext i8 %.0.copyload.i.i7.i.i to i64
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.0.copyload.i.i.i.i = load i64, ptr %i.e, align 1 ; 2 uses
  %i.p = add nsw i64 %i.f, -1
  %i.q = icmp ne i64 %i.f, 0
  %umin.neg.neg = zext i1 %i.q to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.r = add nsw i64 %spec.select.i.i, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.0.copyload.i.i.i31.i.prol = load i64, ptr %i.s, align 1
  %i.t = freeze i64 %.0.copyload.i.i.i31.i.prol   ; 3 uses
  %.0.i.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.t, i64 %.0.copyload.i.i.i.i, i64 %i.c)
  %i.u = mul i64 %.0.i.i.prol, -4132994306676758123 ; 2 uses
  %i.v = lshr i64 %i.u, 47
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, -4132994306676758123
  %i.y = xor i64 %i.x, %i.b
  %i.z = mul i64 %i.y, -4132994306676758123       ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa34.unr = phi ptr [ poison, %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i.prol ]
  %.lcssa33.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i.prol ]
  %.lcssa32.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %i.z, %.lr.ph.i.prol ]
  %.049.i.unr = phi i64 [ %i.b, %.lr.ph.preheader.i ], [ %i.z, %.lr.ph.i.prol ]
  %.02748.i.unr = phi i64 [ %spec.select.i.i, %.lr.ph.preheader.i ], [ %i.r, %.lr.ph.i.prol ]
  %.sroa.23.047.i.unr = phi i64 [ %.0.copyload.i.i.i.i, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i.prol ]
  %.sroa.6.046.i.unr = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i.prol ]
  %i.aa = icmp eq i64 %i.p, %umin.neg.neg
  br i1 %i.aa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.049.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %.049.i.unr, %.lr.ph.i.prol.loopexit ]
  %.02748.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.02748.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.23.047.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.sroa.23.047.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.6.046.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.sroa.6.046.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.6.046.i, i64 8
  %.0.copyload.i.i.i31.i = load i64, ptr %i.ab, align 1
  %i.ac = freeze i64 %.0.copyload.i.i.i31.i       ; 2 uses
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ac, i64 %.sroa.23.047.i, i64 %i.c)
  %i.ad = mul i64 %.0.i.i, -4132994306676758123   ; 2 uses
  %i.ae = lshr i64 %i.ad, 47
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, -4132994306676758123
  %i.ah = xor i64 %i.ag, %.049.i
  %i.ai = mul i64 %i.ah, -4132994306676758123
  %i.aj = add nsw i64 %.02748.i, -2               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.6.046.i, i64 16 ; 3 uses
  %.0.copyload.i.i.i31.i.1 = load i64, ptr %i.ak, align 1
  %i.al = freeze i64 %.0.copyload.i.i.i31.i.1     ; 3 uses
  %.0.i.i.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.al, i64 %i.ac, i64 %i.c)
  %i.am = mul i64 %.0.i.i.1, -4132994306676758123 ; 2 uses
  %i.an = lshr i64 %i.am, 47
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = mul i64 %i.ao, -4132994306676758123
  %i.aq = xor i64 %i.ap, %i.ai
  %i.ar = mul i64 %i.aq, -4132994306676758123     ; 2 uses
  %.not.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.c, %bb.b
  %.sroa.6.0.lcssa.i = phi ptr [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ %.lcssa34.unr, %.lr.ph.i.prol.loopexit ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %.sroa.23.0.lcssa.i = phi i64 [ %.sroa.23.40.insert.ext.i, %bb.c ], [ undef, %bb.b ], [ %.lcssa33.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.b, %bb.c ], [ %i.b, %bb.b ], [ %.lcssa32.unr, %.lr.ph.i.prol.loopexit ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %.not29.i = icmp eq i64 %i.n, 0
  br i1 %.not29.i, label %_ZN5arrow8internal12_GLOBAL__N_118MurmurHashBitmap64EPKhmmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not.i33.i = icmp eq i64 %i.c, 0
  %i.as = trunc nsw i64 %i.c to i32               ; 2 uses
  %i.at = sub nsw i32 8, %i.as
  br i1 %.not.i33.i, label %.preheader.split.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %i.au = trunc nsw i64 %i.c to i32
  %i.av = shl nuw nsw i32 1, %i.au
  %i.aw = add nsw i64 %i.c, 1                     ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 8
  br label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i
  %.sroa.15.0.us.i = phi i32 [ %.sroa.15.1.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.i, %.preheader.i ] ; 11 uses
  %.sroa.6.1.us.i = phi ptr [ %.sroa.6.2.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %.sroa.6.0.lcssa.i, %.preheader.i ] ; 3 uses
  %.sroa.23.1.us.i = phi i64 [ %.sroa.23.3.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %.sroa.23.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.026.us.i = phi i32 [ %i.ce, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.o, %.preheader.i ]
  %.025.us.i = phi i64 [ %i.cd, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ 0, %.preheader.i ]
  %i.ay = icmp slt i32 %.sroa.15.0.us.i, 9
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.6.1.us.i, i64 1 ; 2 uses
  %.0.copyload.i.i.i32.us.i = load i8, ptr %i.az, align 1
  %.sroa.23.40.insert.ext42.us.i = zext i8 %.0.copyload.i.i.i32.us.i to i64
  %i.ba = add nsw i32 %.sroa.15.0.us.i, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i

bb.e:                                             ; preds = %.preheader.split.us.i
  %i.bb = icmp sgt i32 %.sroa.15.0.us.i, 0
  br i1 %i.bb, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.e
  %i.bc = load i8, ptr %.sroa.6.1.us.i, align 1, !tbaa !9 ; 8 uses
  %spec.select.i34.us.i = shl i8 %i.bc, 7         ; 2 uses
  %exitcond.not.i.us.i = icmp eq i32 %.sroa.15.0.us.i, 1
  br i1 %exitcond.not.i.us.i, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.1

.lr.ph.i.us.i.1:                                  ; preds = %.lr.ph.i.us.i
  %i.bd = lshr exact i8 %spec.select.i34.us.i, 1
  %i.be = shl i8 %i.bc, 6
  %i.bf = and i8 %i.be, -128
  %spec.select.i34.us.i.1 = or disjoint i8 %i.bd, %i.bf ; 2 uses
  %exitcond.not.i.us.i.1 = icmp eq i32 %.sroa.15.0.us.i, 2
  br i1 %exitcond.not.i.us.i.1, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.2

.lr.ph.i.us.i.2:                                  ; preds = %.lr.ph.i.us.i.1
  %i.bg = lshr exact i8 %spec.select.i34.us.i.1, 1
  %i.bh = shl i8 %i.bc, 5
  %i.bi = and i8 %i.bh, -128
  %spec.select.i34.us.i.2 = or disjoint i8 %i.bg, %i.bi ; 2 uses
  %exitcond.not.i.us.i.2 = icmp eq i32 %.sroa.15.0.us.i, 3
  br i1 %exitcond.not.i.us.i.2, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.3

.lr.ph.i.us.i.3:                                  ; preds = %.lr.ph.i.us.i.2
  %i.bj = lshr exact i8 %spec.select.i34.us.i.2, 1
  %i.bk = shl i8 %i.bc, 4
  %i.bl = and i8 %i.bk, -128
  %spec.select.i34.us.i.3 = or disjoint i8 %i.bj, %i.bl ; 2 uses
  %exitcond.not.i.us.i.3 = icmp eq i32 %.sroa.15.0.us.i, 4
  br i1 %exitcond.not.i.us.i.3, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.4

.lr.ph.i.us.i.4:                                  ; preds = %.lr.ph.i.us.i.3
  %i.bm = lshr i8 %spec.select.i34.us.i.3, 1
  %i.bn = shl i8 %i.bc, 3
  %i.bo = and i8 %i.bn, -128
  %spec.select.i34.us.i.4 = or disjoint i8 %i.bm, %i.bo ; 2 uses
  %exitcond.not.i.us.i.4 = icmp eq i32 %.sroa.15.0.us.i, 5
  br i1 %exitcond.not.i.us.i.4, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.5

.lr.ph.i.us.i.5:                                  ; preds = %.lr.ph.i.us.i.4
  %i.bp = lshr i8 %spec.select.i34.us.i.4, 1
  %i.bq = shl i8 %i.bc, 2
  %i.br = and i8 %i.bq, -128
  %spec.select.i34.us.i.5 = or disjoint i8 %i.bp, %i.br ; 2 uses
  %exitcond.not.i.us.i.5 = icmp eq i32 %.sroa.15.0.us.i, 6
  br i1 %exitcond.not.i.us.i.5, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.6

.lr.ph.i.us.i.6:                                  ; preds = %.lr.ph.i.us.i.5
  %i.bs = lshr i8 %spec.select.i34.us.i.5, 1
  %i.bt = shl i8 %i.bc, 1
  %i.bu = and i8 %i.bt, -128
  %spec.select.i34.us.i.6 = or disjoint i8 %i.bs, %i.bu ; 2 uses
  %exitcond.not.i.us.i.6 = icmp eq i32 %.sroa.15.0.us.i, 7
  br i1 %exitcond.not.i.us.i.6, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.7

.lr.ph.i.us.i.7:                                  ; preds = %.lr.ph.i.us.i.6
  %i.bv = lshr i8 %spec.select.i34.us.i.6, 1
  %i.bw = and i8 %i.bc, -128
  %spec.select.i34.us.i.7 = or disjoint i8 %i.bv, %i.bw
  br label %._crit_edge.loopexit.i.us.i

._crit_edge.loopexit.i.us.i:                      ; preds = %.lr.ph.i.us.i.7, %.lr.ph.i.us.i.6, %.lr.ph.i.us.i.5, %.lr.ph.i.us.i.4, %.lr.ph.i.us.i.3, %.lr.ph.i.us.i.2, %.lr.ph.i.us.i.1, %.lr.ph.i.us.i
  %spec.select.i34.us.i.lcssa = phi i8 [ %spec.select.i34.us.i, %.lr.ph.i.us.i ], [ %spec.select.i34.us.i.1, %.lr.ph.i.us.i.1 ], [ %spec.select.i34.us.i.2, %.lr.ph.i.us.i.2 ], [ %spec.select.i34.us.i.3, %.lr.ph.i.us.i.3 ], [ %spec.select.i34.us.i.4, %.lr.ph.i.us.i.4 ], [ %spec.select.i34.us.i.5, %.lr.ph.i.us.i.5 ], [ %spec.select.i34.us.i.6, %.lr.ph.i.us.i.6 ], [ %spec.select.i34.us.i.7, %.lr.ph.i.us.i.7 ]
  %i.bx = zext i8 %spec.select.i34.us.i.lcssa to i32
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %._crit_edge.loopexit.i.us.i, %bb.e
  %.0.lcssa.i.us.i = phi i32 [ %i.bx, %._crit_edge.loopexit.i.us.i ], [ 0, %bb.e ]
  %i.by = sub nsw i32 8, %.sroa.15.0.us.i
  %i.bz = lshr i32 %.0.lcssa.i.us.i, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i: ; preds = %._crit_edge.i.us.i, %bb.d
  %.sroa.15.1.us.i = phi i32 [ 0, %._crit_edge.i.us.i ], [ %i.ba, %bb.d ]
  %.sroa.6.2.us.i = phi ptr [ %.sroa.6.1.us.i, %._crit_edge.i.us.i ], [ %i.az, %bb.d ]
  %.sroa.23.3.us.i = phi i64 [ %.sroa.23.1.us.i, %._crit_edge.i.us.i ], [ %.sroa.23.40.insert.ext42.us.i, %bb.d ]
  %.3.i.us.i = phi i64 [ %i.ca, %._crit_edge.i.us.i ], [ %.sroa.23.1.us.i, %bb.d ]
  %i.cb = shl i64 %.025.us.i, 8
  %i.cc = and i64 %.3.i.us.i, 255
  %i.cd = or disjoint i64 %i.cc, %i.cb            ; 2 uses
  %i.ce = add nsw i32 %.026.us.i, -1              ; 2 uses
  %.not30.us.i = icmp eq i32 %i.ce, 0
  br i1 %.not30.us.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !10

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i
  %.sroa.15.0.i = phi i32 [ %.sroa.15.1.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %i.i, %.preheader.split.i.preheader ] ; 18 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.2.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %.sroa.6.0.lcssa.i, %.preheader.split.i.preheader ] ; 10 uses
  %.sroa.23.1.i = phi i64 [ %.sroa.23.3.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %.sroa.23.0.lcssa.i, %.preheader.split.i.preheader ] ; 2 uses
  %.026.i = phi i32 [ %i.gc, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %i.o, %.preheader.split.i.preheader ]
  %.025.i = phi i64 [ %i.gb, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ 0, %.preheader.split.i.preheader ]
  %i.cf = icmp slt i32 %.sroa.15.0.i, 9
  br i1 %i.cf, label %bb.f, label %bb.u

bb.f:                                             ; preds = %.preheader.split.i
  %i.cg = icmp sgt i32 %.sroa.15.0.i, 0
  br i1 %i.cg, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.ch = load i8, ptr %.sroa.6.1.i, align 1, !tbaa !9 ; 3 uses
  %i.ci = zext i8 %i.ch to i32
  %i.cj = and i32 %i.av, %i.ci
  %.not21.i.i = icmp eq i32 %i.cj, 0
  %spec.select.i34.i = select i1 %.not21.i.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.ax, label %bb.g, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i, !prof !11

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i
  %spec.select.i34.i.lcssa = phi i8 [ %spec.select.i34.i, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i ], [ %spec.select.i34.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1 ], [ %spec.select.i34.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2 ], [ %spec.select.i34.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3 ], [ %spec.select.i34.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4 ], [ %spec.select.i34.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5 ], [ %spec.select.i34.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6 ], [ %spec.select.i34.i.7, %.lr.ph.i.i.7 ]
  %i.ck = zext i8 %spec.select.i34.i.lcssa to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %.0.lcssa.i.i = phi i32 [ %i.ck, %._crit_edge.loopexit.i.i ], [ 0, %bb.f ]
  %i.cl = sub nsw i32 8, %.sroa.15.0.i
  %i.cm = lshr i32 %.0.lcssa.i.i, %i.cl
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i

bb.g:                                             ; preds = %.lr.ph.preheader.i.i
  %.not = icmp eq i32 %.sroa.15.0.i, 1
  br i1 %.not, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.preheader.i.i
  %.sroa.9.2.i.i = phi i8 [ %i.co, %bb.h ], [ %i.ch, %bb.g ], [ %i.ch, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.1319.1.i.i = phi i64 [ 1, %bb.h ], [ 1, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.16.1.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ %i.aw, %.lr.ph.preheader.i.i ] ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %.sroa.15.0.i, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i
  %i.cp = lshr exact i8 %spec.select.i34.i, 1     ; 2 uses
  %i.cq = zext i8 %.sroa.9.2.i.i to i32
  %i.cr = trunc nsw i64 %.sroa.16.1.i.i to i32
  %i.cs = shl nuw nsw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.cq
  %.not21.i.i.1 = icmp eq i32 %i.ct, 0
  %i.cu = or disjoint i8 %i.cp, -128
  %spec.select.i34.i.1 = select i1 %.not21.i.i.1, i8 %i.cp, i8 %i.cu ; 2 uses
  %i.cv = add nsw i64 %.sroa.16.1.i.i, 1          ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 8
  br i1 %i.cw, label %bb.i, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1, !prof !11

bb.i:                                             ; preds = %.lr.ph.i.i.1
  %i.cx = add nuw nsw i64 %.sroa.1319.1.i.i, 1    ; 3 uses
  %i.cy = icmp sgt i32 %.sroa.15.0.i, 2
  br i1 %i.cy, label %bb.j, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i, i64 %i.cx
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.1
  %.sroa.9.2.i.i.1 = phi i8 [ %i.da, %bb.j ], [ %.sroa.9.2.i.i, %bb.i ], [ %.sroa.9.2.i.i, %.lr.ph.i.i.1 ] ; 3 uses
  %.sroa.1319.1.i.i.1 = phi i64 [ %i.cx, %bb.j ], [ %i.cx, %bb.i ], [ %.sroa.1319.1.i.i, %.lr.ph.i.i.1 ] ; 2 uses
  %.sroa.16.1.i.i.1 = phi i64 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.cv, %.lr.ph.i.i.1 ] ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %.sroa.15.0.i, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1
  %i.db = lshr exact i8 %spec.select.i34.i.1, 1   ; 2 uses
  %i.dc = zext i8 %.sroa.9.2.i.i.1 to i32
  %i.dd = trunc nsw i64 %.sroa.16.1.i.i.1 to i32
  %i.de = shl nuw nsw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.dc
  %.not21.i.i.2 = icmp eq i32 %i.df, 0
  %i.dg = or disjoint i8 %i.db, -128
  %spec.select.i34.i.2 = select i1 %.not21.i.i.2, i8 %i.db, i8 %i.dg ; 2 uses
  %i.dh = add nsw i64 %.sroa.16.1.i.i.1, 1        ; 2 uses
  %i.di = icmp eq i64 %i.dh, 8
  br i1 %i.di, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2, !prof !11

bb.k:                                             ; preds = %.lr.ph.i.i.2
  %i.dj = add nsw i64 %.sroa.1319.1.i.i.1, 1      ; 3 uses
  %i.dk = icmp sgt i32 %.sroa.15.0.i, 3
  br i1 %i.dk, label %bb.l, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.dl = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2: ; preds = %bb.l, %bb.k, %.lr.ph.i.i.2
  %.sroa.9.2.i.i.2 = phi i8 [ %i.dm, %bb.l ], [ %.sroa.9.2.i.i.1, %bb.k ], [ %.sroa.9.2.i.i.1, %.lr.ph.i.i.2 ] ; 3 uses
  %.sroa.1319.1.i.i.2 = phi i64 [ %i.dj, %bb.l ], [ %i.dj, %bb.k ], [ %.sroa.1319.1.i.i.1, %.lr.ph.i.i.2 ] ; 2 uses
  %.sroa.16.1.i.i.2 = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %i.dh, %.lr.ph.i.i.2 ] ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i32 %.sroa.15.0.i, 3
  br i1 %exitcond.not.i.i.2, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2
  %i.dn = lshr i8 %spec.select.i34.i.2, 1         ; 2 uses
  %i.do = zext i8 %.sroa.9.2.i.i.2 to i32
  %i.dp = trunc nsw i64 %.sroa.16.1.i.i.2 to i32
  %i.dq = shl nuw nsw i32 1, %i.dp
  %i.dr = and i32 %i.dq, %i.do
  %.not21.i.i.3 = icmp eq i32 %i.dr, 0
  %i.ds = or disjoint i8 %i.dn, -128
  %spec.select.i34.i.3 = select i1 %.not21.i.i.3, i8 %i.dn, i8 %i.ds ; 2 uses
  %i.dt = add nsw i64 %.sroa.16.1.i.i.2, 1        ; 2 uses
  %i.du = icmp eq i64 %i.dt, 8
  br i1 %i.du, label %bb.m, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, !prof !11

bb.m:                                             ; preds = %.lr.ph.i.i.3
  %i.dv = add nsw i64 %.sroa.1319.1.i.i.2, 1      ; 3 uses
  %i.dw = icmp sgt i32 %.sroa.15.0.i, 4
  br i1 %i.dw, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.dx = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3: ; preds = %bb.n, %bb.m, %.lr.ph.i.i.3
  %.sroa.9.2.i.i.3 = phi i8 [ %i.dy, %bb.n ], [ %.sroa.9.2.i.i.2, %bb.m ], [ %.sroa.9.2.i.i.2, %.lr.ph.i.i.3 ] ; 3 uses
  %.sroa.1319.1.i.i.3 = phi i64 [ %i.dv, %bb.n ], [ %i.dv, %bb.m ], [ %.sroa.1319.1.i.i.2, %.lr.ph.i.i.3 ] ; 2 uses
  %.sroa.16.1.i.i.3 = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.dt, %.lr.ph.i.i.3 ] ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i32 %.sroa.15.0.i, 4
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3
  %i.dz = lshr i8 %spec.select.i34.i.3, 1         ; 2 uses
  %i.ea = zext i8 %.sroa.9.2.i.i.3 to i32
  %i.eb = trunc nsw i64 %.sroa.16.1.i.i.3 to i32
  %i.ec = shl nuw nsw i32 1, %i.eb
  %i.ed = and i32 %i.ec, %i.ea
  %.not21.i.i.4 = icmp eq i32 %i.ed, 0
  %i.ee = or disjoint i8 %i.dz, -128
  %spec.select.i34.i.4 = select i1 %.not21.i.i.4, i8 %i.dz, i8 %i.ee ; 2 uses
  %i.ef = add nsw i64 %.sroa.16.1.i.i.3, 1        ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 8
  br i1 %i.eg, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, !prof !11

bb.o:                                             ; preds = %.lr.ph.i.i.4
  %i.eh = add nsw i64 %.sroa.1319.1.i.i.3, 1      ; 3 uses
  %i.ei = icmp sgt i32 %.sroa.15.0.i, 5
  br i1 %i.ei, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.ej = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.4
  %.sroa.9.2.i.i.4 = phi i8 [ %i.ek, %bb.p ], [ %.sroa.9.2.i.i.3, %bb.o ], [ %.sroa.9.2.i.i.3, %.lr.ph.i.i.4 ] ; 3 uses
  %.sroa.1319.1.i.i.4 = phi i64 [ %i.eh, %bb.p ], [ %i.eh, %bb.o ], [ %.sroa.1319.1.i.i.3, %.lr.ph.i.i.4 ] ; 2 uses
  %.sroa.16.1.i.i.4 = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.ef, %.lr.ph.i.i.4 ] ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i32 %.sroa.15.0.i, 5
  br i1 %exitcond.not.i.i.4, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4
  %i.el = lshr i8 %spec.select.i34.i.4, 1         ; 2 uses
  %i.em = zext i8 %.sroa.9.2.i.i.4 to i32
  %i.en = trunc nsw i64 %.sroa.16.1.i.i.4 to i32
  %i.eo = shl nuw nsw i32 1, %i.en
  %i.ep = and i32 %i.eo, %i.em
  %.not21.i.i.5 = icmp eq i32 %i.ep, 0
  %i.eq = or disjoint i8 %i.el, -128
  %spec.select.i34.i.5 = select i1 %.not21.i.i.5, i8 %i.el, i8 %i.eq ; 2 uses
  %i.er = add nsw i64 %.sroa.16.1.i.i.4, 1        ; 2 uses
  %i.es = icmp eq i64 %i.er, 8
  br i1 %i.es, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, !prof !11

bb.q:                                             ; preds = %.lr.ph.i.i.5
  %i.et = add nsw i64 %.sroa.1319.1.i.i.4, 1      ; 3 uses
  %i.eu = icmp sgt i32 %.sroa.15.0.i, 6
  br i1 %i.eu, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.ev = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5: ; preds = %bb.r, %bb.q, %.lr.ph.i.i.5
  %.sroa.9.2.i.i.5 = phi i8 [ %i.ew, %bb.r ], [ %.sroa.9.2.i.i.4, %bb.q ], [ %.sroa.9.2.i.i.4, %.lr.ph.i.i.5 ] ; 3 uses
  %.sroa.1319.1.i.i.5 = phi i64 [ %i.et, %bb.r ], [ %i.et, %bb.q ], [ %.sroa.1319.1.i.i.4, %.lr.ph.i.i.5 ]
  %.sroa.16.1.i.i.5 = phi i64 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.er, %.lr.ph.i.i.5 ] ; 2 uses
  %exitcond.not.i.i.5 = icmp eq i32 %.sroa.15.0.i, 6
  br i1 %exitcond.not.i.i.5, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5
  %i.ex = lshr i8 %spec.select.i34.i.5, 1         ; 2 uses
  %i.ey = zext i8 %.sroa.9.2.i.i.5 to i32
  %i.ez = trunc nsw i64 %.sroa.16.1.i.i.5 to i32
  %i.fa = shl nuw nsw i32 1, %i.ez
  %i.fb = and i32 %i.fa, %i.ey
  %.not21.i.i.6 = icmp eq i32 %i.fb, 0
  %i.fc = or disjoint i8 %i.ex, -128
  %spec.select.i34.i.6 = select i1 %.not21.i.i.6, i8 %i.ex, i8 %i.fc ; 2 uses
  %i.fd = add nsw i64 %.sroa.16.1.i.i.5, 1        ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 8
  br i1 %i.fe, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, !prof !11

bb.s:                                             ; preds = %.lr.ph.i.i.6
  %i.ff = icmp eq i32 %.sroa.15.0.i, 8
  br i1 %i.ff, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, !prof !12

bb.t:                                             ; preds = %bb.s
  %i.fg = getelementptr i8, ptr %.sroa.6.1.i, i64 %.sroa.1319.1.i.i.5
  %i.fh = getelementptr i8, ptr %i.fg, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6: ; preds = %bb.t, %bb.s, %.lr.ph.i.i.6
  %.sroa.9.2.i.i.6 = phi i8 [ %i.fi, %bb.t ], [ %.sroa.9.2.i.i.5, %bb.s ], [ %.sroa.9.2.i.i.5, %.lr.ph.i.i.6 ]
  %.sroa.16.1.i.i.6 = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fd, %.lr.ph.i.i.6 ] ; 2 uses
  %exitcond.not.i.i.6 = icmp eq i32 %.sroa.15.0.i, 7
  br i1 %exitcond.not.i.i.6, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6
  %i.fj = lshr i8 %spec.select.i34.i.6, 1         ; 2 uses
  %i.fk = zext i8 %.sroa.9.2.i.i.6 to i32
  %i.fl = trunc nsw i64 %.sroa.16.1.i.i.6 to i32
  %i.fm = shl nuw nsw i32 1, %i.fl
  %i.fn = and i32 %i.fm, %i.fk
  %.not21.i.i.7 = icmp eq i32 %i.fn, 0
  %i.fo = or disjoint i8 %i.fj, -128
  %spec.select.i34.i.7 = select i1 %.not21.i.i.7, i8 %i.fj, i8 %i.fo
  %i.fp = icmp eq i64 %.sroa.16.1.i.i.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i.i

bb.u:                                             ; preds = %.preheader.split.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i, i64 1 ; 2 uses
  %.0.copyload.i.i.i32.i = load i8, ptr %i.fq, align 1 ; 2 uses
  %i.fr = trunc i64 %.sroa.23.1.i to i32
  %i.fs = and i32 %i.fr, 255
  %i.ft = lshr i32 %i.fs, %i.as
  %i.fu = zext i8 %.0.copyload.i.i.i32.i to i32
  %i.fv = shl nuw nsw i32 %i.fu, %i.at
  %i.fw = or i32 %i.fv, %i.ft
  %.sroa.23.40.insert.ext42.i = zext i8 %.0.copyload.i.i.i32.i to i64
  %i.fx = add nsw i32 %.sroa.15.0.i, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i: ; preds = %bb.u, %._crit_edge.i.i
  %.sroa.15.1.i = phi i32 [ 0, %._crit_edge.i.i ], [ %i.fx, %bb.u ]
  %.sroa.6.2.i = phi ptr [ %.sroa.6.1.i, %._crit_edge.i.i ], [ %i.fq, %bb.u ]
  %.sroa.23.3.i = phi i64 [ %.sroa.23.1.i, %._crit_edge.i.i ], [ %.sroa.23.40.insert.ext42.i, %bb.u ]
  %.3.i.in.i = phi i32 [ %i.cm, %._crit_edge.i.i ], [ %i.fw, %bb.u ]
  %i.fy = shl i64 %.025.i, 8
  %i.fz = and i32 %.3.i.in.i, 255
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = or disjoint i64 %i.fy, %i.ga            ; 2 uses
  %i.gc = add nsw i32 %.026.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.gc, 0
  br i1 %.not30.i, label %.split.us.i, label %.preheader.split.i, !llvm.loop !10

.split.us.i:                                      ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i
  %.us-phi.i = phi i64 [ %i.cd, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.gb, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ]
  %i.gd = xor i64 %.us-phi.i, %.0.lcssa.i
  %i.ge = mul i64 %i.gd, -4132994306676758123
  br label %_ZN5arrow8internal12_GLOBAL__N_118MurmurHashBitmap64EPKhmmm.exit

_ZN5arrow8internal12_GLOBAL__N_118MurmurHashBitmap64EPKhmmm.exit: ; preds = %._crit_edge.i, %.split.us.i
  %.1.i = phi i64 [ %i.ge, %.split.us.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.gf = lshr i64 %.1.i, 47
  %i.gg = xor i64 %i.gf, %.1.i
  %i.gh = mul i64 %i.gg, -4132994306676758123     ; 2 uses
  %i.gi = lshr i64 %i.gh, 47
  %i.gj = xor i64 %i.gi, %i.gh
  ret i64 %i.gj
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !8}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
