Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/InstSimplify?download=true
inline.NumInlined: 554
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes12InstSimplify13runOnFunctionEPNS_8FunctionE:bb.a
  %i.du = call noundef ptr @_ZN6hermes9IRBuilder17createAsInt32InstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull %.0.i.i) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !81
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !91
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !122
  store ptr %i.ea, ptr %11, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.eb = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.du, i32 noundef 0) #10 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !69
  %i.ed = add i8 %i.ec, -120
  %i.ee = icmp ult i8 %i.ed, -11
  br i1 %i.ee, label %.thread.i.i.i, label %bb.ap

.thread.i.i.i:                                    ; preds = %select.unfold.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  br label %bb.aq

bb.ap:                                            ; preds = %select.unfold.i.i
  %i.eg = call noundef ptr @_ZN6hermes11evalToInt32ERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %i.eb) #10 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.eg, null
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %spec.select.i72.i.i = select i1 %.not14.i.i.i, ptr %i.eh, ptr %i.eg
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.i.i.i
  %i.ei = phi ptr [ %spec.select.i72.i.i, %bb.ap ], [ %i.ef, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %_ZN12_GLOBAL__N_113simplifyBinOpEPN6hermes18BinaryOperatorInstE.exit.i

_ZN12_GLOBAL__N_113simplifyBinOpEPN6hermes18BinaryOperatorInstE.exit.i: ; preds = %bb.aq, %bb.ao, %bb.an, %_ZNK4llvh9StringRef6equalsES0_.exit54.thread135.i.i, %bb.ak, %.critedge.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.thread133.i.i, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %.critedge52.thread.i.i, %bb.f
  %.4.i.i = phi ptr [ %i.bh, %bb.f ], [ %i.ei, %bb.aq ], [ %i.bx, %bb.l ], [ %spec.select.i.i, %bb.n ], [ %i.ce, %bb.p ], [ %spec.select3.i.i, %bb.r ], [ %i.cl, %bb.t ], [ %i.cq, %bb.x ], [ %i.cr, %bb.z ], [ %i.cs, %bb.ab ], [ %i.ct, %bb.ad ], [ %i.cu, %bb.af ], [ %i.cv, %bb.ah ], [ %spec.select4.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.thread133.i.i ], [ %spec.select7.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit54.thread135.i.i ], [ null, %bb.ak ], [ null, %.critedge.i.i ], [ null, %bb.q ], [ null, %bb.m ], [ null, %bb.an ], [ null, %.critedge52.thread.i.i ], [ null, %bb.ao ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ac ], [ null, %bb.aa ], [ null, %bb.y ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %bb.cy

bb.ar:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.027.067, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !81
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !91
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !122
  store ptr %i.eo, ptr %10, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.027.067, i64 132
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !140 ; 2 uses
  %i.er = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i.i12.i = load i32, ptr %i.es, align 2, !tbaa !130
  %.sroa.034.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i.i12.i to i16 ; 2 uses
  %i.et = load i8, ptr %i.er, align 8, !tbaa !69
  %i.eu = add i8 %i.et, -120
  %i.ev = icmp ult i8 %i.eu, -11
  br i1 %i.ev, label %.thread.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ew = call noundef ptr @_ZN6hermes17evalUnaryOperatorENS_17UnaryOperatorInst6OpKindERNS_9IRBuilderEPNS_7LiteralE(i32 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %i.er) #10 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ew, null
  br i1 %.not19.i.i, label %.thread.i.i, label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

.thread.i.i:                                      ; preds = %bb.as, %bb.ar
  switch i32 %i.eq, label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i [
    i32 2, label %bb.at
    i32 6, label %bb.bb
    i32 3, label %bb.bd
  ]

bb.at:                                            ; preds = %.thread.i.i
  %i.ex = call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.sroa.034.0.extract.trunc.i.i)
  %i.ey = icmp eq i16 %i.ex, 1
  br i1 %i.ey, label %.split.i.i, label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

.split.i.i:                                       ; preds = %bb.at
  %i.ez = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.extract.trunc.i.i, i1 true)
  switch i16 %i.ez, label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i [
    i16 2, label %bb.au
    i16 5, label %bb.av
    i16 1, label %bb.aw
    i16 3, label %bb.ax
    i16 4, label %bb.ay
    i16 9, label %bb.az
    i16 8, label %bb.ba
  ]

bb.au:                                            ; preds = %.split.i.i
  %i.fa = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr nonnull @.str.1, i64 6) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.av:                                            ; preds = %.split.i.i
  %i.fb = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr nonnull @.str.2, i64 6) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.aw:                                            ; preds = %.split.i.i
  %i.fc = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr nonnull @.str.3, i64 9) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.ax:                                            ; preds = %.split.i.i
  %i.fd = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr nonnull @.str.4, i64 7) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.ay:                                            ; preds = %.split.i.i
  %i.fe = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr nonnull @.str.5, i64 6) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.az:                                            ; preds = %.split.i.i
  %i.ff = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr nonnull @.str.1, i64 6) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.ba:                                            ; preds = %.split.i.i
  %i.fg = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr nonnull @.str.6, i64 8) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.bb:                                            ; preds = %.thread.i.i
  %.sroa.0.0.copyload.i20.i.i = load i32, ptr %i.es, align 2, !tbaa !130
  %i.fh = and i32 %.sroa.0.0.copyload.i20.i.i, 65529
  %.not.i.i13.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i13.i, label %bb.bc, label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.fi = call noundef ptr @_ZN6hermes9IRBuilder14getLiteralBoolEb(ptr noundef nonnull align 8 dereferenceable(40) %10, i1 noundef zeroext true) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

bb.bd:                                            ; preds = %.thread.i.i
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %.sroa.027.067) #10
  %i.fj = call noundef ptr @_ZN6hermes9IRBuilder18createAsNumberInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %i.er) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !81
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !91
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !122
  store ptr %i.fp, ptr %9, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.fq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.fj, i32 noundef 0) #10 ; 4 uses
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !69
  %i.fs = add i8 %i.fr, -120
  %i.ft = icmp ult i8 %i.fs, -11
  br i1 %i.ft, label %.thread.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fu = call noundef ptr @_ZN6hermes12evalToNumberERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %i.fq) #10 ; 2 uses
  %.not16.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not16.i.i.i.i, label %.thread.i.i.i.i, label %_ZN12_GLOBAL__N_114reduceAsNumberEPN6hermes12AsNumberInstE.exit.i.i

.thread.i.i.i.i:                                  ; preds = %bb.be, %bb.bd
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.fv, align 2, !tbaa !130
  %i.fw = and i32 %.sroa.0.0.copyload.i.i.i.i.i, 65535
  %i.fx = icmp eq i32 %i.fw, 32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %spec.select17.i.i.i.i = select i1 %i.fx, ptr %i.fq, ptr %i.fy
  br label %_ZN12_GLOBAL__N_114reduceAsNumberEPN6hermes12AsNumberInstE.exit.i.i

_ZN12_GLOBAL__N_114reduceAsNumberEPN6hermes12AsNumberInstE.exit.i.i: ; preds = %.thread.i.i.i.i, %bb.be
  %.3.i.i.i.i = phi ptr [ %i.fu, %bb.be ], [ %spec.select17.i.i.i.i, %.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i

_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i: ; preds = %_ZN12_GLOBAL__N_114reduceAsNumberEPN6hermes12AsNumberInstE.exit.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %.split.i.i, %bb.at, %.thread.i.i, %bb.as
  %.3.i.i = phi ptr [ %i.ew, %bb.as ], [ %i.fa, %bb.au ], [ %i.fb, %bb.av ], [ %i.fc, %bb.aw ], [ %i.fd, %bb.ax ], [ %i.fe, %bb.ay ], [ %i.ff, %bb.az ], [ %i.fg, %bb.ba ], [ %i.fi, %bb.bc ], [ %.3.i.i.i.i, %_ZN12_GLOBAL__N_114reduceAsNumberEPN6hermes12AsNumberInstE.exit.i.i ], [ null, %.thread.i.i ], [ null, %bb.bb ], [ null, %.split.i.i ], [ null, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.cy

bb.bf:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.027.067, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !81
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !91
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !122
  store ptr %i.ge, ptr %8, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.gf = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 4 uses
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !69
  %i.gh = add i8 %i.gg, -120
  %i.gi = icmp ult i8 %i.gh, -11
  br i1 %i.gi, label %.thread.i.i.i17.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gj = call noundef ptr @_ZN6hermes12evalToNumberERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %i.gf) #10 ; 2 uses
  %.not16.i.i.i14.i = icmp eq ptr %i.gj, null
  br i1 %.not16.i.i.i14.i, label %.thread.i.i.i17.i, label %_ZN12_GLOBAL__N_116simplifyAsNumberEPN6hermes12AsNumberInstE.exit.i

.thread.i.i.i17.i:                                ; preds = %bb.bg, %bb.bf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %.sroa.0.0.copyload.i.i.i.i18.i = load i32, ptr %i.gk, align 2, !tbaa !130
  %i.gl = and i32 %.sroa.0.0.copyload.i.i.i.i18.i, 65535
  %i.gm = icmp eq i32 %i.gl, 32
  %spec.select17.i.i.i19.i = select i1 %i.gm, ptr %i.gf, ptr %i.ap
  br label %_ZN12_GLOBAL__N_116simplifyAsNumberEPN6hermes12AsNumberInstE.exit.i

_ZN12_GLOBAL__N_116simplifyAsNumberEPN6hermes12AsNumberInstE.exit.i: ; preds = %.thread.i.i.i17.i, %bb.bg
  %.3.i.i.i16.i = phi ptr [ %i.gj, %bb.bg ], [ %spec.select17.i.i.i19.i, %.thread.i.i.i17.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.gn = icmp eq ptr %.3.i.i.i16.i, %i.ap
  br i1 %i.gn, label %.thread54, label %.thread47

bb.bh:                                            ; preds = %.lr.ph
  %i.go = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #10
  br i1 %i.go, label %bb.bi, label %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.thread15.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.027.067, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !42
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !54 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !69
  %.not.i.i25.i = icmp eq i8 %i.gt, 26
  br i1 %.not.i.i25.i, label %bb.bj, label %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.thread15.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 132
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !140
  %.off.i.i.i = add i32 %i.gv, -7
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.i.i, label %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.thread15.i.i

_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.i.i: ; preds = %bb.bj
  %i.gw = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.ap
  br i1 %i.gx, label %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.thread15.i.i, label %_ZN12_GLOBAL__N_117simplifyAsNumericEPN6hermes13AsNumericInstE.exit.i

_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.thread15.i.i: ; preds = %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.i.i, %bb.bj, %bb.bi, %bb.bh
  %i.gy = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.gz, align 2, !tbaa !130
  %i.ha = and i32 %.sroa.0.0.copyload.i.i.i.i, 65535
  %i.hb = icmp eq i32 %i.ha, 64
  br i1 %i.hb, label %_ZN12_GLOBAL__N_117simplifyAsNumericEPN6hermes13AsNumericInstE.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.thread15.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.027.067, i64 56
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !81
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 72
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !91
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !122
  store ptr %i.hh, ptr %7, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %i.hi = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 4 uses
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !69
  %i.hk = add i8 %i.hj, -120
  %i.hl = icmp ult i8 %i.hk, -11
  br i1 %i.hl, label %.thread.i.i.i22.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = call noundef ptr @_ZN6hermes12evalToNumberERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.hi) #10 ; 2 uses
  %.not16.i.i.i20.i = icmp eq ptr %i.hm, null
  br i1 %.not16.i.i.i20.i, label %.thread.i.i.i22.i, label %_ZN12_GLOBAL__N_118reduceAsNumberLikeIN6hermes13AsNumericInstEEEPNS1_5ValueEPT_.exit.i.i.i

.thread.i.i.i22.i:                                ; preds = %bb.bl, %bb.bk
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %.sroa.0.0.copyload.i.i.i.i23.i = load i32, ptr %i.hn, align 2, !tbaa !130
  %i.ho = and i32 %.sroa.0.0.copyload.i.i.i.i23.i, 65535
  %i.hp = icmp eq i32 %i.ho, 32
  %spec.select17.i.i.i24.i = select i1 %i.hp, ptr %i.hi, ptr %i.ap
  br label %_ZN12_GLOBAL__N_118reduceAsNumberLikeIN6hermes13AsNumericInstEEEPNS1_5ValueEPT_.exit.i.i.i

_ZN12_GLOBAL__N_118reduceAsNumberLikeIN6hermes13AsNumericInstEEEPNS1_5ValueEPT_.exit.i.i.i: ; preds = %.thread.i.i.i22.i, %bb.bl
  %.3.i.i.i21.i = phi ptr [ %i.hm, %bb.bl ], [ %spec.select17.i.i.i24.i, %.thread.i.i.i22.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN12_GLOBAL__N_117simplifyAsNumericEPN6hermes13AsNumericInstE.exit.i

_ZN12_GLOBAL__N_117simplifyAsNumericEPN6hermes13AsNumericInstE.exit.i: ; preds = %_ZN12_GLOBAL__N_118reduceAsNumberLikeIN6hermes13AsNumericInstEEEPNS1_5ValueEPT_.exit.i.i.i, %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.thread15.i.i, %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.i.i
  %.1.i.i = phi ptr [ %i.gw, %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.i.i ], [ %.3.i.i.i21.i, %_ZN12_GLOBAL__N_118reduceAsNumberLikeIN6hermes13AsNumericInstEEEPNS1_5ValueEPT_.exit.i.i.i ], [ %i.gy, %_ZN12_GLOBAL__N_115isUnaryIncOrDecEPN6hermes5ValueE.exit.thread15.i.i ] ; 2 uses
  %i.hq = icmp eq ptr %.1.i.i, %i.ap
  br i1 %i.hq, label %.thread54, label %bb.cy

bb.bm:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.027.067, i64 56
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !81
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 72
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !91
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !122
  store ptr %i.hw, ptr %6, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.hx = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 8, !tbaa !69
  %i.hz = add i8 %i.hy, -120
  %i.ia = icmp ult i8 %i.hz, -11
  br i1 %i.ia, label %_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i.thread, label %_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i

_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i.thread: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.thread54

_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i: ; preds = %bb.bm
  %i.ib = call noundef ptr @_ZN6hermes11evalToInt32ERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %i.hx) #10 ; 2 uses
  %.not14.i.i26.i = icmp eq ptr %i.ib, null
  %spec.select.i.i.i = select i1 %.not14.i.i26.i, ptr %i.ap, ptr %i.ib ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.ic = icmp eq ptr %spec.select.i.i.i, %i.ap
  br i1 %i.ic, label %.thread54, label %.thread47

bb.bn:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.027.067, i64 56
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !81
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 72
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !91
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !122
  store ptr %i.ii, ptr %5, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.ij = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 4 uses
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !69
  %i.il = add i8 %i.ik, -120
  %i.im = icmp ult i8 %i.il, -11
  br i1 %i.im, label %.thread.i29.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = call noundef ptr @_ZN6hermes12evalToStringERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %i.ij) #10 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.in, null
  br i1 %.not15.i.i, label %.thread.i29.i, label %_ZN12_GLOBAL__N_122simplifyAddEmptyStringEPN6hermes18AddEmptyStringInstE.exit.i

.thread.i29.i:                                    ; preds = %bb.bo, %bb.bn
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %.sroa.0.0.copyload.i.i30.i = load i32, ptr %i.io, align 2, !tbaa !130
  %i.ip = and i32 %.sroa.0.0.copyload.i.i30.i, 65535
  %i.iq = icmp eq i32 %i.ip, 16
  %..i.i = select i1 %i.iq, ptr %i.ij, ptr null
  br label %_ZN12_GLOBAL__N_122simplifyAddEmptyStringEPN6hermes18AddEmptyStringInstE.exit.i

_ZN12_GLOBAL__N_122simplifyAddEmptyStringEPN6hermes18AddEmptyStringInstE.exit.i: ; preds = %.thread.i29.i, %bb.bo
  %.3.i28.i = phi ptr [ %..i.i, %.thread.i29.i ], [ %i.in, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.cy

bb.bp:                                            ; preds = %.lr.ph
  %i.ir = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067) #10 ; 2 uses
  %.not2535.i.i = icmp sgt i32 %i.ir, 0
  br i1 %.not2535.i.i, label %.lr.ph.i.i, label %.thread54

.lr.ph.i.i:                                       ; preds = %bb.bp, %select.unfold.i32.i
  %.01737.i.i = phi i32 [ %i.iv, %select.unfold.i32.i ], [ 0, %bb.bp ] ; 2 uses
  %.01836.i.i = phi ptr [ %.119.ph.i.i, %select.unfold.i32.i ], [ null, %bb.bp ] ; 4 uses
  %i.is = call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef %.01737.i.i) #10
  %i.it = extractvalue { ptr, ptr } %i.is, 0      ; 3 uses
  %i.iu = icmp eq ptr %i.it, %i.ap
  br i1 %i.iu, label %select.unfold.i32.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i
  %.not.i31.i = icmp eq ptr %.01836.i.i, null
  br i1 %.not.i31.i, label %select.unfold.i32.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not24.i.i = icmp eq ptr %.01836.i.i, %i.it
  br i1 %.not24.i.i, label %select.unfold.i32.i, label %.thread54

select.unfold.i32.i:                              ; preds = %bb.br, %bb.bq, %.lr.ph.i.i
  %.119.ph.i.i = phi ptr [ %.01836.i.i, %.lr.ph.i.i ], [ %i.it, %bb.bq ], [ %.01836.i.i, %bb.br ] ; 3 uses
  %i.iv = add nuw nsw i32 %.01737.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.iv, %i.ir
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !34

._crit_edge.i.i:                                  ; preds = %select.unfold.i32.i
  %.not26.i.i = icmp eq ptr %.119.ph.i.i, null
  br i1 %.not26.i.i, label %.thread54, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %.119.ph.i.i) #10
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067) #10
  br label %.thread54

bb.bt:                                            ; preds = %.lr.ph
  %i.iw = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 3 uses
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !69
  %.not.i33.i = icmp eq i8 %i.ix, 26
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 -16 ; 2 uses
  br i1 %.not.i33.i, label %bb.bu, label %.thread54

bb.bu:                                            ; preds = %bb.bt
  %i.iz = call noundef i32 @_ZN6hermes17UnaryOperatorInst13getSideEffectEv(ptr noundef nonnull align 8 dereferenceable(136) %i.iy) #10
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.bv, label %.thread54

bb.bv:                                            ; preds = %bb.bu
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 116
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !140
  %i.jd = icmp eq i32 %i.jc, 6
  br i1 %i.jd, label %bb.bw, label %.thread54

bb.bw:                                            ; preds = %bb.bv
  %i.je = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.iy, i32 noundef 0) #10
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, ptr noundef %i.je, i32 noundef 0) #10
  %i.jf = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 1) #10
  %i.jg = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 2) #10
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, ptr noundef %i.jf, i32 noundef 2) #10
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, ptr noundef %i.jg, i32 noundef 1) #10
  br label %.thread54

bb.bx:                                            ; preds = %.lr.ph
  %i.jh = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #10
  br i1 %i.jh, label %bb.by, label %.thread54

bb.by:                                            ; preds = %bb.bx
  %i.ji = load i8, ptr %i.ap, align 8, !tbaa !69
  %i.jj = icmp eq i8 %i.ji, 92
  br i1 %i.jj, label %.thread54, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jk = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.027.067, i32 noundef 0) #10
  %i.jl = call noundef ptr @_ZN6hermes9getCalleeEPNS_5ValueE(ptr noundef %i.jk) #10 ; 4 uses
  %.not.i35.i = icmp eq ptr %i.jl, null
  br i1 %.not.i35.i, label %.thread54, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !122
  store ptr %i.jn, ptr %3, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 20, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 80 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 88
  %.sroa.033.040.i.i.i = load ptr, ptr %i.jp, align 8, !tbaa !59 ; 2 uses
  %.not3641.i.i.i = icmp eq ptr %.sroa.033.040.i.i.i, %i.jo
  br i1 %.not3641.i.i.i, label %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_.exit
  %.pre.i.i.i = load i32, ptr %i.k, align 8, !tbaa !15
  %i.jq = icmp eq i32 %.pre.i.i.i, 1
  %.pre36.i.i = load ptr, ptr %4, align 8, !tbaa !16 ; 6 uses
  br i1 %i.jq, label %bb.cm, label %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ca, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_.exit
  %.sroa.033.042.i.i.i = phi ptr [ %.sroa.033.0.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_.exit ], [ %.sroa.033.040.i.i.i, %bb.ca ] ; 2 uses
  %i.jr = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.033.042.i.i.i) #10 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load i8, ptr %i.js, align 8, !tbaa !69
  %i.ju = icmp ne i8 %i.jt, 78
  %.not2639.i.i.i = icmp eq ptr %i.jr, null
  %.not26.i.i.i = or i1 %.not2639.i.i.i, %i.ju
  br i1 %.not26.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_.exit, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i
  %i.jv = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.jr, i32 noundef 0) #10 ; 7 uses
  %i.jw = load ptr, ptr %4, align 8, !tbaa !16, !noalias !141 ; 2 uses
  %i.jx = load i32, ptr %i.j, align 8, !tbaa !17, !noalias !141 ; 7 uses
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = trunc i64 %i.jz to i32                  ; 2 uses
  %i.kb = lshr i32 %i.ka, 4
  %i.kc = lshr i32 %i.ka, 9
  %i.kd = xor i32 %i.kb, %i.kc
  %i.ke = add i32 %i.jx, -1                       ; 2 uses
  %.02744.i.i.i = and i32 %i.kd, %i.ke            ; 2 uses
  %i.kf = zext nneg i32 %.02744.i.i.i to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.kf ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !19, !noalias !141 ; 2 uses
  %i.ki = icmp eq ptr %i.jv, %i.kh
  br i1 %i.ki, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_.exit, label %.lr.ph.i.i.i19, !prof !20

.lr.ph.i.i.i19:                                   ; preds = %bb.cc, %bb.ce
  %i.kj = phi ptr [ %i.kt, %bb.ce ], [ %i.kh, %bb.cc ] ; 2 uses
  %i.kk = phi ptr [ %i.ks, %bb.ce ], [ %i.kg, %bb.cc ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.ce ], [ %.02744.i.i.i, %bb.cc ]
  %.046.i.i.i = phi i32 [ %i.kp, %bb.ce ], [ 1, %bb.cc ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i20, %bb.ce ], [ null, %bb.cc ] ; 4 uses
  %i.kl = icmp eq ptr %i.kj, inttoptr (i64 -8 to ptr)
  br i1 %i.kl, label %bb.cd, label %bb.ce, !prof !21

bb.cd:                                            ; preds = %.lr.ph.i.i.i19
  %.not.i.i.i21 = icmp eq ptr %.02945.i.i.i, null
  %i.km = select i1 %.not.i.i.i21, ptr %i.kk, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.ce:                                            ; preds = %.lr.ph.i.i.i19
  %i.kn = icmp eq ptr %i.kj, inttoptr (i64 -16 to ptr)
  %i.ko = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.kn, i1 %i.ko, i1 false
  %spec.select.i.i.i20 = select i1 %or.cond.not.i.i.i, ptr %i.kk, ptr %.02945.i.i.i
  %i.kp = add i32 %.046.i.i.i, 1
  %i.kq = add i32 %.046.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.kq, %i.ke              ; 2 uses
  %i.kr = zext i32 %.027.i.i.i to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.kr ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !19, !noalias !141 ; 2 uses
  %i.ku = icmp eq ptr %i.jv, %i.kt
  br i1 %i.ku, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_.exit, label %.lr.ph.i.i.i19, !prof !22, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.cd, %bb.cb
  %.sink.i.i.i = phi ptr [ %i.km, %bb.cd ], [ null, %bb.cb ]
  %i.kv = load i32, ptr %i.k, align 8, !tbaa !15, !noalias !141 ; 3 uses
  %i.kw = shl i32 %i.kv, 2
  %i.kx = add i32 %i.kw, 4
  %i.ky = mul i32 %i.jx, 3
  %.not.i.i4.i = icmp ult i32 %i.kx, %i.ky
  br i1 %.not.i.i4.i, label %bb.cg, label %bb.cf, !prof !21
end_hunk_0
begin_hunk_1_@_ZN6hermes12InstSimplify13runOnFunctionEPNS_8FunctionE:bb.a

bb.ch:                                            ; preds = %.sink.split.i.i.i
  %i.lg = ptrtoint ptr %i.jv to i64
  %i.lh = trunc i64 %i.lg to i32                  ; 2 uses
  %i.li = lshr i32 %i.lh, 4
  %i.lj = lshr i32 %i.lh, 9
  %i.lk = xor i32 %i.li, %i.lj
  %i.ll = add i32 %i.le, -1                       ; 2 uses
  %.02744.i.i = and i32 %i.ll, %i.lk              ; 2 uses
  %i.lm = zext nneg i32 %.02744.i.i to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lm ; 3 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !19, !noalias !141 ; 2 uses
  %i.lp = icmp eq ptr %i.jv, %i.lo
  br i1 %i.lp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i23, !prof !20

.lr.ph.i.i23:                                     ; preds = %bb.ch, %bb.cj
  %i.lq = phi ptr [ %i.ma, %bb.cj ], [ %i.lo, %bb.ch ] ; 2 uses
  %i.lr = phi ptr [ %i.lz, %bb.cj ], [ %i.ln, %bb.ch ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.cj ], [ %.02744.i.i, %bb.ch ]
  %.046.i.i = phi i32 [ %i.lw, %bb.cj ], [ 1, %bb.ch ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i24, %bb.cj ], [ null, %bb.ch ] ; 4 uses
  %i.ls = icmp eq ptr %i.lq, inttoptr (i64 -8 to ptr)
  br i1 %i.ls, label %bb.ci, label %bb.cj, !prof !21

bb.ci:                                            ; preds = %.lr.ph.i.i23
  %.not.i.i25 = icmp eq ptr %.02945.i.i, null
  %i.lt = select i1 %.not.i.i25, ptr %i.lr, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.cj:                                            ; preds = %.lr.ph.i.i23
  %i.lu = icmp eq ptr %i.lq, inttoptr (i64 -16 to ptr)
  %i.lv = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.lu, i1 %i.lv, i1 false
  %spec.select.i.i24 = select i1 %or.cond.not.i.i, ptr %i.lr, ptr %.02945.i.i
  %i.lw = add i32 %.046.i.i, 1
  %i.lx = add i32 %.046.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.lx, %i.ll                ; 2 uses
  %i.ly = zext i32 %.027.i.i to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ly ; 3 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !19, !noalias !141 ; 2 uses
  %i.mb = icmp eq ptr %i.jv, %i.ma
  br i1 %i.mb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i23, !prof !22, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.cj, %.sink.split.i.i.i, %bb.ch, %bb.ci
  %.sink.i.i = phi ptr [ %i.lt, %bb.ci ], [ null, %.sink.split.i.i.i ], [ %i.ln, %bb.ch ], [ %i.lz, %bb.cj ]
  %.pre.i.i22 = load i32, ptr %i.k, align 8, !tbaa !15, !noalias !141
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, %bb.cg
  %i.mc = phi ptr [ %.sink.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit ], [ %.sink.i.i.i, %bb.cg ] ; 2 uses
  %i.md = phi i32 [ %.pre.i.i22, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit ], [ %i.kv, %bb.cg ]
  %i.me = add i32 %i.md, 1
  store i32 %i.me, ptr %i.k, align 8, !tbaa !15, !noalias !141
  %i.mf = load ptr, ptr %i.mc, align 8, !tbaa !19, !noalias !141
  %i.mg = icmp eq ptr %i.mf, inttoptr (i64 -8 to ptr)
  br i1 %i.mg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mh = load i32, ptr %i.l, align 4, !tbaa !23, !noalias !141
  %i.mi = add i32 %i.mh, -1
  store i32 %i.mi, ptr %i.l, align 4, !tbaa !23, !noalias !141
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit.i: ; preds = %bb.cl, %bb.ck
  store ptr %i.jv, ptr %i.mc, align 8, !tbaa !19, !noalias !141
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_.exit: ; preds = %bb.ce, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit.i, %bb.cc, %.lr.ph.i.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.033.042.i.i.i, i64 8
  %.sroa.033.0.i.i.i = load ptr, ptr %i.mj, align 8, !tbaa !59 ; 2 uses
  %.not36.i.i.i = icmp eq ptr %.sroa.033.0.i.i.i, %i.jo
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.cm:                                            ; preds = %._crit_edge.i.i.i
  %i.mk = load i32, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.ml = zext i32 %i.mk to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ml, 3
  %i.mm = getelementptr i8, ptr %.pre36.i.i, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not5.i5.i10.i2.i.i.i.i.i = icmp eq i32 %i.mk, 0
  br i1 %.not5.i5.i10.i2.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i.i

.lr.ph.i6.i12.i3.i.i.i.i.i:                       ; preds = %bb.cm, %.critedge2.i8.i14.i6.i.i.i.i.i
  %.sroa.0.3.i4.i.i.i.i.i = phi ptr [ %i.mo, %.critedge2.i8.i14.i6.i.i.i.i.i ], [ %.pre36.i.i, %bb.cm ] ; 3 uses
  %i.mn = load ptr, ptr %.sroa.0.3.i4.i.i.i.i.i, align 8, !tbaa !19
  %magicptr.i7.i13.i5.i.i.i.i.i = ptrtoint ptr %i.mn to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i.i.i:                   ; preds = %.lr.ph.i6.i12.i3.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i.i.i = icmp eq ptr %i.mo, %i.mm
  br i1 %.not.i9.i15.i7.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i.i, !llvm.loop !39

_ZN4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i: ; preds = %.critedge2.i8.i14.i6.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i, %bb.cm
  %.pn14.i.i.i.i.i = phi ptr [ %.pre36.i.i, %bb.cm ], [ %i.mm, %.critedge2.i8.i14.i6.i.i.i.i.i ], [ %.sroa.0.3.i4.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i ]
  %i.mp = load ptr, ptr %.pn14.i.i.i.i.i, align 8, !tbaa !19 ; 4 uses
  %i.mq = load i8, ptr %i.mp, align 8, !tbaa !69  ; 2 uses
  %i.mr = add i8 %i.mq, -109
  %i.ms = icmp ult i8 %i.mr, 11
  br i1 %i.ms, label %bb.cs, label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i
  %.not38.i.i.i = icmp eq i8 %i.mq, 125
  br i1 %.not38.i.i.i, label %bb.co, label %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread.i.i

bb.co:                                            ; preds = %bb.cn
  %i.mt = call noundef zeroext i1 @_ZNK6hermes9Parameter15isThisParameterEv(ptr noundef nonnull align 8 dereferenceable(56) %i.mp) #10
  br i1 %i.mt, label %._ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread_crit_edge.i.i, label %bb.cp

._ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread_crit_edge.i.i: ; preds = %bb.co
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread.i.i

bb.cp:                                            ; preds = %bb.co
  %i.mu = call noundef i32 @_ZNK6hermes9Parameter19getIndexInParamListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.mp) #10 ; 2 uses
  %i.mv = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.027.067) #10
  %i.mw = add i32 %i.mv, -3
  %.not25.i.i.i = icmp ult i32 %i.mu, %i.mw
  br i1 %.not25.i.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mx = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #10
  br label %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.my = add i32 %i.mu, 3
  %i.mz = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.027.067, i32 noundef %i.my) #10
  br label %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.i.i

_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread.i.i: ; preds = %._ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread_crit_edge.i.i, %bb.cn, %._crit_edge.i.i.i, %bb.ca
  %i.na = phi ptr [ %.pre.i.i, %._ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread_crit_edge.i.i ], [ %.pre36.i.i, %._crit_edge.i.i.i ], [ %.pre36.i.i, %bb.cn ], [ null, %bb.ca ]
  call void @_ZdlPv(ptr noundef %i.na) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.thread54

_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.i.i: ; preds = %bb.cr, %bb.cq
  %.3.i.i.i = phi ptr [ %i.mx, %bb.cq ], [ %i.mz, %bb.cr ] ; 2 uses
  %i.nb = load ptr, ptr %4, align 8, !tbaa !16
  call void @_ZdlPv(ptr noundef %i.nb) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.not10.i.i = icmp eq ptr %.3.i.i.i, null
  br i1 %.not10.i.i, label %.thread54, label %.thread29.i.i

.thread29.i.i:                                    ; preds = %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.i.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %.3.i.i.i) #10
  br label %.thread54

bb.cs:                                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %.pre36.i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %i.mp) #10
  br label %.thread54

bb.ct:                                            ; preds = %.lr.ph
  %i.nc = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %.sroa.0.0.copyload.i.i36.i = load i32, ptr %i.nd, align 2, !tbaa !130 ; 2 uses
  %i.ne = and i32 %.sroa.0.0.copyload.i.i36.i, 65529
  %.not.i.i37.i = icmp eq i32 %i.ne, 0
  br i1 %.not.i.i37.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.027.067, i64 56
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !81
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 72
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !91
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 56
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !122
  store ptr %i.nk, ptr %2, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.sroa.027.067) #10
  %i.nl = call noundef ptr @_ZN6hermes9IRBuilder15getGlobalObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.cy

bb.cv:                                            ; preds = %bb.ct
  %.sroa.09.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i.i36.i to i16 ; 2 uses
  %.not.i8.i.i = icmp ne i16 %.sroa.09.0.extract.trunc.i.i, 0
  %i.nm = and i16 %.sroa.09.0.extract.trunc.i.i, -897
  %.not1.i.i38.i = icmp eq i16 %i.nm, 0
  %i.nn = and i1 %.not.i8.i.i, %.not1.i.i38.i
  br i1 %i.nn, label %.thread47, label %.thread54

bb.cw:                                            ; preds = %.lr.ph
  %i.no = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  %.sroa.0.0.copyload.i.i41.i = load i32, ptr %i.np, align 2, !tbaa !130
  %.not.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i41.i to i1
  br i1 %.not.i.i.i.i.i, label %.thread54, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.027.067, i32 noundef 0) #10
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN12_GLOBAL__N_117simplifyAsNumericEPN6hermes13AsNumericInstE.exit.i, %bb.cx, %bb.cu, %_ZN12_GLOBAL__N_122simplifyAddEmptyStringEPN6hermes18AddEmptyStringInstE.exit.i, %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i, %_ZN12_GLOBAL__N_113simplifyBinOpEPN6hermes18BinaryOperatorInstE.exit.i
  %.sroa.0.0.i = phi ptr [ %i.nl, %bb.cu ], [ %.4.i.i, %_ZN12_GLOBAL__N_113simplifyBinOpEPN6hermes18BinaryOperatorInstE.exit.i ], [ %.3.i.i, %_ZN12_GLOBAL__N_112simplifyUnOpEPN6hermes17UnaryOperatorInstE.exit.i ], [ %.3.i28.i, %_ZN12_GLOBAL__N_122simplifyAddEmptyStringEPN6hermes18AddEmptyStringInstE.exit.i ], [ %.1.i.i, %_ZN12_GLOBAL__N_117simplifyAsNumericEPN6hermes13AsNumericInstE.exit.i ], [ %i.nq, %bb.cx ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not, label %.thread54, label %.thread47, !llvm.loop !40

.thread47:                                        ; preds = %bb.cv, %_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i, %_ZN12_GLOBAL__N_116simplifyAsNumberEPN6hermes12AsNumberInstE.exit.i, %bb.cy
  %.sroa.0.0.i52 = phi ptr [ %.sroa.0.0.i, %bb.cy ], [ %.3.i.i.i16.i, %_ZN12_GLOBAL__N_116simplifyAsNumberEPN6hermes12AsNumberInstE.exit.i ], [ %i.nc, %bb.cv ], [ %spec.select.i.i.i, %_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i ] ; 2 uses
  %i.nr = icmp eq ptr %i.ap, %.sroa.0.0.i52
  br i1 %i.nr, label %.thread54, label %bb.cz, !llvm.loop !40

bb.cz:                                            ; preds = %.thread47
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %.sroa.0.0.i52) #10
  %i.ns = load i32, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.nt = load i32, ptr %i.c, align 4, !tbaa !44
  %.not.i.i17 = icmp ult i32 %i.ns, %i.nt
  br i1 %.not.i.i17, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit, label %bb.da, !prof !21

bb.da:                                            ; preds = %bb.cz
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i18 = load i32, ptr %i.b, align 8, !tbaa !43
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit: ; preds = %bb.cz, %bb.da
  %i.nu = phi i32 [ %.pre.i.i18, %bb.da ], [ %i.ns, %bb.cz ]
  %i.nv = load ptr, ptr %13, align 8, !tbaa !42
  %i.nw = zext i32 %i.nu to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = ptrtoint ptr %.sroa.027.067 to i64
  store i64 %i.ny, ptr %i.nx, align 1
  %i.nz = load i32, ptr %i.b, align 8, !tbaa !43
  %i.oa = add i32 %i.nz, 1
  store i32 %i.oa, ptr %i.b, align 8, !tbaa !43
  br label %.thread54

.thread54:                                        ; preds = %bb.br, %.thread29.i.i, %bb.bw, %bb.cs, %_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i, %_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i.thread, %_ZN12_GLOBAL__N_117simplifyAsNumericEPN6hermes13AsNumericInstE.exit.i, %_ZN12_GLOBAL__N_116simplifyAsNumberEPN6hermes12AsNumberInstE.exit.i, %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.i.i, %bb.bz, %bb.bx, %bb.by, %bb.bv, %bb.bu, %._crit_edge.i.i, %bb.cw, %bb.bp, %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread.i.i, %bb.bt, %bb.bs, %.lr.ph, %bb.cv, %.thread47, %bb.cy, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit
  %.4 = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit ], [ %.168, %bb.cy ], [ true, %.thread47 ], [ %.168, %bb.cv ], [ %.168, %.lr.ph ], [ %.168, %bb.bs ], [ %.168, %bb.bt ], [ %.168, %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.thread.i.i ], [ %.168, %bb.bp ], [ %.168, %bb.cw ], [ %.168, %._crit_edge.i.i ], [ %.168, %bb.bu ], [ %.168, %bb.bv ], [ %.168, %bb.by ], [ %.168, %bb.bx ], [ %.168, %bb.bz ], [ %.168, %_ZN12_GLOBAL__N_119getKnownReturnValueEPN6hermes8FunctionEPNS0_8CallInstE.exit.i.i ], [ true, %.thread29.i.i ], [ %.168, %_ZN12_GLOBAL__N_116simplifyAsNumberEPN6hermes12AsNumberInstE.exit.i ], [ %.168, %_ZN12_GLOBAL__N_117simplifyAsNumericEPN6hermes13AsNumericInstE.exit.i ], [ %.168, %_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i.thread ], [ %.168, %_ZN12_GLOBAL__N_115simplifyAsInt32EPN6hermes11AsInt32InstE.exit.i ], [ true, %bb.cs ], [ true, %bb.bw ], [ %.168, %bb.br ] ; 2 uses
  %.not59 = icmp eq ptr %i.ao, %i.am
  br i1 %.not59, label %.loopexit, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18createInstSimplifyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes12InstSimplifyESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12, !noalias !144 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !148, !noalias !144
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.7, ptr %i.c, align 8, !tbaa !149, !noalias !144
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 12, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !11, !noalias !144
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12InstSimplifyE, i64 16), ptr %i.a, align 8, !tbaa !151, !noalias !144
  store ptr %i.a, ptr %0, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes12InstSimplifyD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #11
  ret void
}

declare noundef ptr @_ZN6hermes18evalBinaryOperatorENS_18BinaryOperatorInst6OpKindERNS_9IRBuilderEPNS_7LiteralES5_(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder14getLiteralBoolEb(ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder24createBinaryOperatorInstEPNS_5ValueES2_NS_18BinaryOperatorInst6OpKindE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder24createAddEmptyStringInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder17createAsInt32InstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes11evalToInt32ERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes17evalUnaryOperatorENS_17UnaryOperatorInst6OpKindERNS_9IRBuilderEPNS_7LiteralE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder18createAsNumberInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes12evalToNumberERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes12evalToStringERNS_9IRBuilderEPNS_7LiteralE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes17UnaryOperatorInst13getSideEffectEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9getCalleeEPNS_5ValueE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes9Parameter15isThisParameterEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes9Parameter19getIndexInParamListEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !17
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #13 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !23
  %i.w = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 3               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 8 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !155

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 56
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !156

end_hunk_1
