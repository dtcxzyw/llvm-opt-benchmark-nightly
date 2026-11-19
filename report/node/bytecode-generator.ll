Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bytecode-generator?download=true
inline.NumInlined: 7033
inline.NumDeleted: 1742
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal11interpreter17BytecodeGenerator23BuildCreateArrayLiteralEPKNS0_8ZoneListIPNS0_10ExpressionEEEPNS0_12ArrayLiteralE:bb.a

bb.h:                                             ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit
  %i.bi = sub nsw i32 %i.bf, %i.be
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.be to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.bj = load ptr, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i64 %.sroa.0.0.insert.insert.i.i.i) #21, !inline_history !17
  br label %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit

_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bm = load ptr, ptr %i.w, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = icmp eq i8 %i.bs, 2
  br i1 %i.bt, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.br, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 %i.bp, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i8 1, ptr %i.bv, align 8
  br label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit

_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit, %bb.i, %bb.j
  %i.bw = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder23CreateArrayFromIterableEv(ptr noundef nonnull align 8 dereferenceable(480) %i.av) #21
  %i.bx = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder26StoreAccumulatorInRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.bw, i32 %i.b) #21 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not = icmp eq i32 %i.y, 1
  br i1 %.not, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1320
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.t, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = call i32 @_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, i8 noundef zeroext 5) #21
  %i.cg = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17LoadNamedPropertyENS1_8RegisterEPKNS0_12AstRawStringEi(ptr noundef nonnull align 8 dereferenceable(480) %i.av, i32 %i.b, ptr noundef %i.cc, i32 noundef %i.cf) #21
  br label %.sink.split

bb.l:                                             ; preds = %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit121
  %.not111 = icmp eq ptr %2, null
  br i1 %.not111, label %.loopexit, label %bb.m

.thread:                                          ; preds = %bb.c
  %.not111279 = icmp eq ptr %2, null
  br i1 %.not111279, label %.lr.ph, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.q

.lr.ph:                                           ; preds = %.thread, %bb.o
  %.0105226 = phi ptr [ %i.cs, %bb.o ], [ %i.w, %.thread ] ; 3 uses
  %i.ci = load ptr, ptr %.0105226, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = and i32 %i.ck, 63
  %i.cm = icmp eq i32 %i.cl, 49
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.cn = ptrtoint ptr %.0105226 to i64
  %i.co = ptrtoint ptr %i.w to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = trunc i64 %i.cq to i32
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %.0105226, i64 8 ; 2 uses
  %.not112 = icmp eq ptr %i.cs, %i.aa
  br i1 %.not112, label %.loopexit, label %.lr.ph, !llvm.loop !319

.loopexit:                                        ; preds = %bb.o, %bb.l, %bb.n
  %.0218 = phi i32 [ %i.cr, %bb.n ], [ -1, %bb.l ], [ -1, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cz, 32
  br i1 %i.da, label %bb.p, label %_ZN2v88internal4Zone3NewINS0_30ArrayLiteralBoilerplateBuilderEJRPKNS0_8ZoneListIPNS0_10ExpressionEEERiEEEPT_DpOT0_.exit, !prof !68

bb.p:                                             ; preds = %.loopexit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cu, i64 noundef 32) #21
  %.pre.i.i = load i64, ptr %i.cx, align 8
  br label %_ZN2v88internal4Zone3NewINS0_30ArrayLiteralBoilerplateBuilderEJRPKNS0_8ZoneListIPNS0_10ExpressionEEERiEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_30ArrayLiteralBoilerplateBuilderEJRPKNS0_8ZoneListIPNS0_10ExpressionEEERiEEEPT_DpOT0_.exit: ; preds = %.loopexit, %bb.p
  %i.db = phi i64 [ %.pre.i.i, %bb.p ], [ %i.cy, %.loopexit ] ; 2 uses
  %i.dc = inttoptr i64 %i.db to ptr               ; 6 uses
  %i.dd = add i64 %i.db, 32
  store i64 %i.dd, ptr %i.cx, align 8
  store i32 0, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %1, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i32 %.0218, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr null, ptr %i.dg, align 8
  tail call void @_ZN2v88internal30ArrayLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dc) #21
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_30ArrayLiteralBoilerplateBuilderEJRPKNS0_8ZoneListIPNS0_10ExpressionEEERiEEEPT_DpOT0_.exit, %bb.m
  %.0219 = phi ptr [ %i.dc, %_ZN2v88internal4Zone3NewINS0_30ArrayLiteralBoilerplateBuilderEJRPKNS0_8ZoneListIPNS0_10ExpressionEEERiEEEPT_DpOT0_.exit ], [ %i.ch, %bb.m ] ; 4 uses
  %i.dh = tail call noundef zeroext i1 @_ZNK2v88internal30ArrayLiteralBoilerplateBuilder22IsFastCloningSupportedEv(ptr noundef nonnull align 8 dereferenceable(32) %.0219) #21
  %i.di = load i32, ptr %.0219, align 4           ; 2 uses
  %i.dj = and i32 %i.di, 3
  %i.dk = icmp eq i32 %i.dj, 1
  %spec.select.i.i = zext i1 %i.dk to i32
  %i.dl = and i32 %i.di, 4
  %.2.i.i = or disjoint i32 %i.dl, %spec.select.i.i
  %i.dm = tail call noundef zeroext i8 @_ZN2v88internal11interpreter23CreateArrayLiteralFlags6EncodeEbi(i1 noundef zeroext %i.dh, i32 noundef %.2.i.i) #21
  br i1 %i.ab, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dn = load ptr, ptr %i.t, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = tail call i32 @_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE(ptr noundef nonnull align 8 dereferenceable(64) %i.do, i8 noundef zeroext 19) #21
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dr = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder23CreateEmptyArrayLiteralEi(ptr noundef nonnull align 8 dereferenceable(480) %i.dq, i32 noundef %i.dp) #21 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dt = tail call noundef i64 @_ZN2v88internal11interpreter20BytecodeArrayBuilder33AllocateDeferredConstantPoolEntryEv(ptr noundef nonnull align 8 dereferenceable(480) %i.ds) #21 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dy = icmp ult ptr %i.dv, %i.dx
  br i1 %i.dy, label %_ZN2v88internal10ZoneVectorISt4pairIPNS0_30ArrayLiteralBoilerplateBuilderEmEE9push_backEOS5_.exit, label %bb.t, !prof !66

bb.t:                                             ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 4
  %i.eg = add nsw i64 %i.ef, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairIPNS0_30ArrayLiteralBoilerplateBuilderEmEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 noundef %i.eg)
  %.pre.i.i122 = load ptr, ptr %i.du, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairIPNS0_30ArrayLiteralBoilerplateBuilderEmEE9push_backEOS5_.exit

_ZN2v88internal10ZoneVectorISt4pairIPNS0_30ArrayLiteralBoilerplateBuilderEmEE9push_backEOS5_.exit: ; preds = %bb.s, %bb.t
  %i.eh = phi ptr [ %i.dv, %bb.s ], [ %.pre.i.i122, %bb.t ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %i.ei, ptr %i.du, align 8
  store ptr %.0219, ptr %i.eh, align 8
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.dt, ptr %.sroa.4191.0..sroa_idx, align 8
  %i.ej = load ptr, ptr %i.t, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 72
  %i.el = tail call i32 @_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE(ptr noundef nonnull align 8 dereferenceable(64) %i.ek, i8 noundef zeroext 19) #21
  %i.em = zext i8 %i.dm to i32
  %i.en = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder18CreateArrayLiteralEmii(ptr noundef nonnull align 8 dereferenceable(480) %i.ds, i64 noundef %i.dt, i32 noundef %i.el, i32 noundef %i.em) #21 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal10ZoneVectorISt4pairIPNS0_30ArrayLiteralBoilerplateBuilderEmEE9push_backEOS5_.exit, %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ep = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder26StoreAccumulatorInRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.eo, i32 %i.b) #21 ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0219, i64 16
  %i.er = load i32, ptr %i.eq, align 8            ; 2 uses
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.es
  %i.eu = icmp slt i32 %i.er, 0
  %i.ev = select i1 %i.eu, ptr %i.aa, ptr %i.et   ; 3 uses
  %.not113227 = icmp eq ptr %i.w, %i.ev
  br i1 %.not113227, label %._crit_edge, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 25 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph231, %bb.ac
  %.0230 = phi ptr [ %i.w, %.lr.ph231 ], [ %i.gi, %bb.ac ] ; 2 uses
  %.0106229 = phi i32 [ 0, %.lr.ph231 ], [ %8, %bb.ac ] ; 2 uses
  %.sroa.6202.0228 = phi i32 [ -1, %.lr.ph231 ], [ %.sroa.6202.1, %bb.ac ] ; 3 uses
  %i.fd = load ptr, ptr %.0230, align 8           ; 2 uses
  %i.fe = call noundef zeroext i1 @_ZN2v88internal10Expression18IsCompileTimeValueEv(ptr noundef nonnull align 4 dereferenceable(8) %i.fd) #21
  br i1 %i.fe, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %7 = zext nneg i32 %.0106229 to i64
  %i.ff = shl nuw nsw i64 %7, 32
  %i.fg = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11LoadLiteralENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(480) %i.eo, i64 %i.ff) #21
  %i.fh = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder26StoreAccumulatorInRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.fg, i32 %i.s) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.fi = load ptr, ptr %i.ew, align 8
  store ptr %i.fi, ptr %5, align 8
  store ptr %0, ptr %i.ex, align 8
  %i.fj = load i32, ptr %i.a, align 8
  store i32 %i.fj, ptr %i.ey, align 8
  store i8 1, ptr %i.ez, align 8
  store i8 -1, ptr %i.fa, align 1
  store ptr %5, ptr %i.ew, align 8
  %i.fk = load i8, ptr %i.fb, align 8, !range !63, !noundef !64
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i153, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fm = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21, !inline_history !73
  %i.fn = load i64, ptr %0, align 8
  %i.fo = icmp ult i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.y, label %_ZN2v88internal11interpreter17BytecodeGenerator18CheckStackOverflowEv.exit.i.i151

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.fb, align 8
  br label %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i153

_ZN2v88internal11interpreter17BytecodeGenerator18CheckStackOverflowEv.exit.i.i151: ; preds = %bb.x
  call void @_ZN2v88internal11interpreter17BytecodeGenerator25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef nonnull %i.fd), !inline_history !73
  br label %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i153

_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i153: ; preds = %bb.y, %bb.w, %_ZN2v88internal11interpreter17BytecodeGenerator18CheckStackOverflowEv.exit.i.i151
  %i.fp = load i8, ptr %i.fa, align 1             ; 2 uses
  %i.fq = load ptr, ptr %i.fc, align 8            ; 2 uses
  %i.fr = icmp ne ptr %i.fq, null
  %i.fs = icmp ne i8 %i.fp, -1
  %or.cond.i154 = and i1 %i.fs, %i.fr
  br i1 %or.cond.i154, label %bb.z, label %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit155

bb.z:                                             ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i153
  call void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer25SetTypeHintForAccumulatorENS1_17BytecodeGenerator8TypeHintE(ptr noundef nonnull align 8 dereferenceable(200) %i.fq, i8 noundef zeroext %i.fp) #21, !inline_history !74
  br label %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit155

_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit155: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i153, %bb.z
  %i.ft = load ptr, ptr %i.ex, align 8            ; 3 uses
  %i.fu = load ptr, ptr %5, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 888
  store ptr %i.fu, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 320 ; 2 uses
  %i.fx = load i32, ptr %i.ey, align 8            ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 8
  store i32 %i.fx, ptr %i.fw, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 328
  %i.ga = load ptr, ptr %i.fz, align 8            ; 3 uses
  %.not.i.i.i145 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i145, label %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit150, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit155
  %i.gb = sub nsw i32 %i.fy, %i.fx
  %.sroa.2.0.insert.ext.i.i.i146 = zext i32 %i.gb to i64
  %.sroa.2.0.insert.shift.i.i.i147 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i146, 32
  %.sroa.0.0.insert.ext.i.i.i148 = zext i32 %i.fx to i64
  %.sroa.0.0.insert.insert.i.i.i149 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i147, %.sroa.0.0.insert.ext.i.i.i148
  %i.gc = load ptr, ptr %i.ga, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i64 %.sroa.0.0.insert.insert.i.i.i149) #21, !inline_history !17
  br label %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit150

_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit150: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit155, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.gf = icmp eq i32 %.sroa.6202.0228, -1
  br i1 %i.gf, label %bb.ab, label %_ZN2v88internal18SharedFeedbackSlot3GetEv.exit

bb.ab:                                            ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit150
  %i.gg = call i32 @_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i8 noundef zeroext 15) #21
  br label %_ZN2v88internal18SharedFeedbackSlot3GetEv.exit

_ZN2v88internal18SharedFeedbackSlot3GetEv.exit:   ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit150, %bb.ab
  %.sroa.6202.5 = phi i32 [ %i.gg, %bb.ab ], [ %.sroa.6202.0228, %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit150 ] ; 2 uses
  %i.gh = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder19StoreInArrayLiteralENS1_8RegisterES3_i(ptr noundef nonnull align 8 dereferenceable(480) %i.eo, i32 %i.b, i32 %i.s, i32 noundef %.sroa.6202.5) #21 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.v, %_ZN2v88internal18SharedFeedbackSlot3GetEv.exit
  %.sroa.6202.1 = phi i32 [ %.sroa.6202.0228, %bb.v ], [ %.sroa.6202.5, %_ZN2v88internal18SharedFeedbackSlot3GetEv.exit ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0230, i64 8 ; 2 uses
  %8 = add nuw nsw i32 %.0106229, 1               ; 2 uses
  %.not113 = icmp eq ptr %i.gi, %i.ev
  br i1 %.not113, label %._crit_edge.loopexit, label %bb.v, !llvm.loop !320

._crit_edge.loopexit:                             ; preds = %bb.ac
  %9 = zext nneg i32 %8 to i64
  %i.gj = shl nuw nsw i64 %9, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.u
  %.sroa.6202.0.lcssa = phi i32 [ -1, %bb.u ], [ %.sroa.6202.1, %._crit_edge.loopexit ]
  %.0106.lcssa = phi i64 [ 0, %bb.u ], [ %i.gj, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.w, %bb.u ], [ %i.ev, %._crit_edge.loopexit ] ; 2 uses
  %.not114 = icmp eq ptr %.0.lcssa, %i.aa
  br i1 %.not114, label %._crit_edge241, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.gk = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11LoadLiteralENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(480) %i.eo, i64 %.0106.lcssa) #21
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.ad
  %.sink = phi ptr [ %i.gk, %bb.ad ], [ %i.cg, %bb.k ]
  %.sroa.6202.2.ph = phi i32 [ %.sroa.6202.0.lcssa, %bb.ad ], [ -1, %bb.k ]
  %.1.ph = phi ptr [ %.0.lcssa, %bb.ad ], [ %i.by, %bb.k ]
  %i.gl = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder26StoreAccumulatorInRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %.sink, i32 %i.s) #21 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit
  %.sroa.6202.2 = phi i32 [ -1, %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit ], [ %.sroa.6202.2.ph, %.sink.split ]
  %.1 = phi ptr [ %i.by, %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit ], [ %.1.ph, %.sink.split ] ; 2 uses
  %i.gm = load ptr, ptr %i.t, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 72 ; 4 uses
  %.not115234 = icmp eq ptr %.1, %i.aa
  br i1 %.not115234, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.ae
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 25 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph240, %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit
  %.2238 = phi ptr [ %.1, %.lr.ph240 ], [ %i.lj, %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit ] ; 3 uses
  %.sroa.4180.0237 = phi i32 [ -1, %.lr.ph240 ], [ %.sroa.4180.1, %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit ] ; 6 uses
  %.sroa.6185.0236 = phi i32 [ -1, %.lr.ph240 ], [ %.sroa.6185.1, %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit ] ; 7 uses
  %.sroa.6202.3235 = phi i32 [ %.sroa.6202.2, %.lr.ph240 ], [ %.sroa.6202.4, %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit ] ; 5 uses
  %i.he = load ptr, ptr %.2238, align 8           ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, 63
  %i.hi = icmp eq i32 %i.hh, 49
  br i1 %i.hi, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.hj = load i32, ptr %i.a, align 8             ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8            ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.hn = icmp eq i32 %i.hm, -1
  br i1 %i.hn, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit123, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = load i8, ptr %i.gx, align 8
  %i.hp = icmp eq i8 %i.ho, 2
  br i1 %i.hp, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit123, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.gx, align 8
  store i32 %i.hm, ptr %i.gy, align 4
  store i8 1, ptr %i.gz, align 8
  %.pre246 = load ptr, ptr %i.hk, align 8
  br label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit123

_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit123: ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.hq = phi ptr [ %i.hl, %bb.ag ], [ %i.hl, %bb.ah ], [ %.pre246, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.hr = load ptr, ptr %i.go, align 8
  store ptr %i.hr, ptr %4, align 8
  store ptr %0, ptr %i.ha, align 8
  store i32 %i.hj, ptr %i.hb, align 8
  store i8 1, ptr %i.hc, align 8
  store i8 -1, ptr %i.hd, align 1
  store ptr %4, ptr %i.go, align 8
  %i.hs = load i8, ptr %i.gt, align 8, !range !63, !noundef !64
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i164, label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit123
  %i.hu = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21, !inline_history !73
  %i.hv = load i64, ptr %0, align 8
  %i.hw = icmp ult i64 %i.hu, %i.hv
  br i1 %i.hw, label %bb.ak, label %_ZN2v88internal11interpreter17BytecodeGenerator18CheckStackOverflowEv.exit.i.i162

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.gt, align 8
  br label %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i164

_ZN2v88internal11interpreter17BytecodeGenerator18CheckStackOverflowEv.exit.i.i162: ; preds = %bb.aj
  call void @_ZN2v88internal11interpreter17BytecodeGenerator25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef %i.hq), !inline_history !73
  br label %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i164

_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i164: ; preds = %bb.ak, %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit123, %_ZN2v88internal11interpreter17BytecodeGenerator18CheckStackOverflowEv.exit.i.i162
  %i.hx = load i8, ptr %i.hd, align 1             ; 2 uses
  %i.hy = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.hz = icmp ne ptr %i.hy, null
  %i.ia = icmp ne i8 %i.hx, -1
  %or.cond.i165 = and i1 %i.ia, %i.hz
  br i1 %or.cond.i165, label %bb.al, label %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit166

bb.al:                                            ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i164
  call void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer25SetTypeHintForAccumulatorENS1_17BytecodeGenerator8TypeHintE(ptr noundef nonnull align 8 dereferenceable(200) %i.hy, i8 noundef zeroext %i.hx) #21, !inline_history !74
  br label %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit166

_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit166: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator5VisitEPNS0_7AstNodeE.exit.i164, %bb.al
  %i.ib = load ptr, ptr %i.ha, align 8            ; 3 uses
  %i.ic = load ptr, ptr %4, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 888
  store ptr %i.ic, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 320 ; 2 uses
  %i.if = load i32, ptr %i.hb, align 8            ; 3 uses
  %i.ig = load i32, ptr %i.ie, align 8
  store i32 %i.if, ptr %i.ie, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 328
  %i.ii = load ptr, ptr %i.ih, align 8            ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i156, label %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit161, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit166
  %i.ij = sub nsw i32 %i.ig, %i.if
  %.sroa.2.0.insert.ext.i.i.i157 = zext i32 %i.ij to i64
  %.sroa.2.0.insert.shift.i.i.i158 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i157, 32
  %.sroa.0.0.insert.ext.i.i.i159 = zext i32 %i.if to i64
  %.sroa.0.0.insert.insert.i.i.i160 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i158, %.sroa.0.0.insert.ext.i.i.i159
  %i.ik = load ptr, ptr %i.ii, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, i64 %.sroa.0.0.insert.insert.i.i.i160) #21, !inline_history !17
  br label %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit161

_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit161: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator28VisitForAccumulatorValueImplEPNS0_10ExpressionEPNS2_16ValueResultScopeE.exit166, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.in = load ptr, ptr %i.hk, align 8
  %i.io = load i32, ptr %i.in, align 4            ; 2 uses
  %i.ip = icmp eq i32 %i.io, -1
  br i1 %i.ip, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit124, label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit161
  %i.iq = load i8, ptr %i.gx, align 8
  %i.ir = icmp eq i8 %i.iq, 2
  br i1 %i.ir, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit124, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 1, ptr %i.gx, align 8
  store i32 %i.io, ptr %i.gy, align 4
  store i8 1, ptr %i.gz, align 8
  br label %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit124

_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit124: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator21ExpressionResultScopeD2Ev.exit161, %bb.an, %bb.ao
  %i.is = call { i64, i32 } @_ZN2v88internal11interpreter17BytecodeGenerator22BuildGetIteratorRecordENS0_12IteratorTypeE(ptr noundef nonnull align 8 dereferenceable(976) %0, i32 noundef 0) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.is, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.is, 1
  %i.it = load i32, ptr %i.a, align 8             ; 3 uses
  %i.iu = add nsw i32 %i.it, 1                    ; 2 uses
  store i32 %i.iu, ptr %i.a, align 8
  %i.iv = load i32, ptr %i.d, align 4
  %i.iw = call i32 @llvm.smax.i32(i32 %i.iu, i32 %i.iv)
  store i32 %i.iw, ptr %i.d, align 4
  %i.ix = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not.i125 = icmp eq ptr %i.ix, null
  br i1 %.not.i125, label %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit126, label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit124
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, i32 %i.it) #21, !inline_history !3
  br label %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit126

_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit126: ; preds = %_ZN2v88internal11interpreter20BytecodeArrayBuilder21SetExpressionPositionEPNS0_10ExpressionE.exit124, %bb.ap
  %i.jb = load ptr, ptr %i.t, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 72
  %i.jd = call i32 @_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE(ptr noundef nonnull align 8 dereferenceable(64) %i.jc, i8 noundef zeroext 5) #21
  %i.je = load ptr, ptr %i.t, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  %i.jg = call i32 @_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE(ptr noundef nonnull align 8 dereferenceable(64) %i.jf, i8 noundef zeroext 5) #21 ; 0 uses
  %i.jh = icmp eq i32 %.sroa.6185.0236, -1
  br i1 %i.jh, label %bb.aq, label %_ZN2v88internal18SharedFeedbackSlot3GetEv.exit128

bb.aq:                                            ; preds = %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit126
  %i.ji = call i32 @_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, i8 noundef zeroext 16) #21
  br label %_ZN2v88internal18SharedFeedbackSlot3GetEv.exit128

_ZN2v88internal18SharedFeedbackSlot3GetEv.exit128: ; preds = %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit126, %bb.aq
  %.sroa.6185.2 = phi i32 [ %i.ji, %bb.aq ], [ %.sroa.6185.0236, %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit126 ] ; 3 uses
end_hunk_0
