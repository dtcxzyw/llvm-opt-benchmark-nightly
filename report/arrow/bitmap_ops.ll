inline.NumInlined: 424
inline.NumDeleted: 159
begin_hunk_0_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  br i1 %exitcond.not.i67.1, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.2

.lr.ph.i55.2:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.1
  %i.gm = lshr exact i8 %spec.select.i62.1, 1     ; 2 uses
  %i.gn = zext i8 %.sroa.9.2.i64.1 to i32
  %i.go = trunc nsw i64 %.sroa.16.1.i66.1 to i32
  %i.gp = shl nuw nsw i32 1, %i.go
  %i.gq = and i32 %i.gp, %i.gn
  %.not21.i61.2 = icmp eq i32 %i.gq, 0
  %i.gr = or disjoint i8 %i.gm, -128
  %spec.select.i62.2 = select i1 %.not21.i61.2, i8 %i.gm, i8 %i.gr ; 2 uses
  %i.gs = add nsw i64 %.sroa.16.1.i66.1, 1        ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 8
  br i1 %i.gt, label %bb.ae, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.2, !prof !15

bb.ae:                                            ; preds = %.lr.ph.i55.2
  %i.gu = add nsw i64 %.sroa.1319.1.i65.1, 1      ; 3 uses
  %i.gv = icmp sgt i32 %.sroa.14.0152, 3
  br i1 %i.gv, label %bb.af, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.2, !prof !20

bb.af:                                            ; preds = %bb.ae
  %i.gw = getelementptr inbounds i8, ptr %.sroa.6.1154, i64 %i.gu
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.2: ; preds = %bb.af, %bb.ae, %.lr.ph.i55.2
  %.sroa.9.2.i64.2 = phi i8 [ %i.gx, %bb.af ], [ %.sroa.9.2.i64.1, %bb.ae ], [ %.sroa.9.2.i64.1, %.lr.ph.i55.2 ] ; 3 uses
  %.sroa.1319.1.i65.2 = phi i64 [ %i.gu, %bb.af ], [ %i.gu, %bb.ae ], [ %.sroa.1319.1.i65.1, %.lr.ph.i55.2 ] ; 2 uses
  %.sroa.16.1.i66.2 = phi i64 [ 0, %bb.af ], [ 0, %bb.ae ], [ %i.gs, %.lr.ph.i55.2 ] ; 2 uses
  %exitcond.not.i67.2 = icmp eq i32 %.sroa.14.0152, 3
  br i1 %exitcond.not.i67.2, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.3

.lr.ph.i55.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.2
  %i.gy = lshr i8 %spec.select.i62.2, 1           ; 2 uses
  %i.gz = zext i8 %.sroa.9.2.i64.2 to i32
  %i.ha = trunc nsw i64 %.sroa.16.1.i66.2 to i32
  %i.hb = shl nuw nsw i32 1, %i.ha
  %i.hc = and i32 %i.hb, %i.gz
  %.not21.i61.3 = icmp eq i32 %i.hc, 0
  %i.hd = or disjoint i8 %i.gy, -128
  %spec.select.i62.3 = select i1 %.not21.i61.3, i8 %i.gy, i8 %i.hd ; 2 uses
  %i.he = add nsw i64 %.sroa.16.1.i66.2, 1        ; 2 uses
  %i.hf = icmp eq i64 %i.he, 8
  br i1 %i.hf, label %bb.ag, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.3, !prof !15

bb.ag:                                            ; preds = %.lr.ph.i55.3
  %i.hg = add nsw i64 %.sroa.1319.1.i65.2, 1      ; 3 uses
  %i.hh = icmp sgt i32 %.sroa.14.0152, 4
  br i1 %i.hh, label %bb.ah, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.3, !prof !20

bb.ah:                                            ; preds = %bb.ag
  %i.hi = getelementptr inbounds i8, ptr %.sroa.6.1154, i64 %i.hg
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.3: ; preds = %bb.ah, %bb.ag, %.lr.ph.i55.3
  %.sroa.9.2.i64.3 = phi i8 [ %i.hj, %bb.ah ], [ %.sroa.9.2.i64.2, %bb.ag ], [ %.sroa.9.2.i64.2, %.lr.ph.i55.3 ] ; 3 uses
  %.sroa.1319.1.i65.3 = phi i64 [ %i.hg, %bb.ah ], [ %i.hg, %bb.ag ], [ %.sroa.1319.1.i65.2, %.lr.ph.i55.3 ] ; 2 uses
  %.sroa.16.1.i66.3 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ag ], [ %i.he, %.lr.ph.i55.3 ] ; 2 uses
  %exitcond.not.i67.3 = icmp eq i32 %.sroa.14.0152, 4
  br i1 %exitcond.not.i67.3, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.4

.lr.ph.i55.4:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.3
  %i.hk = lshr i8 %spec.select.i62.3, 1           ; 2 uses
  %i.hl = zext i8 %.sroa.9.2.i64.3 to i32
  %i.hm = trunc nsw i64 %.sroa.16.1.i66.3 to i32
  %i.hn = shl nuw nsw i32 1, %i.hm
  %i.ho = and i32 %i.hn, %i.hl
  %.not21.i61.4 = icmp eq i32 %i.ho, 0
  %i.hp = or disjoint i8 %i.hk, -128
  %spec.select.i62.4 = select i1 %.not21.i61.4, i8 %i.hk, i8 %i.hp ; 2 uses
  %i.hq = add nsw i64 %.sroa.16.1.i66.3, 1        ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 8
  br i1 %i.hr, label %bb.ai, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.4, !prof !15

bb.ai:                                            ; preds = %.lr.ph.i55.4
  %i.hs = add nsw i64 %.sroa.1319.1.i65.3, 1      ; 3 uses
  %i.ht = icmp sgt i32 %.sroa.14.0152, 5
  br i1 %i.ht, label %bb.aj, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.4, !prof !20

bb.aj:                                            ; preds = %bb.ai
  %i.hu = getelementptr inbounds i8, ptr %.sroa.6.1154, i64 %i.hs
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.4: ; preds = %bb.aj, %bb.ai, %.lr.ph.i55.4
  %.sroa.9.2.i64.4 = phi i8 [ %i.hv, %bb.aj ], [ %.sroa.9.2.i64.3, %bb.ai ], [ %.sroa.9.2.i64.3, %.lr.ph.i55.4 ] ; 3 uses
  %.sroa.1319.1.i65.4 = phi i64 [ %i.hs, %bb.aj ], [ %i.hs, %bb.ai ], [ %.sroa.1319.1.i65.3, %.lr.ph.i55.4 ] ; 2 uses
  %.sroa.16.1.i66.4 = phi i64 [ 0, %bb.aj ], [ 0, %bb.ai ], [ %i.hq, %.lr.ph.i55.4 ] ; 2 uses
  %exitcond.not.i67.4 = icmp eq i32 %.sroa.14.0152, 5
  br i1 %exitcond.not.i67.4, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.5

.lr.ph.i55.5:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.4
  %i.hw = lshr i8 %spec.select.i62.4, 1           ; 2 uses
  %i.hx = zext i8 %.sroa.9.2.i64.4 to i32
  %i.hy = trunc nsw i64 %.sroa.16.1.i66.4 to i32
  %i.hz = shl nuw nsw i32 1, %i.hy
  %i.ia = and i32 %i.hz, %i.hx
  %.not21.i61.5 = icmp eq i32 %i.ia, 0
  %i.ib = or disjoint i8 %i.hw, -128
  %spec.select.i62.5 = select i1 %.not21.i61.5, i8 %i.hw, i8 %i.ib ; 2 uses
  %i.ic = add nsw i64 %.sroa.16.1.i66.4, 1        ; 2 uses
  %i.id = icmp eq i64 %i.ic, 8
  br i1 %i.id, label %bb.ak, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5, !prof !15

bb.ak:                                            ; preds = %.lr.ph.i55.5
  %i.ie = add nsw i64 %.sroa.1319.1.i65.4, 1      ; 3 uses
  %i.if = icmp sgt i32 %.sroa.14.0152, 6
  br i1 %i.if, label %bb.al, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5, !prof !20

bb.al:                                            ; preds = %bb.ak
  %i.ig = getelementptr inbounds i8, ptr %.sroa.6.1154, i64 %i.ie
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5: ; preds = %bb.al, %bb.ak, %.lr.ph.i55.5
  %.sroa.9.2.i64.5 = phi i8 [ %i.ih, %bb.al ], [ %.sroa.9.2.i64.4, %bb.ak ], [ %.sroa.9.2.i64.4, %.lr.ph.i55.5 ] ; 3 uses
  %.sroa.1319.1.i65.5 = phi i64 [ %i.ie, %bb.al ], [ %i.ie, %bb.ak ], [ %.sroa.1319.1.i65.4, %.lr.ph.i55.5 ]
  %.sroa.16.1.i66.5 = phi i64 [ 0, %bb.al ], [ 0, %bb.ak ], [ %i.ic, %.lr.ph.i55.5 ] ; 2 uses
  %exitcond.not.i67.5 = icmp eq i32 %.sroa.14.0152, 6
  br i1 %exitcond.not.i67.5, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.6

.lr.ph.i55.6:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5
  %i.ii = lshr i8 %spec.select.i62.5, 1           ; 2 uses
  %i.ij = zext i8 %.sroa.9.2.i64.5 to i32
  %i.ik = trunc nsw i64 %.sroa.16.1.i66.5 to i32
  %i.il = shl nuw nsw i32 1, %i.ik
  %i.im = and i32 %i.il, %i.ij
  %.not21.i61.6 = icmp eq i32 %i.im, 0
  %i.in = or disjoint i8 %i.ii, -128
  %spec.select.i62.6 = select i1 %.not21.i61.6, i8 %i.ii, i8 %i.in ; 2 uses
  %i.io = add nsw i64 %.sroa.16.1.i66.5, 1        ; 2 uses
  %i.ip = icmp eq i64 %i.io, 8
  br i1 %i.ip, label %bb.am, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6, !prof !15

bb.am:                                            ; preds = %.lr.ph.i55.6
  %i.iq = icmp eq i32 %.sroa.14.0152, 8
  br i1 %i.iq, label %bb.an, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6, !prof !20

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr i8, ptr %.sroa.6.1154, i64 %.sroa.1319.1.i65.5
  %i.is = getelementptr i8, ptr %i.ir, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6: ; preds = %bb.an, %bb.am, %.lr.ph.i55.6
  %.sroa.9.2.i64.6 = phi i8 [ %i.it, %bb.an ], [ %.sroa.9.2.i64.5, %bb.am ], [ %.sroa.9.2.i64.5, %.lr.ph.i55.6 ]
  %.sroa.16.1.i66.6 = phi i64 [ 0, %bb.an ], [ 0, %bb.am ], [ %i.io, %.lr.ph.i55.6 ] ; 2 uses
  %exitcond.not.i67.6 = icmp eq i32 %.sroa.14.0152, 7
  br i1 %exitcond.not.i67.6, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.7

.lr.ph.i55.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6
  %i.iu = lshr i8 %spec.select.i62.6, 1           ; 2 uses
  %i.iv = zext i8 %.sroa.9.2.i64.6 to i32
  %i.iw = trunc nsw i64 %.sroa.16.1.i66.6 to i32
  %i.ix = shl nuw nsw i32 1, %i.iw
  %i.iy = and i32 %i.ix, %i.iv
  %.not21.i61.7 = icmp eq i32 %i.iy, 0
  %i.iz = or disjoint i8 %i.iu, -128
  %spec.select.i62.7 = select i1 %.not21.i61.7, i8 %i.iu, i8 %i.iz
  %i.ja = icmp eq i64 %.sroa.16.1.i66.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i68

bb.ao:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.6.1154, i64 1 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1             ; 2 uses
  %.sroa.21.40.extract.trunc = trunc i64 %.sroa.21.1151 to i8
  %i.jd = trunc i64 %.sroa.21.1151 to i32
  %i.je = and i32 %i.jd, 255
  %i.jf = lshr i32 %i.je, %i.bc
  %i.jg = zext i8 %i.jc to i32
  %i.jh = shl nuw nsw i32 %i.jg, %i.bd
  %i.ji = or i32 %i.jh, %i.jf
  %i.jj = trunc i32 %i.ji to i8
  %.2.i49 = select i1 %.not.i48, i8 %.sroa.21.40.extract.trunc, i8 %i.jj
  %.sroa.21.40.insert.ext77 = zext i8 %i.jc to i64
  %i.jk = add nsw i32 %.sroa.14.0152, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit69: ; preds = %._crit_edge.i51, %bb.ao
  %.sroa.21.3 = phi i64 [ %.sroa.21.1151, %._crit_edge.i51 ], [ %.sroa.21.40.insert.ext77, %bb.ao ]
  %.sroa.14.1 = phi i32 [ 0, %._crit_edge.i51 ], [ %i.jk, %bb.ao ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.1154, %._crit_edge.i51 ], [ %i.jb, %bb.ao ]
  %.3.i50 = phi i8 [ %i.fx, %._crit_edge.i51 ], [ %.2.i49, %bb.ao ]
  %.not35 = icmp eq i8 %.3.i, %.3.i50
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
define noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsEPKhlS2_ll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
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
define noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsERKSt10shared_ptrINS_6BufferEElS5_ll(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
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
define void @_ZN5arrow8internal9BitmapAndEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
