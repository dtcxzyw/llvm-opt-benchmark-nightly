Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/STEPFileEncoding?download=true
inline.NumInlined: 172
inline.NumDeleted: 107
begin_hunk_0_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ha = getelementptr i8, ptr %i.dd, i64 7
  %i.hb = getelementptr i8, ptr %i.de, i64 11
  %i.hc = getelementptr i8, ptr %i.df, i64 15
  %i.hd = getelementptr i8, ptr %i.dg, i64 19
  %i.he = getelementptr i8, ptr %i.dh, i64 23
  %i.hf = getelementptr i8, ptr %i.di, i64 27
  %i.hg = getelementptr i8, ptr %i.dj, i64 31
  %i.hh = load i8, ptr %i.gz, align 1, !alias.scope !28
  %i.hi = load i8, ptr %i.ha, align 1, !alias.scope !28
  %i.hj = load i8, ptr %i.hb, align 1, !alias.scope !28
  %i.hk = load i8, ptr %i.hc, align 1, !alias.scope !28
  %i.hl = load i8, ptr %i.hd, align 1, !alias.scope !28
  %i.hm = load i8, ptr %i.he, align 1, !alias.scope !28
  %i.hn = load i8, ptr %i.hf, align 1, !alias.scope !28
  %i.ho = load i8, ptr %i.hg, align 1, !alias.scope !28
  %i.hp = insertelement <8 x i8> poison, i8 %i.hh, i64 0
  %i.hq = insertelement <8 x i8> %i.hp, i8 %i.hi, i64 1
  %i.hr = insertelement <8 x i8> %i.hq, i8 %i.hj, i64 2
  %i.hs = insertelement <8 x i8> %i.hr, i8 %i.hk, i64 3
  %i.ht = insertelement <8 x i8> %i.hs, i8 %i.hl, i64 4
  %i.hu = insertelement <8 x i8> %i.ht, i8 %i.hm, i64 5
  %i.hv = insertelement <8 x i8> %i.hu, i8 %i.hn, i64 6
  %i.hw = insertelement <8 x i8> %i.hv, i8 %i.ho, i64 7 ; 5 uses
  %i.hx = add <8 x i8> %i.hw, splat (i8 -48)      ; 2 uses
  %i.hy = icmp ugt <8 x i8> %i.hx, splat (i8 9)
  %i.hz = add <8 x i8> %i.hw, splat (i8 -65)
  %i.ia = icmp ult <8 x i8> %i.hz, splat (i8 6)
  %i.ib = add <8 x i8> %i.hw, splat (i8 -55)
  %i.ic = select <8 x i1> %i.ia, <8 x i8> %i.ib, <8 x i8> splat (i8 -1)
  %i.id = add <8 x i8> %i.hw, splat (i8 -97)
  %i.ie = icmp ult <8 x i8> %i.id, splat (i8 6)
  %i.if = add nsw <8 x i8> %i.hw, splat (i8 -87)
  %predphi628 = select <8 x i1> %i.ie, <8 x i8> %i.if, <8 x i8> %i.ic
  %predphi629 = select <8 x i1> %i.hy, <8 x i8> %predphi628, <8 x i8> %i.hx
  %i.ig = shl <8 x i8> %predphi627, splat (i8 4)
  %i.ih = add <8 x i8> %predphi629, %i.ig
  %i.ii = zext <8 x i8> %i.fr to <8 x i16>
  %i.ij = shl nuw <8 x i16> %i.ii, splat (i16 8)
  %i.ik = zext <8 x i8> %i.ih to <8 x i16>
  %i.il = or disjoint <8 x i16> %i.ij, %i.ik
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index
  store <8 x i16> %i.il, ptr %i.im, align 2, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge404, label %.lr.ph403.preheader631

.lr.ph403.preheader631:                           ; preds = %vector.memcheck, %.lr.ph403.preheader, %middle.block
  %.0155401.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph403.preheader ], [ %n.vec, %middle.block ]
  %.0156400.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph403.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph403

._crit_edge404:                                   ; preds = %bb.at, %middle.block
  %i.io = mul nuw i64 %i.cs, 3
  %i.ip = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.io) #13
          to label %bb.au unwind label %bb.ax     ; 4 uses

.lr.ph403:                                        ; preds = %.lr.ph403.preheader631, %bb.at
  %.0155401 = phi i64 [ %i.ka, %bb.at ], [ %.0155401.ph, %.lr.ph403.preheader631 ] ; 2 uses
  %.0156400 = phi ptr [ %i.kb, %bb.at ], [ %.0156400.ph, %.lr.ph403.preheader631 ] ; 5 uses
  %i.iq = load i8, ptr %.0156400, align 1         ; 5 uses
  %i.ir = add i8 %i.iq, -48                       ; 2 uses
  %or.cond.i.i193 = icmp ult i8 %i.ir, 10
  br i1 %or.cond.i.i193, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i197, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph403
  %i.is = add i8 %i.iq, -97
  %or.cond5.i.i194 = icmp ult i8 %i.is, 6
  br i1 %or.cond5.i.i194, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.it = add nsw i8 %i.iq, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i197

bb.ai:                                            ; preds = %bb.ag
  %i.iu = add i8 %i.iq, -65
  %or.cond8.i.i195 = icmp ult i8 %i.iu, 6
  %i.iv = add i8 %i.iq, -55
  %spec.select.i.i196 = select i1 %or.cond8.i.i195, i8 %i.iv, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i197

_ZN6Assimp17HexDigitToDecimalEc.exit.i197:        ; preds = %bb.ai, %bb.ah, %.lr.ph403
  %.0.i.i198 = phi i8 [ %spec.select.i.i196, %bb.ai ], [ %i.it, %bb.ah ], [ %i.ir, %.lr.ph403 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0156400, i64 1
  %i.ix = load i8, ptr %i.iw, align 1             ; 5 uses
  %i.iy = add i8 %i.ix, -48                       ; 2 uses
  %or.cond.i2.i199 = icmp ult i8 %i.iy, 10
  br i1 %or.cond.i2.i199, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i197
  %i.iz = add i8 %i.ix, -97
  %or.cond5.i3.i200 = icmp ult i8 %i.iz, 6
  br i1 %or.cond5.i3.i200, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ja = add nsw i8 %i.ix, -87
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.jb = add i8 %i.ix, -65
  %or.cond8.i4.i201 = icmp ult i8 %i.jb, 6
  %i.jc = add i8 %i.ix, -55
  %spec.select.i5.i202 = select i1 %or.cond8.i4.i201, i8 %i.jc, i8 -1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZN6Assimp17HexDigitToDecimalEc.exit.i197
  %.0.i6.i203 = phi i8 [ %spec.select.i5.i202, %bb.al ], [ %i.ja, %bb.ak ], [ %i.iy, %_ZN6Assimp17HexDigitToDecimalEc.exit.i197 ]
  %i.jd = shl i8 %.0.i.i198, 4
  %i.je = add i8 %.0.i6.i203, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %.0156400, i64 2
  %i.jg = load i8, ptr %i.jf, align 1             ; 5 uses
  %i.jh = add i8 %i.jg, -48                       ; 2 uses
  %or.cond.i.i205 = icmp ult i8 %i.jh, 10
  br i1 %or.cond.i.i205, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i209, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ji = add i8 %i.jg, -97
  %or.cond5.i.i206 = icmp ult i8 %i.ji, 6
  br i1 %or.cond5.i.i206, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jj = add nsw i8 %i.jg, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i209

bb.ap:                                            ; preds = %bb.an
  %i.jk = add i8 %i.jg, -65
  %or.cond8.i.i207 = icmp ult i8 %i.jk, 6
  %i.jl = add i8 %i.jg, -55
  %spec.select.i.i208 = select i1 %or.cond8.i.i207, i8 %i.jl, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i209

_ZN6Assimp17HexDigitToDecimalEc.exit.i209:        ; preds = %bb.ap, %bb.ao, %bb.am
  %.0.i.i210 = phi i8 [ %spec.select.i.i208, %bb.ap ], [ %i.jj, %bb.ao ], [ %i.jh, %bb.am ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.0156400, i64 3
  %i.jn = load i8, ptr %i.jm, align 1             ; 5 uses
  %i.jo = add i8 %i.jn, -48                       ; 2 uses
  %or.cond.i2.i211 = icmp ult i8 %i.jo, 10
  br i1 %or.cond.i2.i211, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i209
  %i.jp = add i8 %i.jn, -97
  %or.cond5.i3.i212 = icmp ult i8 %i.jp, 6
  br i1 %or.cond5.i3.i212, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jq = add nsw i8 %i.jn, -87
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jr = add i8 %i.jn, -65
  %or.cond8.i4.i213 = icmp ult i8 %i.jr, 6
  %i.js = add i8 %i.jn, -55
  %spec.select.i5.i214 = select i1 %or.cond8.i4.i213, i8 %i.js, i8 -1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZN6Assimp17HexDigitToDecimalEc.exit.i209
  %.0.i6.i215 = phi i8 [ %spec.select.i5.i214, %bb.as ], [ %i.jq, %bb.ar ], [ %i.jo, %_ZN6Assimp17HexDigitToDecimalEc.exit.i209 ]
  %i.jt = shl i8 %.0.i.i210, 4
  %i.ju = add i8 %.0.i6.i215, %i.jt
  %i.jv = zext i8 %i.je to i16
  %i.jw = shl nuw i16 %i.jv, 8
  %i.jx = zext i8 %i.ju to i16
  %i.jy = or disjoint i16 %i.jw, %i.jx
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %.0155401
  store i16 %i.jy, ptr %i.jz, align 2
  %i.ka = add nuw nsw i64 %.0155401, 1            ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0156400, i64 4
  %exitcond463.not = icmp eq i64 %i.ka, %i.cs
  br i1 %exitcond463.not, label %._crit_edge404, label %.lr.ph403, !llvm.loop !24

bb.au:                                            ; preds = %._crit_edge404
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cs
  %i.kd = invoke noundef ptr @_ZN4utf88utf16to8IPKtPhEET0_T_S5_S4_(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.kc, ptr noundef nonnull %i.ip)
          to label %bb.av unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221 ; 0 uses

bb.av:                                            ; preds = %bb.au
  %.reass553.reass = add i64 %.0157.lcssa, %invariant.op742
  %i.ke = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph611, i64 noundef %.reass553.reass)
          to label %bb.aw unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221 ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.kf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph611, ptr noundef nonnull %i.ip, i64 noundef 0)
          to label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221 ; 0 uses

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.ip) #14
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #14
  br label %bb.ce

bb.ax:                                            ; preds = %._crit_edge404
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221: ; preds = %bb.au, %bb.aw, %bb.av
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224.sink.split

bb.ay:                                            ; preds = %bb.ae
  %i.ki = sub nuw i64 %.0157.lcssa, %i.h          ; 3 uses
  %i.kj = and i64 %i.ki, 7
  %.not = icmp eq i64 %i.kj, 0
  br i1 %.not, label %.lr.ph398.preheader, label %.critedge

.lr.ph398.preheader:                              ; preds = %bb.ay
  %i.kk = lshr exact i64 %i.ki, 3                 ; 2 uses
  %i.kl = lshr exact i64 %i.ki, 1                 ; 2 uses
  %i.km = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kl) #13 ; 6 uses
  %i.kn = load ptr, ptr %0, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.h
  br label %.lr.ph398

._crit_edge399:                                   ; preds = %bb.ca
  %i.kp = mul nuw i64 %i.kk, 5
  %i.kq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kp) #13
          to label %bb.cb unwind label %bb.cd     ; 4 uses

.lr.ph398:                                        ; preds = %.lr.ph398.preheader, %bb.ca
  %.0396 = phi i64 [ %i.nn, %bb.ca ], [ 0, %.lr.ph398.preheader ] ; 2 uses
  %.0146395 = phi ptr [ %i.no, %bb.ca ], [ %i.ko, %.lr.ph398.preheader ] ; 9 uses
  %i.kr = load i8, ptr %.0146395, align 1         ; 5 uses
  %i.ks = add i8 %i.kr, -48                       ; 2 uses
  %or.cond.i.i225 = icmp ult i8 %i.ks, 10
  br i1 %or.cond.i.i225, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i229, label %bb.az

bb.az:                                            ; preds = %.lr.ph398
  %i.kt = add i8 %i.kr, -97
  %or.cond5.i.i226 = icmp ult i8 %i.kt, 6
  br i1 %or.cond5.i.i226, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ku = add nsw i8 %i.kr, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i229

bb.bb:                                            ; preds = %bb.az
  %i.kv = add i8 %i.kr, -65
  %or.cond8.i.i227 = icmp ult i8 %i.kv, 6
  %i.kw = add i8 %i.kr, -55
  %spec.select.i.i228 = select i1 %or.cond8.i.i227, i8 %i.kw, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i229

_ZN6Assimp17HexDigitToDecimalEc.exit.i229:        ; preds = %bb.bb, %bb.ba, %.lr.ph398
  %.0.i.i230 = phi i8 [ %spec.select.i.i228, %bb.bb ], [ %i.ku, %bb.ba ], [ %i.ks, %.lr.ph398 ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.0146395, i64 1
  %i.ky = load i8, ptr %i.kx, align 1             ; 5 uses
  %i.kz = add i8 %i.ky, -48                       ; 2 uses
  %or.cond.i2.i231 = icmp ult i8 %i.kz, 10
  br i1 %or.cond.i2.i231, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i229
  %i.la = add i8 %i.ky, -97
  %or.cond5.i3.i232 = icmp ult i8 %i.la, 6
  br i1 %or.cond5.i3.i232, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lb = add nsw i8 %i.ky, -87
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.lc = add i8 %i.ky, -65
  %or.cond8.i4.i233 = icmp ult i8 %i.lc, 6
  %i.ld = add i8 %i.ky, -55
  %spec.select.i5.i234 = select i1 %or.cond8.i4.i233, i8 %i.ld, i8 -1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %_ZN6Assimp17HexDigitToDecimalEc.exit.i229
  %.0.i6.i235 = phi i8 [ %spec.select.i5.i234, %bb.be ], [ %i.lb, %bb.bd ], [ %i.kz, %_ZN6Assimp17HexDigitToDecimalEc.exit.i229 ]
  %i.le = shl i8 %.0.i.i230, 4
  %i.lf = add i8 %.0.i6.i235, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %.0146395, i64 2
  %i.lh = load i8, ptr %i.lg, align 1             ; 5 uses
  %i.li = add i8 %i.lh, -48                       ; 2 uses
  %or.cond.i.i237 = icmp ult i8 %i.li, 10
  br i1 %or.cond.i.i237, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i241, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lj = add i8 %i.lh, -97
  %or.cond5.i.i238 = icmp ult i8 %i.lj, 6
  br i1 %or.cond5.i.i238, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lk = add nsw i8 %i.lh, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i241

bb.bi:                                            ; preds = %bb.bg
  %i.ll = add i8 %i.lh, -65
  %or.cond8.i.i239 = icmp ult i8 %i.ll, 6
  %i.lm = add i8 %i.lh, -55
  %spec.select.i.i240 = select i1 %or.cond8.i.i239, i8 %i.lm, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i241

_ZN6Assimp17HexDigitToDecimalEc.exit.i241:        ; preds = %bb.bi, %bb.bh, %bb.bf
  %.0.i.i242 = phi i8 [ %spec.select.i.i240, %bb.bi ], [ %i.lk, %bb.bh ], [ %i.li, %bb.bf ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.0146395, i64 3
  %i.lo = load i8, ptr %i.ln, align 1             ; 5 uses
  %i.lp = add i8 %i.lo, -48                       ; 2 uses
  %or.cond.i2.i243 = icmp ult i8 %i.lp, 10
  br i1 %or.cond.i2.i243, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i241
  %i.lq = add i8 %i.lo, -97
  %or.cond5.i3.i244 = icmp ult i8 %i.lq, 6
  br i1 %or.cond5.i3.i244, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lr = add nsw i8 %i.lo, -87
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ls = add i8 %i.lo, -65
  %or.cond8.i4.i245 = icmp ult i8 %i.ls, 6
  %i.lt = add i8 %i.lo, -55
  %spec.select.i5.i246 = select i1 %or.cond8.i4.i245, i8 %i.lt, i8 -1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %_ZN6Assimp17HexDigitToDecimalEc.exit.i241
  %.0.i6.i247 = phi i8 [ %spec.select.i5.i246, %bb.bl ], [ %i.lr, %bb.bk ], [ %i.lp, %_ZN6Assimp17HexDigitToDecimalEc.exit.i241 ]
  %i.lu = shl i8 %.0.i.i242, 4
  %i.lv = add i8 %.0.i6.i247, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %.0146395, i64 4
  %i.lx = load i8, ptr %i.lw, align 1             ; 5 uses
  %i.ly = add i8 %i.lx, -48                       ; 2 uses
  %or.cond.i.i249 = icmp ult i8 %i.ly, 10
  br i1 %or.cond.i.i249, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i253, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lz = add i8 %i.lx, -97
  %or.cond5.i.i250 = icmp ult i8 %i.lz, 6
  br i1 %or.cond5.i.i250, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ma = add nsw i8 %i.lx, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i253

bb.bp:                                            ; preds = %bb.bn
  %i.mb = add i8 %i.lx, -65
  %or.cond8.i.i251 = icmp ult i8 %i.mb, 6
  %i.mc = add i8 %i.lx, -55
  %spec.select.i.i252 = select i1 %or.cond8.i.i251, i8 %i.mc, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i253

_ZN6Assimp17HexDigitToDecimalEc.exit.i253:        ; preds = %bb.bp, %bb.bo, %bb.bm
  %.0.i.i254 = phi i8 [ %spec.select.i.i252, %bb.bp ], [ %i.ma, %bb.bo ], [ %i.ly, %bb.bm ]
  %i.md = getelementptr inbounds nuw i8, ptr %.0146395, i64 5
  %i.me = load i8, ptr %i.md, align 1             ; 5 uses
  %i.mf = add i8 %i.me, -48                       ; 2 uses
  %or.cond.i2.i255 = icmp ult i8 %i.mf, 10
  br i1 %or.cond.i2.i255, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i253
  %i.mg = add i8 %i.me, -97
  %or.cond5.i3.i256 = icmp ult i8 %i.mg, 6
  br i1 %or.cond5.i3.i256, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mh = add nsw i8 %i.me, -87
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.mi = add i8 %i.me, -65
  %or.cond8.i4.i257 = icmp ult i8 %i.mi, 6
  %i.mj = add i8 %i.me, -55
  %spec.select.i5.i258 = select i1 %or.cond8.i4.i257, i8 %i.mj, i8 -1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %_ZN6Assimp17HexDigitToDecimalEc.exit.i253
  %.0.i6.i259 = phi i8 [ %spec.select.i5.i258, %bb.bs ], [ %i.mh, %bb.br ], [ %i.mf, %_ZN6Assimp17HexDigitToDecimalEc.exit.i253 ]
  %i.mk = shl i8 %.0.i.i254, 4
  %i.ml = add i8 %.0.i6.i259, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %.0146395, i64 6
  %i.mn = load i8, ptr %i.mm, align 1             ; 5 uses
  %i.mo = add i8 %i.mn, -48                       ; 2 uses
  %or.cond.i.i261 = icmp ult i8 %i.mo, 10
  br i1 %or.cond.i.i261, label %_ZN6Assimp17HexDigitToDecimalEc.exit.i265, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mp = add i8 %i.mn, -97
  %or.cond5.i.i262 = icmp ult i8 %i.mp, 6
  br i1 %or.cond5.i.i262, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.mq = add nsw i8 %i.mn, -87
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i265

bb.bw:                                            ; preds = %bb.bu
  %i.mr = add i8 %i.mn, -65
  %or.cond8.i.i263 = icmp ult i8 %i.mr, 6
  %i.ms = add i8 %i.mn, -55
  %spec.select.i.i264 = select i1 %or.cond8.i.i263, i8 %i.ms, i8 -1
  br label %_ZN6Assimp17HexDigitToDecimalEc.exit.i265

_ZN6Assimp17HexDigitToDecimalEc.exit.i265:        ; preds = %bb.bw, %bb.bv, %bb.bt
  %.0.i.i266 = phi i8 [ %spec.select.i.i264, %bb.bw ], [ %i.mq, %bb.bv ], [ %i.mo, %bb.bt ]
  %i.mt = getelementptr inbounds nuw i8, ptr %.0146395, i64 7
  %i.mu = load i8, ptr %i.mt, align 1             ; 5 uses
  %i.mv = add i8 %i.mu, -48                       ; 2 uses
  %or.cond.i2.i267 = icmp ult i8 %i.mv, 10
  br i1 %or.cond.i2.i267, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit.i265
  %i.mw = add i8 %i.mu, -97
  %or.cond5.i3.i268 = icmp ult i8 %i.mw, 6
  br i1 %or.cond5.i3.i268, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mx = add nsw i8 %i.mu, -87
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.my = add i8 %i.mu, -65
  %or.cond8.i4.i269 = icmp ult i8 %i.my, 6
  %i.mz = add i8 %i.mu, -55
  %spec.select.i5.i270 = select i1 %or.cond8.i4.i269, i8 %i.mz, i8 -1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %_ZN6Assimp17HexDigitToDecimalEc.exit.i265
  %.0.i6.i271 = phi i8 [ %spec.select.i5.i270, %bb.bz ], [ %i.mx, %bb.by ], [ %i.mv, %_ZN6Assimp17HexDigitToDecimalEc.exit.i265 ]
  %i.na = shl i8 %.0.i.i266, 4
  %i.nb = add i8 %.0.i6.i271, %i.na
  %i.nc = zext i8 %i.lf to i32
  %i.nd = shl nuw i32 %i.nc, 24
  %i.ne = zext i8 %i.lv to i32
  %i.nf = shl nuw nsw i32 %i.ne, 16
  %i.ng = or disjoint i32 %i.nf, %i.nd
  %i.nh = zext i8 %i.ml to i32
  %i.ni = shl nuw nsw i32 %i.nh, 8
  %i.nj = or disjoint i32 %i.ni, %i.ng
  %i.nk = zext i8 %i.nb to i32
  %i.nl = or disjoint i32 %i.nj, %i.nk
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.0396
  store i32 %i.nl, ptr %i.nm, align 4
  %i.nn = add nuw nsw i64 %.0396, 1               ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0146395, i64 8
  %exitcond461.not = icmp eq i64 %i.nn, %i.kk
  br i1 %exitcond461.not, label %._crit_edge399, label %.lr.ph398, !llvm.loop !25

bb.cb:                                            ; preds = %._crit_edge399
  %i.np = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kl
  br label %.lr.ph.i273

.lr.ph.i273:                                      ; preds = %bb.cb, %.noexc
  %.08.i274 = phi ptr [ %i.nr, %.noexc ], [ %i.kq, %bb.cb ]
  %.057.i275 = phi ptr [ %i.ns, %.noexc ], [ %i.km, %bb.cb ] ; 2 uses
  %i.nq = load i32, ptr %.057.i275, align 4
  %i.nr = invoke noundef ptr @_ZN4utf86appendIPhEET_jS2_(i32 noundef %i.nq, ptr noundef %.08.i274)
          to label %.noexc unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit284.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i273
  %i.ns = getelementptr inbounds nuw i8, ptr %.057.i275, i64 4 ; 2 uses
  %.not.i276 = icmp eq ptr %i.ns, %i.np
  br i1 %.not.i276, label %_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277, label %.lr.ph.i273, !llvm.loop !26

_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277:     ; preds = %.noexc
  %.reass.reass = add i64 %.0157.lcssa, %invariant.op
  %i.nt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph611, i64 noundef %.reass.reass)
          to label %bb.cc unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit284.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cc:                                            ; preds = %_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277
  %i.nu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0164.ph611, ptr noundef nonnull %i.kq, i64 noundef 0)
          to label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit284.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.cc
  call void @_ZdaPv(ptr noundef nonnull %i.kq) #14
  call void @_ZdaPv(ptr noundef nonnull %i.km) #14
  br label %bb.ce

bb.cd:                                            ; preds = %._crit_edge399
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit284.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i273, %bb.cc, %_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277
  %lpad.loopexit.split-lp632 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224.sink.split

bb.ce:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit192
  %i.nw = load i64, ptr %i.b, align 8             ; 2 uses
  %.not420 = icmp ult i64 %.0164.ph611, %i.nw
  br i1 %.not420, label %bb.b, label %.critedge

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224.sink.split: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit284.loopexit.split-lp.loopexit.split-lp, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221
  %.sink554 = phi ptr [ %i.ip, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221 ], [ %i.kq, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit284.loopexit.split-lp.loopexit.split-lp ]
  %.sink.ph = phi ptr [ %i.cu, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221 ], [ %i.km, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit284.loopexit.split-lp.loopexit.split-lp ]
  %.pn185.pn.ph = phi { ptr, i32 } [ %i.kh, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit221 ], [ %lpad.loopexit.split-lp632, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit284.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %.sink554) #14
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224.sink.split, %bb.cd, %bb.ax
  %.sink = phi ptr [ %i.km, %bb.cd ], [ %i.cu, %bb.ax ], [ %.sink.ph, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224.sink.split ]
  %.pn185.pn = phi { ptr, i32 } [ %i.nv, %bb.cd ], [ %i.kg, %bb.ax ], [ %.pn185.pn.ph, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224.sink.split ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #14
  resume { ptr, i32 } %.pn185.pn

.thread307:                                       ; preds = %bb.ae, %bb.t, %bb.u, %bb.v, %bb.x, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %.pre-phi = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.x ], [ %i.f, %bb.v ], [ %i.f, %bb.u ], [ %i.f, %bb.t ], [ %i.f, %bb.ae ] ; 2 uses
  %i.nx = load i64, ptr %i.b, align 8             ; 2 uses
  %.not418.not = icmp ult i64 %.pre-phi, %i.nx
  br i1 %.not418.not, label %.lr.ph407, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %.thread307, %_ZN6Assimp17HexOctetToDecimalEPKc.exit, %bb.ce, %bb.w, %bb.ay, %._crit_edge, %bb.af, %bb.ac, %bb.a
  %i.ny = phi i1 [ true, %bb.a ], [ false, %bb.ac ], [ false, %._crit_edge ], [ false, %bb.af ], [ true, %bb.ce ], [ false, %bb.w ], [ false, %bb.ay ], [ true, %.thread307 ], [ false, %_ZN6Assimp17HexOctetToDecimalEPKc.exit ]
  ret i1 %i.ny
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4utf88utf16to8IPKtPhEET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !33 {
bb.a:
  %.not27 = icmp eq ptr %0, %1
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.01629 = phi ptr [ %i.r, %bb.h ], [ %2, %bb.a ]
  %.01728 = phi ptr [ %.1, %bb.h ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01728, i64 2 ; 3 uses
  %i.b = load i16, ptr %.01728, align 2           ; 4 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %trunc = and i16 %i.b, -1024
  switch i16 %trunc, label %bb.h [
    i16 -10240, label %bb.b
    i16 -9216, label %bb.g
  ]

bb.b:                                             ; preds = %.lr.ph
  %.not20 = icmp eq ptr %i.a, %1
  br i1 %.not20, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %i.a, align 2              ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = and i32 %i.e, 64512
  %i.g = icmp eq i32 %i.f, 56320
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.01728, i64 4
  %i.i = shl nuw nsw i32 %i.c, 10
  %i.j = add nsw i32 %i.i, -56613888
  %i.k = add nsw i32 %i.j, %i.e
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf813invalid_utf16E, i64 16), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i16 %i.d, ptr %i.m, align 8
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN4utf813invalid_utf16E, ptr nonnull @_ZNSt9exceptionD2Ev) #11
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf813invalid_utf16E, i64 16), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i16 %i.b, ptr %i.o, align 8
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN4utf813invalid_utf16E, ptr nonnull @_ZNSt9exceptionD2Ev) #11
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf813invalid_utf16E, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i16 %i.b, ptr %i.q, align 8
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN4utf813invalid_utf16E, ptr nonnull @_ZNSt9exceptionD2Ev) #11
  unreachable

bb.h:                                             ; preds = %.lr.ph, %bb.d
  %.1 = phi ptr [ %i.h, %bb.d ], [ %i.a, %.lr.ph ] ; 2 uses
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.c, %.lr.ph ]
  %i.r = tail call noundef ptr @_ZN4utf86appendIPhEET_jS2_(i32 noundef %.0, ptr noundef %.01629) ; 2 uses
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.h ]
  ret ptr %.016.lcssa
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4utf86appendIPhEET_jS2_(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !34 {
bb.a:
  %i.a = icmp ult i32 %0, 1114112
  %i.b = and i32 %0, 2095104
  %i.c = icmp ne i32 %i.b, 55296
  %i.d = and i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf818invalid_code_pointE, i64 16), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %0, ptr %i.f, align 8
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4utf818invalid_code_pointE, ptr nonnull @_ZNSt9exceptionD2Ev) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i32 %0, 128
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nuw nsw i32 %0 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %1, align 1
  br label %_ZN4utf88internal6appendIPhEET_jS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %0, 2048
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i32 %0, 6
  %i.l = trunc nuw nsw i32 %i.k to i8
  %i.m = or disjoint i8 %i.l, -64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %1, align 1
  %i.o = trunc i32 %0 to i8
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.q, ptr %i.n, align 1
  br label %_ZN4utf88internal6appendIPhEET_jS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp samesign ult i32 %0, 65536
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = lshr i32 %0, 12
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -32
  store i8 %i.x, ptr %1, align 1
  %i.y = lshr i32 %0, 6
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  store i8 %i.ab, ptr %i.u, align 1
  %i.ac = trunc i32 %0 to i8
  %i.ad = and i8 %i.ac, 63
  %i.ae = or disjoint i8 %i.ad, -128
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.ae, ptr %i.t, align 1
  br label %_ZN4utf88internal6appendIPhEET_jS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = lshr i32 %0, 18
  %i.ai = trunc nuw nsw i32 %i.ah to i8
  %i.aj = lshr i32 %0, 12
  %i.ak = trunc i32 %i.aj to i8
  %i.al = lshr i32 %0, 6
  %i.am = trunc i32 %i.al to i8
  %i.an = trunc i32 %0 to i8
  %i.ao = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ak, i64 1
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 2
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.an, i64 3
  %i.as = and <4 x i8> %i.ar, <i8 -1, i8 63, i8 63, i8 63>
  %i.at = or disjoint <4 x i8> %i.as, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.at, ptr %1, align 1
  br label %_ZN4utf88internal6appendIPhEET_jS3_.exit

_ZN4utf88internal6appendIPhEET_jS3_.exit:         ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.r, %bb.f ], [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  ret ptr %.0.i.i
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

end_hunk_0
