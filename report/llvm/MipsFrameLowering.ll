Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsFrameLowering?download=true
inline.NumInlined: 108
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm17MipsFrameLowering9hasFPImplERKNS_15MachineFunctionE:bb.a
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(536) %i.d) #8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !233, !nonnull !109, !align !230
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1288
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm13TargetOptions23DisableFramePointerElimERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440) %i.k, ptr noundef nonnull align 8 dereferenceable(1065) %1) #8
  br i1 %i.l, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.n = load i8, ptr %i.m, align 4, !tbaa !234, !range !108, !noundef !109
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 37
  %i.q = load i8, ptr %i.p, align 1, !tbaa !254, !range !108, !noundef !109
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 536
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #8, !inline_history !255
  br i1 %i.v, label %bb.e, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 528
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #8, !inline_history !255
  br label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.aa = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ false, %bb.d ], [ %i.z, %bb.e ]
  ret i1 %i.aa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZNK4llvm13TargetOptions23DisableFramePointerElimERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17MipsFrameLowering5hasBPERKNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225, !nonnull !109, !align !230 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(536) %i.d) #8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.j = load i8, ptr %i.i, align 4, !tbaa !234, !range !108, !noundef !109
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 536
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #8, !inline_history !255
  br i1 %i.o, label %bb.c, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 528
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #8, !inline_history !255
  br label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.s, %bb.c ]
  ret i1 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK4llvm17MipsFrameLowering17estimateStackSizeERKNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225, !nonnull !109, !align !230 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(536) %i.d) #8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !256  ; 9 uses
  %.not26 = icmp eq i32 %i.j, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = sub i32 0, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !257  ; 3 uses
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %xtraiter = and i32 %i.j, 1
  %i.o = icmp eq i32 %i.j, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.j, -2
  %invariant.op = add i32 1, %i.j
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.028.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.p = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.q = add i32 %i.j, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !258
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.epil.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !261
  %i.x = add nsw i64 %i.w, %.028.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.x, %bb.b ], [ %.028.epil.init, %.epil.preheader ] ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull %1) #8 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !262 ; 2 uses
  %.not2529 = icmp eq i16 %i.ac, 0
  br i1 %.not2529, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  br label %bb.h

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.028 = phi i64 [ 0, %.lr.ph.new ], [ %.1.1, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.ag = trunc nuw i64 %indvars.iv to i32
  %i.ah = add i32 %i.j, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !258
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  %i.ao = add nsw i64 %i.an, %.028
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i64 [ %i.ao, %bb.d ], [ %.028, %bb.c ] ; 2 uses
  %i.ap = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.ap, %invariant.op
  %i.aq = zext i32 %.reass to i64
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !258
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !261
  %i.aw = add nsw i64 %i.av, %.1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i64 [ %i.aw, %bb.f ], [ %.1, %bb.e ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !264

._crit_edge34:                                    ; preds = %bb.h, %._crit_edge
  %.2.lcssa = phi i64 [ %.0.lcssa, %._crit_edge ], [ %i.bz, %bb.h ]
  %i.ax = tail call noundef i64 @_ZNK4llvm16MachineFrameInfo17estimateStackSizeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %1) #8
  %i.ay = add i64 %i.ax, %.2.lcssa
  ret i64 %i.ay

bb.h:                                             ; preds = %.lr.ph33, %bb.h
  %i.az = phi i16 [ %i.ac, %.lr.ph33 ], [ %i.cb, %bb.h ]
  %.031 = phi ptr [ %i.ab, %.lr.ph33 ], [ %i.ca, %bb.h ]
  %.230 = phi i64 [ %.0.lcssa, %.lr.ph33 ], [ %i.bz, %bb.h ]
  %i.ba = zext i16 %i.az to i32
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(316) %i.h, i32 %i.ba) #8
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !266
  %i.bg = load i32, ptr %i.ae, align 8, !tbaa !287
  %i.bh = load i32, ptr %i.af, align 8, !tbaa !288
  %i.bi = mul i32 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !289
  %i.bl = zext i16 %i.bk to i32
  %i.bm = add i32 %i.bi, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !291
  %i.br = lshr i32 %i.bq, 3
  %i.bs = zext nneg i32 %i.br to i64              ; 3 uses
  %i.bt = add nsw i64 %.230, %i.bs                ; 2 uses
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = zext i1 %i.bu to i64                    ; 2 uses
  %i.bw = sub i64 %i.bt, %i.bv
  %i.bx = udiv i64 %i.bw, %i.bs
  %i.by = add i64 %i.bx, %i.bv
  %i.bz = mul i64 %i.by, %i.bs                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.031, i64 2 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !262 ; 2 uses
  %.not25 = icmp eq i16 %i.cb, 0
  br i1 %.not25, label %._crit_edge34, label %bb.h, !llvm.loop !293
}

declare noundef i64 @_ZNK4llvm16MachineFrameInfo17estimateStackSizeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4llvm17MipsFrameLowering29eliminateCallFramePseudoInstrERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225, !nonnull !109, !align !230
  %i.c = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4llvm13MipsSubtarget6getABIEv(ptr noundef nonnull align 8 dereferenceable(536) %i.b) #8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !294
  %i.e = load ptr, ptr %0, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #8
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.d, 3
  %i.j = select i1 %i.i, i32 334, i32 20
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !297
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !315
  %i.q = icmp eq i32 %i.p, 332
  %i.r = sub nsw i64 0, %i.n
  %spec.select = select i1 %i.q, i64 %i.r, i64 %i.n
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !225, !nonnull !109, !align !230 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !231
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(536) %i.s) #8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !231
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1520
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(124) %i.w, i32 noundef %i.j, i64 noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %3) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !316
  %i.ad = and i32 %i.ac, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.af, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !317 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !316
  %i.ai = and i32 %i.ah, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !318

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.c
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %3, %bb.c ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.af, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !317 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %3, %i.ak
  br i1 %.not4.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i.i.i
  %.sroa.03.05.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !317 ; 2 uses
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull %.sroa.03.05.i.i.i) #8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !317 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8
  %i.ar = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.as = or disjoint i64 %i.ar, %i.ao
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !317
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  store i64 %i.au, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.am, align 8, !tbaa !317
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull %.sroa.03.05.i.i.i) #8
  %.not.i.i.i = icmp eq ptr %i.an, %i.ak
  br i1 %.not.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !319

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  ret ptr %i.ak
}

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4llvm13MipsSubtarget6getABIEv(ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm19TargetFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(21)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MipsFrameLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm19TargetFrameLowering17getStackThresholdEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 4294967295
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25isStackIdSafeForLocalAreaEj(ptr noundef nonnull align 8 dereferenceable(21) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17MipsFrameLowering44allocateScavengingFrameIndexesNearIncomingSPERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering27assignCalleeSavedSpillSlotsERNS_15MachineFunctionEPKNS_18TargetRegisterInfoERSt6vectorINS_15CalleeSavedInfoESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm19TargetFrameLowering24getCalleeSavedSpillSlotsERj(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !320
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering31targetHandlesStackFrameRoundingEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17MipsFrameLowering20enableShrinkWrappingERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25enableStackSlotScavengingERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering20enableCalleeSaveSkipERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering20emitZeroCallUsedRegsENS_9BitVectorERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr nofree noundef align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering32emitCalleeSavedFrameMovesFullCFAERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering14enableCFIFixupERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering18enableFullCFIFixupERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #8
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering22resetCFIToInitialStateERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
end_hunk_0
