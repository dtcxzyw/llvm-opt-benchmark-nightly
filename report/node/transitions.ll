inline.NumInlined: 1037
inline.NumDeleted: 454
begin_hunk_0_@_ZN2v88internal19TransitionsAccessor12InsertHelperEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_4NameEEES6_NS0_18TransitionKindFlagE:bb.a

bb.ch:                                            ; preds = %_ZNK2v88internal4Name4hashEv.exit34.i.i344
  %i.vz = trunc nuw nsw i64 %indvars.iv.i.i342 to i32
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split

bb.ci:                                            ; preds = %_ZNK2v88internal4Name4hashEv.exit34.i.i344
  %indvars.iv.next.i.i347 = add nuw nsw i64 %indvars.iv.i.i342, 1 ; 2 uses
  %exitcond.not.i.i348 = icmp eq i64 %indvars.iv.next.i.i347, %i.ve
  br i1 %exitcond.not.i.i348, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split, label %.lr.ph.i.i341, !llvm.loop !6

.thread42.loopexit54.i.i349:                      ; preds = %.lr.ph.i.i341
  %i.wa = trunc nuw nsw i64 %indvars.iv.i.i342 to i32
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit352

bb.cj:                                            ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i333
  %i.wb = call noundef i32 @_ZN2v88internal15TransitionArray16BinarySearchNameENS0_6TaggedINS0_4NameEEEPi(ptr noundef nonnull align 4 dereferenceable(16) %i.sp, i64 %i.uo, ptr noundef nonnull %i.b)
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit352

_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit352: ; preds = %.thread42.loopexit54.i.i349, %bb.cj
  %.1.i334 = phi i32 [ %i.wb, %bb.cj ], [ %i.wa, %.thread42.loopexit54.i.i349 ] ; 5 uses
  %i.wc = icmp eq i32 %.1.i334, -1
  br i1 %i.wc, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread, label %bb.ck

bb.ck:                                            ; preds = %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit352
  %i.wd = load i64, ptr %i.sq, align 8
  %i.we = lshr i64 %i.wd, 32
  %i.wf = trunc nuw i64 %i.we to i32
  %i.wg = icmp slt i32 %i.wf, 3
  br i1 %i.wg, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i197, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.wh = load atomic volatile i64, ptr %i.sv monotonic, align 8 ; 2 uses
  %i.wi = and i64 %i.wh, 1
  %i.wj = icmp eq i64 %i.wi, 0
  call void @llvm.assume(i1 %i.wj)
  %i.wk = lshr i64 %i.wh, 32
  %i.wl = trunc nuw i64 %i.wk to i32
  br label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i197

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i197: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i198 = phi i32 [ %i.wl, %bb.cl ], [ 0, %bb.ck ] ; 3 uses
  %i.wm = shl nsw i32 %.1.i334, 1
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr [8 x i8], ptr %i.sp, i64 %i.wn
  %i.wp = getelementptr i8, ptr %i.wo, i64 40
  %i.wq = load atomic volatile i64, ptr %i.wp monotonic, align 8
  %i.wr = icmp slt i32 %.1.i334, %.0.i.i.i198
  br i1 %i.wr, label %.lr.ph.preheader.i.i202, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split

.lr.ph.preheader.i.i202:                          ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i197
  %i.ws = sext i32 %.1.i334 to i64
  br label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %bb.cq, %.lr.ph.preheader.i.i202
  %indvars.iv.i.i204 = phi i64 [ %i.ws, %.lr.ph.preheader.i.i202 ], [ %indvars.iv.next.i.i209, %bb.cq ] ; 6 uses
  %.idx.i.i205 = shl i64 %indvars.iv.i.i204, 4
  %i.wt = getelementptr i8, ptr %i.sp, i64 %.idx.i.i205 ; 2 uses
  %i.wu = getelementptr i8, ptr %i.wt, i64 40
  %i.wv = load atomic volatile i64, ptr %i.wu monotonic, align 8
  %i.ww = icmp eq i64 %i.wv, %i.wq
  br i1 %i.ww, label %bb.cm, label %.critedge.loopexit.split.loop.exit57.i.i206

bb.cm:                                            ; preds = %.lr.ph.i.i203
  %i.wx = getelementptr i8, ptr %i.wt, i64 48
  %i.wy = load atomic volatile i64, ptr %i.wx monotonic, align 8
  %i.wz = and i64 %i.wy, -3                       ; 2 uses
  %i.xa = add i64 %i.wz, 15
  %i.xb = inttoptr i64 %i.xa to ptr
  %i.xc = load atomic volatile i32, ptr %i.xb acquire, align 4
  %i.xd = lshr i32 %i.xc, 10
  %i.xe = and i32 %i.xd, 1023
  %i.xf = add nsw i32 %i.xe, -1
  %i.xg = sext i32 %i.xf to i64
  %i.xh = add i64 %i.wz, 39
  %i.xi = inttoptr i64 %i.xh to ptr
  %i.xj = load atomic volatile i64, ptr %i.xi monotonic, align 8
  %i.xk = mul nsw i64 %i.xg, 103079215104
  %sext.i.i.i.i207 = add nsw i64 %i.xk, 137438953472
  %i.xl = lshr exact i64 %sext.i.i.i.i207, 32
  %i.xm = add i64 %i.xj, 7
  %i.xn = add i64 %i.xm, %i.xl
  %i.xo = inttoptr i64 %i.xn to ptr
  %i.xp = load atomic volatile i64, ptr %i.xo monotonic, align 8
  %i.xq = lshr i64 %i.xp, 32
  %i.xr = trunc nuw i64 %i.xq to i32              ; 2 uses
  %i.xs = and i32 %i.xr, 1                        ; 2 uses
  %i.xt = lshr i32 %i.xr, 2
  %i.xu = and i32 %i.xt, 7                        ; 2 uses
  %.not.i.i.i208 = icmp eq i32 %i.un, %i.xs
  br i1 %.not.i.i.i208, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.xv = icmp samesign ult i32 %i.un, %i.xs
  br i1 %i.xv, label %.critedge.loopexit.split.loop.exit.i.i212, label %bb.cq

bb.co:                                            ; preds = %bb.cm
  %.not13.i.i.i213 = icmp eq i32 %i.uq, %i.xu
  br i1 %.not13.i.i.i213, label %.loopexit.loopexit.i.i215, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.xw = icmp samesign ult i32 %i.uq, %i.xu
  br i1 %i.xw, label %.critedge.loopexit.split.loop.exit53.i.i214, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  %indvars.iv.next.i.i209 = add nsw i64 %indvars.iv.i.i204, 1 ; 2 uses
  %lftr.wideiv.i.i210 = trunc i64 %indvars.iv.next.i.i209 to i32
  %exitcond.not.i.i211 = icmp eq i32 %.0.i.i.i198, %lftr.wideiv.i.i210
  br i1 %exitcond.not.i.i211, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split, label %.lr.ph.i.i203, !llvm.loop !8

.critedge.loopexit.split.loop.exit.i.i212:        ; preds = %bb.cn
  %i.xx = trunc nsw i64 %indvars.iv.i.i204 to i32
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split

.critedge.loopexit.split.loop.exit53.i.i214:      ; preds = %bb.cp
  %i.xy = trunc nsw i64 %indvars.iv.i.i204 to i32
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split

.critedge.loopexit.split.loop.exit57.i.i206:      ; preds = %.lr.ph.i.i203
  %i.xz = trunc nsw i64 %indvars.iv.i.i204 to i32
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split

.loopexit.loopexit.i.i215:                        ; preds = %bb.co
  %i.ya = trunc nsw i64 %indvars.iv.i.i204 to i32
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331

_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331: ; preds = %.loopexit.loopexit.i.i215, %bb.cd, %.thread42.loopexit54.i.i328
  %i.yb = phi i32 [ %i.um, %bb.cd ], [ %i.ul, %.thread42.loopexit54.i.i328 ], [ %i.ya, %.loopexit.loopexit.i.i215 ] ; 2 uses
  %.not = icmp eq i32 %i.yb, -1
  br i1 %.not, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread, label %bb.cr

bb.cr:                                            ; preds = %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 58704 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yc) #15
  %i.yd = load i64, ptr %3, align 8               ; 2 uses
  %i.ye = or i64 %i.yd, 3                         ; 3 uses
  %i.yf = shl nsw i32 %i.yb, 1
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr [8 x i8], ptr %i.sp, i64 %i.yg
  %i.yi = getelementptr i8, ptr %i.yh, i64 48     ; 2 uses
  store atomic volatile i64 %i.ye, ptr %i.yi monotonic, align 8
  %i.yj = and i64 %i.ye, 4294967295
  %.not618 = icmp eq i64 %i.yj, 3
  br i1 %.not618, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yk = and i64 %i.ye, -3                       ; 2 uses
  %i.yl = or disjoint i64 %i.so, 1                ; 2 uses
  %i.ym = ptrtoint ptr %i.yi to i64               ; 2 uses
  %i.yn = and i64 %i.so, -262144
  %i.yo = inttoptr i64 %i.yn to ptr
  %i.yp = load i64, ptr %i.yo, align 262144       ; 2 uses
  %i.yq = and i64 %i.yp, 32
  %.not.i.i.i.i.i.i217 = icmp eq i64 %i.yq, 0
  %i.yr = and i64 %i.yp, 25
  %.not38.i.i.i.i.i.i218 = icmp eq i64 %i.yr, 0
  br i1 %.not38.i.i.i.i.i.i218, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.ys = and i64 %i.yd, -262144
  %i.yt = inttoptr i64 %i.ys to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i219 = load i64, ptr %i.yt, align 262144
  %i.yu = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i219, 25
  %.not39.i.i.i.i.i.i220 = icmp eq i64 %i.yu, 0
  br i1 %.not39.i.i.i.i.i.i220, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.yl, i64 noundef %i.ym, i64 %i.yk) #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  br i1 %.not.i.i.i.i.i.i217, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.cw, !prof !5

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.yl, i64 %i.ym, i64 %i.yk) #15
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.cr, %bb.cv, %bb.cw
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yc) #15
  br label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15TransitionArrayEEE.exit282

_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split: ; preds = %bb.ci, %bb.cq, %bb.cc, %bb.bx, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i197, %.critedge.loopexit.split.loop.exit.i.i212, %.critedge.loopexit.split.loop.exit53.i.i214, %.critedge.loopexit.split.loop.exit57.i.i206, %_ZNK2v88internal4Name4hashEv.exit.i.i336, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i332, %_ZNK2v88internal4Name4hashEv.exit.i.i315, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i311, %bb.cb, %bb.ch
  %.sink = phi i32 [ 0, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i332 ], [ %i.tq, %_ZNK2v88internal4Name4hashEv.exit.i.i315 ], [ %i.vz, %bb.ch ], [ %i.vf, %_ZNK2v88internal4Name4hashEv.exit.i.i336 ], [ 0, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i311 ], [ %i.uk, %bb.cb ], [ %.0.i.i.i198, %bb.cq ], [ 0, %bb.bx ], [ %i.xy, %.critedge.loopexit.split.loop.exit53.i.i214 ], [ %i.tq, %bb.cc ], [ %.1.i334, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i197 ], [ %i.xz, %.critedge.loopexit.split.loop.exit57.i.i206 ], [ %i.xx, %.critedge.loopexit.split.loop.exit.i.i212 ], [ %i.vf, %bb.ci ]
  %.0.i196593611.ph = phi i32 [ %i.ta, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i332 ], [ %i.ta, %_ZNK2v88internal4Name4hashEv.exit.i.i315 ], [ %i.ta, %bb.ch ], [ %i.ta, %_ZNK2v88internal4Name4hashEv.exit.i.i336 ], [ %i.ta, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i311 ], [ %i.ta, %bb.cb ], [ %i.ta, %bb.cq ], [ 0, %bb.bx ], [ %i.ta, %.critedge.loopexit.split.loop.exit53.i.i214 ], [ %i.ta, %bb.cc ], [ %i.ta, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i197 ], [ %i.ta, %.critedge.loopexit.split.loop.exit57.i.i206 ], [ %i.ta, %.critedge.loopexit.split.loop.exit.i.i212 ], [ %i.ta, %bb.ci ]
  store i32 %.sink, ptr %i.b, align 4
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread

_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread: ; preds = %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit352, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331
  %.0.i196593611 = phi i32 [ %i.ta, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331 ], [ %i.ta, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit352 ], [ %.0.i196593611.ph, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread.sink.split ] ; 10 uses
  %i.yv = add nsw i32 %.0.i196593611, 1           ; 2 uses
  %i.yw = icmp slt i32 %.0.i196593611, 1536
  br i1 %i.yw, label %bb.cy, label %bb.cx, !prof !5

bb.cx:                                            ; preds = %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #14
  unreachable

bb.cy:                                            ; preds = %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit331.thread
  %i.yx = load i64, ptr %i.sq, align 8
  %i.yy = lshr i64 %i.yx, 32
  %i.yz = trunc nuw i64 %i.yy to i32              ; 2 uses
  %6 = add i32 %i.yz, -3
  %7 = lshr i32 %6, 1
  %.narrow.i = icmp slt i32 %i.yz, 3
  %.0.i222 = select i1 %.narrow.i, i32 0, i32 %7
  %.not153.not = icmp slt i32 %.0.i196593611, %.0.i222
  br i1 %.not153.not, label %bb.cz, label %_ZN2v88internal3Map17SlackForArraySizeEii.exit

bb.cz:                                            ; preds = %bb.cy
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 58704 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.za) #15
  %i.zb = sext i32 %i.yv to i64
  %i.zc = shl nsw i64 %i.zb, 32
  %i.zd = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  store atomic volatile i64 %i.zc, ptr %i.zd monotonic, align 8
  %i.ze = load i32, ptr %i.b, align 4             ; 2 uses
  %i.zf = icmp sgt i32 %.0.i196593611, %i.ze
  br i1 %i.zf, label %.lr.ph657, label %._crit_edge658

.lr.ph657:                                        ; preds = %bb.cz
  %i.zg = or disjoint i64 %i.so, 1                ; 4 uses
  %i.zh = and i64 %i.so, -262144
  %i.zi = inttoptr i64 %i.zh to ptr               ; 2 uses
  %i.zj = sext i32 %.0.i196593611 to i64
  br label %bb.dk

._crit_edge658:                                   ; preds = %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit244, %bb.cz
  %.lcssa = phi i32 [ %i.ze, %bb.cz ], [ %i.acd, %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit244 ]
  %i.zk = load i64, ptr %2, align 8               ; 5 uses
  %i.zl = shl nsw i32 %.lcssa, 1
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr [8 x i8], ptr %i.sp, i64 %i.zm
  %i.zo = getelementptr i8, ptr %i.zn, i64 40     ; 2 uses
  store atomic volatile i64 %i.zk, ptr %i.zo monotonic, align 8
  %i.zp = trunc i64 %i.zk to i1
  %i.zq = and i64 %i.zk, 4294967295
  %i.zr = icmp ne i64 %i.zq, 3
  %i.zs = and i1 %i.zr, %i.zp
  br i1 %i.zs, label %bb.da, label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit227

bb.da:                                            ; preds = %._crit_edge658
  %i.zt = and i64 %i.zk, -3                       ; 2 uses
  %i.zu = or disjoint i64 %i.so, 1                ; 2 uses
  %i.zv = ptrtoint ptr %i.zo to i64               ; 2 uses
  %i.zw = and i64 %i.so, -262144
  %i.zx = inttoptr i64 %i.zw to ptr
  %i.zy = load i64, ptr %i.zx, align 262144       ; 2 uses
  %i.zz = and i64 %i.zy, 32
  %.not.i.i.i.i.i.i223 = icmp eq i64 %i.zz, 0
  %i.aaa = and i64 %i.zy, 25
  %.not38.i.i.i.i.i.i224 = icmp eq i64 %i.aaa, 0
  br i1 %.not38.i.i.i.i.i.i224, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.aab = and i64 %i.zk, -262144
  %i.aac = inttoptr i64 %i.aab to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i225 = load i64, ptr %i.aac, align 262144
  %i.aad = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i225, 25
  %.not39.i.i.i.i.i.i226 = icmp eq i64 %i.aad, 0
  br i1 %.not39.i.i.i.i.i.i226, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.zu, i64 noundef %i.zv, i64 %i.zt) #15
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  br i1 %.not.i.i.i.i.i.i223, label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit227, label %bb.de, !prof !5

bb.de:                                            ; preds = %bb.dd
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.zu, i64 %i.zv, i64 %i.zt) #15
  br label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit227

_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit227: ; preds = %._crit_edge658, %bb.dd, %bb.de
  %i.aae = load i32, ptr %i.b, align 4
  %i.aaf = load i64, ptr %3, align 8              ; 2 uses
  %i.aag = or i64 %i.aaf, 3                       ; 3 uses
  %i.aah = shl nsw i32 %i.aae, 1
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr [8 x i8], ptr %i.sp, i64 %i.aai
  %i.aak = getelementptr i8, ptr %i.aaj, i64 48   ; 2 uses
  store atomic volatile i64 %i.aag, ptr %i.aak monotonic, align 8
  %i.aal = and i64 %i.aag, 4294967295
  %.not621 = icmp eq i64 %i.aal, 3
  br i1 %.not621, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit234, label %bb.df

bb.df:                                            ; preds = %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit227
  %i.aam = and i64 %i.aag, -3                     ; 2 uses
  %i.aan = or disjoint i64 %i.so, 1               ; 2 uses
  %i.aao = ptrtoint ptr %i.aak to i64             ; 2 uses
  %i.aap = and i64 %i.so, -262144
  %i.aaq = inttoptr i64 %i.aap to ptr
  %i.aar = load i64, ptr %i.aaq, align 262144     ; 2 uses
  %i.aas = and i64 %i.aar, 32
  %.not.i.i.i.i.i.i228 = icmp eq i64 %i.aas, 0
  %i.aat = and i64 %i.aar, 25
  %.not38.i.i.i.i.i.i229 = icmp eq i64 %i.aat, 0
  br i1 %.not38.i.i.i.i.i.i229, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.aau = and i64 %i.aaf, -262144
  %i.aav = inttoptr i64 %i.aau to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i230 = load i64, ptr %i.aav, align 262144
  %i.aaw = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i230, 25
  %.not39.i.i.i.i.i.i231 = icmp eq i64 %i.aaw, 0
  br i1 %.not39.i.i.i.i.i.i231, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.aan, i64 noundef %i.aao, i64 %i.aam) #15
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  br i1 %.not.i.i.i.i.i.i228, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit234, label %bb.dj, !prof !5

bb.dj:                                            ; preds = %bb.di
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.aan, i64 %i.aao, i64 %i.aam) #15
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit234

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit234:   ; preds = %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit227, %bb.di, %bb.dj
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.za) #15
  br label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15TransitionArrayEEE.exit282

bb.dk:                                            ; preds = %.lr.ph657, %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit244
  %indvars.iv691 = phi i64 [ %i.zj, %.lr.ph657 ], [ %indvars.iv.next692, %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit244 ] ; 2 uses
  %indvars.iv.next692 = add nsw i64 %indvars.iv691, -1 ; 3 uses
  %.idx718 = shl i64 %indvars.iv.next692, 4
  %i.aax = getelementptr i8, ptr %i.sp, i64 %.idx718 ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aax, i64 40
  %i.aaz = load atomic volatile i64, ptr %i.aay monotonic, align 8 ; 5 uses
  %.idx719 = shl i64 %indvars.iv691, 4
  %i.aba = getelementptr i8, ptr %i.sp, i64 %.idx719 ; 2 uses
  %i.abb = getelementptr i8, ptr %i.aba, i64 40   ; 2 uses
  store atomic volatile i64 %i.aaz, ptr %i.abb monotonic, align 8
  %i.abc = trunc i64 %i.aaz to i1
  %i.abd = and i64 %i.aaz, 4294967295
  %i.abe = icmp ne i64 %i.abd, 3
  %i.abf = and i1 %i.abe, %i.abc
  br i1 %i.abf, label %bb.dl, label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit239

bb.dl:                                            ; preds = %bb.dk
  %i.abg = and i64 %i.aaz, -3                     ; 2 uses
  %i.abh = ptrtoint ptr %i.abb to i64             ; 2 uses
  %i.abi = load i64, ptr %i.zi, align 262144      ; 2 uses
  %i.abj = and i64 %i.abi, 32
  %.not.i.i.i.i.i.i235 = icmp eq i64 %i.abj, 0
  %i.abk = and i64 %i.abi, 25
  %.not38.i.i.i.i.i.i236 = icmp eq i64 %i.abk, 0
  br i1 %.not38.i.i.i.i.i.i236, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.abl = and i64 %i.aaz, -262144
  %i.abm = inttoptr i64 %i.abl to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i237 = load i64, ptr %i.abm, align 262144
  %i.abn = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i237, 25
  %.not39.i.i.i.i.i.i238 = icmp eq i64 %i.abn, 0
  br i1 %.not39.i.i.i.i.i.i238, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.zg, i64 noundef %i.abh, i64 %i.abg) #15
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dl
  br i1 %.not.i.i.i.i.i.i235, label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit239, label %bb.dp, !prof !5

bb.dp:                                            ; preds = %bb.do
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.zg, i64 %i.abh, i64 %i.abg) #15
  br label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit239

_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit239: ; preds = %bb.dk, %bb.do, %bb.dp
  %i.abo = getelementptr i8, ptr %i.aax, i64 48
  %i.abp = load atomic volatile i64, ptr %i.abo monotonic, align 8 ; 5 uses
  %i.abq = getelementptr i8, ptr %i.aba, i64 48   ; 2 uses
  store atomic volatile i64 %i.abp, ptr %i.abq monotonic, align 8
  %i.abr = trunc i64 %i.abp to i1
  %i.abs = and i64 %i.abp, 4294967295
  %i.abt = icmp ne i64 %i.abs, 3
  %i.abu = and i1 %i.abt, %i.abr
  br i1 %i.abu, label %bb.dq, label %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit244

bb.dq:                                            ; preds = %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit239
  %i.abv = and i64 %i.abp, -3                     ; 2 uses
  %i.abw = ptrtoint ptr %i.abq to i64             ; 2 uses
  %i.abx = load i64, ptr %i.zi, align 262144      ; 2 uses
  %i.aby = and i64 %i.abx, 32
  %.not.i.i.i.i.i.i240 = icmp eq i64 %i.aby, 0
  %i.abz = and i64 %i.abx, 25
  %.not38.i.i.i.i.i.i241 = icmp eq i64 %i.abz, 0
  br i1 %.not38.i.i.i.i.i.i241, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.aca = and i64 %i.abp, -262144
  %i.acb = inttoptr i64 %i.aca to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i242 = load i64, ptr %i.acb, align 262144
  %i.acc = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i242, 25
  %.not39.i.i.i.i.i.i243 = icmp eq i64 %i.acc, 0
  br i1 %.not39.i.i.i.i.i.i243, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.zg, i64 noundef %i.abw, i64 %i.abv) #15
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  br i1 %.not.i.i.i.i.i.i240, label %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit244, label %bb.du, !prof !5

bb.du:                                            ; preds = %bb.dt
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.zg, i64 %i.abw, i64 %i.abv) #15
end_hunk_0
