Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-regexp?download=true
inline.NumInlined: 1236
inline.NumDeleted: 616
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal20Builtin_RegExpEscapeEiPmPNS0_7IsolateE:bb.a
  %i.sz = add i64 %i.sy, -1
  %i.ta = inttoptr i64 %i.sz to ptr
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tc = zext i32 %i.su to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.tc
  %i.te = and i64 %i.so, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.td, ptr align 1 %i.sp, i64 %i.te, i1 false)
  %i.tf = load i32, ptr %i.pq, align 4
  %i.tg = add i32 %i.tf, %i.sq                    ; 2 uses
  store i32 %i.tg, ptr %i.pq, align 4
  %i.th = load i32, ptr %i.qf, align 8
  %i.ti = icmp eq i32 %i.tg, %i.th
  br i1 %i.ti, label %bb.br, label %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit55.i.i

bb.br:                                            ; preds = %bb.bq
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit55.i.i

bb.bs:                                            ; preds = %bb.bp, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit50.i.i
  %.not153.i.i = icmp eq i64 %i.so, 0
  br i1 %.not153.i.i, label %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit55.i.i, label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %bb.bs, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.i.i
  %.0.i51142.i.i = phi i64 [ %i.ug, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.i.i ], [ 0, %bb.bs ] ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sp, i64 %.0.i51142.i.i
  %i.tk = load i8, ptr %i.tj, align 1             ; 2 uses
  %i.tl = load i32, ptr %i.pv, align 8
  %i.tm = icmp eq i32 %i.tl, 0
  %i.tn = load ptr, ptr %i.pp, align 8
  %i.to = load i64, ptr %i.tn, align 8
  %i.tp = add i64 %i.to, -1
  %i.tq = inttoptr i64 %i.tp to ptr               ; 2 uses
  %i.tr = load i32, ptr %i.pq, align 4            ; 3 uses
  %i.ts = add nsw i32 %i.tr, 1
  store i32 %i.ts, ptr %i.pq, align 4
  br i1 %i.tm, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i68.i
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tu = zext i32 %i.tr to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tu
  store i8 %i.tk, ptr %i.tv, align 1
  %i.tw = load i32, ptr %i.pq, align 4
  %i.tx = load i32, ptr %i.qf, align 8
  %i.ty = icmp eq i32 %i.tw, %i.tx
  br i1 %i.ty, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.i.i

bb.bu:                                            ; preds = %.lr.ph.i68.i
  %i.tz = zext i8 %i.tk to i16
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ub = zext i32 %i.tr to i64
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.ua, i64 %i.ub
  store i16 %i.tz, ptr %i.uc, align 2
  %i.ud = load i32, ptr %i.pq, align 4
  %i.ue = load i32, ptr %i.qf, align 8
  %i.uf = icmp eq i32 %i.ud, %i.ue
  br i1 %i.uf, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.i.i

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.sink.split.i.i: ; preds = %bb.bu, %bb.bt
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.i.i

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.i.i: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.sink.split.i.i, %bb.bu, %bb.bt
  %i.ug = add nuw i64 %.0.i51142.i.i, 1           ; 2 uses
  %exitcond.not.i69.i = icmp eq i64 %i.ug, %i.so
  br i1 %exitcond.not.i69.i, label %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit55.i.i, label %.lr.ph.i68.i, !llvm.loop !37

_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit55.i.i: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.i.i, %bb.bs, %bb.br, %bb.bq, %_ZN2v84base11OwnedVectorIKtEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit.i
  %.0.i60.i = phi i64 [ 0, %_ZN2v84base11OwnedVectorIKtEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit.i ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i53.i.i ] ; 2 uses
  %i.uh = icmp samesign ult i64 %.0.i60.i, %i.pj
  br i1 %i.uh, label %.lr.ph152.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpEscapeImplIKtEENS0_17MaybeDirectHandleINS0_6StringEEEPNS0_7IsolateENS_4base11OwnedVectorIT_EE.exit.i

.lr.ph152.i.i:                                    ; preds = %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit55.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i, %.lr.ph152.i.i
  %.039151.i.i = phi i64 [ %.0.i60.i, %.lr.ph152.i.i ], [ %i.abr, %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i ] ; 8 uses
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.091.0.i, i64 %.039151.i.i
  %i.uk = load i16, ptr %i.uj, align 2            ; 6 uses
  %i.ul = zext i16 %i.uk to i32                   ; 9 uses
  %.not.i66.i.i = icmp ult i16 %i.uk, 128
  br i1 %.not.i66.i.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.um = zext nneg i16 %i.uk to i64
  %i.un = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_113kAsciiEscapesE, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1
  br label %bb.cc

bb.bx:                                            ; preds = %bb.bv
  %i.up = and i32 %i.ul, 64512                    ; 2 uses
  %i.uq = icmp eq i32 %i.up, 55296
  br i1 %i.uq, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.ur = add nuw i64 %.039151.i.i, 1             ; 3 uses
  %i.us = icmp ult i64 %i.ur, %i.pj
  br i1 %i.us, label %bb.bz, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i

bb.bz:                                            ; preds = %bb.by
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %.sroa.091.0.i, i64 %i.ur
  %i.uu = load i16, ptr %i.ut, align 2
  %i.uv = zext i16 %i.uu to i32                   ; 2 uses
  %i.uw = and i32 %i.uv, 64512
  %i.ux = icmp eq i32 %i.uw, 56320
  br i1 %i.ux, label %bb.ca, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.uy = shl nuw nsw i32 %i.ul, 10
  %i.uz = and i32 %i.uy, 1047552
  %i.va = add nuw nsw i32 %i.uz, 65536
  %i.vb = and i32 %i.uv, 1023
  %i.vc = or disjoint i32 %i.vb, %i.va
  br label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i

bb.cb:                                            ; preds = %bb.bx
  %i.vd = icmp eq i32 %i.up, 56320
  %spec.select.i.i = sext i1 %i.vd to i8          ; 2 uses
  %i.ve = icmp ult i16 %i.uk, 256
  br i1 %i.ve, label %.split.i.i, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i

.split.i.i:                                       ; preds = %bb.cb
  %i.vf = zext nneg i16 %i.uk to i64
  %i.vg = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1
  %i.vi = and i8 %i.vh, 8
  %.not.i66.i = icmp eq i8 %i.vi, 0
  br i1 %.not.i66.i, label %bb.cc, label %.thread126.i.i

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i: ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.1125.i.i = phi i64 [ %.039151.i.i, %bb.cb ], [ %.039151.i.i, %bb.bz ], [ %.039151.i.i, %bb.by ], [ %i.ur, %bb.ca ] ; 2 uses
  %.040123.i.i = phi i8 [ %spec.select.i.i, %bb.cb ], [ -1, %bb.bz ], [ -1, %bb.by ], [ 0, %bb.ca ]
  %.042121.i.i = phi i32 [ %i.ul, %bb.cb ], [ %i.ul, %bb.bz ], [ %i.ul, %bb.by ], [ %i.vc, %bb.ca ] ; 4 uses
  %i.vj = call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %.042121.i.i) #11
  %i.vk = and i32 %.042121.i.i, -2
  %switch.i.i.i = icmp eq i32 %i.vk, 8232
  %or.cond.i.i.i = or i1 %i.vj, %switch.i.i.i
  br i1 %or.cond.i.i.i, label %.thread126.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i, %.split.i.i, %bb.bw
  %.143.i.i = phi i32 [ %i.ul, %bb.bw ], [ %.042121.i.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i ], [ %i.ul, %.split.i.i ] ; 2 uses
  %.141.i.i = phi i8 [ %i.uo, %bb.bw ], [ %.040123.i.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i ], [ %spec.select.i.i, %.split.i.i ] ; 3 uses
  %.2.i.i = phi i64 [ %.039151.i.i, %bb.bw ], [ %.1125.i.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i ], [ %.039151.i.i, %.split.i.i ] ; 10 uses
  switch i8 %.141.i.i, label %bb.cr [
    i8 0, label %bb.cd
    i8 -1, label %.thread126.i.i
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.vl = icmp eq i32 %.143.i.i, %i.ul
  %i.vm = load ptr, ptr %i.pp, align 8
  %i.vn = load i64, ptr %i.vm, align 8
  %i.vo = add i64 %i.vn, -1
  %i.vp = inttoptr i64 %i.vo to ptr
  %i.vq = load i32, ptr %i.pq, align 4            ; 2 uses
  %i.vr = add nsw i32 %i.vq, 1
  store i32 %i.vr, ptr %i.pq, align 4
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vt = zext i32 %i.vq to i64
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.vs, i64 %i.vt
  store i16 %i.uk, ptr %i.vu, align 2
  %i.vv = load i32, ptr %i.pq, align 4            ; 2 uses
  %i.vw = load i32, ptr %i.ui, align 8
  %i.vx = icmp eq i32 %i.vv, %i.vw                ; 2 uses
  br i1 %i.vl, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.vx, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.vx, label %bb.cg, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit64.i.i

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  %.pre159.i.i = load i32, ptr %i.pq, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit64.i.i

_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit64.i.i: ; preds = %bb.cg, %bb.cf
  %i.vy = phi i32 [ %i.vv, %bb.cf ], [ %.pre159.i.i, %bb.cg ] ; 2 uses
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.091.0.i, i64 %.2.i.i
  %i.wa = load i16, ptr %i.vz, align 2
  %i.wb = load ptr, ptr %i.pp, align 8
  %i.wc = load i64, ptr %i.wb, align 8
  %i.wd = add i64 %i.wc, -1
  %i.we = inttoptr i64 %i.wd to ptr
  %i.wf = add nsw i32 %i.vy, 1
  store i32 %i.wf, ptr %i.pq, align 4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %i.wh = zext i32 %i.vy to i64
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.wg, i64 %i.wh
  store i16 %i.wa, ptr %i.wi, align 2
  %i.wj = load i32, ptr %i.pq, align 4
  %i.wk = load i32, ptr %i.ui, align 8
  %i.wl = icmp eq i32 %i.wj, %i.wk
  br i1 %i.wl, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i

.thread126.i.i:                                   ; preds = %bb.cc, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i, %.split.i.i
  %.2132.i.i = phi i64 [ %.2.i.i, %bb.cc ], [ %.039151.i.i, %.split.i.i ], [ %.1125.i.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i ] ; 4 uses
  %.143130.i.i = phi i32 [ %.143.i.i, %bb.cc ], [ %i.ul, %.split.i.i ], [ %.042121.i.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i ] ; 2 uses
  %i.wm = icmp samesign ult i32 %.143130.i.i, 256 ; 2 uses
  %.str.6..str.7.i.i = select i1 %i.wm, ptr @.str.6, ptr @.str.7 ; 2 uses
  %i.wn = load i32, ptr %i.pv, align 8
  %i.wo = icmp eq i32 %i.wn, 0
  br i1 %i.wo, label %bb.ch, label %.lr.ph145.i.i

bb.ch:                                            ; preds = %.thread126.i.i
  %i.wp = load i32, ptr %i.ui, align 8
  %i.wq = load i32, ptr %i.pq, align 4            ; 2 uses
  %i.wr = sub nsw i32 %i.wp, %i.wq
  %i.ws = icmp sgt i32 %i.wr, 3
  br i1 %i.ws, label %bb.ci, label %.lr.ph148.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.wt = load ptr, ptr %i.pp, align 8
  %i.wu = load i64, ptr %i.wt, align 8
  %i.wv = add i64 %i.wu, -1
  %i.ww = inttoptr i64 %i.wv to ptr
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.wy = zext i32 %i.wq to i64
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.wy
  %12 = select i1 %i.wm, i16 30812, i16 30044
  store i16 %12, ptr %i.wz, align 1
  %i.xa = load i32, ptr %i.pq, align 4
  %i.xb = add nsw i32 %i.xa, 2                    ; 2 uses
  store i32 %i.xb, ptr %i.pq, align 4
  %i.xc = load i32, ptr %i.ui, align 8
  %i.xd = icmp eq i32 %i.xb, %i.xc
  br i1 %i.xd, label %bb.cj, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.i62.i

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.i62.i

.lr.ph148.i.i:                                    ; preds = %bb.ch, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i65.i
  %i.xe = phi i8 [ %i.xs, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i65.i ], [ 92, %bb.ch ]
  %.0.i59147.i.i = phi ptr [ %i.xf, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i65.i ], [ %.str.6..str.7.i.i, %bb.ch ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.i59147.i.i, i64 1 ; 2 uses
  %i.xg = load ptr, ptr %i.pp, align 8
  %i.xh = load i64, ptr %i.xg, align 8
  %i.xi = add i64 %i.xh, -1
  %i.xj = inttoptr i64 %i.xi to ptr
  %i.xk = load i32, ptr %i.pq, align 4            ; 2 uses
  %i.xl = add nsw i32 %i.xk, 1
  store i32 %i.xl, ptr %i.pq, align 4
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xn = zext i32 %i.xk to i64
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xn
  store i8 %i.xe, ptr %i.xo, align 1
  %i.xp = load i32, ptr %i.pq, align 4
  %i.xq = load i32, ptr %i.ui, align 8
  %i.xr = icmp eq i32 %i.xp, %i.xq
  br i1 %i.xr, label %bb.ck, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i65.i

bb.ck:                                            ; preds = %.lr.ph148.i.i
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i65.i

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i65.i: ; preds = %bb.ck, %.lr.ph148.i.i
  %i.xs = load i8, ptr %i.xf, align 1             ; 2 uses
  %.not5.i60.i.i = icmp eq i8 %i.xs, 0
  br i1 %.not5.i60.i.i, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.i62.i, label %.lr.ph148.i.i, !llvm.loop !63

.lr.ph145.i.i:                                    ; preds = %.thread126.i.i, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i61.i
  %i.xt = phi i8 [ %i.yi, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i61.i ], [ 92, %.thread126.i.i ]
  %.1.i57144.i.i = phi ptr [ %i.xu, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i61.i ], [ %.str.6..str.7.i.i, %.thread126.i.i ]
  %i.xu = getelementptr inbounds nuw i8, ptr %.1.i57144.i.i, i64 1 ; 2 uses
  %i.xv = load ptr, ptr %i.pp, align 8
  %i.xw = load i64, ptr %i.xv, align 8
  %i.xx = add i64 %i.xw, -1
  %i.xy = inttoptr i64 %i.xx to ptr
  %i.xz = load i32, ptr %i.pq, align 4            ; 2 uses
  %i.ya = add nsw i32 %i.xz, 1
  store i32 %i.ya, ptr %i.pq, align 4
  %i.yb = sext i8 %i.xt to i16
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.yd = zext i32 %i.xz to i64
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %i.yc, i64 %i.yd
  store i16 %i.yb, ptr %i.ye, align 2
  %i.yf = load i32, ptr %i.pq, align 4
  %i.yg = load i32, ptr %i.ui, align 8
  %i.yh = icmp eq i32 %i.yf, %i.yg
  br i1 %i.yh, label %bb.cl, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i61.i

bb.cl:                                            ; preds = %.lr.ph145.i.i
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i61.i

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i61.i: ; preds = %bb.cl, %.lr.ph145.i.i
  %i.yi = load i8, ptr %i.xu, align 1             ; 2 uses
  %.not.i58.i.i = icmp eq i8 %i.yi, 0
  br i1 %.not.i58.i.i, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.i62.i, label %.lr.ph145.i.i, !llvm.loop !64

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.i62.i: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i61.i, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i65.i, %bb.cj, %bb.ci
  %i.yj = uitofp nneg i32 %.143130.i.i to double
  %i.yk = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yj, i32 noundef 16, ptr nonnull %i.a, i64 2200) #11 ; 2 uses
  %i.yl = extractvalue { i64, ptr } %i.yk, 0      ; 4 uses
  %i.ym = extractvalue { i64, ptr } %i.yk, 1      ; 2 uses
  %i.yn = trunc i64 %i.yl to i32                  ; 2 uses
  %i.yo = load i32, ptr %i.pv, align 8
  %i.yp = icmp eq i32 %i.yo, 0
  br i1 %i.yp, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.i62.i
  %i.yq = load i32, ptr %i.ui, align 8
  %i.yr = load i32, ptr %i.pq, align 4            ; 2 uses
  %i.ys = sub nsw i32 %i.yq, %i.yr
  %i.yt = icmp sgt i32 %i.ys, %i.yn
  br i1 %i.yt, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.yu = load ptr, ptr %i.pp, align 8
  %i.yv = load i64, ptr %i.yu, align 8
  %i.yw = add i64 %i.yv, -1
  %i.yx = inttoptr i64 %i.yw to ptr
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.yz = zext i32 %i.yr to i64
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.yz
  %i.zb = and i64 %i.yl, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.za, ptr align 1 %i.ym, i64 %i.zb, i1 false)
  %i.zc = load i32, ptr %i.pq, align 4
  %i.zd = add i32 %i.zc, %i.yn                    ; 2 uses
  store i32 %i.zd, ptr %i.pq, align 4
  %i.ze = load i32, ptr %i.ui, align 8
  %i.zf = icmp eq i32 %i.zd, %i.ze
  br i1 %i.zf, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i

bb.co:                                            ; preds = %bb.cm, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.i62.i
  %.not154.i.i = icmp eq i64 %i.yl, 0
  br i1 %.not154.i.i, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i, label %.lr.ph150.i.i

.lr.ph150.i.i:                                    ; preds = %bb.co, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.i63.i
  %.0.i149.i.i = phi i64 [ %i.aad, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.i63.i ], [ 0, %bb.co ] ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ym, i64 %.0.i149.i.i
  %i.zh = load i8, ptr %i.zg, align 1             ; 2 uses
  %i.zi = load i32, ptr %i.pv, align 8
  %i.zj = icmp eq i32 %i.zi, 0
  %i.zk = load ptr, ptr %i.pp, align 8
  %i.zl = load i64, ptr %i.zk, align 8
  %i.zm = add i64 %i.zl, -1
  %i.zn = inttoptr i64 %i.zm to ptr               ; 2 uses
  %i.zo = load i32, ptr %i.pq, align 4            ; 3 uses
  %i.zp = add nsw i32 %i.zo, 1
  store i32 %i.zp, ptr %i.pq, align 4
  br i1 %i.zj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph150.i.i
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zr = zext i32 %i.zo to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zr
  store i8 %i.zh, ptr %i.zs, align 1
  %i.zt = load i32, ptr %i.pq, align 4
  %i.zu = load i32, ptr %i.ui, align 8
  %i.zv = icmp eq i32 %i.zt, %i.zu
  br i1 %i.zv, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.sink.split.i64.i, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.i63.i

bb.cq:                                            ; preds = %.lr.ph150.i.i
  %i.zw = zext i8 %i.zh to i16
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zy = zext i32 %i.zo to i64
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %i.zy
  store i16 %i.zw, ptr %i.zz, align 2
  %i.aaa = load i32, ptr %i.pq, align 4
  %i.aab = load i32, ptr %i.ui, align 8
  %i.aac = icmp eq i32 %i.aaa, %i.aab
  br i1 %i.aac, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.sink.split.i64.i, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.i63.i

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.sink.split.i64.i: ; preds = %bb.cq, %bb.cp
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.i63.i

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.i63.i: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.sink.split.i64.i, %bb.cq, %bb.cp
  %i.aad = add nuw i64 %.0.i149.i.i, 1            ; 2 uses
  %exitcond157.not.i.i = icmp eq i64 %i.aad, %i.yl
  br i1 %exitcond157.not.i.i, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i, label %.lr.ph150.i.i, !llvm.loop !37

bb.cr:                                            ; preds = %bb.cc
  %i.aae = load i32, ptr %i.pv, align 8
  %i.aaf = icmp eq i32 %i.aae, 0
  %i.aag = load ptr, ptr %i.pp, align 8
  %i.aah = load i64, ptr %i.aag, align 8
  %i.aai = add i64 %i.aah, -1
  %i.aaj = inttoptr i64 %i.aai to ptr
  %i.aak = load i32, ptr %i.pq, align 4           ; 2 uses
  %i.aal = add nsw i32 %i.aak, 1
  store i32 %i.aal, ptr %i.pq, align 4
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16 ; 2 uses
  %i.aan = zext i32 %i.aak to i64                 ; 2 uses
  br i1 %i.aaf, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aan
  store i8 92, ptr %i.aao, align 1
  %i.aap = load i32, ptr %i.pq, align 4           ; 2 uses
  %i.aaq = load i32, ptr %i.ui, align 8
  %i.aar = icmp eq i32 %i.aap, %i.aaq
  br i1 %i.aar, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.aas = getelementptr inbounds nuw [2 x i8], ptr %i.aam, i64 %i.aan
  store i16 92, ptr %i.aas, align 2
  %i.aat = load i32, ptr %i.pq, align 4           ; 2 uses
  %i.aau = load i32, ptr %i.ui, align 8
  %i.aav = icmp eq i32 %i.aat, %i.aau
  br i1 %i.aav, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.i.i

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.sink.split.i.i: ; preds = %bb.ct, %bb.cs
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  %.pre471.i = load i32, ptr %i.pq, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.i.i

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.i.i: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.sink.split.i.i, %bb.ct, %bb.cs
  %i.aaw = phi i32 [ %.pre471.i, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.sink.split.i.i ], [ %i.aat, %bb.ct ], [ %i.aap, %bb.cs ] ; 3 uses
  %i.aax = load i32, ptr %i.pv, align 8
  %i.aay = icmp eq i32 %i.aax, 0
  %i.aaz = load ptr, ptr %i.pp, align 8
  %i.aba = load i64, ptr %i.aaz, align 8
  %i.abb = add i64 %i.aba, -1
  %i.abc = inttoptr i64 %i.abb to ptr             ; 2 uses
  %i.abd = add nsw i32 %i.aaw, 1
  store i32 %i.abd, ptr %i.pq, align 4
  br i1 %i.aay, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.i.i
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abf = zext i32 %i.aaw to i64
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abf
  store i8 %.141.i.i, ptr %i.abg, align 1
  %i.abh = load i32, ptr %i.pq, align 4
  %i.abi = load i32, ptr %i.ui, align 8
  %i.abj = icmp eq i32 %i.abh, %i.abi
  br i1 %i.abj, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i

bb.cv:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit47.i.i
  %i.abk = zext i8 %.141.i.i to i16
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abm = zext i32 %i.aaw to i64
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %i.abl, i64 %i.abm
  store i16 %i.abk, ptr %i.abn, align 2
  %i.abo = load i32, ptr %i.pq, align 4
  %i.abp = load i32, ptr %i.ui, align 8
  %i.abq = icmp eq i32 %i.abo, %i.abp
  br i1 %i.abq, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.sink.split.i.i, label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i

_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.sink.split.i.i: ; preds = %bb.cv, %bb.cu, %bb.cn, %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit64.i.i, %bb.ce
  %.2131.ph.i.i = phi i64 [ %.2132.i.i, %bb.cn ], [ %.2.i.i, %bb.cu ], [ %.2.i.i, %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit64.i.i ], [ %.2.i.i, %bb.ce ], [ %.2.i.i, %bb.cv ]
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i

_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.i63.i, %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.sink.split.i.i, %bb.cv, %bb.cu, %bb.co, %bb.cn, %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit64.i.i, %bb.ce
  %.2131.i.i = phi i64 [ %.2132.i.i, %bb.co ], [ %.2.i.i, %bb.cu ], [ %.2.i.i, %bb.cv ], [ %.2.i.i, %bb.ce ], [ %.2.i.i, %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit64.i.i ], [ %.2132.i.i, %bb.cn ], [ %.2131.ph.i.i, %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.sink.split.i.i ], [ %.2132.i.i, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.i63.i ]
  %i.abr = add i64 %.2131.i.i, 1                  ; 2 uses
  %i.abs = icmp ult i64 %i.abr, %i.pj
  br i1 %i.abs, label %bb.bv, label %_ZN2v88internal12_GLOBAL__N_116RegExpEscapeImplIKtEENS0_17MaybeDirectHandleINS0_6StringEEEPNS0_7IsolateENS_4base11OwnedVectorIT_EE.exit.i, !llvm.loop !65

_ZN2v88internal12_GLOBAL__N_116RegExpEscapeImplIKtEENS0_17MaybeDirectHandleINS0_6StringEEEPNS0_7IsolateENS_4base11OwnedVectorIT_EE.exit.i: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIKtS3_EEvT_.exit65.i.i, %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit55.i.i
  %i.abt = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not465.i = icmp eq ptr %i.abt, null
  call void @_ZdaPv(ptr noundef nonnull %.sroa.091.0.i) #14
  br i1 %.not465.i, label %_ZN2v84base11OwnedVectorIKtED2Ev.exit74.i, label %_ZN2v84base11OwnedVectorIKhED2Ev.exit77.i

_ZN2v84base11OwnedVectorIKtED2Ev.exit74.i:        ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpEscapeImplIKtEENS0_17MaybeDirectHandleINS0_6StringEEEPNS0_7IsolateENS_4base11OwnedVectorIT_EE.exit.i
  %i.abu = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.abv = load i64, ptr %i.abu, align 8
  br label %bb.cw

_ZN2v84base11OwnedVectorIKhED2Ev.exit77.i:        ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpEscapeImplIKtEENS0_17MaybeDirectHandleINS0_6StringEEEPNS0_7IsolateENS_4base11OwnedVectorIT_EE.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpEscapeImplIKhEENS0_17MaybeDirectHandleINS0_6StringEEEPNS0_7IsolateENS_4base11OwnedVectorIT_EE.exit.i
  %.sroa.0118.0.i = phi ptr [ %i.ol, %_ZN2v88internal12_GLOBAL__N_116RegExpEscapeImplIKhEENS0_17MaybeDirectHandleINS0_6StringEEEPNS0_7IsolateENS_4base11OwnedVectorIT_EE.exit.i ], [ %i.abt, %_ZN2v88internal12_GLOBAL__N_116RegExpEscapeImplIKtEENS0_17MaybeDirectHandleINS0_6StringEEEPNS0_7IsolateENS_4base11OwnedVectorIT_EE.exit.i ]
  %i.abw = load i64, ptr %.sroa.0118.0.i, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN2v84base11OwnedVectorIKhED2Ev.exit77.i, %_ZN2v84base11OwnedVectorIKtED2Ev.exit74.i, %_ZN2v84base11OwnedVectorIKhED2Ev.exit50.i, %bb.c, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %.sroa.0132.2.i = phi i64 [ %i.ab, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ %i.ag, %bb.c ], [ %i.abw, %_ZN2v84base11OwnedVectorIKhED2Ev.exit77.i ], [ %i.on, %_ZN2v84base11OwnedVectorIKhED2Ev.exit50.i ], [ %i.abv, %_ZN2v84base11OwnedVectorIKtED2Ev.exit74.i ]
  store ptr %i.e, ptr %i.d, align 8
  %i.abx = load i32, ptr %i.h, align 8
  %i.aby = add nsw i32 %i.abx, -1
  store i32 %i.aby, ptr %i.h, align 8
  %i.abz = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.abz, %i.g
  br i1 %.not.i.i, label %_ZN2v88internalL25Builtin_Impl_RegExpEscapeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.cx, !prof !9

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.g, ptr %i.f, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL25Builtin_Impl_RegExpEscapeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL25Builtin_Impl_RegExpEscapeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.cw, %bb.cx
  ret i64 %.sroa.0132.2.i
}

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

end_hunk_0
