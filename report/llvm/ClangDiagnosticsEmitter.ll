Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangDiagnosticsEmitter?download=true
inline.NumInlined: 5328
inline.NumDeleted: 2222
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZZL23verifyDiagnosticWordingRKN4llvm6RecordEENK3$_0clENS_9StringRefE":bb.a
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %.not.i.i55.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i55.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread.i

bb.p:                                             ; preds = %bb.h
  %i.dp = load i32, ptr %0, align 1
  %i.dq = icmp ne i32 %i.dp, 1852794190
  %i.dr = zext i1 %i.dq to i32
  %.not.i.i63.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i63.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.i: ; preds = %bb.h
  %.not.i.i66.i = icmp ult i64 %.sroa.speculated.i, 12
  br i1 %.not.i.i66.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread445.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread445.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.i, %bb.m, %bb.i
  %i.ds = load i64, ptr %0, align 1
  %i.dt = xor i64 %i.ds, 7017575198820488014
  %i.du = getelementptr i8, ptr %0, i64 8
  %i.dv = load i32, ptr %i.du, align 1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = xor i64 %i.dw, 1852795252
  %i.dy = or i64 %i.dt, %i.dx
  %i.dz = icmp ne i64 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread.i: ; preds = %bb.o
  %i.ec = load i64, ptr %0, align 1
  %i.ed = xor i64 %i.ec, 8532478939282170447
  %i.ee = getelementptr i8, ptr %0, i64 8
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i64
  %i.eh = xor i64 %i.eg, 101
  %i.ei = or i64 %i.ed, %i.eh
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %.not.i.i72.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i72.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.i
  switch i64 %.sroa.speculated.i, label %_ZN4llvmplERKNS_5TwineES2_.exit [
    i64 7, label %.thread455.i
    i64 6, label %bb.q
    i64 5, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.thread.thread.thread.i
    i64 11, label %bb.v
  ]

.thread455.i:                                     ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.i, %bb.n
  %i.el = load i32, ptr %0, align 1
  %i.em = xor i32 %i.el, 1852141647
  %i.en = getelementptr i8, ptr %0, i64 3
  %i.eo = load i32, ptr %i.en, align 1
  %i.ep = xor i32 %i.eo, 1128481134
  %i.eq = or i32 %i.em, %i.ep
  %i.er = icmp ne i32 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %.not.i.i80.i = icmp eq i32 %i.es, 0
  br i1 %.not.i.i80.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %bb.t

bb.q:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.i
  %i.et = load i32, ptr %0, align 1
  %i.eu = xor i32 %i.et, 1852141647
  %i.ev = getelementptr i8, ptr %0, i64 4
  %i.ew = load i16, ptr %i.ev, align 1
  %i.ex = zext i16 %i.ew to i32
  %i.ey = xor i32 %i.ex, 19523
  %i.ez = or i32 %i.eu, %i.ey
  %i.fa = icmp ne i32 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %.not.i.i88.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i88.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fc = load i32, ptr %0, align 1
  %i.fd = xor i32 %i.fc, 1852141647
  %i.fe = getelementptr i8, ptr %0, i64 4
  %i.ff = load i16, ptr %i.fe, align 1
  %i.fg = zext i16 %i.ff to i32
  %i.fh = xor i32 %i.fg, 20557
  %i.fi = or i32 %i.fd, %i.fh
  %i.fj = icmp ne i32 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %.not.i.i96.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i96.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = load i32, ptr %0, align 1
  %i.fm = xor i32 %i.fl, 1668505936
  %i.fn = getelementptr i8, ptr %0, i64 4
  %i.fo = load i16, ptr %i.fn, align 1
  %i.fp = zext i16 %i.fo to i32
  %i.fq = xor i32 %i.fp, 27745
  %i.fr = or i32 %i.fm, %i.fq
  %i.fs = icmp ne i32 %i.fr, 0
  %i.ft = zext i1 %i.fs to i32
  %.not.i.i104.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i104.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %bb.u

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.thread.thread.thread.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.i, %bb.k
  %i.fu = load i32, ptr %0, align 1
  %i.fv = xor i32 %i.fu, 1718187859
  %i.fw = getelementptr i8, ptr %0, i64 4
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i32
  %i.fz = xor i32 %i.fy, 116
  %i.ga = or i32 %i.fv, %i.fz
  %i.gb = icmp ne i32 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %.not.i.i112.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i112.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.t:                                             ; preds = %.thread455.i
  %i.gd = load i32, ptr %0, align 1
  %i.ge = xor i32 %i.gd, 1667853909
  %i.gf = getelementptr i8, ptr %0, i64 3
  %i.gg = load i32, ptr %i.gf, align 1
  %i.gh = xor i32 %i.gg, 1701080931
  %i.gi = or i32 %i.ge, %i.gh
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %.not.i.i120.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i.i120.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.u:                                             ; preds = %bb.s
  %i.gl = load i32, ptr %0, align 1
  %i.gm = xor i32 %i.gl, 1802270038
  %i.gn = getelementptr i8, ptr %0, i64 4
  %i.go = load i16, ptr %i.gn, align 1
  %i.gp = zext i16 %i.go to i32
  %i.gq = xor i32 %i.gp, 28257
  %i.gr = or i32 %i.gm, %i.gq
  %i.gs = icmp ne i32 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %.not.i.i128.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i128.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.v:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.i
  %i.gu = load i64, ptr %0, align 1
  %i.gv = xor i64 %i.gu, 7882833661637322071
  %i.gw = getelementptr i8, ptr %0, i64 3
  %i.gx = load i64, ptr %i.gw, align 1
  %i.gy = xor i64 %i.gx, 8749476398067053377
  %i.gz = or i64 %i.gv, %i.gy
  %i.ha = icmp ne i64 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %.not.i.i136.i = icmp eq i32 %i.hb, 0
  %spec.select514.i = select i1 %.not.i.i136.i, i16 257, i16 0
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %.thread280.i, %bb.m, %bb.n, %bb.o, %bb.p, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread445.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread.i, %.thread455.i, %bb.q, %bb.r, %bb.s, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.thread.thread.thread.i, %bb.t, %bb.u, %bb.v
  %.sroa.42.18.i = phi i16 [ %spec.select514.i, %bb.v ], [ 257, %bb.u ], [ 257, %bb.t ], [ 257, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.thread.thread.thread.i ], [ 257, %bb.s ], [ 257, %bb.r ], [ 257, %bb.q ], [ 257, %.thread455.i ], [ 257, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread.i ], [ 257, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread445.i ], [ 257, %bb.p ], [ 257, %bb.o ], [ 257, %bb.n ], [ 257, %bb.m ], [ 257, %.thread280.i ], [ 257, %bb.l ], [ 257, %bb.k ], [ 257, %bb.j ], [ 257, %bb.i ] ; 2 uses
  %i.hc = icmp samesign ugt i16 %.sroa.42.18.i, 255
  %i.hd = trunc i16 %.sroa.42.18.i to i1
  %.0.i.i = and i1 %i.hc, %i.hd
  br i1 %.0.i.i, label %_ZL15isExemptAtStartN4llvm9StringRefE.exit.thread, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZL15isExemptAtStartN4llvm9StringRefE.exit:       ; preds = %._crit_edge.i.i.i.i.i.i, %bb.g, %switch.early.test56.i.i.i.i.i.i, %switch.early.test56.i.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_9StringRefEZL15isExemptAtStartS1_E3$_0EEbOT_T0_.exit.i"
  %i.he = icmp ne i64 %.sroa.speculated.i, 1
  %i.hf = icmp eq i8 %i.h, 67
  %spec.select.i = or i1 %i.he, %i.hf
  br i1 %spec.select.i, label %_ZL15isExemptAtStartN4llvm9StringRefE.exit.thread, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.p, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread445.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.thread.thread.thread.i, %bb.t, %bb.u, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit65.thread419.thread490.i, %bb.j, %_ZL15isExemptAtStartN4llvm9StringRefE.exit, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.hg, align 8, !tbaa !51, !alias.scope !712
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 5, ptr %i.hh, align 1, !tbaa !49, !alias.scope !712
  store ptr @.str.143, ptr %3, align 8, !tbaa !50, !alias.scope !712
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.hi, align 8, !tbaa !50, !alias.scope !712
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.speculated.i, ptr %i.hj, align 8, !tbaa !50, !alias.scope !712
  store ptr %3, ptr %2, align 8, !alias.scope !713
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.144, ptr %i.hk, align 8, !alias.scope !713
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 2, ptr %i.hl, align 8, !tbaa !51, !alias.scope !713
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 3, ptr %i.hm, align 1, !tbaa !49, !alias.scope !713
  call void @_ZN4llvm10PrintErrorEPKNS_6RecordERKNS_5TwineE(ptr noundef nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(34) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZL15isExemptAtStartN4llvm9StringRefE.exit.thread

_ZL15isExemptAtStartN4llvm9StringRefE.exit.thread: ; preds = %bb.b, %bb.c, %_ZSt13find_first_ofIPKcPcET_S3_S3_T0_S4_.exit, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit138.i, %_ZN4llvmplERKNS_5TwineES2_.exit, %_ZL15isExemptAtStartN4llvm9StringRefE.exit
  ret void
}

declare noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"struct.(anonymous namespace)::DiagTextVisitor<(anonymous namespace)::DiagTextPrinter>::SubstitutionContext", align 8 ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !264
  switch i32 %.val, label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.ab
    i32 7, label %bb.ai
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i = load ptr, ptr %i.b, align 8, !tbaa !85 ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !85 ; 2 uses
  %.not3842 = icmp eq ptr %.val5.i, %.val.i
  br i1 %.not3842, label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.b, %.lr.ph45
  %.sroa.030.043 = phi ptr [ %i.e, %.lr.ph45 ], [ %.val5.i, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.030.043, align 8, !tbaa !90
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.d), !inline_history !714
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.e, %.val.i
  br i1 %.not38, label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit, label %.lr.ph45

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.f, align 8, !tbaa !298 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.d, label %_ZN12_GLOBAL__N_115DiagTextPrinter9VisitTextEPNS_9TextPieceE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZN12_GLOBAL__N_115DiagTextPrinter9VisitTextEPNS_9TextPieceE.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.val10, ptr noundef %i.n, i64 noundef %i.h) #27 ; 0 uses
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = icmp eq i64 %i.s, 4611686018427387903
  br i1 %i.t, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %bb.e
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull @.str.83, i64 noundef 1) #27 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !282
  switch i32 %i.w, label %bb.q [
    i32 3, label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i
    i32 2, label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i
    i32 4, label %bb.g
    i32 6, label %bb.h
    i32 5, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 1, label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread.i
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 13, label %bb.p
  ]

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !298, !nonnull !104, !align !230
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter16VisitPlaceholderEPNS_16PlaceholderPieceE.exit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  unreachable

_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %.sroa.13.0.i.i = phi i64 [ 6, %bb.p ], [ 3, %bb.g ], [ 4, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 5, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ 9, %bb.n ], [ 12, %bb.o ], [ 6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ @.str.99, %bb.p ], [ @.str.90, %bb.g ], [ @.str.91, %bb.h ], [ @.str.92, %bb.i ], [ @.str.94, %bb.j ], [ @.str.95, %bb.k ], [ @.str.93, %bb.l ], [ @.str.96, %bb.m ], [ @.str.88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ @.str.97, %bb.n ], [ @.str.98, %bb.o ], [ @.str.88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ]
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39
  %i.ab = sub i64 4611686018427387903, %i.aa
  %i.ac = icmp ult i64 %i.ab, %.sroa.13.0.i.i
  br i1 %i.ac, label %bb.r, label %_ZN12_GLOBAL__N_115DiagTextPrinter16VisitPlaceholderEPNS_16PlaceholderPieceE.exit

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZN12_GLOBAL__N_115DiagTextPrinter16VisitPlaceholderEPNS_16PlaceholderPieceE.exit: ; preds = %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread.i, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i
  %i.ad = phi ptr [ %i.x, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread.i ], [ %i.y, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i ]
  %.sroa.0.0.i8.i = phi ptr [ @.str.1, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread.i ], [ %.sroa.0.0.i.i, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i ]
  %.sroa.13.0.i7.i = phi i64 [ 0, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread.i ], [ %.sroa.13.0.i.i, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.i ]
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull %.sroa.0.0.i8.i, i64 noundef %.sroa.13.0.i7.i) #27 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !283
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %0, align 8
  %i.ai = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE8mapIndexEiRKSt8optionalISt6vectorIiSaIiEEE(ptr %.val.i.i, i32 noundef %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah)
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextPrinter6addIntEi(ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %i.ai)
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.s:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextPrinter11VisitSelectEPNS_11SelectPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1)
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.t:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextPrinter11VisitSelectEPNS_11SelectPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1), !inline_history !715
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.u:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39
  %i.an = and i64 %i.am, -8
  %i.ao = icmp eq i64 %i.an, 4611686018427387896
  br i1 %i.ao, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13: ; preds = %bb.u
  %i.ap = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull @.str.165, i64 noundef 8) #27 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val11.val.i = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %.val12.val.i = load ptr, ptr %i.aq, align 8, !tbaa !85 ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 24
  %i.at = getelementptr i8, ptr %1, i64 56
  %.val14.val.i = load ptr, ptr %i.at, align 8, !tbaa !85 ; 2 uses
  %.not39 = icmp eq ptr %.val12.val.i, %.val14.val.i
  br i1 %.not39, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.val.i11.pre = load ptr, ptr %i.ar, align 8, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13
  %.val.i11 = phi ptr [ %.val.i11.pre, %._crit_edge.loopexit ], [ %.val11.val.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13 ]
  %.val10.i = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = icmp eq ptr %.val.i11, %.val10.i
  br i1 %i.au, label %_ZN12_GLOBAL__N_115DiagTextPrinter11VisitPluralEPNS_11PluralPieceE.exit, label %bb.z

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.sroa.036.041 = phi ptr [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %.val11.val.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13 ] ; 2 uses
  %.sroa.6.040 = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %.val12.val.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13 ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.6.040, align 8, !tbaa !90 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av), !inline_history !716
  br label %bb.x

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE:bb.a
  %i.bh = add nsw i64 %i.bg, -1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bh, i64 noundef 1) #27
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter11VisitPluralEPNS_11PluralPieceE.exit

_ZN12_GLOBAL__N_115DiagTextPrinter11VisitPluralEPNS_11PluralPieceE.exit: ; preds = %._crit_edge, %bb.z
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !298, !nonnull !104, !align !230 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !39 ; 4 uses
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN12_GLOBAL__N_115DiagTextPrinter11VisitPluralEPNS_11PluralPieceE.exit
  %i.bp = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_115DiagTextPrinter11VisitPluralEPNS_11PluralPieceE.exit
  %i.bq = load i64, ptr %i.bn, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.br = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bs = icmp ugt i64 %i.bl, %i.br
  br i1 %i.bs, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.bk, i64 noundef 0, ptr noundef null, i64 noundef 1) #27
  %.pre.i.i = load ptr, ptr %i.bi, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.aa
  %i.bt = phi ptr [ %.pre.i.i, %bb.aa ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bk
  store i8 125, ptr %i.bu, align 1, !tbaa !50
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !39
  %i.bv = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bl
  store i8 0, ptr %i.bw, align 1, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !279
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i12 = load ptr, ptr %0, align 8
  %i.ca = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE8mapIndexEiRKSt8optionalISt6vectorIiSaIiEEE(ptr %.val.i12, i32 noundef %i.by, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bz)
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextPrinter6addIntEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ca), !inline_history !716
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.ab:                                            ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.cf = add i64 %i.ce, -4611686018427387898
  %i.cg = icmp ult i64 %i.cf, 6
  br i1 %i.cg, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21: ; preds = %bb.ab
  %i.ch = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull @.str.166, i64 noundef 6) #27 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !90
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.cj), !inline_history !717
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !39
  %i.cn = icmp eq i64 %i.cm, 4611686018427387903
  br i1 %i.cn, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21
  %i.co = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull @.str.108, i64 noundef 1) #27 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !90
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.cq), !inline_history !717
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.cu = icmp eq i64 %i.ct, 4611686018427387903
  br i1 %i.cu, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit19

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20
  %i.cv = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull @.str.108, i64 noundef 1) #27 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !90
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.cx), !inline_history !717
  %i.cy = load ptr, ptr %i.cb, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !39
  %i.db = icmp eq i64 %i.da, 4611686018427387903
  br i1 %i.db, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit19
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit19
  %i.dc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull @.str.109, i64 noundef 1) #27 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !90
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.de), !inline_history !717
  %i.df = load ptr, ptr %i.cb, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !39
  %i.di = icmp eq i64 %i.dh, 4611686018427387903
  br i1 %i.di, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18
  %i.dj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull @.str.102, i64 noundef 1) #27 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !157
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i16 = load ptr, ptr %0, align 8
  %i.dn = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE8mapIndexEiRKSt8optionalISt6vectorIiSaIiEEE(ptr %.val.i16, i32 noundef %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dm)
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextPrinter6addIntEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.dn), !inline_history !717
  %i.do = load ptr, ptr %i.cb, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !39
  %i.dr = icmp eq i64 %i.dq, 4611686018427387903
  br i1 %i.dr, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17
  %i.ds = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull @.str.10, i64 noundef 1) #27 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !157
  %.val.i14 = load ptr, ptr %0, align 8
  %i.dv = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE8mapIndexEiRKSt8optionalISt6vectorIiSaIiEEE(ptr %.val.i14, i32 noundef %i.du, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dm)
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextPrinter6addIntEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.dv), !inline_history !717
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !722
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dy = load ptr, ptr %0, align 8, !tbaa !723, !nonnull !104, !align !230 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !39 ; 2 uses
  %i.ee = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.eb, i64 %i.ed) #27
  %i.ef = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.dz, ptr %i.eb, i64 %i.ed, i32 noundef %i.ee) #27 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, -1
  %.val.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !78
  br i1 %i.eg, label %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread.i.i, label %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i

_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i: ; preds = %bb.ai
  %i.eh = sext i32 %i.ef to i64                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.val3.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !79
  %.pre.i.i22 = zext i32 %.val3.pre.i.i to i64
  %i.ei = icmp eq i64 %i.eh, %.pre.i.i22
  br i1 %i.ei, label %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread.i.i, label %bb.aj

_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread.i.i: ; preds = %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.116, ptr noundef nonnull align 8 dereferenceable(32) %i.ea)
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 4, ptr %i.ej, align 8, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.ek, align 1, !tbaa !49
  store ptr %3, ptr %2, align 8, !tbaa !50
  call void @_ZN4llvm15PrintFatalErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %2) #28
  unreachable

bb.aj:                                            ; preds = %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.el = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i, i64 %i.eh
  %.val6.val.i.i = load ptr, ptr %i.el, align 8, !tbaa !81
  %i.em = getelementptr inbounds nuw i8, ptr %.val6.val.i.i, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !290 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !725
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.er = load i8, ptr %i.eq, align 8, !range !103 ; 2 uses
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.ak, label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24

bb.ak:                                            ; preds = %bb.aj
  %5 = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !156 ; 2 uses
  store <2 x ptr> %5, ptr %i.dw, align 8, !tbaa !156
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !108 ; 2 uses
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i8 0, i64 24, i1 false)
  br label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24

_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24: ; preds = %bb.aj, %bb.ak
  %i.ew = phi ptr [ %i.ev, %bb.ak ], [ undef, %bb.aj ] ; 2 uses
  %6 = phi <2 x ptr> [ %5, %bb.ak ], [ undef, %bb.aj ] ; 2 uses
  %7 = phi i8 [ 1, %bb.ak ], [ 0, %bb.aj ]        ; 3 uses
  store i8 %7, ptr %i.dx, align 8, !tbaa !101
  %i.ex = getelementptr i8, ptr %1, i64 48
  %.val.i25 = load ptr, ptr %i.ex, align 8, !tbaa !156 ; 2 uses
  %i.ey = getelementptr i8, ptr %1, i64 56
  %.val8.i26 = load ptr, ptr %i.ey, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i = icmp eq ptr %.val.i25, %.val8.i26
  br i1 %.not5.i.i, label %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.1.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ]
  %.sroa.13.0.i = phi ptr [ %.sroa.13.1.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ]
  %i.ez = phi ptr [ %i.fs, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ] ; 5 uses
  %i.fa = phi ptr [ %i.ft, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ] ; 3 uses
  %i.fb = phi ptr [ %.sroa.9.0.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ] ; 3 uses
  %.sroa.02.06.i.i = phi ptr [ %i.fu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ %.val.i25, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ] ; 2 uses
  %i.fc = load i32, ptr %.sroa.02.06.i.i, align 4, !tbaa !157, !noalias !726
  %.val.i.i27 = load ptr, ptr %0, align 8, !noalias !726
  %i.fd = call fastcc noundef i32 @_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE8mapIndexEiRKSt8optionalISt6vectorIiSaIiEEE(ptr %.val.i.i27, i32 noundef %i.fc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dw), !noalias !726 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fb, %i.fa
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !157, !noalias !726
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = ptrtoint ptr %i.ez to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 6 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775804
  br i1 %i.fh, label %bb.an, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #28, !noalias !726
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.am
  %i.fi = ashr exact i64 %i.fg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = tail call i64 @llvm.umin.i64(i64 %i.fj, i64 2305843009213693951)
  %i.fm = select i1 %i.fk, i64 2305843009213693951, i64 %i.fl ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.fm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.fn = shl nuw nsw i64 %i.fm, 2
  %i.fo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #30, !noalias !726 ; 5 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fg ; 2 uses
  store i32 %i.fd, ptr %i.fp, align 4, !tbaa !157, !noalias !726
  %i.fq = icmp sgt i64 %i.fg, 0
  br i1 %i.fq, label %bb.ao, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

bb.ao:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fo, ptr align 4 %i.ez, i64 %i.fg, i1 false), !noalias !726
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.ao, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fg) #29, !noalias !726
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fm ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, %bb.al
  %.sroa.0.1.i = phi ptr [ %i.fo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0.0.i, %bb.al ] ; 2 uses
  %.pn.i = phi ptr [ %i.fp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %i.fb, %bb.al ]
  %.sroa.13.1.i = phi ptr [ %i.fr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.13.0.i, %bb.al ] ; 2 uses
  %i.fs = phi ptr [ %i.fo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %i.ez, %bb.al ]
  %i.ft = phi ptr [ %i.fr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %i.fa, %bb.al ]
  %.sroa.9.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fu, %.val8.i26
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit, label %.lr.ph.i.i

_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i
  %.pre = load i8, ptr %i.eq, align 8, !tbaa !101, !range !103
  br label %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i

_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i: ; preds = %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24
  %i.fv = phi i8 [ %i.er, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ], [ %.pre, %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit ]
  %.sroa.0.2.i = phi ptr [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ], [ %.sroa.0.1.i, %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit ] ; 2 uses
  %.sroa.9.1.i = phi ptr [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ], [ %.sroa.9.0.i, %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i24 ], [ %.sroa.13.1.i, %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit ] ; 2 uses
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.fw, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i
  %i.fy = load ptr, ptr %i.ep, align 8, !tbaa !107 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !108
  store ptr %.sroa.0.2.i, ptr %i.ep, align 8, !tbaa !107
  store ptr %.sroa.9.1.i, ptr %i.fx, align 8, !tbaa !280
  store ptr %.sroa.13.2.i, ptr %i.fz, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fy to i64
  %i.gd = sub i64 %i.gb, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gd) #29
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit

bb.as:                                            ; preds = %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i
  store ptr %.sroa.0.2.i, ptr %i.ep, align 8, !tbaa !107
  store ptr %.sroa.9.1.i, ptr %i.fx, align 8, !tbaa !280
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.13.2.i, ptr %i.ge, align 8, !tbaa !108
  store i8 1, ptr %i.eq, align 8, !tbaa !101
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit

_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit: ; preds = %bb.aq, %bb.ar, %bb.as
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.en), !inline_history !720
  %i.gf = load i8, ptr %i.eq, align 8, !tbaa !101, !range !103, !noundef !104 ; 2 uses
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = and i8 %i.gf, %7
  %or.cond.i.i.i.i.i.i.not = icmp eq i8 %i.gh, 0
  br i1 %or.cond.i.i.i.i.i.i.not, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit
  %i.gi = load ptr, ptr %i.ep, align 8, !tbaa !107 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !108
  store <2 x ptr> %6, ptr %i.ep, align 8, !tbaa !156
  store ptr %i.ew, ptr %i.gj, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gn) #29
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextD2Ev.exit

bb.av:                                            ; preds = %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit
  %i.go = trunc nuw i8 %7 to i1
  br i1 %i.go, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store <2 x ptr> %6, ptr %i.ep, align 8, !tbaa !156
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ew, ptr %i.gp, align 8, !tbaa !108
  store i8 1, ptr %i.eq, align 8, !tbaa !101
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextD2Ev.exit

bb.ax:                                            ; preds = %bb.av
  store i8 0, ptr %i.eq, align 8, !tbaa !101
  br i1 %i.gg, label %bb.ay, label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextD2Ev.exit

bb.ay:                                            ; preds = %bb.ax
  %i.gq = load ptr, ptr %i.ep, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i.i7.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !108
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gv) #29
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextD2Ev.exit

_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextD2Ev.exit: ; preds = %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit

_ZN12_GLOBAL__N_115DiagTextPrinter10VisitMultiEPNS_10MultiPieceE.exit: ; preds = %.lr.ph45, %bb.b, %_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE19SubstitutionContextD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.t, %bb.s, %_ZN12_GLOBAL__N_115DiagTextPrinter16VisitPlaceholderEPNS_16PlaceholderPieceE.exit, %_ZN12_GLOBAL__N_115DiagTextPrinter9VisitTextEPNS_9TextPieceE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115DiagTextPrinter11VisitSelectEPNS_11SelectPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq i64 %i.d, 4611686018427387903
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.83, i64 noundef 1) #27 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !276
  switch i32 %i.h, label %bb.m [
    i32 3, label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit
    i32 2, label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit
    i32 4, label %bb.c
    i32 6, label %bb.d
    i32 5, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 1, label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 13, label %bb.l
  ]

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !298, !nonnull !104, !align !230
  br label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  unreachable

_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.13.0.i = phi i64 [ 6, %bb.l ], [ 3, %bb.c ], [ 4, %bb.d ], [ 6, %bb.e ], [ 7, %bb.f ], [ 5, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 9, %bb.j ], [ 12, %bb.k ], [ 6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ @.str.99, %bb.l ], [ @.str.90, %bb.c ], [ @.str.91, %bb.d ], [ @.str.92, %bb.e ], [ @.str.94, %bb.f ], [ @.str.95, %bb.g ], [ @.str.93, %bb.h ], [ @.str.96, %bb.i ], [ @.str.88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ @.str.97, %bb.j ], [ @.str.98, %bb.k ], [ @.str.88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %.sroa.13.0.i
  br i1 %i.n, label %bb.n, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit
  %i.o = phi ptr [ %i.i, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread ], [ %i.j, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit ]
  %.sroa.0.0.i32 = phi ptr [ @.str.1, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread ], [ %.sroa.0.0.i, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit ]
  %.sroa.13.0.i31 = phi i64 [ 0, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit.thread ], [ %.sroa.13.0.i, %_ZN12_GLOBAL__N_115getModifierNameENS_12ModifierTypeE.exit ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull %.sroa.0.0.i32, i64 noundef %.sroa.13.0.i31) #27 ; 0 uses
  %i.q = load i32, ptr %i.g, align 4, !tbaa !276
  %i.r = and i32 %i.q, -2
  %switch = icmp eq i32 %i.r, 2
  br i1 %switch, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp eq i64 %i.u, 4611686018427387903
  br i1 %i.v, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17: ; preds = %bb.o
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull @.str.106, i64 noundef 1) #27 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val11 = load ptr, ptr %i.x, align 8, !tbaa !85 ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val = load ptr, ptr %i.y, align 8, !tbaa !85  ; 2 uses
  %.not33 = icmp eq ptr %.val11, %.val
  br i1 %.not33, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.val15.pre = load ptr, ptr %i.x, align 8, !tbaa !85
  %.val16.pre = load ptr, ptr %i.y, align 8, !tbaa !85
  %i.z = icmp eq ptr %.val15.pre, %.val16.pre
  br i1 %i.z, label %._crit_edge.thread, label %bb.r

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.sroa.026.034 = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %.val11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17 ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.026.034, align 8, !tbaa !90
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_15DiagTextPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.aa)
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !298, !nonnull !104, !align !230 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !39 ; 4 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.lr.ph
  %i.ai = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ak = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.al = icmp ugt i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.ad, i64 noundef 0, ptr noundef null, i64 noundef 1) #27
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.q
  %i.am = phi ptr [ %.pre.i.i, %bb.q ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 124, ptr %i.an, align 1, !tbaa !50
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !39
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ae
  store i8 0, ptr %i.ap, align 1, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aq, %.val
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !298, !nonnull !104, !align !230 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvN4llvm9StringRefEEZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKNS0_6RecordERKSt3mapIS1_N12_GLOBAL__N_19GroupInfoESt4lessIS1_ESaISt4pairIKS1_SA_EEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_":bb.a
  %.not.i.i12.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i12.i.i.i, label %bb.i, label %_ZNKSt8functionIFvN4llvm9StringRefEEEclES1_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt25__throw_bad_function_callv() #28
  unreachable

_ZNKSt8functionIFvN4llvm9StringRefEEEclES1_.exit.i.i.i: ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !260
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %2) #27, !inline_history !737
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i.i, i64 16 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.bt, %i.aa
  br i1 %.not23.i.i.i, label %"_ZSt10__invoke_rIvRZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS2_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS7_ESaISt4pairIKS7_S9_EEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit", label %bb.h

"_ZSt10__invoke_rIvRZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS2_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS7_ESaISt4pairIKS7_S9_EEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit": ; preds = %_ZNKSt8functionIFvN4llvm9StringRefEEEclES1_.exit.i.i.i, %._crit_edge.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4llvm9StringRefEEZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKNS0_6RecordERKSt3mapIS1_N12_GLOBAL__N_19GroupInfoESt4lessIS1_ESaISt4pairIKS1_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS3_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS8_ESaISt4pairIKS8_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !155
  store ptr %.val, ptr %0, align 8, !tbaa !155
  br label %"_ZNSt14_Function_base13_Base_managerIZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS3_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS8_ESaISt4pairIKS8_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !301
  br label %"_ZNSt14_Function_base13_Base_managerIZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS3_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS8_ESaISt4pairIKS8_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val5, i64 24, i1 false), !tbaa.struct !742
  store ptr %i.a, ptr %0, align 8, !tbaa !155
  br label %"_ZNSt14_Function_base13_Base_managerIZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS3_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS8_ESaISt4pairIKS8_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !155 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS3_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS8_ESaISt4pairIKS8_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 24) #29
  br label %"_ZNSt14_Function_base13_Base_managerIZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS3_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS8_ESaISt4pairIKS8_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4docs12_GLOBAL__N_120getDefaultSeveritiesB5cxx11EPKN4llvm6RecordERKSt3mapINS3_9StringRefEN12_GLOBAL__N_19GroupInfoESt4lessIS8_ESaISt4pairIKS8_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !209 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !209 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !743

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !178
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !40
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #27 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !50
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !744

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.(anonymous namespace)::DiagTextVisitor<(anonymous namespace)::DiagTextDocPrinter>::SubstitutionContext", align 8 ; 7 uses
  %6 = alloca %"struct.(anonymous namespace)::PlaceholderPiece", align 8 ; 7 uses
  %7 = alloca %"struct.(anonymous namespace)::PlaceholderPiece", align 8 ; 7 uses
  %8 = alloca %"struct.(anonymous namespace)::MultiPiece", align 8 ; 10 uses
  %9 = alloca %"struct.(anonymous namespace)::SelectPiece", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::vector.373", align 8  ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::vector.234", align 8  ; 13 uses
  %19 = alloca %"struct.(anonymous namespace)::DiagTextDocPrinter", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr137 = phi ptr [ %1, %bb.a ], [ %i.ab, %bb.f ] ; 22 uses
  %i.a = getelementptr i8, ptr %.tr137, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !264
  switch i32 %.val, label %_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.ae
    i32 2, label %bb.au
    i32 3, label %bb.az
    i32 4, label %bb.ba
    i32 5, label %bb.bb
    i32 6, label %_ZNSt6vectorIPN12_GLOBAL__N_15PieceESaIS2_EE9push_backERKS2_.exit94
    i32 7, label %bb.bd
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr137, i64 16
  %.val39.i = load ptr, ptr %i.b, align 8, !tbaa !85 ; 3 uses
  %i.c = getelementptr i8, ptr %.tr137, i64 24
  %.val40.i = load ptr, ptr %i.c, align 8, !tbaa !85 ; 2 uses
  %i.d = icmp eq ptr %.val39.i, %.val40.i
  br i1 %i.d, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !304, !nonnull !104, !align !230 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.g, ptr %15, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !39
  store i8 0, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !270  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !271
  %.not.i.i55 = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i55, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !109
  %i.n = load ptr, ptr %15, align 8, !tbaa !40    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.g, align 8
  store i8 %i.p, ptr %i.m, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.c
  store ptr %i.n, ptr %i.j, align 8, !tbaa !40
  %i.q = load i64, ptr %i.g, align 8, !tbaa !50
  store i64 %i.q, ptr %i.m, align 8, !tbaa !50
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !39
  store i64 0, ptr %i.h, align 8, !tbaa !39
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !270
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.i, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %._crit_edge.i.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %.pre205.a = load ptr, ptr %15, align 8, !tbaa !40 ; 2 uses
  %i.u = icmp eq ptr %.pre205.a, %i.g
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.v = load i64, ptr %i.g, align 8, !tbaa !50
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %.pre205.a, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.e:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %.val40.i to i64
  %i.y = ptrtoint ptr %.val39.i to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp eq i64 %i.z, 8
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %.val39.i, align 8, !tbaa !90
  br label %tailrecurse

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_ZNK12_GLOBAL__N_118DiagTextDocPrinter11gatherNodesEPNS_5PieceERKSt8optionalISt6vectorIiSaIiEEERS4_ISt4pairIS2_S7_ESaISB_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.tr137, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %16), !inline_history !745
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ad, ptr %17, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !39
  store i8 0, ptr %i.ad, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !304, !nonnull !104, !align !230 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !270
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !269
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = ashr exact i64 %i.am, 5                 ; 3 uses
  %.val43.i = load ptr, ptr %16, align 8, !tbaa !779 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %.val42.i = load ptr, ptr %i.ao, align 8, !tbaa !779 ; 2 uses
  %.not164 = icmp eq ptr %.val43.i, %.val42.i
  br i1 %.not164, label %._crit_edge172, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.h

.preheader:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.pre202.a = load ptr, ptr %i.af, align 8, !tbaa !304 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre202.a, i64 8
  %.pre203.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !270
  %.pre204 = load ptr, ptr %.pre202.a, align 8, !tbaa !269 ; 2 uses
  %.pre206 = ptrtoint ptr %.pre203.a to i64
  %.pre207.a = ptrtoint ptr %.pre204 to i64
  %.pre209 = sub i64 %.pre206, %.pre207.a
  %i.bf = icmp eq i64 %i.am, %.pre209
  br i1 %i.bf, label %._crit_edge172, label %.lr.ph171

bb.h:                                             ; preds = %.lr.ph168, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.0.i166 = phi i1 [ true, %.lr.ph168 ], [ %.1.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.sroa.0132.0165 = phi ptr [ %.val43.i, %.lr.ph168 ], [ %i.ib, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.bg = load ptr, ptr %0, align 8, !tbaa !306, !nonnull !104, !align !230
  store ptr %i.bg, ptr %19, align 8, !tbaa !94
  store i8 0, ptr %i.ap, align 8, !tbaa !101
  store ptr %18, ptr %i.aq, align 8, !tbaa !267
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0132.0165, i64 8
  call void @_ZNSt22_Optional_payload_baseISt6vectorIiSaIiEEE14_M_copy_assignERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
  %i.bi = load ptr, ptr %.sroa.0132.0165, align 8, !tbaa !308
  call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef %i.bi), !inline_history !745
  %i.bj = load ptr, ptr %18, align 8, !tbaa !208  ; 3 uses
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !208 ; 3 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 5                 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 1                   ; 2 uses
  %i.br = select i1 %i.bq, i1 true, i1 %.0.i166   ; 3 uses
  %i.bs = select i1 %i.br, ptr @.str.109, ptr @.str.1 ; 3 uses
  %i.bt = add nsw i64 %i.bp, %i.an                ; 2 uses
  %i.bu = load ptr, ptr %i.af, align 8, !tbaa !304, !nonnull !104, !align !230 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !270 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE5VisitEPNS_5PieceE:bb.a
  %i.qr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  store ptr %i.qr, ptr %10, align 8, !tbaa !109, !alias.scope !787
  %i.qs = load ptr, ptr %i.qq, align 8, !tbaa !40 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 16 ; 5 uses
  %i.qu = icmp eq ptr %i.qs, %i.qt
  br i1 %i.qu, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !39 ; 3 uses
  %i.qx = icmp ult i64 %i.qw, 16
  call void @llvm.assume(i1 %i.qx)
  %i.qy = add nuw nsw i64 %i.qw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qr, ptr noundef nonnull align 8 dereferenceable(1) %i.qt, i64 %i.qy, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.qs, ptr %10, align 8, !tbaa !40, !alias.scope !787
  %i.qz = load i64, ptr %i.qt, align 8, !tbaa !50
  store i64 %i.qz, ptr %i.qr, align 8, !tbaa !50, !alias.scope !787
  %.phi.trans.insert.i3.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %.pre.i4.i = load i64, ptr %.phi.trans.insert.i3.i, align 8, !tbaa !39
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i, %bb.aw
  %i.ra = phi i64 [ %i.qw, %bb.aw ], [ %.pre.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i ] ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.ra, ptr %i.rc, align 8, !tbaa !39, !alias.scope !787
  store ptr %i.qt, ptr %i.qq, align 8, !tbaa !40
  store i64 0, ptr %i.rb, align 8, !tbaa !39
  store i8 0, ptr %i.qt, align 8, !tbaa !50
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 3 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !270 ; 6 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !271
  %.not.i.i.i10 = icmp eq ptr %i.re, %i.rg
  br i1 %.not.i.i.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i15, label %bb.ax

bb.ax:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 16 ; 3 uses
  store ptr %i.rh, ptr %i.re, align 8, !tbaa !109
  %i.ri = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.qr
  br i1 %i.rj, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11

bb.ay:                                            ; preds = %bb.ax
  %i.rk = icmp ult i64 %i.ra, 16
  call void @llvm.assume(i1 %i.rk)
  %i.rl = add nuw nsw i64 %i.ra, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rh, ptr noundef nonnull align 8 dereferenceable(1) %i.qr, i64 %i.rl, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11: ; preds = %bb.ax
  store ptr %i.ri, ptr %i.re, align 8, !tbaa !40
  %i.rm = load i64, ptr %i.qr, align 8, !tbaa !50
  store i64 %i.rm, ptr %i.rh, align 8, !tbaa !50
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i12: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11, %bb.ay
  %i.rn = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i64 %i.ra, ptr %i.rn, align 8, !tbaa !39
  store ptr %i.qr, ptr %10, align 8, !tbaa !40
  store i64 0, ptr %i.rc, align 8, !tbaa !39
  store i8 0, ptr %i.qr, align 8, !tbaa !50
  %i.ro = load ptr, ptr %i.rd, align 8, !tbaa !270
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  store ptr %i.rp, ptr %i.rd, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i15: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ps, ptr %i.re, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %.pre.i16 = load ptr, ptr %10, align 8, !tbaa !40 ; 2 uses
  %i.rq = icmp eq ptr %.pre.i16, %i.qr
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i15
  %i.rr = load i64, ptr %i.qr, align 8, !tbaa !50
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %.pre.i16, i64 noundef %i.rs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i12, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  %i.rt = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.qe
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14
  %i.rv = load i64, ptr %i.qe, align 8, !tbaa !50
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  %i.rx = load ptr, ptr %12, align 8, !tbaa !40   ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.pt
  br i1 %i.ry, label %_ZN12_GLOBAL__N_118DiagTextDocPrinter16VisitPlaceholderEPNS_16PlaceholderPieceE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %i.rz = load i64, ptr %i.pt, align 8, !tbaa !50
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #29
  br label %_ZN12_GLOBAL__N_118DiagTextDocPrinter16VisitPlaceholderEPNS_16PlaceholderPieceE.exit

_ZN12_GLOBAL__N_118DiagTextDocPrinter16VisitPlaceholderEPNS_16PlaceholderPieceE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.az:                                            ; preds = %tailrecurse
  tail call fastcc void @_ZN12_GLOBAL__N_118DiagTextDocPrinter11VisitSelectEPNS_11SelectPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.tr137)
  br label %_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.ba:                                            ; preds = %tailrecurse
  tail call fastcc void @_ZN12_GLOBAL__N_118DiagTextDocPrinter11VisitSelectEPNS_11SelectPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.tr137), !inline_history !771
  br label %_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.bb:                                            ; preds = %tailrecurse
  tail call fastcc void @_ZN12_GLOBAL__N_118DiagTextDocPrinter11VisitSelectEPNS_11SelectPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.tr137), !inline_history !772
  br label %_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit

_ZNSt6vectorIPN12_GLOBAL__N_15PieceESaIS2_EE9push_backERKS2_.exit94: ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.sb = getelementptr inbounds nuw i8, ptr %.tr137, i64 48
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !157
  %i.sd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 2, ptr %i.sd, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_116PlaceholderPieceE, i64 16), ptr %6, align 8, !tbaa !92
  %i.se = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.se, align 4, !tbaa !282
  %i.sf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.sc, ptr %i.sf, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.sg = getelementptr inbounds nuw i8, ptr %.tr137, i64 52
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !157
  %i.si = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 2, ptr %i.si, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_116PlaceholderPieceE, i64 16), ptr %7, align 8, !tbaa !92
  %i.sj = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 1, ptr %i.sj, align 4, !tbaa !282
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.sh, ptr %i.sk, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.sl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.sl, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_110MultiPieceE, i64 16), ptr %8, align 8, !tbaa !92
  %i.sm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.sn, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %.tr137, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.sr = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 5 uses
  %i.ss = load ptr, ptr %i.so, align 8, !tbaa !90
  store ptr %i.ss, ptr %i.sr, align 8, !tbaa !90
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  store ptr %i.sr, ptr %i.sm, align 8, !tbaa !87
  store ptr %i.st, ptr %i.sp, align 8, !tbaa !265
  %i.su = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store ptr %6, ptr %i.sv, align 8, !tbaa !90
  %i.sw = load i64, ptr %i.sr, align 8
  store i64 %i.sw, ptr %i.su, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef 8) #29
  %i.sx = getelementptr inbounds nuw i8, ptr %.tr137, i64 24
  %i.sy = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 5 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.ta = load ptr, ptr %i.sx, align 8, !tbaa !90
  store ptr %i.ta, ptr %i.sz, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sy, ptr noundef nonnull align 8 dereferenceable(16) %i.su, i64 16, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef 16) #29
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  store ptr %7, ptr %i.tb, align 8, !tbaa !90
  %i.tc = getelementptr inbounds nuw i8, ptr %.tr137, i64 32
  %i.td = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 32
  %i.tf = load ptr, ptr %i.tc, align 8, !tbaa !90
  store ptr %i.tf, ptr %i.te, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.td, ptr noundef nonnull align 8 dereferenceable(32) %i.sy, i64 32, i1 false)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 40
  call void @_ZdlPvm(ptr noundef nonnull %i.sy, i64 noundef 32) #29
  store ptr %i.td, ptr %i.sm, align 8, !tbaa !87
  store ptr %i.tg, ptr %i.sp, align 8, !tbaa !265
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 64
  store ptr %i.th, ptr %i.sq, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ti = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.ti, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_111SelectPieceE, i64 16), ptr %9, align 8, !tbaa !92
  %i.tj = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.tj, align 4, !tbaa !276
  %i.tk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 0, ptr %i.tl, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.tn = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.to = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store ptr %8, ptr %i.to, align 8, !tbaa !90
  %i.tp = getelementptr inbounds nuw i8, ptr %.tr137, i64 40
  %i.tq = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 6 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tp, align 8, !tbaa !90
  store ptr %i.ts, ptr %i.tr, align 8, !tbaa !90
  %i.tt = load i64, ptr %i.to, align 8
  store i64 %i.tt, ptr %i.tq, align 8
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef 8) #29
  store ptr %i.tq, ptr %i.tk, align 8, !tbaa !87
  store ptr %i.tu, ptr %i.tm, align 8, !tbaa !265
  %24 = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store ptr %24, ptr %i.tn, align 8, !tbaa !88
  call fastcc void @_ZN12_GLOBAL__N_118DiagTextDocPrinter11VisitSelectEPNS_11SelectPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %9), !inline_history !773
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef 16) #29, !inline_history !774
  %.val.i57.pre = load ptr, ptr %i.sm, align 8, !tbaa !87 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_110MultiPieceE, i64 16), ptr %8, align 8, !tbaa !92
  %.not.i.i.i.i58 = icmp eq ptr %.val.i57.pre, null
  br i1 %.not.i.i.i.i58, label %_ZN12_GLOBAL__N_110MultiPieceD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_15PieceESaIS2_EE9push_backERKS2_.exit94
  %.val1.i59 = load ptr, ptr %i.sq, align 8, !tbaa !88
  %i.tv = ptrtoint ptr %.val1.i59 to i64
  %i.tw = ptrtoint ptr %.val.i57.pre to i64
  %i.tx = sub i64 %i.tv, %i.tw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i57.pre, i64 noundef %i.tx) #29, !inline_history !775
  br label %_ZN12_GLOBAL__N_110MultiPieceD2Ev.exit

_ZN12_GLOBAL__N_110MultiPieceD2Ev.exit:           ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_15PieceESaIS2_EE9push_backERKS2_.exit94, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit

bb.bd:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8, !tbaa !789
  %i.ty = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ua = load ptr, ptr %0, align 8, !tbaa !306, !nonnull !104, !align !230 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.tr137, i64 16 ; 2 uses
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !40 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.tr137, i64 24
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !39 ; 2 uses
  %i.ug = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.ud, i64 %i.uf) #27
  %i.uh = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.ub, ptr %i.ud, i64 %i.uf, i32 noundef %i.ug) #27 ; 2 uses
  %i.ui = icmp eq i32 %i.uh, -1
  %.val.i.i.i.i = load ptr, ptr %i.ub, align 8, !tbaa !78
  br i1 %i.ui, label %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread.i.i, label %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i

_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i: ; preds = %bb.bd
  %i.uj = sext i32 %i.uh to i64                   ; 2 uses
  %.phi.trans.insert.i.i114 = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %.val3.pre.i.i = load i32, ptr %.phi.trans.insert.i.i114, align 8, !tbaa !79
  %.pre.i.i115 = zext i32 %.val3.pre.i.i to i64
  %i.uk = icmp eq i64 %i.uj, %.pre.i.i115
  br i1 %i.uk, label %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread.i.i, label %bb.be

_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread.i.i: ; preds = %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.116, ptr noundef nonnull align 8 dereferenceable(32) %i.uc)
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 4, ptr %i.ul, align 8, !tbaa !51
  %i.um = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.um, align 1, !tbaa !49
  store ptr %3, ptr %2, align 8, !tbaa !50
  call void @_ZN4llvm15PrintFatalErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %2) #28
  unreachable

bb.be:                                            ; preds = %_ZNK4llvm9StringMapIN12_GLOBAL__N_121DiagnosticTextBuilder8DiagTextENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.un = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i, i64 %i.uj
  %.val6.val.i.i = load ptr, ptr %i.un, align 8, !tbaa !81
  %i.uo = getelementptr inbounds nuw i8, ptr %.val6.val.i.i, i64 40
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !290 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.up, ptr %i.uq, align 8, !tbaa !791
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ut = load i8, ptr %i.us, align 8, !range !103 ; 2 uses
  %i.uu = trunc nuw i8 %i.ut to i1
  br i1 %i.uu, label %bb.bf, label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117

bb.bf:                                            ; preds = %bb.be
  %25 = load <2 x ptr>, ptr %i.ur, align 8, !tbaa !156 ; 2 uses
  store <2 x ptr> %25, ptr %i.ty, align 8, !tbaa !156
  %i.uv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !108 ; 2 uses
  store ptr %i.ux, ptr %i.uv, align 8, !tbaa !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ur, i8 0, i64 24, i1 false)
  br label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117

_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117: ; preds = %bb.be, %bb.bf
  %i.uy = phi ptr [ %i.ux, %bb.bf ], [ undef, %bb.be ] ; 2 uses
  %26 = phi <2 x ptr> [ %25, %bb.bf ], [ undef, %bb.be ] ; 2 uses
  %27 = phi i8 [ 1, %bb.bf ], [ 0, %bb.be ]       ; 3 uses
  store i8 %27, ptr %i.tz, align 8, !tbaa !101
  %i.uz = getelementptr i8, ptr %.tr137, i64 48
  %.val.i118 = load ptr, ptr %i.uz, align 8, !tbaa !156 ; 2 uses
  %i.va = getelementptr i8, ptr %.tr137, i64 56
  %.val8.i119 = load ptr, ptr %i.va, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i = icmp eq ptr %.val.i118, %.val8.i119
  br i1 %.not5.i.i, label %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i, label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.1.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ]
  %.sroa.13.0.i = phi ptr [ %.sroa.13.1.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ]
  %i.vb = phi ptr [ %i.vu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ] ; 5 uses
  %i.vc = phi ptr [ %i.vv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ] ; 3 uses
  %i.vd = phi ptr [ %.sroa.9.0.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ] ; 3 uses
  %.sroa.02.06.i.i = phi ptr [ %i.vw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ], [ %.val.i118, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ] ; 2 uses
  %i.ve = load i32, ptr %.sroa.02.06.i.i, align 4, !tbaa !157, !noalias !792
  %.val.i.i121 = load ptr, ptr %0, align 8, !noalias !792
  %i.vf = call fastcc noundef i32 @_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE8mapIndexEiRKSt8optionalISt6vectorIiSaIiEEE(ptr %.val.i.i121, i32 noundef %i.ve, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ty), !noalias !792 ; 2 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.vd, %i.vc
  br i1 %.not.i.i.i.i122, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i120
  store i32 %i.vf, ptr %i.vd, align 4, !tbaa !157, !noalias !792
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i

bb.bh:                                            ; preds = %.lr.ph.i.i120
  %i.vg = ptrtoint ptr %i.vc to i64
  %i.vh = ptrtoint ptr %i.vb to i64
  %i.vi = sub i64 %i.vg, %i.vh                    ; 6 uses
  %i.vj = icmp eq i64 %i.vi, 9223372036854775804
  br i1 %i.vj, label %bb.bi, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #28, !noalias !792
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bh
  %i.vk = ashr exact i64 %i.vi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.vk, i64 1)
  %i.vl = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.vk ; 2 uses
  %i.vm = icmp ult i64 %i.vl, %i.vk
  %i.vn = tail call i64 @llvm.umin.i64(i64 %i.vl, i64 2305843009213693951)
  %i.vo = select i1 %i.vm, i64 2305843009213693951, i64 %i.vn ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.vo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.vp = shl nuw nsw i64 %i.vo, 2
  %i.vq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vp) #30, !noalias !792 ; 5 uses
  %i.vr = getelementptr inbounds i8, ptr %i.vq, i64 %i.vi ; 2 uses
  store i32 %i.vf, ptr %i.vr, align 4, !tbaa !157, !noalias !792
  %i.vs = icmp sgt i64 %i.vi, 0
  br i1 %i.vs, label %bb.bj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

bb.bj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vq, ptr align 4 %i.vb, i64 %i.vi, i1 false), !noalias !792
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.bj, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.vb, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vb, i64 noundef %i.vi) #29, !noalias !792
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bk, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.vo ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, %bb.bg
  %.sroa.0.1.i = phi ptr [ %i.vq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0.0.i, %bb.bg ] ; 2 uses
  %.pn.i = phi ptr [ %i.vr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %i.vd, %bb.bg ]
  %.sroa.13.1.i = phi ptr [ %i.vt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.13.0.i, %bb.bg ] ; 2 uses
  %i.vu = phi ptr [ %i.vq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %i.vb, %bb.bg ]
  %i.vv = phi ptr [ %i.vt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %i.vc, %bb.bg ]
  %.sroa.9.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.vw, %.val8.i119
  br i1 %.not.i.i123, label %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit, label %.lr.ph.i.i120

_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i
  %.pre = load i8, ptr %i.us, align 8, !tbaa !101, !range !103
  br label %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i

_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i: ; preds = %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117
  %i.vx = phi i8 [ %i.ut, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ], [ %.pre, %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit ]
  %.sroa.0.2.i = phi ptr [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ], [ %.sroa.0.1.i, %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit ] ; 2 uses
  %.sroa.9.1.i = phi ptr [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ], [ %.sroa.9.0.i, %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ null, %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit.i117 ], [ %.sroa.13.1.i, %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i.loopexit ] ; 2 uses
  %i.vy = trunc nuw i8 %i.vx to i1
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.vy, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i
  %i.wa = load ptr, ptr %i.ur, align 8, !tbaa !107 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !108
  store ptr %.sroa.0.2.i, ptr %i.ur, align 8, !tbaa !107
  store ptr %.sroa.9.1.i, ptr %i.vz, align 8, !tbaa !280
  store ptr %.sroa.13.2.i, ptr %i.wb, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.wa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = ptrtoint ptr %i.wa to i64
  %i.wf = sub i64 %i.wd, %i.we
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wa, i64 noundef %i.wf) #29
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit

bb.bn:                                            ; preds = %_ZNK12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE23getSubstitutionMappingsEPNS_17SubstitutionPieceERKSt8optionalISt6vectorIiSaIiEEE.exit.i
  store ptr %.sroa.0.2.i, ptr %i.ur, align 8, !tbaa !107
  store ptr %.sroa.9.1.i, ptr %i.vz, align 8, !tbaa !280
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.13.2.i, ptr %i.wg, align 8, !tbaa !108
  store i8 1, ptr %i.us, align 8, !tbaa !101
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit

_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit: ; preds = %bb.bl, %bb.bm, %bb.bn
  tail call fastcc void @_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE5VisitEPNS_5PieceE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.up), !inline_history !778
  %i.wh = load i8, ptr %i.us, align 8, !tbaa !101, !range !103, !noundef !104 ; 2 uses
  %i.wi = trunc nuw i8 %i.wh to i1
  %i.wj = and i8 %i.wh, %27
  %or.cond.i.i.i.i.i.i.not = icmp eq i8 %i.wj, 0
  br i1 %or.cond.i.i.i.i.i.i.not, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit
  %i.wk = load ptr, ptr %i.ur, align 8, !tbaa !107 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !108
  store <2 x ptr> %26, ptr %i.ur, align 8, !tbaa !156
  store ptr %i.uy, ptr %i.wl, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.wn = ptrtoint ptr %i.wm to i64
  %i.wo = ptrtoint ptr %i.wk to i64
  %i.wp = sub i64 %i.wn, %i.wo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wk, i64 noundef %i.wp) #29
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextD2Ev.exit

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextC2ERS2_PNS_17SubstitutionPieceE.exit
  %i.wq = trunc nuw i8 %27 to i1
  br i1 %i.wq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store <2 x ptr> %26, ptr %i.ur, align 8, !tbaa !156
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.uy, ptr %i.wr, align 8, !tbaa !108
  store i8 1, ptr %i.us, align 8, !tbaa !101
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextD2Ev.exit

bb.bs:                                            ; preds = %bb.bq
  store i8 0, ptr %i.us, align 8, !tbaa !101
  br i1 %i.wi, label %bb.bt, label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextD2Ev.exit

bb.bt:                                            ; preds = %bb.bs
  %i.ws = load ptr, ptr %i.ur, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i.i7.i.i.i.i.i.i = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !108
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.ws to i64
  %i.wx = sub i64 %i.wv, %i.ww
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ws, i64 noundef %i.wx) #29
  br label %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextD2Ev.exit

_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextD2Ev.exit: ; preds = %bb.bo, %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit

_ZN12_GLOBAL__N_118DiagTextDocPrinter10VisitMultiEPNS_10MultiPieceE.exit: ; preds = %tailrecurse, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_15PieceESt8optionalIS_IiSaIiEEEESaIS8_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZN12_GLOBAL__N_115DiagTextVisitorINS_18DiagTextDocPrinterEE19SubstitutionContextD2Ev.exit, %_ZN12_GLOBAL__N_110MultiPieceD2Ev.exit, %bb.bb, %bb.ba, %bb.az, %_ZN12_GLOBAL__N_118DiagTextDocPrinter16VisitPlaceholderEPNS_16PlaceholderPieceE.exit, %_ZN12_GLOBAL__N_118DiagTextDocPrinter9VisitTextEPNS_9TextPieceE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118DiagTextDocPrinter11VisitSelectEPNS_11SelectPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
_ZNSt6vectorImSaImEE9push_backEOm.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304, !nonnull !104, !align !230 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !269
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 4 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !304, !nonnull !104, !align !230 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !271
  %.not.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !39
  store i8 0, ptr %i.q, align 8, !tbaa !50
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.m, align 8, !tbaa !270
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.b:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.n)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8 = load ptr, ptr %i.u, align 8, !tbaa !85 ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.v, align 8, !tbaa !85  ; 2 uses
  %.not57 = icmp eq ptr %.val8, %.val
  br i1 %.not57, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit26, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.sroa.040.0.lcssa = phi ptr [ %i.j, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %.sroa.040.2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit26 ] ; 5 uses
  %.sroa.10.0.lcssa = phi ptr [ %i.k, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %.sroa.10.2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit26 ] ; 3 uses
  %.sroa.18.0.lcssa = phi ptr [ %i.k, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %.sroa.18.2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit26 ]
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !304, !nonnull !104, !align !230
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208  ; 2 uses
  %i.y = load i64, ptr %.sroa.040.0.lcssa, align 8, !tbaa !113
  %.idx = shl nsw i64 %i.y, 5                     ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %.idx ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.10.0.lcssa, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !113
  %.idx52 = shl nsw i64 %i.ab, 5
  %i.ac = add nsw i64 %.idx52, 32                 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %i.ac ; 3 uses
  %i.ae = icmp eq i64 %.idx, %i.ac
  br i1 %i.ae, label %_ZN12_GLOBAL__N_113makeTableRowsIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEEvT_SE_.exit, label %.lr.ph.i.i

.lr.ph21.i.i:                                     ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %.sroa.07.017.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.z, %._crit_edge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.07.017.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %.018.i.i, i64 %i.ai) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.017.i.i, i64 32 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.aj, %i.ad
  br i1 %.not.i.i14, label %.lr.ph21.i.i, label %.lr.ph.i.i, !llvm.loop !17

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph21.i.i
  %.sroa.02.020.i.i = phi ptr [ %i.z, %.lr.ph21.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.020.i.i, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !39
  %i.am = sub i64 %.sroa.speculated.i.i, %i.al
  store ptr %i.af, ptr %2, align 8, !tbaa !109
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.am, i8 noundef signext 32) #27
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !39
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.an
  br i1 %i.aq, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i: ; preds = %bb.c
  %i.ar = load ptr, ptr %2, align 8, !tbaa !40
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02.020.i.i, ptr noundef %i.ar, i64 noundef %i.an) #27 ; 0 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.af
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i
  %i.av = load i64, ptr %i.af, align 8, !tbaa !50
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.020.i.i, i64 32 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ax, %i.ad
  br i1 %.not15.i.i, label %.lr.ph.i, label %bb.c, !llvm.loop !18

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %.lr.ph.i
  %.sroa.0.015.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.bc = load ptr, ptr %.sroa.0.015.i, align 8, !tbaa !40, !noalias !803
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 8 ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !39, !noalias !803 ; 3 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !109, !alias.scope !804
  store i64 0, ptr %i.az, align 8, !tbaa !39, !alias.scope !804
  store i8 0, ptr %i.ay, align 8, !tbaa !50, !alias.scope !804
  %i.bf = add i64 %i.be, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bf) #27
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !39, !alias.scope !804
  %i.bh = icmp eq i64 %i.bg, 4611686018427387903
  br i1 %i.bh, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %bb.e
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.109, i64 noundef 1) #27 ; 0 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !39, !alias.scope !804
  %i.bk = sub i64 4611686018427387903, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.be
  br i1 %i.bl, label %bb.g, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bc, i64 noundef %i.be) #27 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.bn = load i64, ptr %i.az, align 8, !tbaa !39, !noalias !805
  %i.bo = icmp eq i64 %i.bn, 4611686018427387903
  br i1 %i.bo, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #28, !noalias !805
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
end_hunk_3
