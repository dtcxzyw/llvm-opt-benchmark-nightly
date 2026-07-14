inline.NumInlined: 4577
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN2v88internal10JsonParserIhE14ParseJsonArrayEv:bb.a
  %i.hf = ashr i64 %i.he, 2                       ; 2 uses
  %i.hg = icmp sgt i64 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.preheader.i.i.i.i148, label %._crit_edge.i.i.i.i134

.lr.ph.preheader.i.i.i.i148:                      ; preds = %bb.x
  %i.hh = and i64 %i.he, -4
  %scevgep.i.i.i.i149 = getelementptr i8, ptr %i.hc, i64 %i.hh ; 2 uses
  br label %.lr.ph.i.i.i.i150

.lr.ph.i.i.i.i150:                                ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i163, %.lr.ph.preheader.i.i.i.i148
  %.071.i.i.i.i151 = phi i64 [ %i.ic, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i163 ], [ %i.hf, %.lr.ph.preheader.i.i.i.i148 ] ; 2 uses
  %.02970.i.i.i.i152 = phi ptr [ %i.ib, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i163 ], [ %i.hc, %.lr.ph.preheader.i.i.i.i148 ] ; 9 uses
  %i.hi = load i8, ptr %.02970.i.i.i.i152, align 1
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1             ; 2 uses
  %.not44.i.i.i.i153 = icmp eq i8 %i.hl, 9
  br i1 %.not44.i.i.i.i153, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i154, label %thread-pre-split, !prof !5

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i154: ; preds = %.lr.ph.i.i.i.i150
  %i.hm = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i152, i64 1
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1             ; 2 uses
  %.not45.i.i.i.i155 = icmp eq i8 %i.hq, 9
  br i1 %.not45.i.i.i.i155, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i157, label %thread-pre-split.loopexit.split.loop.exit986, !prof !5

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i157: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i154
  %i.hr = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i152, i64 2
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1             ; 2 uses
  %.not46.i.i.i.i158 = icmp eq i8 %i.hv, 9
  br i1 %.not46.i.i.i.i158, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i160, label %thread-pre-split.loopexit.split.loop.exit983, !prof !5

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i160: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i157
  %i.hw = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i152, i64 3
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1             ; 2 uses
  %.not47.i.i.i.i161 = icmp eq i8 %i.ia, 9
  br i1 %.not47.i.i.i.i161, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i163, label %thread-pre-split.loopexit.split.loop.exit, !prof !5

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i163: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i160
  %i.ib = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i152, i64 4
  %i.ic = add nsw i64 %.071.i.i.i.i151, -1
  %i.id = icmp sgt i64 %.071.i.i.i.i151, 1
  br i1 %i.id, label %.lr.ph.i.i.i.i150, label %._crit_edge.loopexit.i.i.i.i164, !llvm.loop !13

._crit_edge.loopexit.i.i.i.i164:                  ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i163
  %.pre.i.i.i.i165 = ptrtoint ptr %scevgep.i.i.i.i149 to i64
  br label %._crit_edge.i.i.i.i134

._crit_edge.i.i.i.i134:                           ; preds = %._crit_edge.loopexit.i.i.i.i164, %bb.x
  %.pre-phi.i.i.i.i135 = phi i64 [ %.pre.i.i.i.i165, %._crit_edge.loopexit.i.i.i.i164 ], [ %i.hd, %bb.x ]
  %.029.lcssa.i.i.i.i136 = phi ptr [ %scevgep.i.i.i.i149, %._crit_edge.loopexit.i.i.i.i164 ], [ %i.hc, %bb.x ] ; 5 uses
  %i.ie = sub i64 %i.fh, %.pre-phi.i.i.i.i135
  switch i64 %i.ie, label %thread-pre-split.thread [
    i64 3, label %bb.y
    i64 2, label %bb.z
    i64 1, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i134
  %i.if = load i8, ptr %.029.lcssa.i.i.i.i136, align 1
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1             ; 2 uses
  %.not.i.i.i.i146 = icmp eq i8 %i.ii, 9
  br i1 %.not.i.i.i.i146, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i147, label %thread-pre-split, !prof !5

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i147: ; preds = %bb.y
  %i.ij = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i136, i64 1
  br label %bb.z

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i147, %._crit_edge.i.i.i.i134
  %.1.i.i.i.i143 = phi ptr [ %i.ij, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i147 ], [ %.029.lcssa.i.i.i.i136, %._crit_edge.i.i.i.i134 ] ; 3 uses
  %i.ik = load i8, ptr %.1.i.i.i.i143, align 1
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1             ; 2 uses
  %.not42.i.i.i.i144 = icmp eq i8 %i.in, 9
  br i1 %.not42.i.i.i.i144, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i145, label %thread-pre-split, !prof !5

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i145: ; preds = %bb.z
  %i.io = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i143, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i145, %._crit_edge.i.i.i.i134
  %.2.i.i.i.i137 = phi ptr [ %i.io, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i145 ], [ %.029.lcssa.i.i.i.i136, %._crit_edge.i.i.i.i134 ] ; 2 uses
  %i.ip = load i8, ptr %.2.i.i.i.i137, align 1
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1             ; 2 uses
  %.not43.i.i.i.i138 = icmp eq i8 %i.is, 9
  br i1 %.not43.i.i.i.i138, label %thread-pre-split.thread, label %thread-pre-split, !prof !5

bb.ab:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit.i106
  %i.it = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  store ptr %i.it, ptr %i.k, align 8
  br label %.thread424

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i: ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit.i106, %.thread419
  %.0.i.i107414.ph421 = phi i8 [ 13, %.thread419 ], [ %.0.i.i107, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit.i106 ]
  call void @_ZN2v88internal10JsonParserIhE21ReportUnexpectedTokenENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext %.0.i.i107414.ph421, i64 4294967637)
  br label %.thread424

.thread424:                                       ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.iu = trunc nuw i8 %.167 to i1
  %i.iv = load ptr, ptr %i.eb, align 8
  %i.iw = load ptr, ptr %i.ed, align 8
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = lshr i64 %i.iz, 2
  %i.jb = load ptr, ptr %i.ee, align 8
  %i.jc = load ptr, ptr %i.eg, align 8
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = lshr i64 %i.jf, 3
  %i.jh = add nuw nsw i64 %i.jg, %i.ja
  %.fr = freeze i64 %i.jh                         ; 4 uses
  %i.ji = trunc i64 %.fr to i32                   ; 5 uses
  %i.jj = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.iu, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.thread424
  %i.jk = call ptr @_ZN2v88internal7Factory10NewJSArrayENS0_12ElementsKindEiiNS0_26ArrayStorageAllocationModeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.jj, i8 noundef zeroext 0, i32 noundef %i.ji, i32 noundef %i.ji, i32 noundef 0, i8 noundef zeroext 0) #18 ; 4 uses
  %i.jl = icmp sgt i32 %i.ji, 0
  br i1 %i.jl, label %.lr.ph613, label %.loopexit

.lr.ph613:                                        ; preds = %bb.ac
  %i.jm = load i64, ptr %i.jk, align 8
  %i.jn = add i64 %i.jm, 15
  %i.jo = inttoptr i64 %i.jn to ptr
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = add i64 %i.jp, -1
  %i.jr = inttoptr i64 %i.jq to ptr
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 5 uses
  %i.jt = and i64 %.fr, 2147483647
  %i.ju = add nsw i64 %i.jt, -1
  %xtraiter = and i64 %.fr, 3                     ; 3 uses
  %i.jv = icmp ult i64 %i.ju, 3
  br i1 %i.jv, label %.epil.preheader, label %.lr.ph613.new

.lr.ph613.new:                                    ; preds = %.lr.ph613
  %unroll_iter = and i64 %.fr, 2147483644
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph613.new
  %indvars.iv = phi i64 [ 0, %.lr.ph613.new ], [ %indvars.iv.next.3, %bb.ad ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph613.new ], [ %niter.next.3, %bb.ad ]
  %i.jw = load ptr, ptr %i.ed, align 8
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = sext i32 %i.jy to i64
  %i.ka = shl nsw i64 %i.jz, 32
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv
  store atomic volatile i64 %i.ka, ptr %i.kb monotonic, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.kc = load ptr, ptr %i.ed, align 8
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv.next
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = sext i32 %i.ke to i64
  %i.kg = shl nsw i64 %i.kf, 32
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.next
  store atomic volatile i64 %i.kg, ptr %i.kh monotonic, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ki = load ptr, ptr %i.ed, align 8
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv.next.1
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = sext i32 %i.kk to i64
  %i.km = shl nsw i64 %i.kl, 32
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.next.1
  store atomic volatile i64 %i.km, ptr %i.kn monotonic, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ko = load ptr, ptr %i.ed, align 8
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv.next.2
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = sext i32 %i.kq to i64
  %i.ks = shl nsw i64 %i.kr, 32
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.next.2
  store atomic volatile i64 %i.ks, ptr %i.kt monotonic, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit1304.unr-lcssa, label %bb.ad, !llvm.loop !56

bb.ae:                                            ; preds = %.thread424
  %i.ku = call ptr @_ZN2v88internal7Factory10NewJSArrayENS0_12ElementsKindEiiNS0_26ArrayStorageAllocationModeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.jj, i8 noundef zeroext 4, i32 noundef %i.ji, i32 noundef %i.ji, i32 noundef 0, i8 noundef zeroext 0) #18 ; 4 uses
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = add i64 %i.kv, 15
  %i.kx = inttoptr i64 %i.kw to ptr
  %i.ky = load i64, ptr %i.kx, align 8            ; 2 uses
  %i.kz = load ptr, ptr %i.ed, align 8            ; 9 uses
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = load ptr, ptr %i.eb, align 8            ; 4 uses
  %i.lc = ptrtoint ptr %i.lb to i64
  %.not80614 = icmp eq ptr %i.kz, %i.lb
  br i1 %.not80614, label %._crit_edge619, label %.lr.ph618

.lr.ph618:                                        ; preds = %bb.ae
  %i.ld = add i64 %i.ky, -1
  %i.le = inttoptr i64 %i.ld to ptr               ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 3 uses
  %3 = ptrtoint ptr %i.lb to i64
  %4 = ptrtoint ptr %i.kz to i64
  %i.lg = sub i64 %3, %4
  %5 = add i64 %i.lg, -4                          ; 2 uses
  %i.lh = lshr i64 %5, 2
  %i.li = add nuw nsw i64 %i.lh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph618
  %i.lj = add i64 %i.lc, -4
  %i.lk = sub i64 %i.lj, %i.la                    ; 2 uses
  %i.ll = shl i64 %i.lk, 1
  %i.lm = and i64 %i.ll, -8
  %i.ln = getelementptr i8, ptr %i.le, i64 %i.lm
  %scevgep = getelementptr i8, ptr %i.ln, i64 24
  %i.lo = and i64 %i.lk, -4
  %i.lp = getelementptr i8, ptr %i.kz, i64 %i.lo
  %scevgep1202 = getelementptr i8, ptr %i.lp, i64 4
  %bound0 = icmp ult ptr %i.lf, %scevgep1202
  %bound1 = icmp ult ptr %i.kz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.li, 9223372036854775804     ; 5 uses
  %i.lq = shl i64 %n.vec, 2
  %i.lr = getelementptr i8, ptr %i.kz, i64 %i.lq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ls = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.kz, i64 %i.ls ; 2 uses
  %i.lt = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !57
  %wide.load1203 = load <2 x i32>, ptr %i.lt, align 4, !alias.scope !57
  %i.lu = sitofp <2 x i32> %wide.load to <2 x double>
  %i.lv = sitofp <2 x i32> %wide.load1203 to <2 x double>
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store <2 x double> %i.lu, ptr %i.lw, align 1, !alias.scope !60, !noalias !57
  store <2 x double> %i.lv, ptr %i.lx, align 1, !alias.scope !60, !noalias !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ly = icmp eq i64 %index.next, %n.vec
  br i1 %i.ly, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.li, %n.vec
  br i1 %cmp.n, label %._crit_edge619, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph618, %middle.block
  %indvars.iv788.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph618 ], [ %n.vec, %middle.block ]
  %.075615.ph = phi ptr [ %i.kz, %vector.memcheck ], [ %i.kz, %.lr.ph618 ], [ %i.lr, %middle.block ]
  br label %scalar.ph

._crit_edge619:                                   ; preds = %scalar.ph, %middle.block, %bb.ae
  %.073.lcssa = phi i64 [ 0, %bb.ae ], [ %n.vec, %middle.block ], [ %indvars.iv.next789, %scalar.ph ] ; 5 uses
  %i.lz = load ptr, ptr %i.eg, align 8            ; 7 uses
  %i.ma = ptrtoaddr ptr %i.lz to i64
  %i.mb = load ptr, ptr %i.ee, align 8            ; 3 uses
  %.not81620 = icmp eq ptr %i.lz, %i.mb
  br i1 %.not81620, label %.loopexit, label %.lr.ph624

.lr.ph624:                                        ; preds = %._crit_edge619
  %i.mc = add i64 %i.ky, -1                       ; 2 uses
  %i.md = inttoptr i64 %i.mc to ptr
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %6 = ptrtoint ptr %i.mb to i64
  %7 = ptrtoint ptr %i.lz to i64
  %i.mf = sub i64 %6, %7
  %8 = add i64 %i.mf, -8                          ; 2 uses
  %i.mg = lshr i64 %8, 3
  %i.mh = add nuw nsw i64 %i.mg, 1                ; 2 uses
  %min.iters.check1207 = icmp ult i64 %8, 72
  br i1 %min.iters.check1207, label %scalar.ph1206.preheader, label %vector.memcheck1205

vector.memcheck1205:                              ; preds = %.lr.ph624
  %i.mi = shl i64 %.073.lcssa, 3
  %i.mj = add i64 %i.mc, %i.mi
  %i.mk = sub i64 %i.mj, %i.ma
  %i.ml = add i64 %i.mk, 15
  %diff.check = icmp ult i64 %i.ml, 31
  br i1 %diff.check, label %scalar.ph1206.preheader, label %vector.ph1208

vector.ph1208:                                    ; preds = %vector.memcheck1205
  %n.vec1210 = and i64 %i.mh, 4611686018427387900 ; 4 uses
  %i.mm = add i64 %.073.lcssa, %n.vec1210
  %i.mn = shl i64 %n.vec1210, 3
  %i.mo = getelementptr i8, ptr %i.lz, i64 %i.mn
  %i.mp = getelementptr [8 x i8], ptr %i.me, i64 %.073.lcssa
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1208
  %index1212 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1216, %vector.body1211 ] ; 3 uses
  %i.mq = shl i64 %index1212, 3
  %next.gep1213 = getelementptr i8, ptr %i.lz, i64 %i.mq ; 2 uses
  %i.mr = getelementptr i8, ptr %next.gep1213, i64 16
  %wide.load1214 = load <2 x double>, ptr %next.gep1213, align 8 ; 2 uses
  %wide.load1215 = load <2 x double>, ptr %i.mr, align 8 ; 2 uses
  %i.ms = fcmp uno <2 x double> %wide.load1214, zeroinitializer
  %i.mt = fcmp uno <2 x double> %wide.load1215, zeroinitializer
  %i.mu = select <2 x i1> %i.ms, <2 x double> splat (double +qnan), <2 x double> %wide.load1214
  %i.mv = select <2 x i1> %i.mt, <2 x double> splat (double +qnan), <2 x double> %wide.load1215
  %i.mw = getelementptr [8 x i8], ptr %i.mp, i64 %index1212 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <2 x double> %i.mu, ptr %i.mw, align 1
  store <2 x double> %i.mv, ptr %i.mx, align 1
  %index.next1216 = add nuw i64 %index1212, 4     ; 2 uses
  %i.my = icmp eq i64 %index.next1216, %n.vec1210
  br i1 %i.my, label %middle.block1217, label %vector.body1211, !llvm.loop !63

middle.block1217:                                 ; preds = %vector.body1211
  %cmp.n1218 = icmp eq i64 %i.mh, %n.vec1210
  br i1 %cmp.n1218, label %.loopexit, label %scalar.ph1206.preheader

scalar.ph1206.preheader:                          ; preds = %vector.memcheck1205, %.lr.ph624, %middle.block1217
  %indvars.iv791.ph = phi i64 [ %.073.lcssa, %vector.memcheck1205 ], [ %.073.lcssa, %.lr.ph624 ], [ %i.mm, %middle.block1217 ]
  %.076621.ph = phi ptr [ %i.lz, %vector.memcheck1205 ], [ %i.lz, %.lr.ph624 ], [ %i.mo, %middle.block1217 ]
  br label %scalar.ph1206

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %scalar.ph ], [ %indvars.iv788.ph, %scalar.ph.preheader ] ; 2 uses
  %.075615 = phi ptr [ %i.nc, %scalar.ph ], [ %.075615.ph, %scalar.ph.preheader ] ; 2 uses
  %i.mz = load i32, ptr %.075615, align 4
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 1 ; 2 uses
  %i.na = sitofp i32 %i.mz to double
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv788
  store double %i.na, ptr %i.nb, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.075615, i64 4 ; 2 uses
  %.not80 = icmp eq ptr %i.nc, %i.lb
  br i1 %.not80, label %._crit_edge619, label %scalar.ph, !llvm.loop !64

scalar.ph1206:                                    ; preds = %scalar.ph1206.preheader, %scalar.ph1206
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %scalar.ph1206 ], [ %indvars.iv791.ph, %scalar.ph1206.preheader ] ; 2 uses
  %.076621 = phi ptr [ %i.ng, %scalar.ph1206 ], [ %.076621.ph, %scalar.ph1206.preheader ] ; 2 uses
  %i.nd = load double, ptr %.076621, align 8      ; 2 uses
  %indvars.iv.next792 = add nuw nsw i64 %indvars.iv791, 1
  %i.ne = fcmp uno double %i.nd, 0.000000e+00
  %.0.i170 = select i1 %i.ne, double +qnan, double %i.nd
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv791
  store double %.0.i170, ptr %i.nf, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %.076621, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.ng, %i.mb
  br i1 %.not81, label %.loopexit, label %scalar.ph1206, !llvm.loop !65

.loopexit.loopexit1304.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit1304.unr-lcssa, %.lr.ph613
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph613 ], [ %indvars.iv.next.3, %.loopexit.loopexit1304.unr-lcssa ]
  %lcmp.mod1395 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1395)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.af ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.af ]
  %i.nh = load ptr, ptr %i.ed, align 8
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv.epil
  %i.nj = load i32, ptr %i.ni, align 4
  %i.nk = sext i32 %i.nj to i64
  %i.nl = shl nsw i64 %i.nk, 32
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.epil
  store atomic volatile i64 %i.nl, ptr %i.nm monotonic, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.af, !llvm.loop !66

.loopexit:                                        ; preds = %.loopexit.loopexit1304.unr-lcssa, %bb.af, %scalar.ph1206, %middle.block1217, %bb.ac, %._crit_edge619
  %.sroa.0350.0 = phi ptr [ %i.ku, %._crit_edge619 ], [ %i.jk, %bb.ac ], [ %i.ku, %middle.block1217 ], [ %i.ku, %scalar.ph1206 ], [ %i.jk, %bb.af ], [ %i.jk, %.loopexit.loopexit1304.unr-lcssa ]
  %i.nn = load ptr, ptr %i.ed, align 8
  store ptr %i.nn, ptr %i.eb, align 8
  %i.no = load ptr, ptr %i.eg, align 8
  store ptr %i.no, ptr %i.ee, align 8
  %i.np = load i64, ptr %.sroa.0350.0, align 8
  store ptr %i.bq, ptr %i.bp, align 8
  %i.nq = load i32, ptr %i.bt, align 8
  %i.nr = add nsw i32 %i.nq, -1
  store i32 %i.nr, ptr %i.bt, align 8
  %i.ns = load ptr, ptr %i.br, align 8
  %.not.i.i = icmp eq ptr %i.ns, %i.bs
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.ag, !prof !6

bb.ag:                                            ; preds = %.loopexit
  store ptr %i.bs, ptr %i.br, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bo) #18
  %.pre797 = load ptr, ptr %i.bp, align 8
  %.pre798 = load ptr, ptr %i.br, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.ag, %.loopexit
  %i.nt = phi ptr [ %.pre798, %bb.ag ], [ %i.bs, %.loopexit ]
  %i.nu = phi ptr [ %.pre797, %bb.ag ], [ %i.bq, %.loopexit ] ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.nt
  br i1 %i.nv, label %bb.ah, label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_7JSArrayENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit, !prof !5

bb.ah:                                            ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.nw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bo) #18
  br label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_7JSArrayENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit

_ZN2v88internal11HandleScope14CloseAndEscapeINS0_7JSArrayENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit: ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.ah
  %.0.i.i.i = phi ptr [ %i.nw, %bb.ah ], [ %i.nu, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ] ; 3 uses
  %i.nx = ptrtoint ptr %.0.i.i.i to i64
  %i.ny = add i64 %i.nx, 8
  %i.nz = inttoptr i64 %i.ny to ptr
  store ptr %i.nz, ptr %i.bp, align 8
  store i64 %i.np, ptr %.0.i.i.i, align 8
  br label %.thread482.thread

._crit_edge:                                      ; preds = %thread-pre-split, %thread-pre-split.thread, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit.thread, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8            ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8            ; 2 uses
  %.not568 = icmp eq ptr %i.ob, %i.od
  br i1 %.not568, label %._crit_edge572, label %.lr.ph571

.lr.ph571:                                        ; preds = %._crit_edge
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.ai

._crit_edge572.loopexit:                          ; preds = %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit
  %.pre = load ptr, ptr %i.oa, align 8
  br label %._crit_edge572

._crit_edge572:                                   ; preds = %._crit_edge572.loopexit, %._crit_edge
  %i.of = phi ptr [ %.pre, %._crit_edge572.loopexit ], [ %i.ob, %._crit_edge ]
  store ptr %i.of, ptr %i.oc, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8            ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8            ; 2 uses
  %.not79573 = icmp eq ptr %i.oh, %i.oj
  br i1 %.not79573, label %._crit_edge577, label %.lr.ph576

.lr.ph576:                                        ; preds = %._crit_edge572
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.ax

bb.ai:                                            ; preds = %.lr.ph571, %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit
  %.077569 = phi ptr [ %i.ob, %.lr.ph571 ], [ %i.pd, %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit ] ; 2 uses
  %i.ol = load i32, ptr %.077569, align 4
  %i.om = sext i32 %i.ol to i64
  %i.on = shl nsw i64 %i.om, 32
  %i.oo = load ptr, ptr %0, align 8               ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 560 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8            ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 568
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = icmp eq ptr %i.oq, %i.os
  br i1 %i.ot, label %bb.aj, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.aj:                                            ; preds = %bb.ai
  %i.ou = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.oo) #18
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ai, %bb.aj
  %.0.i.i = phi ptr [ %i.ou, %bb.aj ], [ %i.oq, %bb.ai ] ; 3 uses
  %i.ov = ptrtoint ptr %.0.i.i to i64
  %i.ow = add i64 %i.ov, 8
  %i.ox = inttoptr i64 %i.ow to ptr
  store ptr %i.ox, ptr %i.op, align 8
  store i64 %i.on, ptr %.0.i.i, align 8
  %i.oy = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.oz = load ptr, ptr %i.oe, align 8
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %bb.ak, label %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit, !prof !5

bb.ak:                                            ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bw)
  %.pre.i = load ptr, ptr %i.bx, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal10JsonParserItE14ParseJsonArrayEv:bb.a

thread-pre-split:                                 ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  store ptr %i.bd, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i8 13, ptr %i.f, align 1
  %i.be = load ptr, ptr %i.u, align 8
  %i.bf = call noundef ptr @_ZSt9__find_ifIPKtN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserItE14SkipWhitespaceEvEUltE_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef nonnull %i.bd, ptr noundef %i.be, ptr nonnull %i.f)
  store ptr %i.bf, ptr %i.r, align 8
  %i.bg = load i8, ptr %i.f, align 1              ; 2 uses
  store i8 %i.bg, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph, %thread-pre-split
  %.066319 = phi i8 [ 0, %.lr.ph ], [ %.167, %thread-pre-split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.bi = call noundef zeroext i1 @_ZN2v88internal10JsonParserItE28ParseJsonNumberAsDoubleOrSmiEPdPi(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
  br i1 %i.bi, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bj = load double, ptr %i.j, align 8
  %i.bk = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bl = load ptr, ptr %i.bb, align 8
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.g, label %_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  call preserve_mostcc void @_ZN2v84base11SmallVectorIdLm16ESaIdEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bc)
  %.pre.i.i = load ptr, ptr %i.ba, align 8
  br label %_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit

_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit: ; preds = %bb.f, %bb.g
  %i.bn = phi ptr [ %.pre.i.i, %bb.g ], [ %i.bk, %bb.f ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.ba, align 8
  store double %i.bj, ptr %i.bn, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.bp = trunc nuw i8 %.066319 to i1
  %i.bq = load i32, ptr %i.k, align 4             ; 2 uses
  br i1 %i.bp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.br = sitofp i32 %i.bq to double
  %i.bs = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bt = load ptr, ptr %i.bb, align 8
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.j, label %_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit95, !prof !5

bb.j:                                             ; preds = %bb.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIdLm16ESaIdEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bc)
  %.pre.i.i94 = load ptr, ptr %i.ba, align 8
  br label %_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit95

_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit95: ; preds = %bb.i, %bb.j
  %i.bv = phi ptr [ %.pre.i.i94, %bb.j ], [ %i.bs, %bb.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.ba, align 8
  store double %i.br, ptr %i.bv, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.by = load ptr, ptr %i.ay, align 8
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.l, label %_ZN2v84base11SmallVectorIiLm16ESaIiEE9push_backEi.exit, !prof !5

bb.l:                                             ; preds = %bb.k
  call preserve_mostcc void @_ZN2v84base11SmallVectorIiLm16ESaIiEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %i.az)
  %.pre.i.i96 = load ptr, ptr %i.ax, align 8
  br label %_ZN2v84base11SmallVectorIiLm16ESaIiEE9push_backEi.exit

_ZN2v84base11SmallVectorIiLm16ESaIiEE9push_backEi.exit: ; preds = %bb.k, %bb.l
  %i.ca = phi ptr [ %.pre.i.i96, %bb.l ], [ %i.bx, %bb.k ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store ptr %i.cb, ptr %i.ax, align 8
  store i32 %i.bq, ptr %i.ca, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit95, %_ZN2v84base11SmallVectorIiLm16ESaIiEE9push_backEi.exit, %_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit
  %.167 = phi i8 [ 1, %_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit ], [ 1, %_ZN2v84base11SmallVectorIdLm16ESaIdEE9push_backEd.exit95 ], [ 0, %_ZN2v84base11SmallVectorIiLm16ESaIiEE9push_backEi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i8 13, ptr %i.g, align 1
  %i.cc = load ptr, ptr %i.r, align 8
  %i.cd = load ptr, ptr %i.u, align 8
  %i.ce = call noundef ptr @_ZSt9__find_ifIPKtN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserItE14SkipWhitespaceEvEUltE_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.cc, ptr noundef %i.cd, ptr nonnull %i.g) ; 3 uses
  store ptr %i.ce, ptr %i.r, align 8
  %i.cf = load i8, ptr %i.g, align 1              ; 3 uses
  store i8 %i.cf, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  switch i8 %i.cf, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i [
    i8 11, label %thread-pre-split
    i8 5, label %bb.n
  ], !prof !115

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store ptr %i.cg, ptr %i.r, align 8
  br label %.thread257

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i: ; preds = %bb.m
  call void @_ZN2v88internal10JsonParserItE21ReportUnexpectedTokenENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext %i.cf, i64 4294967637)
  br label %.thread257

.thread257:                                       ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %i.ch = trunc nuw i8 %.167 to i1
  %i.ci = load ptr, ptr %i.ax, align 8
  %i.cj = load ptr, ptr %i.az, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = lshr i64 %i.cm, 2
  %i.co = load ptr, ptr %i.ba, align 8
  %i.cp = load ptr, ptr %i.bc, align 8
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr i64 %i.cs, 3
  %i.cu = add nuw nsw i64 %i.ct, %i.cn
  %.fr = freeze i64 %i.cu                         ; 4 uses
  %i.cv = trunc i64 %.fr to i32                   ; 5 uses
  %i.cw = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.ch, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread257
  %i.cx = call ptr @_ZN2v88internal7Factory10NewJSArrayENS0_12ElementsKindEiiNS0_26ArrayStorageAllocationModeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.cw, i8 noundef zeroext 0, i32 noundef %i.cv, i32 noundef %i.cv, i32 noundef 0, i8 noundef zeroext 0) #18 ; 4 uses
  %i.cy = icmp sgt i32 %i.cv, 0
  br i1 %i.cy, label %.lr.ph332, label %.loopexit

.lr.ph332:                                        ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 15
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = add i64 %i.dc, -1
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 5 uses
  %i.dg = and i64 %.fr, 2147483647
  %i.dh = add nsw i64 %i.dg, -1
  %xtraiter = and i64 %.fr, 3                     ; 3 uses
  %i.di = icmp ult i64 %i.dh, 3
  br i1 %i.di, label %.epil.preheader, label %.lr.ph332.new

.lr.ph332.new:                                    ; preds = %.lr.ph332
  %unroll_iter = and i64 %.fr, 2147483644
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph332.new
  %indvars.iv = phi i64 [ 0, %.lr.ph332.new ], [ %indvars.iv.next.3, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph332.new ], [ %niter.next.3, %bb.p ]
  %i.dj = load ptr, ptr %i.az, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = shl nsw i64 %i.dm, 32
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv
  store atomic volatile i64 %i.dn, ptr %i.do monotonic, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load ptr, ptr %i.az, align 8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = shl nsw i64 %i.ds, 32
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next
  store atomic volatile i64 %i.dt, ptr %i.du monotonic, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dv = load ptr, ptr %i.az, align 8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.1
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = sext i32 %i.dx to i64
  %i.dz = shl nsw i64 %i.dy, 32
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.1
  store atomic volatile i64 %i.dz, ptr %i.ea monotonic, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.eb = load ptr, ptr %i.az, align 8
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.2
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = sext i32 %i.ed to i64
  %i.ef = shl nsw i64 %i.ee, 32
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.2
  store atomic volatile i64 %i.ef, ptr %i.eg monotonic, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit505.unr-lcssa, label %bb.p, !llvm.loop !116

bb.q:                                             ; preds = %.thread257
  %i.eh = call ptr @_ZN2v88internal7Factory10NewJSArrayENS0_12ElementsKindEiiNS0_26ArrayStorageAllocationModeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.cw, i8 noundef zeroext 4, i32 noundef %i.cv, i32 noundef %i.cv, i32 noundef 0, i8 noundef zeroext 0) #18 ; 4 uses
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = add i64 %i.ei, 15
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.em = load ptr, ptr %i.az, align 8            ; 9 uses
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = load ptr, ptr %i.ax, align 8            ; 4 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %.not80333 = icmp eq ptr %i.em, %i.eo
  br i1 %.not80333, label %._crit_edge338, label %.lr.ph337

.lr.ph337:                                        ; preds = %bb.q
  %i.eq = add i64 %i.el, -1
  %i.er = inttoptr i64 %i.eq to ptr               ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 3 uses
  %3 = ptrtoint ptr %i.eo to i64
  %4 = ptrtoint ptr %i.em to i64
  %i.et = sub i64 %3, %4
  %5 = add i64 %i.et, -4                          ; 2 uses
  %i.eu = lshr i64 %5, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph337
  %i.ew = add i64 %i.ep, -4
  %i.ex = sub i64 %i.ew, %i.en                    ; 2 uses
  %i.ey = shl i64 %i.ex, 1
  %i.ez = and i64 %i.ey, -8
  %i.fa = getelementptr i8, ptr %i.er, i64 %i.ez
  %scevgep = getelementptr i8, ptr %i.fa, i64 24
  %i.fb = and i64 %i.ex, -4
  %i.fc = getelementptr i8, ptr %i.em, i64 %i.fb
  %scevgep486 = getelementptr i8, ptr %i.fc, i64 4
  %bound0 = icmp ult ptr %i.es, %scevgep486
  %bound1 = icmp ult ptr %i.em, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ev, 9223372036854775804     ; 5 uses
  %i.fd = shl i64 %n.vec, 2
  %i.fe = getelementptr i8, ptr %i.em, i64 %i.fd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ff = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.em, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !117
  %wide.load487 = load <2 x i32>, ptr %i.fg, align 4, !alias.scope !117
  %i.fh = sitofp <2 x i32> %wide.load to <2 x double>
  %i.fi = sitofp <2 x i32> %wide.load487 to <2 x double>
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x double> %i.fh, ptr %i.fj, align 1, !alias.scope !120, !noalias !117
  store <2 x double> %i.fi, ptr %i.fk, align 1, !alias.scope !120, !noalias !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge338, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph337, %middle.block
  %indvars.iv368.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph337 ], [ %n.vec, %middle.block ]
  %.075334.ph = phi ptr [ %i.em, %vector.memcheck ], [ %i.em, %.lr.ph337 ], [ %i.fe, %middle.block ]
  br label %scalar.ph

._crit_edge338:                                   ; preds = %scalar.ph, %middle.block, %bb.q
  %.073.lcssa = phi i64 [ 0, %bb.q ], [ %n.vec, %middle.block ], [ %indvars.iv.next369, %scalar.ph ] ; 5 uses
  %i.fm = load ptr, ptr %i.bc, align 8            ; 7 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %i.fo = load ptr, ptr %i.ba, align 8            ; 3 uses
  %.not81339 = icmp eq ptr %i.fm, %i.fo
  br i1 %.not81339, label %.loopexit, label %.lr.ph343

.lr.ph343:                                        ; preds = %._crit_edge338
  %i.fp = add i64 %i.el, -1                       ; 2 uses
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %6 = ptrtoint ptr %i.fo to i64
  %7 = ptrtoint ptr %i.fm to i64
  %i.fs = sub i64 %6, %7
  %8 = add i64 %i.fs, -8                          ; 2 uses
  %i.ft = lshr i64 %8, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check491 = icmp ult i64 %8, 72
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.memcheck489

vector.memcheck489:                               ; preds = %.lr.ph343
  %i.fv = shl i64 %.073.lcssa, 3
  %i.fw = add i64 %i.fp, %i.fv
  %i.fx = sub i64 %i.fw, %i.fn
  %i.fy = add i64 %i.fx, 15
  %diff.check = icmp ult i64 %i.fy, 31
  br i1 %diff.check, label %scalar.ph490.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck489
  %n.vec494 = and i64 %i.fu, 4611686018427387900  ; 4 uses
  %i.fz = add i64 %.073.lcssa, %n.vec494
  %i.ga = shl i64 %n.vec494, 3
  %i.gb = getelementptr i8, ptr %i.fm, i64 %i.ga
  %i.gc = getelementptr [8 x i8], ptr %i.fr, i64 %.073.lcssa
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph492
  %index496 = phi i64 [ 0, %vector.ph492 ], [ %index.next500, %vector.body495 ] ; 3 uses
  %i.gd = shl i64 %index496, 3
  %next.gep497 = getelementptr i8, ptr %i.fm, i64 %i.gd ; 2 uses
  %i.ge = getelementptr i8, ptr %next.gep497, i64 16
  %wide.load498 = load <2 x double>, ptr %next.gep497, align 8 ; 2 uses
  %wide.load499 = load <2 x double>, ptr %i.ge, align 8 ; 2 uses
  %i.gf = fcmp uno <2 x double> %wide.load498, zeroinitializer
  %i.gg = fcmp uno <2 x double> %wide.load499, zeroinitializer
  %i.gh = select <2 x i1> %i.gf, <2 x double> splat (double +qnan), <2 x double> %wide.load498
  %i.gi = select <2 x i1> %i.gg, <2 x double> splat (double +qnan), <2 x double> %wide.load499
  %i.gj = getelementptr [8 x i8], ptr %i.gc, i64 %index496 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <2 x double> %i.gh, ptr %i.gj, align 1
  store <2 x double> %i.gi, ptr %i.gk, align 1
  %index.next500 = add nuw i64 %index496, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.gl, label %middle.block501, label %vector.body495, !llvm.loop !123

middle.block501:                                  ; preds = %vector.body495
  %cmp.n502 = icmp eq i64 %i.fu, %n.vec494
  br i1 %cmp.n502, label %.loopexit, label %scalar.ph490.preheader

scalar.ph490.preheader:                           ; preds = %vector.memcheck489, %.lr.ph343, %middle.block501
  %indvars.iv371.ph = phi i64 [ %.073.lcssa, %vector.memcheck489 ], [ %.073.lcssa, %.lr.ph343 ], [ %i.fz, %middle.block501 ]
  %.076340.ph = phi ptr [ %i.fm, %vector.memcheck489 ], [ %i.fm, %.lr.ph343 ], [ %i.gb, %middle.block501 ]
  br label %scalar.ph490

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %scalar.ph ], [ %indvars.iv368.ph, %scalar.ph.preheader ] ; 2 uses
  %.075334 = phi ptr [ %i.gp, %scalar.ph ], [ %.075334.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gm = load i32, ptr %.075334, align 4
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.gn = sitofp i32 %i.gm to double
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv368
  store double %i.gn, ptr %i.go, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.075334, i64 4 ; 2 uses
  %.not80 = icmp eq ptr %i.gp, %i.eo
  br i1 %.not80, label %._crit_edge338, label %scalar.ph, !llvm.loop !124

scalar.ph490:                                     ; preds = %scalar.ph490.preheader, %scalar.ph490
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %scalar.ph490 ], [ %indvars.iv371.ph, %scalar.ph490.preheader ] ; 2 uses
  %.076340 = phi ptr [ %i.gt, %scalar.ph490 ], [ %.076340.ph, %scalar.ph490.preheader ] ; 2 uses
  %i.gq = load double, ptr %.076340, align 8      ; 2 uses
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1
  %i.gr = fcmp uno double %i.gq, 0.000000e+00
  %.0.i102 = select i1 %i.gr, double +qnan, double %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv371
  store double %.0.i102, ptr %i.gs, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.076340, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.gt, %i.fo
  br i1 %.not81, label %.loopexit, label %scalar.ph490, !llvm.loop !125

.loopexit.loopexit505.unr-lcssa:                  ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit505.unr-lcssa, %.lr.ph332
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph332 ], [ %indvars.iv.next.3, %.loopexit.loopexit505.unr-lcssa ]
  %lcmp.mod536 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod536)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.r ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.gu = load ptr, ptr %i.az, align 8
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.epil
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = sext i32 %i.gw to i64
  %i.gy = shl nsw i64 %i.gx, 32
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.epil
  store atomic volatile i64 %i.gy, ptr %i.gz monotonic, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.r, !llvm.loop !126

.loopexit:                                        ; preds = %.loopexit.loopexit505.unr-lcssa, %bb.r, %scalar.ph490, %middle.block501, %bb.o, %._crit_edge338
  %.sroa.0200.0 = phi ptr [ %i.eh, %._crit_edge338 ], [ %i.cx, %bb.o ], [ %i.eh, %middle.block501 ], [ %i.eh, %scalar.ph490 ], [ %i.cx, %bb.r ], [ %i.cx, %.loopexit.loopexit505.unr-lcssa ]
  %i.ha = load ptr, ptr %i.az, align 8
  store ptr %i.ha, ptr %i.ax, align 8
  %i.hb = load ptr, ptr %i.bc, align 8
  store ptr %i.hb, ptr %i.ba, align 8
  %i.hc = load i64, ptr %.sroa.0200.0, align 8
  store ptr %i.ae, ptr %i.ad, align 8
  %i.hd = load i32, ptr %i.ah, align 8
  %i.he = add nsw i32 %i.hd, -1
  store i32 %i.he, ptr %i.ah, align 8
  %i.hf = load ptr, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %i.hf, %i.ag
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.s, !prof !6

bb.s:                                             ; preds = %.loopexit
  store ptr %i.ag, ptr %i.af, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.ac) #18
  %.pre377 = load ptr, ptr %i.ad, align 8
  %.pre378 = load ptr, ptr %i.af, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.s, %.loopexit
  %i.hg = phi ptr [ %.pre378, %bb.s ], [ %i.ag, %.loopexit ]
  %i.hh = phi ptr [ %.pre377, %bb.s ], [ %i.ae, %.loopexit ] ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.hg
  br i1 %i.hi, label %bb.t, label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_7JSArrayENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit, !prof !5

bb.t:                                             ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.hj = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ac) #18
  br label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_7JSArrayENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit

_ZN2v88internal11HandleScope14CloseAndEscapeINS0_7JSArrayENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit: ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.t
  %.0.i.i.i = phi ptr [ %i.hj, %bb.t ], [ %i.hh, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ] ; 3 uses
  %i.hk = ptrtoint ptr %.0.i.i.i to i64
  %i.hl = add i64 %i.hk, 8
  %i.hm = inttoptr i64 %i.hl to ptr
  store ptr %i.hm, ptr %i.ad, align 8
  store i64 %i.hc, ptr %.0.i.i.i, align 8
  br label %.thread291.thread

._crit_edge:                                      ; preds = %thread-pre-split, %_ZN2v88internal10JsonParserItE5CheckENS0_9JsonTokenE.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8            ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %.not320 = icmp eq ptr %i.ho, %i.hq
  br i1 %.not320, label %._crit_edge324, label %.lr.ph323

.lr.ph323:                                        ; preds = %._crit_edge
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.u

._crit_edge324.loopexit:                          ; preds = %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit
  %.pre = load ptr, ptr %i.hn, align 8
  br label %._crit_edge324

._crit_edge324:                                   ; preds = %._crit_edge324.loopexit, %._crit_edge
  %i.hs = phi ptr [ %.pre, %._crit_edge324.loopexit ], [ %i.ho, %._crit_edge ]
  store ptr %i.hs, ptr %i.hp, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8            ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %.not79325 = icmp eq ptr %i.hu, %i.hw
  br i1 %.not79325, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %._crit_edge324
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.ah

bb.u:                                             ; preds = %.lr.ph323, %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit
  %.077321 = phi ptr [ %i.ho, %.lr.ph323 ], [ %i.iq, %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit ] ; 2 uses
  %i.hy = load i32, ptr %.077321, align 4
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 32
  %i.ib = load ptr, ptr %0, align 8               ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 560 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 568
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = icmp eq ptr %i.id, %i.if
  br i1 %i.ig, label %bb.v, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.v:                                             ; preds = %bb.u
  %i.ih = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ib) #18
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.ih, %bb.v ], [ %i.id, %bb.u ] ; 3 uses
  %i.ii = ptrtoint ptr %.0.i.i to i64
  %i.ij = add i64 %i.ii, 8
  %i.ik = inttoptr i64 %i.ij to ptr
  store ptr %i.ik, ptr %i.ic, align 8
  store i64 %i.ia, ptr %.0.i.i, align 8
  %i.il = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.im = load ptr, ptr %i.hr, align 8
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %bb.w, label %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit, !prof !5

bb.w:                                             ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ak)
  %.pre.i = load ptr, ptr %i.al, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE12emplace_backIJNS3_INS2_3SmiEEEEEEvDpOT_.exit
end_hunk_1
begin_hunk_2_@_ZSt28__throw_bad_array_new_lengthv
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #19
  unreachable

_ZNKSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %i.s, align 8
  store ptr null, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i64 12, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !177, !noalias !174
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !alias.scope !174, !noalias !177
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !177, !noalias !174
  store ptr %i.aa, ptr %i.y, align 8, !alias.scope !174, !noalias !177
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !177, !noalias !174
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i64 12, i1 false), !alias.scope !179
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !180

_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.an, %.lr.ph.i.i.i17 ], [ %i.af, %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.am, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.ag = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !alias.scope !184, !noalias !181
  store <2 x ptr> %i.ag, ptr %.012.i.i.i18, align 8, !alias.scope !181, !noalias !184
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !184, !noalias !181
  store ptr %i.aj, ptr %i.ah, align 8, !alias.scope !181, !noalias !184
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !184, !noalias !181
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %i.al, i64 12, i1 false), !alias.scope !186
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !180

_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.af, %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.an, %.lr.ph.i.i.i17 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #21
  br label %_ZNSt12_Vector_baseIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN2v88internal10JsonParserIhE16JsonContinuationESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal12JsonPropertyELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(408) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal12JsonPropertyELm16ESaIS3_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal12JsonPropertyELm16ESaIS3_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = shl nsw i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 288230376151711743
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 24, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 4 uses
  %i.q = icmp eq ptr %i.c, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal12JsonPropertyES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 24
  %i.t = icmp eq ptr %i.r, %i.b
  br i1 %i.t, label %_ZSt18uninitialized_moveIPN2v88internal12JsonPropertyES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !187

_ZSt18uninitialized_moveIPN2v88internal12JsonPropertyES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.u = shl nuw i64 1, %i.l
  %i.v = ptrtoint ptr %i.b to i64
  %i.w = sub i64 %i.v, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal12JsonPropertyELm16ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  store ptr %i.p, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.w
  store ptr %i.x, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.u
  store ptr %i.y, ptr %i.d, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal6HandleINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %2, %i.g
  %3 = add i64 %i.r, -8                           ; 2 uses
  %i.s = lshr i64 %3, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal6HandleINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ac, ptr %.08.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal6HandleINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !189

_ZSt18uninitialized_moveIPN2v88internal6HandleINS1_6ObjectEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6HandleINS2_6ObjectEEELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

declare ptr @_ZN2v88internal3Map6UpdateEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal16NumberDictionary12UncheckedSetEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE(ptr noundef, ptr, i32 noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal19JSDataObjectBuilder17BuildFromIteratorIRNS0_10JsonParserIhE21NamedPropertyIteratorEEENS0_6HandleINS0_8JSObjectEEEOT_NS0_11MaybeHandleINS0_14FixedArrayBaseEEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.609", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::MapUpdater", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::TransitionsAccessor", align 8 ; 9 uses
  %6 = alloca %"class.v8::internal::TransitionsAccessor", align 8 ; 8 uses
  %7 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN2v88internal19JSDataObjectBuilder26TryAddFastPropertyForValueIhZNS1_17BuildFromIteratorIRNS0_10JsonParserIhE21NamedPropertyIteratorEEENS0_6HandleINS0_8JSObjectEEEOT_NS0_11MaybeHandleINS0_14FixedArrayBaseEEEEUlNS8_INS0_6StringEEEE_ZNS3_IS7_EESA_SC_SF_EUlvE_EEbNS_4base6VectorIKSB_EEOT0_OT1_.exit, label %.lr.ph509

.lr.ph509:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  br label %_ZN2v88internal10JsonParserIhE21NamedPropertyIterator7AdvanceEv.exit

_ZN2v88internal10JsonParserIhE21NamedPropertyIterator7AdvanceEv.exit.loopexit: ; preds = %bb.be
  br label %_ZN2v88internal10JsonParserIhE21NamedPropertyIterator7AdvanceEv.exit, !llvm.loop !16

_ZN2v88internal10JsonParserIhE21NamedPropertyIterator7AdvanceEv.exit: ; preds = %_ZN2v88internal10JsonParserIhE21NamedPropertyIterator7AdvanceEv.exit.loopexit, %.lr.ph509
  %i.t = phi ptr [ %i.c, %.lr.ph509 ], [ %i.ny, %_ZN2v88internal10JsonParserIhE21NamedPropertyIterator7AdvanceEv.exit.loopexit ]
  %i.u = load ptr, ptr %1, align 8, !nonnull !17, !align !18
  %.sroa.01.0.copyload.i58 = load i64, ptr %i.t, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.01.0.copyload.i58, 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 920
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = and i64 %.sroa.01.0.copyload.i58, 4294967295
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.f, align 8              ; 2 uses
  %i.aa = load i32, ptr %i.g, align 8
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN2v88internal10JsonParserIhE21NamedPropertyIterator7AdvanceEv.exit
  %i.ac = sext i32 %i.z to i64
  %.sroa.0.0.copyload.i.i30 = load ptr, ptr %i.m, align 8
  %i.ad = load i64, ptr %.sroa.0.0.copyload.i.i30, align 8
  %i.ae = add i64 %i.ad, 39
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = mul i64 %i.ac, 103079215104
  %sext.i.i = add i64 %i.ah, 137438953472
  %i.ai = ashr exact i64 %sext.i.i, 32
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = add i64 %i.aj, %i.ag
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = load ptr, ptr %0, align 8               ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 560 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 568
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.at = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.an) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.at, %bb.c ], [ %i.ap, %bb.b ] ; 3 uses
  %i.au = ptrtoint ptr %.0.i.i.i to i64
  %i.av = add i64 %i.au, 8
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.ao, align 8
  store i64 %i.am, ptr %.0.i.i.i, align 8
  %i.ax = load i64, ptr %i.m, align 8
  br label %bb.i

bb.d:                                             ; preds = %_ZN2v88internal10JsonParserIhE21NamedPropertyIterator7AdvanceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ay = load ptr, ptr %0, align 8
  %i.az = load ptr, ptr %i.h, align 8
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  store ptr %i.ay, ptr %5, align 8
  store i64 %i.ba, ptr %i.i, align 8
  %i.bb = add i64 %i.ba, 63
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i64, ptr %i.bc acquire, align 8 ; 5 uses
  store i64 %i.bd, ptr %i.j, align 8
  %i.be = and i64 %i.bd, 1
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = and i64 %i.bd, 4294967295
  %i.bh = icmp eq i64 %i.bg, 3
  %or.cond.i.i = or i1 %i.bf, %i.bh
  br i1 %or.cond.i.i, label %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = and i64 %i.bd, 3
  switch i64 %i.bi, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i [
    i64 3, label %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.bj = add nsw i64 %i.bd, -1
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = add i64 %i.bl, 11
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i16, ptr %i.bn monotonic, align 2
  %i.bp = icmp eq i16 %i.bo, 258
  br i1 %i.bp, label %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2
  %i.bu = icmp eq i16 %i.bt, 162
  %..i.i = select i1 %i.bu, i32 0, i32 2
  br label %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #19
end_hunk_2
