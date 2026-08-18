inline.NumInlined: 246
inline.NumDeleted: 151
begin_hunk_0_@_ZN2v88internal8compiler10UnrollLoopEPNS1_4NodeEPNS0_16ZoneUnorderedSetIS3_NS_4base4hashIS3_EESt8equal_toIS3_EEEjPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS0_4ZoneEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
  %.not18.i302 = icmp eq ptr %i.qk, %i.ox
  br i1 %.not18.i302, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit308, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i303

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i303: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i301, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i306
  %i.ql = phi ptr [ %i.qj, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i301 ], [ %i.qh, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i306 ]
  %i.qm = phi ptr [ %i.qk, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i301 ], [ %i.qi, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i306 ] ; 2 uses
  %i.qn = phi ptr [ %i.nx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i301 ], [ %i.qd, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i306 ]
  %i.qo = xor i64 %indvars.iv460, -1
  %i.qp = getelementptr inbounds [24 x i8], ptr %i.qn, i64 %i.qo ; 2 uses
  %.not14.i304 = icmp eq ptr %i.qm, null
  br i1 %.not14.i304, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i303
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.qm, ptr noundef nonnull %i.qp) #7
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i303
  store ptr %i.ox, ptr %i.ql, align 8
  %.not15.i305 = icmp eq ptr %i.ox, null
  br i1 %.not15.i305, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit308, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ox, ptr noundef nonnull %i.qp) #7
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit308

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit308: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i306, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i301, %bb.bv, %bb.bw
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph432, label %bb.bo, !llvm.loop !17

bb.bx:                                            ; preds = %.lr.ph426, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit320
  %.0184425 = phi i32 [ %i.bb, %.lr.ph426 ], [ %i.qr, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit320 ] ; 2 uses
  %i.qq = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.nx, i32 noundef %.0184425) #7 ; 3 uses
  %i.qr = add i32 %.0184425, -1                   ; 3 uses
  %i.qs = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.nx, i32 noundef %i.qr) #7 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 20
  %i.qu = load i32, ptr %i.qt, align 4
  %i.qv = and i32 %i.qu, 251658240
  %.not.i.i309 = icmp eq i32 %i.qv, 251658240
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = add i64 %i.qw, 32
  %i.qy = inttoptr i64 %i.qx to ptr               ; 2 uses
  br i1 %.not.i.i309, label %bb.by, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit311

bb.by:                                            ; preds = %bb.bx
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = ptrtoint ptr %i.qz to i64
  %i.rb = add i64 %i.ra, 16
  %i.rc = inttoptr i64 %i.rb to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit311

_ZNK2v88internal8compiler4Node7InputAtEi.exit311: ; preds = %bb.bx, %bb.by
  %.sink.i.i310 = phi ptr [ %i.rc, %bb.by ], [ %i.qy, %bb.bx ]
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i310, i64 %indvars.iv460
  %i.re = load ptr, ptr %i.rd, align 8            ; 5 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qq, i64 20
  %i.rg = load i32, ptr %i.rf, align 4
  %i.rh = and i32 %i.rg, 251658240
  %.not.i.i312 = icmp eq i32 %i.rh, 251658240
  %i.ri = ptrtoint ptr %i.qq to i64
  %i.rj = add i64 %i.ri, 32
  %i.rk = inttoptr i64 %i.rj to ptr               ; 2 uses
  br i1 %.not.i.i312, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i318, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i313

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i318: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit311
  %i.rl = load ptr, ptr %i.rk, align 8            ; 2 uses
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = add i64 %i.rm, 16
  %i.ro = inttoptr i64 %i.rn to ptr
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv460 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %.not.i319 = icmp eq ptr %i.rq, %i.re
  br i1 %.not.i319, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit320, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i315

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i313: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit311
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %indvars.iv460 ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8            ; 2 uses
  %.not18.i314 = icmp eq ptr %i.rs, %i.re
  br i1 %.not18.i314, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit320, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i315

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i315: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i313, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i318
  %i.rt = phi ptr [ %i.rr, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i313 ], [ %i.rp, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i318 ]
  %i.ru = phi ptr [ %i.rs, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i313 ], [ %i.rq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i318 ] ; 2 uses
  %i.rv = phi ptr [ %i.qq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i313 ], [ %i.rl, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i318 ]
  %i.rw = getelementptr inbounds [24 x i8], ptr %i.rv, i64 %i.oy ; 2 uses
  %.not14.i316 = icmp eq ptr %i.ru, null
  br i1 %.not14.i316, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i315
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ru, ptr noundef nonnull %i.rw) #7
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i315
  store ptr %i.re, ptr %i.rt, align 8
  %.not15.i317 = icmp eq ptr %i.re, null
  br i1 %.not15.i317, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit320, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.re, ptr noundef nonnull %i.rw) #7
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit320

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit320: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i318, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i313, %bb.ca, %bb.cb
  %.not200 = icmp eq i32 %i.qr, 0
  br i1 %.not200, label %._crit_edge427, label %bb.bx, !llvm.loop !18

bb.cc:                                            ; preds = %.lr.ph432, %bb.cc
  %.0183431 = phi i32 [ 0, %.lr.ph432 ], [ %i.sc, %bb.cc ] ; 3 uses
  %i.rx = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.nx, i32 noundef %.0183431) #7
  %i.ry = call noundef ptr @_ZN2v88internal8compiler4Node11RemoveInputEi(ptr noundef nonnull align 8 dereferenceable(32) %i.rx, i32 noundef 0) #7 ; 0 uses
  %i.rz = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.nx, i32 noundef %.0183431) #7
  %i.sa = load ptr, ptr %i.nx, align 8
  %i.sb = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder16ResizeMergeOrPhiEPKNS1_8OperatorEi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.sa, i32 noundef %i.ok) #7
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.rz, ptr noundef %i.sb) #7
  %i.sc = add nuw nsw i32 %.0183431, 1            ; 2 uses
  %i.sd = icmp samesign ult i32 %i.sc, %.sroa.speculated
  br i1 %i.sd, label %bb.cc, label %.loopexit376, !llvm.loop !19

.loopexit376:                                     ; preds = %bb.cc, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit284
  %i.se = load ptr, ptr %i.nx, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sg = load i16, ptr %i.sf, align 8
  %.not521 = icmp eq i16 %i.sg, 53
  br i1 %.not521, label %.lr.ph434, label %.loopexit

.lr.ph434:                                        ; preds = %.loopexit376, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit329
  %.0433 = phi i32 [ %i.ta, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit329 ], [ 0, %.loopexit376 ] ; 2 uses
  %i.sh = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.nx, i32 noundef %.0433) #7 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 20
  %i.sj = load i32, ptr %i.si, align 4
  %i.sk = and i32 %i.sj, 251658240
  %.not.i.i321 = icmp eq i32 %i.sk, 251658240
  %i.sl = ptrtoint ptr %i.sh to i64
  %i.sm = add i64 %i.sl, 32
  %i.sn = inttoptr i64 %i.sm to ptr               ; 2 uses
  br i1 %.not.i.i321, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i327, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i322

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i327: ; preds = %.lr.ph434
  %i.so = load ptr, ptr %i.sn, align 8            ; 2 uses
  %i.sp = ptrtoint ptr %i.so to i64
  %i.sq = add i64 %i.sp, 16
  %i.sr = inttoptr i64 %i.sq to ptr
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8            ; 2 uses
  %.not.i328 = icmp eq ptr %i.st, %0
  br i1 %.not.i328, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit329, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i324

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i322: ; preds = %.lr.ph434
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8            ; 2 uses
  %.not18.i323 = icmp eq ptr %i.sv, %0
  br i1 %.not18.i323, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit329, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i324

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i324: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i322, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i327
  %i.sw = phi ptr [ %i.su, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i322 ], [ %i.ss, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i327 ]
  %i.sx = phi ptr [ %i.sv, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i322 ], [ %i.st, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i327 ] ; 2 uses
  %i.sy = phi ptr [ %i.sh, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i322 ], [ %i.so, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i327 ]
  %i.sz = getelementptr inbounds i8, ptr %i.sy, i64 -48 ; 2 uses
  %.not14.i325 = icmp eq ptr %i.sx, null
  br i1 %.not14.i325, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i324
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.sx, ptr noundef nonnull %i.sz) #7
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i324, %bb.cd
  store ptr %0, ptr %i.sw, align 8
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.sz) #7
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit329

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit329: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i327, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i322, %bb.ce
  %i.ta = add nuw nsw i32 %.0433, 1               ; 2 uses
  %i.tb = icmp samesign ult i32 %i.ta, %.sroa.speculated
  br i1 %i.tb, label %.lr.ph434, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit329, %.loopexit376
  %.sroa.0330.0 = load ptr, ptr %.sroa.0330.0437, align 8 ; 2 uses
  %.not370 = icmp eq ptr %.sroa.0330.0, null
  br i1 %.not370, label %._crit_edge439, label %.lr.ph438

bb.cf:                                            ; preds = %._crit_edge439, %bb.d, %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2v88internal8compiler19SourcePositionTable12AddDecoratorEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %4, %5
  br i1 %i.a, label %._crit_edge68, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.not.i = icmp eq ptr %7, null                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %.sroa.843.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

.lr.ph67:                                         ; preds = %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not69.a = icmp eq i32 %i.h, 0
  br i1 %.not69.a, label %._crit_edge68, label %.lr.ph67.split

bb.b:                                             ; preds = %.lr.ph61, %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit
  %.sroa.053.059 = phi ptr [ %4, %.lr.ph61 ], [ %i.ax, %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit ] ; 2 uses
  %.sroa.8.058 = phi i64 [ undef, %.lr.ph61 ], [ %.sroa.8.1, %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.k = tail call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef %i.j) #7 ; 2 uses
  %i.l = load i64, ptr %i.b, align 8
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.k, ptr %i.b, align 8
  br label %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit

_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit: ; preds = %bb.b, %bb.c
  br i1 %.not.i, label %_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit
  %i.m = load <2 x ptr>, ptr %i.c, align 8
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.843.8.copyload = load i64, ptr %.sroa.843.8..sroa_idx, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 16777215
  %i.r = zext nneg i32 %i.q to i64
  store ptr %i.n, ptr %i.c, align 8
  store ptr @.str.4, ptr %.sroa.7.8..sroa_idx, align 8
  store i32 1, ptr %.sroa.8.8..sroa_idx, align 8
  store i64 %i.r, ptr %.sroa.843.8..sroa_idx, align 8
  br label %_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit

_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit, %bb.d
  %.sroa.8.1 = phi i64 [ %.sroa.8.058, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %.sroa.8.8.copyload, %bb.d ] ; 2 uses
  %.sroa.843.0 = phi i64 [ -9223372036854775808, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %.sroa.843.8.copyload, %bb.d ]
  %i.s = phi <2 x ptr> [ <ptr @.str.5, ptr @.str.5>, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %i.m, %bb.d ]
  %i.t = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = load i32, ptr %0, align 8
  %i.ae = add i32 %i.ad, 1
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.at)
  %.pre.i = load ptr, ptr %i.ai, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit, %bb.e
  %i.au = phi ptr [ %i.aj, %_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.ai, align 8
  store ptr %i.j, ptr %i.au, align 8
  %i.aw = load i32, ptr %i.f, align 8
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit29, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit
  br i1 %.not.i, label %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store <2 x ptr> %i.s, ptr %i.c, align 8
  store i64 %.sroa.8.1, ptr %.sroa.8.8..sroa_idx, align 8
  store i64 %.sroa.843.0, ptr %.sroa.843.8..sroa_idx, align 8
  br label %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit

_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit: ; preds = %._crit_edge, %bb.f
  store i64 %i.l, ptr %i.b, align 8
  %i.ax = load ptr, ptr %.sroa.053.059, align 8   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %5
  br i1 %i.ay, label %.lr.ph67, label %bb.b

.lr.ph:                                           ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit29
  %.02357 = phi i32 [ %i.bp, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit29 ], [ 0, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit ]
  %i.az = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph9CloneNodeEPKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.j) #7
  %i.ba = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit29, label %bb.g, !prof !7

bb.g:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3
  %i.bm = add nsw i64 %i.bl, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bm)
  %.pre.i28 = load ptr, ptr %i.bb, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit29

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit29: ; preds = %.lr.ph, %bb.g
  %i.bn = phi ptr [ %i.bc, %.lr.ph ], [ %.pre.i28, %bb.g ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.bb, align 8
  store ptr %i.az, ptr %i.bn, align 8
  %i.bp = add nuw i32 %.02357, 1                  ; 2 uses
  %i.bq = load i32, ptr %i.f, align 8
  %i.br = icmp ult i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge68:                                    ; preds = %._crit_edge65, %bb.a, %.lr.ph67
  ret void

.lr.ph67.split:                                   ; preds = %.lr.ph67, %._crit_edge65
  %i.bs = phi i32 [ %i.bz, %._crit_edge65 ], [ 1, %.lr.ph67 ]
  %.sroa.034.066 = phi ptr [ %i.ca, %._crit_edge65 ], [ %4, %.lr.ph67 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.034.066, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %.not70 = icmp eq i32 %i.bs, 0
  br i1 %.not70, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph67.split
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = add i64 %i.bw, 32
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  br label %bb.h

._crit_edge65:                                    ; preds = %bb.l, %.lr.ph67.split
  %i.bz = phi i32 [ 0, %.lr.ph67.split ], [ %i.cs, %bb.l ]
  %i.ca = load ptr, ptr %.sroa.034.066, align 8   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %5
  br i1 %i.cb, label %._crit_edge68, label %.lr.ph67.split, !llvm.loop !22

bb.h:                                             ; preds = %.lr.ph64, %bb.l
  %.02262 = phi i32 [ 0, %.lr.ph64 ], [ %i.cr, %bb.l ] ; 3 uses
  %i.cc = tail call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %i.bu, i32 noundef %.02262) #7 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 20 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = add i64 %i.ce, 32
  %i.cg = inttoptr i64 %i.cf to ptr               ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit ], [ 0, %bb.h ] ; 6 uses
  %i.ch = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.ci = and i32 %i.ch, 251658240
  %.not.i30 = icmp eq i32 %i.ci, 251658240
  br i1 %.not.i30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = lshr i32 %i.ch, 24
  %i.ck = and i32 %i.cj, 15
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

bb.k:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %i.cg, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 8
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.j, %bb.k
  %i.co = phi i32 [ %i.ck, %bb.j ], [ %i.cn, %bb.k ]
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv, %i.cp
  br i1 %i.cq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.cr = add nuw i32 %.02262, 1                  ; 2 uses
  %i.cs = load i32, ptr %i.g, align 8             ; 2 uses
  %i.ct = icmp ult i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.h, label %._crit_edge65, !llvm.loop !24

bb.m:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.cu = load i32, ptr %i.bv, align 4
  %i.cv = and i32 %i.cu, 251658240
  %.not.i.i31 = icmp eq i32 %i.cv, 251658240
  br i1 %.not.i.i31, label %bb.n, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %i.by, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = add i64 %i.cx, 16
  %i.cz = inttoptr i64 %i.cy to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.m, %bb.n
  %.sink.i.i = phi ptr [ %i.cz, %bb.n ], [ %i.by, %bb.m ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = tail call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %i.db, i32 noundef %.02262) #7 ; 5 uses
  %i.dd = load i32, ptr %i.cd, align 4
  %i.de = and i32 %i.dd, 251658240
  %.not.i.i32 = icmp eq i32 %i.de, 251658240
  br i1 %.not.i.i32, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.df = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = add i64 %i.dg, 16
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not.i33 = icmp eq ptr %i.dk, %i.dc
  br i1 %.not.i33, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.dm, %i.dc
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.dn = phi ptr [ %i.dl, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.dj, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.do = phi ptr [ %i.dm, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.dk, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.dp = phi ptr [ %i.cc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.df, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.dq = xor i64 %indvars.iv, -1
  %i.dr = getelementptr inbounds [24 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %.not14.i = icmp eq ptr %i.do, null
  br i1 %.not14.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull %i.dr) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.dc, ptr %i.dn, align 8
  %.not15.i = icmp eq ptr %i.dc, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull %i.dr) #7
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.p, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.i, !llvm.loop !25
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler19SourcePositionTable15RemoveDecoratorEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal8compiler4Node8UseCountEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler14NodeProperties17MergeControlToEndEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS1_4NodeE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties11IsValueEdgeENS1_4EdgeE(ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties12IsEffectEdgeENS1_4EdgeE(ptr, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2
end_hunk_0
