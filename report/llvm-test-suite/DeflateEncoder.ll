inline.NumInlined: 97
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv:vector.ph
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.ac, align 8, !tbaa !16
  %i.gp = zext i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gp
  store i8 %i.gl, ptr %i.gq, align 1, !tbaa !62
  %i.gr = load i32, ptr %i.ac, align 8, !tbaa !16
  %i.gs = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.gt = icmp eq i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.q, label %_ZN10COutBuffer9WriteByteEh.exit.i51.peel

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i51.peel

_ZN10COutBuffer9WriteByteEh.exit.i51.peel:        ; preds = %bb.q, %bb.p
  %i.gu = load i32, ptr %i.aa, align 8, !tbaa !91
  store i32 8, ptr %i.aa, align 8, !tbaa !91
  store i8 0, ptr %i.ab, align 4, !tbaa !92
  %.not.i52.peel = icmp eq i32 %i.gh, 0
  br i1 %.not.i52.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit54, label %.peel.next124

.peel.next124:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i51.peel
  %i.gv = lshr i32 %i.gf, %i.gu                   ; 2 uses
  %i.gw = icmp samesign ult i32 %i.gh, 8
  br i1 %i.gw, label %.loopexit126, label %.lr.ph235

bb.r:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i51
  %i.gx = lshr i32 %.0814.i50234, %i.hr           ; 2 uses
  %i.gy = icmp ult i32 %i.hh, 8
  br i1 %i.gy, label %.loopexit126, label %.lr.ph235, !llvm.loop !127

.loopexit126:                                     ; preds = %bb.r, %.peel.next124, %.lr.ph.i47
  %i.gz = phi i8 [ %.pre144, %.lr.ph.i47 ], [ 0, %.peel.next124 ], [ 0, %bb.r ]
  %.lcssa108 = phi i32 [ %.pre.i48, %.lr.ph.i47 ], [ 8, %.peel.next124 ], [ 8, %bb.r ] ; 2 uses
  %.015.i49.lcssa = phi i32 [ %i.ga, %.lr.ph.i47 ], [ %i.gh, %.peel.next124 ], [ %i.hh, %bb.r ] ; 2 uses
  %.0814.i50.lcssa = phi i32 [ %i.gf, %.lr.ph.i47 ], [ %i.gv, %.peel.next124 ], [ %i.gx, %bb.r ]
  %notmask.i53 = shl nsw i32 -1, %.015.i49.lcssa
  %i.ha = xor i32 %notmask.i53, -1
  %i.hb = and i32 %.0814.i50.lcssa, %i.ha
  %i.hc = sub i32 8, %.lcssa108
  %i.hd = shl i32 %i.hb, %i.hc
  %i.he = trunc i32 %i.hd to i8
  %i.hf = or i8 %i.gz, %i.he
  store i8 %i.hf, ptr %i.ab, align 4, !tbaa !92
  %i.hg = sub nuw i32 %.lcssa108, %.015.i49.lcssa
  store i32 %i.hg, ptr %i.aa, align 8, !tbaa !91
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit54

.lr.ph235:                                        ; preds = %.peel.next124, %bb.r
  %.0814.i50234 = phi i32 [ %i.gx, %bb.r ], [ %i.gv, %.peel.next124 ] ; 2 uses
  %.015.i49233 = phi i32 [ %i.hh, %bb.r ], [ %i.gh, %.peel.next124 ]
  %i.hh = add nsw i32 %.015.i49233, -8            ; 4 uses
  %i.hi = trunc i32 %.0814.i50234 to i8
  %i.hj = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.hk = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.ac, align 8, !tbaa !16
  %i.hm = zext i32 %i.hk to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm
  store i8 %i.hi, ptr %i.hn, align 1, !tbaa !62
  %i.ho = load i32, ptr %i.ac, align 8, !tbaa !16
  %i.hp = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.hq = icmp eq i32 %i.ho, %i.hp
  br i1 %i.hq, label %bb.s, label %_ZN10COutBuffer9WriteByteEh.exit.i51

bb.s:                                             ; preds = %.lr.ph235
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i51

_ZN10COutBuffer9WriteByteEh.exit.i51:             ; preds = %bb.s, %.lr.ph235
  %i.hr = load i32, ptr %i.aa, align 8, !tbaa !91
  store i32 8, ptr %i.aa, align 8, !tbaa !91
  store i8 0, ptr %i.ab, align 4, !tbaa !92
  %.not.i52 = icmp eq i32 %i.hh, 0
  br i1 %.not.i52, label %_ZN12CBitlEncoder9WriteBitsEjj.exit54, label %bb.r, !llvm.loop !127

_ZN12CBitlEncoder9WriteBitsEjj.exit54:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i51, %_ZN10COutBuffer9WriteByteEh.exit.i51.peel, %_ZN12CBitlEncoder9WriteBitsEjj.exit45, %.loopexit126
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !111 ; 3 uses
  %i.hu = zext i16 %i.ht to i32                   ; 2 uses
  %i.hv = icmp ult i16 %i.ht, 512
  br i1 %i.hv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit54
  %i.hw = zext nneg i16 %i.ht to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !62
  %i.hz = zext i8 %i.hy to i64
  br label %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit

bb.u:                                             ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit54
  %i.ia = lshr i32 %i.hu, 8
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !62
  %i.ie = zext i8 %i.id to i64
  %i.if = add nuw nsw i64 %i.ie, 16
  br label %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit

_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi i64 [ %i.hz, %bb.t ], [ %i.if, %bb.u ] ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !62  ; 2 uses
  %.not13.i55 = icmp eq i8 %i.ih, 0
  br i1 %.not13.i55, label %_ZN12CBitlEncoder9WriteBitsEjj.exit63, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit
  %i.ii = zext i8 %i.ih to i32                    ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4  ; 3 uses
  %.pre.i57 = load i32, ptr %i.aa, align 8, !tbaa !91 ; 4 uses
  %i.il = icmp ugt i32 %.pre.i57, %i.ii
  %.pre145 = load i8, ptr %i.ab, align 4, !tbaa !92 ; 2 uses
  br i1 %i.il, label %.loopexit130, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i56
  %i.im = sub nuw nsw i32 %i.ii, %.pre.i57        ; 4 uses
  %i.in = sub nsw i32 8, %.pre.i57
  %i.io = shl i32 %i.ik, %i.in
  %i.ip = trunc i32 %i.io to i8
  %i.iq = or i8 %.pre145, %i.ip
  %i.ir = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.is = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.it = add i32 %i.is, 1
  store i32 %i.it, ptr %i.ac, align 8, !tbaa !16
  %i.iu = zext i32 %i.is to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu
  store i8 %i.iq, ptr %i.iv, align 1, !tbaa !62
  %i.iw = load i32, ptr %i.ac, align 8, !tbaa !16
  %i.ix = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.w, label %_ZN10COutBuffer9WriteByteEh.exit.i60.peel

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i60.peel

_ZN10COutBuffer9WriteByteEh.exit.i60.peel:        ; preds = %bb.w, %bb.v
  %i.iz = load i32, ptr %i.aa, align 8, !tbaa !91
  store i32 8, ptr %i.aa, align 8, !tbaa !91
  store i8 0, ptr %i.ab, align 4, !tbaa !92
  %.not.i61.peel = icmp eq i32 %i.im, 0
  br i1 %.not.i61.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit63, label %.peel.next128

.peel.next128:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60.peel
  %i.ja = lshr i32 %i.ik, %i.iz                   ; 2 uses
  %i.jb = icmp samesign ult i32 %i.im, 8
  br i1 %i.jb, label %.loopexit130, label %.lr.ph240

bb.x:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60
  %i.jc = lshr i32 %.0814.i59239, %i.jw           ; 2 uses
  %i.jd = icmp ult i32 %i.jm, 8
  br i1 %i.jd, label %.loopexit130, label %.lr.ph240, !llvm.loop !128

.loopexit130:                                     ; preds = %bb.x, %.peel.next128, %.lr.ph.i56
  %i.je = phi i8 [ %.pre145, %.lr.ph.i56 ], [ 0, %.peel.next128 ], [ 0, %bb.x ]
  %.lcssa112 = phi i32 [ %.pre.i57, %.lr.ph.i56 ], [ 8, %.peel.next128 ], [ 8, %bb.x ] ; 2 uses
  %.015.i58.lcssa = phi i32 [ %i.ii, %.lr.ph.i56 ], [ %i.im, %.peel.next128 ], [ %i.jm, %bb.x ] ; 2 uses
  %.0814.i59.lcssa = phi i32 [ %i.ik, %.lr.ph.i56 ], [ %i.ja, %.peel.next128 ], [ %i.jc, %bb.x ]
  %notmask.i62 = shl nsw i32 -1, %.015.i58.lcssa
  %i.jf = xor i32 %notmask.i62, -1
  %i.jg = and i32 %.0814.i59.lcssa, %i.jf
  %i.jh = sub i32 8, %.lcssa112
  %i.ji = shl i32 %i.jg, %i.jh
  %i.jj = trunc i32 %i.ji to i8
  %i.jk = or i8 %i.je, %i.jj
  store i8 %i.jk, ptr %i.ab, align 4, !tbaa !92
  %i.jl = sub nuw i32 %.lcssa112, %.015.i58.lcssa
  store i32 %i.jl, ptr %i.aa, align 8, !tbaa !91
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit63

.lr.ph240:                                        ; preds = %.peel.next128, %bb.x
  %.0814.i59239 = phi i32 [ %i.jc, %bb.x ], [ %i.ja, %.peel.next128 ] ; 2 uses
  %.015.i58238 = phi i32 [ %i.jm, %bb.x ], [ %i.im, %.peel.next128 ]
  %i.jm = add nsw i32 %.015.i58238, -8            ; 4 uses
  %i.jn = trunc i32 %.0814.i59239 to i8
  %i.jo = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.jp = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.ac, align 8, !tbaa !16
  %i.jr = zext i32 %i.jp to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  store i8 %i.jn, ptr %i.js, align 1, !tbaa !62
  %i.jt = load i32, ptr %i.ac, align 8, !tbaa !16
  %i.ju = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %bb.y, label %_ZN10COutBuffer9WriteByteEh.exit.i60

bb.y:                                             ; preds = %.lr.ph240
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i60

_ZN10COutBuffer9WriteByteEh.exit.i60:             ; preds = %bb.y, %.lr.ph240
  %i.jw = load i32, ptr %i.aa, align 8, !tbaa !91
  store i32 8, ptr %i.aa, align 8, !tbaa !91
  store i8 0, ptr %i.ab, align 4, !tbaa !92
  %.not.i61 = icmp eq i32 %i.jm, 0
  br i1 %.not.i61, label %_ZN12CBitlEncoder9WriteBitsEjj.exit63, label %bb.x, !llvm.loop !128

_ZN12CBitlEncoder9WriteBitsEjj.exit63:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60, %_ZN10COutBuffer9WriteByteEh.exit.i60.peel, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit, %.loopexit130
  %.not13.i64 = icmp samesign ult i64 %.0.i, 4
  br i1 %.not13.i64, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit63
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflateL15kDistDirectBitsE, i64 %.0.i
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !62
  %i.jz = zext i8 %i.jy to i32                    ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr @_ZN9NCompress8NDeflateL10kDistStartE, i64 %.0.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !4
  %i.kc = sub i32 %i.hu, %i.kb                    ; 3 uses
  %.pre.i66 = load i32, ptr %i.aa, align 8, !tbaa !91 ; 4 uses
  %i.kd = icmp ugt i32 %.pre.i66, %i.jz
  %.pre146 = load i8, ptr %i.ab, align 4, !tbaa !92 ; 2 uses
  br i1 %i.kd, label %.loopexit134, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i65
  %i.ke = sub nuw nsw i32 %i.jz, %.pre.i66        ; 4 uses
  %i.kf = sub nsw i32 8, %.pre.i66
  %i.kg = shl i32 %i.kc, %i.kf
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = or i8 %.pre146, %i.kh
  %i.kj = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.kk = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.ac, align 8, !tbaa !16
  %i.km = zext i32 %i.kk to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.km
  store i8 %i.ki, ptr %i.kn, align 1, !tbaa !62
  %i.ko = load i32, ptr %i.ac, align 8, !tbaa !16
  %i.kp = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.kq = icmp eq i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.aa, label %_ZN10COutBuffer9WriteByteEh.exit.i69.peel

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i69.peel

_ZN10COutBuffer9WriteByteEh.exit.i69.peel:        ; preds = %bb.aa, %bb.z
  %i.kr = load i32, ptr %i.aa, align 8, !tbaa !91
  store i32 8, ptr %i.aa, align 8, !tbaa !91
  store i8 0, ptr %i.ab, align 4, !tbaa !92
  %.not.i70.peel = icmp eq i32 %i.ke, 0
  br i1 %.not.i70.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.peel.next132

.peel.next132:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69.peel
  %i.ks = lshr i32 %i.kc, %i.kr                   ; 2 uses
  %i.kt = icmp samesign ult i32 %i.ke, 8
  br i1 %i.kt, label %.loopexit134, label %.lr.ph245

bb.ab:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69
  %i.ku = lshr i32 %.0814.i68244, %i.lo           ; 2 uses
  %i.kv = icmp ult i32 %i.le, 8
  br i1 %i.kv, label %.loopexit134, label %.lr.ph245, !llvm.loop !129

.loopexit134:                                     ; preds = %bb.ab, %.peel.next132, %.lr.ph.i65
  %i.kw = phi i8 [ %.pre146, %.lr.ph.i65 ], [ 0, %.peel.next132 ], [ 0, %bb.ab ]
  %.lcssa116 = phi i32 [ %.pre.i66, %.lr.ph.i65 ], [ 8, %.peel.next132 ], [ 8, %bb.ab ] ; 2 uses
  %.015.i67.lcssa = phi i32 [ %i.jz, %.lr.ph.i65 ], [ %i.ke, %.peel.next132 ], [ %i.le, %bb.ab ] ; 2 uses
  %.0814.i68.lcssa = phi i32 [ %i.kc, %.lr.ph.i65 ], [ %i.ks, %.peel.next132 ], [ %i.ku, %bb.ab ]
  %notmask.i71 = shl nsw i32 -1, %.015.i67.lcssa
  %i.kx = xor i32 %notmask.i71, -1
  %i.ky = and i32 %.0814.i68.lcssa, %i.kx
  %i.kz = sub i32 8, %.lcssa116
  %i.la = shl i32 %i.ky, %i.kz
  %i.lb = trunc i32 %i.la to i8
  %i.lc = or i8 %i.kw, %i.lb
  store i8 %i.lc, ptr %i.ab, align 4, !tbaa !92
  %i.ld = sub nuw i32 %.lcssa116, %.015.i67.lcssa
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split

.lr.ph245:                                        ; preds = %.peel.next132, %bb.ab
  %.0814.i68244 = phi i32 [ %i.ku, %bb.ab ], [ %i.ks, %.peel.next132 ] ; 2 uses
  %.015.i67243 = phi i32 [ %i.le, %bb.ab ], [ %i.ke, %.peel.next132 ]
  %i.le = add nsw i32 %.015.i67243, -8            ; 4 uses
  %i.lf = trunc i32 %.0814.i68244 to i8
  %i.lg = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.lh = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.li = add i32 %i.lh, 1
  store i32 %i.li, ptr %i.ac, align 8, !tbaa !16
  %i.lj = zext i32 %i.lh to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lj
  store i8 %i.lf, ptr %i.lk, align 1, !tbaa !62
  %i.ll = load i32, ptr %i.ac, align 8, !tbaa !16
  %i.lm = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.ln = icmp eq i32 %i.ll, %i.lm
  br i1 %i.ln, label %bb.ac, label %_ZN10COutBuffer9WriteByteEh.exit.i69

bb.ac:                                            ; preds = %.lr.ph245
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i69

_ZN10COutBuffer9WriteByteEh.exit.i69:             ; preds = %bb.ac, %.lr.ph245
  %i.lo = load i32, ptr %i.aa, align 8, !tbaa !91
  store i32 8, ptr %i.aa, align 8, !tbaa !91
  store i8 0, ptr %i.ab, align 4, !tbaa !92
  %.not.i70 = icmp eq i32 %i.le, 0
  br i1 %.not.i70, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %bb.ab, !llvm.loop !129

_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split: ; preds = %.loopexit138, %.loopexit134
  %.sink = phi i32 [ %i.ld, %.loopexit134 ], [ %i.do, %.loopexit138 ]
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !91
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36

_ZN12CBitlEncoder9WriteBitsEjj.exit36:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69, %_ZN10COutBuffer9WriteByteEh.exit.i33, %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split, %_ZN10COutBuffer9WriteByteEh.exit.i69.peel, %_ZN10COutBuffer9WriteByteEh.exit.i33.peel, %_ZN12CBitlEncoder9WriteBitsEjj.exit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lp = load i32, ptr %i.w, align 4, !tbaa !106
  %i.lq = zext i32 %i.lp to i64
  %i.lr = icmp samesign ult i64 %indvars.iv.next, %i.lq
  br i1 %i.lr, label %bb.e, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge, !llvm.loop !130
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.018 = phi i32 [ %2, %bb.a ], [ %i.aa, %._crit_edge ] ; 2 uses
  %.017 = phi i32 [ %1, %bb.a ], [ %i.g, %._crit_edge ] ; 3 uses
  %i.f = tail call i32 @llvm.umin.i32(i32 %.017, i32 65535) ; 5 uses
  %i.g = sub i32 %.017, %i.f                      ; 2 uses
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = select i1 %3, i1 %i.h, i1 false
  %i.j = zext i1 %i.i to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.j, i32 noundef 1)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 0, i32 noundef 2)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !91
  %i.l = icmp ult i32 %i.k, 8
  br i1 %i.l, label %bb.c, label %_ZN12CBitlEncoder9FlushByteEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.c, align 4, !tbaa !92
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.o = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !16
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store i8 %i.m, ptr %i.r, align 1, !tbaa !62
  %i.s = load i32, ptr %i.d, align 8, !tbaa !16
  %i.t = load i32, ptr %i.e, align 4, !tbaa !93
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN12CBitlEncoder9FlushByteEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN12CBitlEncoder9FlushByteEv.exit

_ZN12CBitlEncoder9FlushByteEv.exit:               ; preds = %bb.b, %bb.c, %bb.d
  store i32 8, ptr %i.b, align 8, !tbaa !91
  store i8 0, ptr %i.c, align 4, !tbaa !92
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.f, i32 noundef 16)
  %i.v = xor i32 %i.f, 65535
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.v, i32 noundef 16)
  %i.w = load ptr, ptr %0, align 8, !tbaa !74
  %i.x = zext i32 %.018 to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  %.not = icmp eq i32 %.017, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12CBitlEncoder9FlushByteEv.exit
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12CBitlEncoder9WriteByteEh.exit, %_ZN12CBitlEncoder9FlushByteEv.exit
  %i.aa = sub i32 %.018, %i.f
  br i1 %i.h, label %bb.f, label %bb.b, !llvm.loop !131

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12CBitlEncoder9WriteByteEh.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN12CBitlEncoder9WriteByteEh.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.d, align 8, !tbaa !16
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  store i8 %i.ac, ptr %i.ah, align 1, !tbaa !62
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !16
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !93
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN12CBitlEncoder9WriteByteEh.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN12CBitlEncoder9WriteByteEh.exit

_ZN12CBitlEncoder9WriteByteEh.exit:               ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132

bb.f:                                             ; preds = %._crit_edge
  ret void
end_hunk_0
