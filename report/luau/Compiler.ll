Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compiler?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau8Compiler15compileExprCallEPNS_11AstExprCallEhhbb:bb.a
bb.ak:                                            ; preds = %bb.am, %bb.ah, %bb.af
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.al:                                            ; preds = %bb.ag
  %.not195 = icmp eq ptr %i.dt, null
  br i1 %.not195, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %i.ek = load i64, ptr %i.bl, align 8, !tbaa !581
  %i.el = trunc i64 %i.ek to i32
  %i.em = select i1 %i.eb, ptr @.str.157, ptr @.str.145
  invoke void (ptr, ptr, ...) @_ZN4Luau15BytecodeBuilder14addDebugRemarkEPKcz(ptr noundef nonnull align 8 dereferenceable(1048) %i.ej, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.dt, i32 noundef %i.el, ptr noundef nonnull %i.em)
          to label %bb.an unwind label %bb.ak

bb.an:                                            ; preds = %bb.ah, %bb.am, %bb.al, %bb.ac
  switch i32 %i.dg, label %.thread365 [
    i32 57, label %bb.ao
    i32 34, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.en = icmp ne i8 %3, 1
  %or.cond.not = or i1 %i.en, %5
  br i1 %or.cond.not, label %.critedge220, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4Luau8Compiler23compileExprSelectVarargEPNS_11AstExprCallEhhbbh(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 1, i1 noundef zeroext %4, i1 noundef zeroext false, i8 noundef zeroext %i.cg)
          to label %.critedge224 unwind label %bb.ai

bb.aq:                                            ; preds = %bb.an
  %i.eo = load i64, ptr %i.bl, align 8, !tbaa !581 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 3
  br i1 %i.ep, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !641 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !534 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !533
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !534 ; 6 uses
  %i.fa = icmp eq ptr %i.et, %i.ez
  br i1 %i.fa, label %.lr.ph, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !535
  %i.fd = add i64 %i.fc, -1                       ; 8 uses
  %i.fe = ptrtoint ptr %i.et to i64
  %i.ff = mul i64 %i.fe, -4658895280553007687     ; 2 uses
  %i.fg = lshr i64 %i.ff, 31
  %i.fh = xor i64 %i.fg, %i.ff                    ; 2 uses
  %i.fi = load ptr, ptr %i.eu, align 8, !tbaa !252 ; 4 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.pn.i.i.i = phi i64 [ %i.fh, %bb.at ], [ %i.fo, %bb.aw ]
  %.01828.i.i.i = phi i64 [ 0, %bb.at ], [ %i.fn, %bb.aw ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.fd       ; 2 uses
  %i.fj = getelementptr inbounds nuw [48 x i8], ptr %i.fi, i64 %.01929.i.i.i ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !534 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.et
  br i1 %i.fl, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fm = icmp eq ptr %i.fk, %i.ez
  br i1 %i.fm, label %.lr.ph, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.fo = add i64 %i.fn, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.fn, %i.fd
  br i1 %.not.i.i.i, label %.lr.ph, label %bb.au, !llvm.loop !536

_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit: ; preds = %bb.au
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !470
  %.not377 = icmp eq i32 %i.fq, 0
  br i1 %.not377, label %.lr.ph, label %bb.ax

bb.ax:                                            ; preds = %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !534 ; 4 uses
  %i.ft = icmp eq ptr %i.fs, %i.ez
  br i1 %i.ft, label %.lr.ph, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = mul i64 %i.fu, -4658895280553007687     ; 2 uses
  %i.fw = lshr i64 %i.fv, 31
  %i.fx = xor i64 %i.fw, %i.fv                    ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %.pn.i.i.i233 = phi i64 [ %i.fx, %bb.ay ], [ %i.gd, %bb.bb ]
  %.01828.i.i.i234 = phi i64 [ 0, %bb.ay ], [ %i.gc, %bb.bb ]
  %.01929.i.i.i235 = and i64 %.pn.i.i.i233, %i.fd ; 2 uses
  %i.fy = getelementptr inbounds nuw [48 x i8], ptr %i.fi, i64 %.01929.i.i.i235 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !534 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fs
  br i1 %i.ga, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gb = icmp eq ptr %i.fz, %i.ez
  br i1 %i.gb, label %.lr.ph, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gc = add i64 %.01828.i.i.i234, 1             ; 3 uses
  %i.gd = add i64 %i.gc, %.01929.i.i.i235
  %.not.i.i.i236 = icmp ugt i64 %i.gc, %i.fd
  br i1 %.not.i.i.i236, label %.lr.ph, label %bb.az, !llvm.loop !536

_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237: ; preds = %bb.az
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !470
  %.not378 = icmp eq i32 %i.gf, 0
  br i1 %.not378, label %.lr.ph, label %.preheader481

.preheader481:                                    ; preds = %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237, %bb.bd
  %.pn.i.i.i238 = phi i64 [ %i.gl, %bb.bd ], [ %i.fh, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237 ]
  %.01828.i.i.i239 = phi i64 [ %i.gk, %bb.bd ], [ 0, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237 ]
  %.01929.i.i.i240 = and i64 %.pn.i.i.i238, %i.fd ; 2 uses
  %i.gg = getelementptr inbounds nuw [48 x i8], ptr %i.fi, i64 %.01929.i.i.i240 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !534, !noalias !642 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.et
  br i1 %i.gi, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.preheader481
  %i.gj = icmp eq ptr %i.gh, %i.ez
  br i1 %i.gj, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gk = add i64 %.01828.i.i.i239, 1             ; 3 uses
  %i.gl = add i64 %i.gk, %.01929.i.i.i240
  %.not.i.i.i241 = icmp ugt i64 %i.gk, %i.fd
  br i1 %.not.i.i.i241, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit, label %.preheader481, !llvm.loop !536

bb.be:                                            ; preds = %.preheader481
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.0266.0.copyload = load i32, ptr %i.gm, align 8, !tbaa !645
  %.sroa.7268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %.sroa.7268.0.copyload = load double, ptr %.sroa.7268.0..sroa_idx, align 8
  %i.gn = icmp eq i32 %.sroa.0266.0.copyload, 3
  %i.go = fptosi double %.sroa.7268.0.copyload to i32
  %i.gp = select i1 %i.gn, i32 %i.go, i32 -1
  br label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit

_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit: ; preds = %bb.bd, %bb.bc, %bb.be
  %.sroa.0266.0 = phi i32 [ %i.gp, %bb.be ], [ -1, %bb.bc ], [ -1, %bb.bd ] ; 3 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit
  %.pn.i.i.i242 = phi i64 [ %i.fx, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit ], [ %i.gv, %bb.bh ]
  %.01828.i.i.i243 = phi i64 [ 0, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit ], [ %i.gu, %bb.bh ]
  %.01929.i.i.i244 = and i64 %.pn.i.i.i242, %i.fd ; 2 uses
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr %i.fi, i64 %.01929.i.i.i244 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !534, !noalias !646 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.fs
  br i1 %i.gs, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit247, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gt = icmp eq ptr %i.gr, %i.ez
  br i1 %i.gt, label %.lr.ph, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gu = add i64 %.01828.i.i.i243, 1             ; 3 uses
  %i.gv = add i64 %i.gu, %.01929.i.i.i244
  %.not.i.i.i245 = icmp ugt i64 %i.gu, %i.fd
  br i1 %.not.i.i.i245, label %.lr.ph, label %bb.bf, !llvm.loop !536

_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit247: ; preds = %bb.bf
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.gw, align 8, !tbaa !645
  %.sroa.7265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %.sroa.7265.0.copyload = load double, ptr %.sroa.7265.0..sroa_idx, align 8
  %.sroa.0.0.copyload.fr = freeze i32 %.sroa.0.0.copyload
  %i.gx = icmp eq i32 %.sroa.0.0.copyload.fr, 3
  %i.gy = fptosi double %.sroa.7265.0.copyload to i32 ; 3 uses
  br i1 %i.gx, label %bb.bi, label %.lr.ph

bb.bi:                                            ; preds = %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit247
  %i.gz = icmp sgt i32 %.sroa.0266.0, -1
  %i.ha = icmp sgt i32 %i.gy, 0
  %or.cond6 = select i1 %i.gz, i1 %i.ha, i1 false
  %i.hb = add nuw nsw i32 %.sroa.0266.0, %i.gy
  %i.hc = icmp slt i32 %i.hb, 33
  %or.cond = select i1 %or.cond6, i1 %i.hc, i1 false
  br i1 %or.cond, label %bb.bj, label %.lr.ph

bb.bj:                                            ; preds = %bb.bi
  %i.hd = shl i32 %i.gy, 5
  %i.he = add i32 %i.hd, -32
  %i.hf = or i32 %i.he, %.sroa.0266.0
  %i.hg = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %6 = sitofp i32 %i.hf to double
  %i.hh = invoke noundef i32 @_ZN4Luau15BytecodeBuilder17addConstantNumberEd(ptr noundef nonnull align 8 dereferenceable(1048) %i.hg, double noundef %6)
          to label %bb.bk unwind label %bb.bn     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.hj, ptr noundef nonnull @.str.134) #28
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bo, %bb.bl, %bb.bj
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.bo:                                            ; preds = %bb.bk
  invoke void @_ZN4Luau8Compiler20compileExprFastcallNEPNS_11AstExprCallEhhbbhii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i8 noundef zeroext %i.cg, i32 noundef 59, i32 noundef %i.hh)
          to label %.critedge224 unwind label %bb.bn

.thread365:                                       ; preds = %bb.an
  %.pre423 = load i64, ptr %i.bl, align 8, !tbaa !581 ; 2 uses
  %i.hl = icmp eq i64 %.pre423, 3
  br i1 %i.hl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aw, %bb.av, %bb.ba, %bb.bb, %bb.bg, %bb.bh, %bb.ax, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit247, %bb.bi, %bb.as, %bb.ar, %.thread365
  %.2174356368464 = phi i32 [ %i.dg, %.thread365 ], [ 34, %bb.ar ], [ 34, %bb.as ], [ 34, %bb.bi ], [ 34, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit247 ], [ 34, %bb.ba ], [ 34, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237 ], [ 34, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit ], [ 34, %bb.bg ], [ 34, %bb.ax ], [ 34, %bb.bh ], [ 34, %bb.bb ], [ 34, %bb.av ], [ 34, %bb.aw ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.bq

bb.bp:                                            ; preds = %bb.br
  %i.hn = add nuw i64 %.0167396, 1                ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %.pre424.pre
  br i1 %i.ho, label %bb.bq, label %.loopexit, !llvm.loop !649

bb.bq:                                            ; preds = %.lr.ph, %bb.bp
  %.0167396 = phi i64 [ 0, %.lr.ph ], [ %i.hn, %bb.bp ] ; 2 uses
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !641
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.0167396
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !534
  %i.hs = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.hr)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ht = icmp slt i32 %i.hs, 0
  %.pre424.pre = load i64, ptr %i.bl, align 8, !tbaa !581 ; 3 uses
  br i1 %i.ht, label %bb.bp, label %.loopexit

bb.bs:                                            ; preds = %bb.bq
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body249

.loopexit:                                        ; preds = %bb.bp, %bb.br, %bb.aq, %.thread365
  %.2174356368463 = phi i32 [ %i.dg, %.thread365 ], [ 34, %bb.aq ], [ %.2174356368464, %bb.br ], [ %.2174356368464, %bb.bp ] ; 6 uses
  %i.hv = phi i64 [ %.pre423, %.thread365 ], [ %i.eo, %bb.aq ], [ %.pre424.pre, %bb.br ], [ %.pre424.pre, %bb.bp ] ; 2 uses
  %.3171 = phi i64 [ 2, %.thread365 ], [ 2, %bb.aq ], [ 2, %bb.bp ], [ 3, %bb.br ]
  %i.hw = add i64 %i.hv, -1
  %or.cond221.not = icmp ult i64 %i.hw, %.3171
  br i1 %or.cond221.not, label %bb.bt, label %.critedge220

bb.bt:                                            ; preds = %.loopexit
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !641
  %i.hz = getelementptr [8 x i8], ptr %i.hy, i64 %i.hv
  %i.ia = getelementptr i8, ptr %i.hz, i64 -8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !534
  %i.ic = invoke noundef zeroext i1 @_ZN4Luau8Compiler13isExprMultRetEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ib)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ic, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4Luau8Compiler20compileExprFastcallNEPNS_11AstExprCallEhhbbhii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i8 noundef zeroext %i.cg, i32 noundef %.2174356368463, i32 noundef -1)
          to label %.critedge224 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.bx:                                            ; preds = %bb.bu
  %i.ie = load i32, ptr %i.h, align 8, !tbaa !304
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %bb.by, label %.critedge220

bb.by:                                            ; preds = %bb.bx
  %i.ig = invoke { i64, i32 } @_ZN4Luau7Compile14getBuiltinInfoEi(i32 noundef %.2174356368463)
          to label %bb.bz unwind label %bb.cb     ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %.fca.0.extract = extractvalue { i64, i32 } %i.ig, 0
  %i.ih = load i64, ptr %i.bl, align 8, !tbaa !581
  %i.ii = trunc i64 %i.ih to i32
  %.sroa.046.0.extract.trunc = trunc i64 %.fca.0.extract to i32
  %i.ij = icmp ne i32 %i.ii, %.sroa.046.0.extract.trunc
  %.fca.1.extract = extractvalue { i64, i32 } %i.ig, 1
  %i.ik = and i32 %.fca.1.extract, 1
  %.not200 = icmp eq i32 %i.ik, 0
  %or.cond222 = select i1 %i.ij, i1 true, i1 %.not200
  br i1 %or.cond222, label %.critedge220, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4Luau8Compiler20compileExprFastcallNEPNS_11AstExprCallEhhbbhii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i8 noundef zeroext %i.cg, i32 noundef %.2174356368463, i32 noundef -1)
          to label %.critedge224 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body249

.critedge220:                                     ; preds = %bb.y, %bb.x, %bb.ao, %bb.ab, %bb.s, %bb.u, %bb.t, %bb.z, %bb.bz, %bb.bx, %.loopexit
  %i.im = phi i1 [ false, %bb.ab ], [ true, %bb.bz ], [ true, %bb.bx ], [ true, %.loopexit ], [ false, %bb.z ], [ false, %bb.s ], [ false, %bb.ao ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.y ]
  %.2174356367 = phi i32 [ %i.dg, %bb.ab ], [ %.2174356368463, %bb.bz ], [ %.2174356368463, %bb.bx ], [ %.2174356368463, %.loopexit ], [ -1, %bb.z ], [ -1, %bb.s ], [ -1, %bb.ao ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.y ] ; 3 uses
  %i.in = load i8, ptr %i.bi, align 8, !tbaa !575, !range !73, !noundef !74
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %.critedge220
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !577 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !288
  %i.it = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexNameEE5valueE, align 4, !tbaa !9
  %i.iu = icmp eq i32 %i.is, %i.it
  %..i248 = select i1 %i.iu, ptr %i.iq, ptr null
  %i.iv = getelementptr inbounds nuw i8, ptr %..i248, i64 32 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !650
  %i.ix = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.iw)
          to label %bb.cd unwind label %bb.cf     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.iy = icmp sgt i32 %i.ix, -1
  br i1 %i.iy, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.iz = trunc i32 %i.ix to i8
  br label %bb.cl

bb.cf:                                            ; preds = %bb.cc
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.cg:                                            ; preds = %bb.cd
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !650
  %i.jc = zext i8 %i.cg to i32
  %i.jd = add nuw nsw i32 %i.jc, 1
  %i.je = load i32, ptr %i.bg, align 4, !tbaa !223 ; 2 uses
  store i32 %i.jd, ptr %i.bg, align 4, !tbaa !223
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.jb, i8 noundef zeroext %i.cg, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit unwind label %bb.ch, !inline_history !573

bb.ch:                                            ; preds = %bb.cg
  %i.jf = landingpad { ptr, i32 }
          cleanup
  store i32 %i.je, ptr %i.bg, align 4, !tbaa !223
  br label %.body249

_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit: ; preds = %bb.cg
  store i32 %i.je, ptr %i.bg, align 4, !tbaa !223
  br label %bb.cl

bb.ci:                                            ; preds = %.critedge220
  %i.jg = icmp slt i32 %.2174356367, 0
  br i1 %i.jg, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !577
  %i.jj = zext i8 %i.cg to i32
  %i.jk = add nuw nsw i32 %i.jj, 1
  %i.jl = load i32, ptr %i.bg, align 4, !tbaa !223 ; 2 uses
  store i32 %i.jk, ptr %i.bg, align 4, !tbaa !223
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ji, i8 noundef zeroext %i.cg, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit251 unwind label %bb.ck, !inline_history !573

bb.ck:                                            ; preds = %bb.cj
  %i.jm = landingpad { ptr, i32 }
          cleanup
  store i32 %i.jl, ptr %i.bg, align 4, !tbaa !223
  br label %.body249

_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit251: ; preds = %bb.cj
  store i32 %i.jl, ptr %i.bg, align 4, !tbaa !223
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit251, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit, %bb.ce, %bb.ci
  %.1166 = phi i8 [ 0, %bb.ci ], [ 0, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit251 ], [ %i.iz, %bb.ce ], [ %i.cg, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jo = load i64, ptr %i.bl, align 8, !tbaa !581 ; 2 uses
  %.not406 = icmp eq i64 %i.jo, 0
  br i1 %.not406, label %._crit_edge, label %.lr.ph401

.lr.ph401:                                        ; preds = %bb.cl
end_hunk_0
