Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReader?download=true
inline.NumInlined: 33820
inline.NumDeleted: 13736
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN5clang9ASTReader28readUnhashedControlBlockImplEPNS_13serialization10ModuleFileEN4llvm9StringRefES5_jbPNS_17ASTReaderListenerEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  br label %bb.bz

bb.bz:                                            ; preds = %bb.s, %bb.q, %bb.k, %_ZN5clang16ASTFileSignature6createIPKcEES0_T_S4_.exit, %bb.l, %_ZN5clang16ASTFileSignature6createIPKcEES0_T_S4_.exit70, %bb.n, %bb.t, %bb.w, %bb.v, %_ZN4llvm9BitVectorD2Ev.exit, %bb.x, %_ZN4llvm9BitVectorD2Ev.exit91, %bb.ay, %bb.p, %bb.r, %bb.j
  %.452 = phi i32 [ %.048, %bb.j ], [ %.048, %bb.k ], [ %.048, %_ZN5clang16ASTFileSignature6createIPKcEES0_T_S4_.exit ], [ %.048, %bb.l ], [ %.048, %_ZN5clang16ASTFileSignature6createIPKcEES0_T_S4_.exit70 ], [ %.048, %bb.n ], [ %.048, %bb.ay ], [ %spec.select63, %bb.s ], [ %.048, %bb.v ], [ %.048, %bb.w ], [ %.048, %bb.t ], [ %.048, %_ZN4llvm9BitVectorD2Ev.exit ], [ %.048, %bb.x ], [ %.048, %_ZN4llvm9BitVectorD2Ev.exit91 ], [ %.048, %bb.p ], [ %spec.select, %bb.q ], [ %.048, %bb.r ]
  %.2 = phi i32 [ 1, %bb.j ], [ %.1, %bb.k ], [ %.1, %_ZN5clang16ASTFileSignature6createIPKcEES0_T_S4_.exit ], [ %.1, %bb.l ], [ %.1, %_ZN5clang16ASTFileSignature6createIPKcEES0_T_S4_.exit70 ], [ %.1, %bb.n ], [ %.1, %bb.ay ], [ %.1, %bb.s ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.t ], [ %.1, %_ZN4llvm9BitVectorD2Ev.exit ], [ %.1, %bb.x ], [ %.1, %_ZN4llvm9BitVectorD2Ev.exit91 ], [ %.1, %bb.p ], [ %.1, %bb.q ], [ %.1, %bb.r ]
  %i.ki = load i8, ptr %i.z, align 8
  %i.kj = trunc i8 %i.ki to i1
  br i1 %i.kj, label %bb.ca, label %_ZN4llvm8ExpectedIjED2Ev.exit

bb.ca:                                            ; preds = %bb.bz
  %i.kk = load ptr, ptr %20, align 8, !tbaa !1695 ; 3 uses
  %.not.i.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedIjED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.ca
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !159
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kk) #36, !inline_history !9
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %bb.bz, %bb.ca, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.cb

bb.cb:                                            ; preds = %bb.i, %_ZN4llvm8ExpectedIjED2Ev.exit, %bb.h, %bb.h, %_ZN4llvm5ErrorD2Ev.exit68
  %.6 = phi i32 [ %.048, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %.452, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ %.048, %bb.i ], [ %.048, %bb.h ], [ %.048, %bb.h ]
  %.347 = phi i1 [ false, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %i.bh, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.h ]
  %.4 = phi i32 [ 1, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %.2, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ %.048, %bb.i ], [ 1, %bb.h ], [ 1, %bb.h ] ; 2 uses
  %i.ko = load i8, ptr %i.y, align 8
  %i.kp = trunc i8 %i.ko to i1
  br i1 %i.kp, label %bb.cc, label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit

bb.cc:                                            ; preds = %bb.cb
  %i.kq = load ptr, ptr %18, align 8, !tbaa !1695 ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i94, label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i95

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i95: ; preds = %bb.cc
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !159
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(8) %i.kq) #36, !inline_history !13
  br label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit

_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit: ; preds = %bb.cb, %bb.cc, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br i1 %.347, label %bb.f, label %bb.cd, !llvm.loop !4767

bb.cd:                                            ; preds = %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit
  %i.ku = load ptr, ptr %17, align 8, !tbaa !872  ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.v
  br i1 %i.kv, label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @free(ptr noundef %i.ku) #36
  br label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit

_ZN4llvm11SmallVectorImLj64EED2Ev.exit:           ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit64, %_ZN4llvm5ErrorD2Ev.exit65, %_ZN4llvm11SmallVectorImLj64EED2Ev.exit
  %.5 = phi i32 [ 1, %_ZN4llvm5ErrorD2Ev.exit64 ], [ %.4, %_ZN4llvm11SmallVectorImLj64EED2Ev.exit ], [ 1, %_ZN4llvm5ErrorD2Ev.exit65 ]
  call void @_ZN4llvm11SmallVectorINS_15BitstreamCursor5BlockELj8EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.e) #36
  %i.kw = load ptr, ptr %i.d, align 8, !tbaa !1815 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !1814 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kw, %i.ky
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cf, %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.lq, %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i ], [ %i.kw, %bb.cf ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1820 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 4 uses
  %i.lc = load atomic i64, ptr %i.lb acquire, align 8 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 4294967297
  %i.le = trunc i64 %i.lc to i32                  ; 2 uses
  br i1 %i.ld, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.lb, align 8, !tbaa !1825
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  store i32 0, ptr %i.lf, align 4, !tbaa !1826
  %i.lg = load ptr, ptr %i.la, align 8, !tbaa !159
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #36, !inline_history !21
  %i.lj = load ptr, ptr %i.la, align 8, !tbaa !159
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #36, !inline_history !21
  br label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.lm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !168
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.lm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ln = add nsw i32 %i.le, -1
  store i32 %i.ln, ptr %i.lb, align 8, !tbaa !952
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.lo = atomicrmw volatile add ptr %i.lb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.le, %bb.cj ], [ %i.lo, %bb.ck ]
  %i.lp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.lp, label %bb.cl, label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i, !prof !994

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #36
  br label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i: ; preds = %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ch, %.lr.ph.i.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lq, %i.ky
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8, !tbaa !1815
  br label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i, %bb.cf
  %i.lr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i ], [ %i.kw, %bb.cf ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm15BitstreamCursorD2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1817
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.lr to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lw) #37
  br label %_ZN4llvm15BitstreamCursorD2Ev.exit

_ZN4llvm15BitstreamCursorD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang9ASTReader22ParseDiagnosticOptionsERKN4llvm11SmallVectorImLj64EEENS1_9StringRefEbRNS_17ASTReaderListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.clang::DiagnosticOptions", align 8 ; 26 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.e, align 8, !tbaa !166
  store i8 0, ptr %i.d, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 0, ptr %i.h, align 8, !tbaa !166
  store i8 0, ptr %i.g, align 8, !tbaa !168
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 0, ptr %i.k, align 8, !tbaa !166
  store i8 0, ptr %i.j, align 8, !tbaa !168
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i8 0, i64 120, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.n = load i16, ptr %i.m, align 8
  store i64 1776, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 42949672966, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 214748364810, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, -8589934592                ; 2 uses
  %i.t = or disjoint i64 %i.s, 4294967312
  store i64 %i.t, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 8, ptr %i.u, align 8
  %i.v = and i16 %i.n, -1024                      ; 2 uses
  store i16 %i.v, ptr %i.m, align 8
  %i.w = load ptr, ptr %0, align 8, !tbaa !872    ; 34 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !167
  %i.y = and i64 %i.x, 1
  %8 = or disjoint i64 %i.y, 1024
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !167
  %i.ab = shl i64 %i.aa, 1
  %i.ac = and i64 %i.ab, 2
  %i.ad = or disjoint i64 %i.ac, %8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.ag = shl i64 %i.af, 2
  %i.ah = and i64 %i.ag, 4
  %i.ai = or disjoint i64 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !167
  %i.al = shl i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !167
  %i.ao = shl i64 %i.an, 4
  %9 = and i64 %i.ao, 16
  %.masked = and i64 %i.al, 8
  %i.ap = or disjoint i64 %.masked, %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !167
  %i.as = shl i64 %i.ar, 5
  %i.at = and i64 %i.as, 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !167
  %i.aw = shl i64 %i.av, 6
  %i.ax = and i64 %i.aw, 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !167
  %i.ba = shl i64 %i.az, 7
  %i.bb = and i64 %i.ba, 128
  %10 = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %11 = load i64, ptr %10, align 8, !tbaa !167
  %12 = shl i64 %11, 8
  %13 = and i64 %12, 256
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !167
  %i.be = shl i64 %i.bd, 9
  %.masked140.masked.masked = or disjoint i64 %i.ap, %9
  %.masked142.masked = or i64 %.masked140.masked.masked, %i.at
  %.masked145 = or i64 %.masked142.masked, %i.ax
  %.masked144 = or i64 %.masked145, %i.bb
  %14 = or i64 %.masked144, %13
  %i.bf = or i64 %14, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !167
  %i.bi = shl i64 %i.bh, 10
  %15 = and i64 %i.bi, 1024
  %i.bj = and i64 %i.bf, 1023
  %i.bk = or disjoint i64 %i.bj, %15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !167
  %i.bn = shl i64 %i.bm, 11
  %i.bo = and i64 %i.bn, 2048
  %i.bp = or disjoint i64 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !167
  %i.bs = shl i64 %i.br, 12
  %i.bt = and i64 %i.bs, 4096
  %i.bu = or disjoint i64 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !167
  %i.bx = shl i64 %i.bw, 13
  %i.by = and i64 %i.bx, 8192
  %i.bz = or disjoint i64 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !167
  %i.cc = shl i64 %i.cb, 14
  %i.cd = and i64 %i.cc, 16384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !167
  %i.cg = shl i64 %i.cf, 15
  %i.ch = and i64 %i.cg, 32768
  %16 = or disjoint i64 %i.bz, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !167
  %i.ck = shl i64 %i.cj, 16
  %i.cl = and i64 %i.ck, 196608
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !167
  %i.co = trunc i64 %i.cn to i16
  %i.cp = shl i16 %i.co, 1
  %i.cq = and i16 %i.cp, 6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !167
  %i.ct = trunc i64 %i.cs to i16
  %i.cu = shl i16 %i.ct, 3
  %i.cv = and i16 %i.cu, 24
  %i.cw = or disjoint i16 %i.cq, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !167
  %i.cz = shl i64 %i.cy, 18
  %i.da = and i64 %i.cz, 262144
  %i.db = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !167
  %i.dd = trunc i64 %i.dc to i16
  %i.de = shl i16 %i.dd, 5
  %i.df = and i16 %i.de, 32
  %i.dg = or disjoint i16 %i.cw, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !167
  %i.dj = shl i64 %i.di, 19
  %i.dk = and i64 %i.dj, 524288
  %i.dl = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !167
  %i.dn = trunc i64 %i.dm to i16
  %i.do = shl i16 %i.dn, 6
  %i.dp = and i16 %i.do, 960
  %i.dq = or disjoint i16 %i.dg, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !167
  %i.dt = shl i64 %i.ds, 20
  %i.du = and i64 %i.dt, 1048576
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !167
  %i.dx = shl i64 %i.dw, 21
  %i.dy = and i64 %i.dx, 2097152
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !167
  %i.eb = shl i64 %i.ea, 22
  %i.ec = and i64 %i.eb, 4194304
  %.masked149.masked.masked.masked.masked = or i64 %16, %i.ch
  %.masked151.masked.masked.masked = or i64 %.masked149.masked.masked.masked.masked, %i.cl
  %.masked153.masked.masked = or i64 %i.da, %.masked151.masked.masked.masked
  %.masked155.masked = or i64 %i.dk, %.masked153.masked.masked
  %.masked157 = or i64 %i.du, %.masked155.masked
  %i.ed = or i64 %.masked157, %i.dy
  %i.ee = or disjoint i64 %i.ed, %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !167
  %i.eh = shl i64 %i.eg, 32
  %i.ei = add nuw nsw i64 %i.ee, %i.eh
  store i64 %i.ei, ptr %5, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.ek = load <4 x i64>, ptr %i.ej, align 8, !tbaa !167 ; 2 uses
  %i.el = shufflevector <4 x i64> %i.ek, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.em = and <2 x i64> %i.el, splat (i64 4294967295)
  %i.en = shufflevector <4 x i64> %i.ek, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eo = shl <2 x i64> %i.en, splat (i64 32)
  %i.ep = or disjoint <2 x i64> %i.eo, %i.em
  store <2 x i64> %i.ep, ptr %i.o, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !167
  %i.es = and i64 %i.er, 4294967295
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !167
  %i.ev = shl i64 %i.eu, 32
  %i.ew = and i64 %i.ev, 4294967296
  %i.ex = or disjoint i64 %i.es, %i.ew
  %i.ey = or disjoint i64 %i.ex, %i.s
  store i64 %i.ey, ptr %i.q, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !167
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !167
  %i.fe = shl i64 %i.fd, 32
  %i.ff = or disjoint i64 %i.fe, %i.fb
  store i64 %i.ff, ptr %i.u, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !167
  %i.fi = trunc i64 %i.fh to i16
  %i.fj = and i16 %i.fi, 1
  %i.fk = or disjoint i16 %i.dq, %i.fj
  %i.fl = or disjoint i16 %i.fk, %i.v
  store i16 %i.fl, ptr %i.m, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !167
  %i.fo = trunc i64 %i.fn to i32                  ; 2 uses
  %.not110 = icmp eq i32 %i.fo, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 160
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.0109.lcssa = phi i32 [ 37, %bb.a ], [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ft = zext i32 %.0109.lcssa to i64
  %i.fu = load ptr, ptr %0, align 8, !tbaa !872
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !167
  %i.fx = trunc i64 %i.fw to i32                  ; 2 uses
  %.not48113 = icmp eq i32 %i.fx, 0
  br i1 %.not48113, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %._crit_edge
  %i.fy = add i32 %.0109.lcssa, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 208
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0112 = phi i32 [ %i.fo, %.lr.ph ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.0109111 = phi i32 [ 37, %.lr.ph ], [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !4781)
  %i.ge = add i32 %.0109111, 1                    ; 2 uses
  %i.gf = zext i32 %.0109111 to i64
  %i.gg = load ptr, ptr %0, align 8, !tbaa !872, !noalias !4781 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !167, !noalias !4781 ; 2 uses
  %i.gj = zext i32 %i.ge to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gj ; 3 uses
  %i.gl = and i64 %i.gi, 4294967295               ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.gl, 3              ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.i
  store ptr %i.fp, ptr %6, align 8, !tbaa !162, !alias.scope !4781
  store i64 0, ptr %i.fq, align 8, !tbaa !166, !alias.scope !4781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36, !noalias !4781
  store i64 %i.gl, ptr %i.b, align 8, !tbaa !167, !noalias !4781
  %i.gn = icmp samesign ugt i64 %i.gl, 15
  br i1 %i.gn, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.b
  %i.go = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #36 ; 2 uses
  store ptr %i.go, ptr %6, align 8, !tbaa !165, !alias.scope !4781
  %i.gp = load i64, ptr %i.b, align 8, !tbaa !167, !noalias !4781
  store i64 %i.gp, ptr %i.fp, align 8, !tbaa !168, !alias.scope !4781
  br label %.lr.ph.i.i.i.i.preheader

._crit_edge.i.i.i:                                ; preds = %bb.b
  %.not7.i.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not7.i.i.i.i, label %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %.09.i.i.i.i.ph = phi ptr [ %i.fp, %._crit_edge.i.i.i ], [ %i.go, %._crit_edge.i.i.thread.i ] ; 2 uses
  %i.gq = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.gr = lshr exact i64 %i.gq, 3
  %i.gs = add nuw nsw i64 %i.gr, 1
  %xtraiter = and i64 %i.gs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.prol ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.prol ], [ %i.gk, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.gt = load i64, ptr %.068.i.i.i.i.prol, align 8, !tbaa !167
  %i.gu = trunc i64 %i.gt to i8
  store i8 %i.gu, ptr %.09.i.i.i.i.prol, align 1, !tbaa !168
  %i.gv = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i.prol, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4775

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.09.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.gw, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.preheader ], [ %i.gv, %.lr.ph.i.i.i.i.prol ]
  %i.gx = icmp ult i64 %i.gq, 56
  br i1 %i.gx, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi ptr [ %i.ic, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.gy = load i64, ptr %.068.i.i.i.i, align 8, !tbaa !167
  %i.gz = trunc i64 %i.gy to i8
  store i8 %i.gz, ptr %.09.i.i.i.i, align 1, !tbaa !168
  %i.ha = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !167
  %i.hd = trunc i64 %i.hc to i8
  store i8 %i.hd, ptr %i.hb, align 1, !tbaa !168
  %i.he = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 2
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !167
  %i.hh = trunc i64 %i.hg to i8
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !168
  %i.hi = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 3
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !167
  %i.hl = trunc i64 %i.hk to i8
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !168
  %i.hm = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !167
  %i.hp = trunc i64 %i.ho to i8
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !168
  %i.hq = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 40
  %i.hr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 5
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !167
  %i.ht = trunc i64 %i.hs to i8
  store i8 %i.ht, ptr %i.hr, align 1, !tbaa !168
  %i.hu = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 48
  %i.hv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 6
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !167
  %i.hx = trunc i64 %i.hw to i8
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !168
  %i.hy = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 56
  %i.hz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 7
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !167
  %i.ib = trunc i64 %i.ia to i8
  store i8 %i.ib, ptr %i.hz, align 1, !tbaa !168
  %i.ic = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 64 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i.7 = icmp eq ptr %i.ic, %i.gm
  br i1 %.not.i.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre6.i.i.i = load i64, ptr %i.b, align 8, !tbaa !167, !noalias !4781
  %.pre7.i.i.i = load ptr, ptr %6, align 8, !tbaa !165, !alias.scope !4781
  br label %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit

_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit: ; preds = %._crit_edge.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i
  %i.ie = phi ptr [ %.pre7.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i ], [ %i.fp, %._crit_edge.i.i.i ]
  %i.if = phi i64 [ %.pre6.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i ], [ 0, %._crit_edge.i.i.i ] ; 2 uses
  %i.ig = trunc i64 %i.gi to i32
  store i64 %i.if, ptr %i.fq, align 8, !tbaa !166, !alias.scope !4781
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if
  store i8 0, ptr %i.ih, align 1, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36, !noalias !4781
  %i.ii = add i32 %i.ge, %i.ig                    ; 2 uses
  %i.ij = load ptr, ptr %i.fr, align 8, !tbaa !869 ; 6 uses
  %i.ik = load ptr, ptr %i.fs, align 8, !tbaa !871
  %.not.i.i = icmp eq ptr %i.ij, %i.ik
end_hunk_0
begin_hunk_1_@_ZNK5clang9ASTReader20getMemoryBufferSizesERNS_17ExternalASTSource17MemoryBufferSizesE:bb.a
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #36
  switch i32 %i.u, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %1, align 8, !tbaa !2272
  %i.w = add i64 %i.v, %i.q
  store i64 %i.w, ptr %1, align 8, !tbaa !2272
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.g, align 8, !tbaa !2273
  %i.y = add i64 %i.x, %i.q
  store i64 %i.y, ptr %i.g, align 8, !tbaa !2273
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8 ; 2 uses
  %.not13 = icmp eq ptr %i.z, %i.f
  br i1 %.not13, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn24_NK5clang9ASTReader20getMemoryBufferSizesERNS_17ExternalASTSource17MemoryBufferSizesE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !872  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i32, ptr %i.c, align 8, !tbaa !873  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %.not1314.i = icmp eq i32 %i.d, 0
  br i1 %.not1314.i, label %_ZNK5clang9ASTReader20getMemoryBufferSizesERNS_17ExternalASTSource17MemoryBufferSizesE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.010.015.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.z, %bb.f ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.010.015.i, align 8, !tbaa !887
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 472
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1891 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1869
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1868
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #36, !inline_history !5553
  switch i32 %i.u, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %1, align 8, !tbaa !2272
  %i.w = add i64 %i.v, %i.q
  store i64 %i.w, ptr %1, align 8, !tbaa !2272
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.g, align 8, !tbaa !2273
  %i.y = add i64 %i.x, %i.q
  store i64 %i.y, ptr %i.g, align 8, !tbaa !2273
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.z, %i.f
  br i1 %.not13.i, label %_ZNK5clang9ASTReader20getMemoryBufferSizesERNS_17ExternalASTSource17MemoryBufferSizesE.exit, label %bb.b

_ZNK5clang9ASTReader20getMemoryBufferSizesERNS_17ExternalASTSource17MemoryBufferSizesE.exit: ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9ASTReader14InitializeSemaERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(16376) initializes((136, 144)) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::IntrusiveRefCntPtr.1735", align 8 ; 3 uses
  %3 = alloca %"class.clang::FunctionEffectsRef", align 8 ; 4 uses
  %4 = alloca %"class.clang::FunctionEffectsRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1561
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %2, align 8, !tbaa !5555
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2276
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !2276
  call void @_ZN5clang4Sema17addExternalSourceEN4llvm18IntrusiveRefCntPtrINS_18ExternalSemaSourceEEE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #36
  %i.f = load ptr, ptr %2, align 8, !tbaa !5555   ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2276
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !2276
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !159
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !inline_history !5554
  br label %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 13400
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !872  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13408 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !873  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not36 = icmp eq i32 %i.q, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit
  store i32 0, ptr %i.p, align 8, !tbaa !873
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8424
  %i.u = load i32, ptr %i.t, align 8, !tbaa !873
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit, %.lr.ph
  %.037 = phi ptr [ %i.x, %.lr.ph ], [ %i.o, %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit ] ; 2 uses
  %.sroa.020.0.copyload = load i64, ptr %.037, align 8
  %i.v = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 %.sroa.020.0.copyload) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !167
  call void @_ZN5clang9ASTReader25pushExternalDeclIntoScopeEPNS_9NamedDeclENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull %i.v, i64 %.sroa.0.0.copyload.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.037, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8416
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !872
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !167 ; 2 uses
  %.sroa.0.0.insert.insert.i = call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 32) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !1561 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !5556, !nonnull !177, !align !178 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = lshr i32 %i.ag, 23
  %i.ai = and i32 %i.ah, 3                        ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 3
  %spec.store.select.i.i = select i1 %i.aj, i32 2, i32 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = lshr i64 %i.al, 57
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = and i32 %i.an, 4                        ; 2 uses
  %i.ap = lshr i32 %i.ag, 19
  %i.aq = and i32 %i.ap, 192
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = lshr i64 %i.as, 36
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 32256
  %i.aw = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.ao, 0
  %or.cond.not16.i.i = select i1 %i.aw, i1 %.not3.i.i.i, i1 false
  %i.ax = and i32 %i.ag, 100663296
  %i.ay = icmp eq i32 %i.ax, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ay, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.ba = load i64, ptr %i.az, align 8
  %sh.diff.i.i = lshr i64 %i.ba, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.bb = and i32 %tr.sh.diff.i.i, 29360128
  %i.bc = or disjoint i32 %i.aq, %i.av
  %i.bd = or disjoint i32 %i.bc, %i.bb
  %i.be = or disjoint i32 %i.bd, %masksel.i.i
  %i.bf = or disjoint i32 %i.be, %i.ao
  %i.bg = or disjoint i32 %i.bf, %spec.store.select.i.i
  %i.bh = or i32 %i.bg, 56
  %i.bi = xor i32 %.sroa.4.0.extract.trunc, -1
  %i.bj = and i32 %i.bh, %i.bi
  %i.bk = and i64 %.sroa.4.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.bl = trunc nuw i64 %i.bk to i32
  %i.bm = or i32 %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !952
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 9368
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !872 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 9376 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !873 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %.idx43 = shl nuw nsw i64 %i.bs, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx43
  %.not3238 = icmp eq i32 %i.br, 0
  br i1 %.not3238, label %._crit_edge42, label %.lr.ph41

._crit_edge42:                                    ; preds = %bb.h, %bb.e
  store i32 0, ptr %i.bq, align 8, !tbaa !873
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8808
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !1561
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  %i.bx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang13OpenCLOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bu) ; 0 uses
  call void @_ZN5clang9ASTReader10UpdateSemaEv(ptr noundef nonnull align 8 dereferenceable(16376) %0)
  ret void

.lr.ph41:                                         ; preds = %bb.e, %bb.h
  %.03039 = phi ptr [ %i.cf, %bb.h ], [ %i.bp, %bb.e ] ; 2 uses
  %.sroa.08.0.copyload = load i64, ptr %.03039, align 8
  %i.by = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 %.sroa.08.0.copyload) ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 127
  %i.cc = add nsw i32 %i.cb, -41
  %i.cd = icmp ult i32 %i.cc, -6
  %.not3335 = icmp eq ptr %i.by, null
  %.not33 = or i1 %.not3335, %i.cd
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !1561 ; 2 uses
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZNK5clang12FunctionDecl18getFunctionEffectsEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::FunctionEffectsRef") align 8 %3, ptr noundef nonnull align 8 dereferenceable(168) %i.by)
  call void @_ZN5clang4Sema18addDeclWithEffectsEPKNS_4DeclERKNS_18FunctionEffectsRefE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ce, ptr noundef nonnull %i.by, ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZNK5clang9BlockDecl18getFunctionEffectsEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::FunctionEffectsRef") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.by)
  call void @_ZN5clang4Sema18addDeclWithEffectsEPKNS_4DeclERKNS_18FunctionEffectsRefE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ce, ptr noundef nonnull %i.by, ptr noundef nonnull align 8 dereferenceable(32) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %.03039, i64 8 ; 2 uses
  %.not32 = icmp eq ptr %i.cf, %i.bt
  br i1 %.not32, label %._crit_edge42, label %.lr.ph41
}

declare void @_ZN5clang4Sema17addExternalSourceEN4llvm18IntrusiveRefCntPtrINS_18ExternalSemaSourceEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9ASTReader25pushExternalDeclIntoScopeEPNS_9NamedDeclENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::IdentifierResolver::iterator", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = and i64 %2, 7
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %2, -8
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i = select i1 %i.c, ptr %i.e, ptr null      ; 2 uses
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !1536
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9760
  %i.g = call noundef ptr @_ZN4llvm9MapVectorIPKN5clang14IdentifierInfoENS_11SmallVectorIPNS1_9NamedDeclELj2EEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS5_ISt4pairIS4_S8_ELj16EEELj16EE4findERKS4_(ptr noundef nonnull align 8 dereferenceable(680) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9784
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !872
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9792
  %i.k = load i32, ptr %i.j, align 8, !tbaa !873
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.l
  %.not14 = icmp eq ptr %i.g, %i.m
  br i1 %.not14, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !872  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !873  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not1531 = icmp eq i32 %i.q, 0
  br i1 %.not1531, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.p, align 8, !tbaa !873
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.032 = phi ptr [ %i.o, %.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  %i.u = load ptr, ptr %.032, align 8, !tbaa !1994
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !1561
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2560
  call void @_ZN5clang18IdentifierResolver10RemoveDeclEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef %i.u) #36
  %i.x = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.x, %i.s
  br i1 %.not15, label %._crit_edge, label %bb.d

bb.e:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1561
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2560
  %i.ab = call noundef zeroext i1 @_ZN5clang18IdentifierResolver18tryAddTopLevelDeclEPNS_9NamedDeclENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef %1, i64 %2) #36
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !1561 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2873 ; 2 uses
  %.not16 = icmp eq ptr %i.ad, null               ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not16, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5clang5Scope7AddDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(528) %i.ad, ptr noundef %1)
  br label %.thread

bb.h:                                             ; preds = %bb.e
  br i1 %.not16, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 2560
  %i.af = call { i64, i64 } @_ZN5clang18IdentifierResolver5declsENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 %2) #36 ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.ag, ptr %3, align 8
  %.not4.i.i.i.i = icmp eq i64 %i.ag, %i.ah
  br i1 %.not4.i.i.i.i, label %_ZN4llvm12is_containedINS_14iterator_rangeIN5clang18IdentifierResolver8iteratorEEEPNS2_9NamedDeclEEEbOT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i

_ZN4llvm12is_containedINS_14iterator_rangeIN5clang18IdentifierResolver8iteratorEEEPNS2_9NamedDeclEEEbOT_RKT0_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZN5clang18IdentifierResolver8iteratorppEv.exit.i.i.i.i
  %i.ai = phi i64 [ %i.aq, %_ZN5clang18IdentifierResolver8iteratorppEv.exit.i.i.i.i ], [ %i.ag, %bb.i ] ; 4 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN5clang9NamedDeclEEclINS2_18IdentifierResolver8iteratorEEEbT_.exit.i.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN5clang9NamedDeclEEclINS2_18IdentifierResolver8iteratorEEEbT_.exit.thread.i.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN5clang9NamedDeclEEclINS2_18IdentifierResolver8iteratorEEEbT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ak = and i64 %i.ai, -2
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1994
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %_ZN4llvm12is_containedINS_14iterator_rangeIN5clang18IdentifierResolver8iteratorEEEPNS2_9NamedDeclEEEbOT_RKT0_.exit, label %bb.j

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN5clang9NamedDeclEEclINS2_18IdentifierResolver8iteratorEEEbT_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ao = inttoptr i64 %i.ai to ptr
  %i.ap = icmp eq ptr %1, %i.ao
  br i1 %i.ap, label %_ZN4llvm12is_containedINS_14iterator_rangeIN5clang18IdentifierResolver8iteratorEEEPNS2_9NamedDeclEEEbOT_RKT0_.exit, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN5clang9NamedDeclEEclINS2_18IdentifierResolver8iteratorEEEbT_.exit.thread.i.i.i.i
  store i64 0, ptr %3, align 8, !tbaa !2875
  br label %_ZN5clang18IdentifierResolver8iteratorppEv.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN5clang9NamedDeclEEclINS2_18IdentifierResolver8iteratorEEEbT_.exit.i.i.i.i
  call void @_ZN5clang18IdentifierResolver8iterator17incrementSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !tbaa !2875
  br label %_ZN5clang18IdentifierResolver8iteratorppEv.exit.i.i.i.i

_ZN5clang18IdentifierResolver8iteratorppEv.exit.i.i.i.i: ; preds = %bb.j, %.thread.i.i.i.i
  %i.aq = phi i64 [ 0, %.thread.i.i.i.i ], [ %.pre.i.i.i.i, %bb.j ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aq, %i.ah
  br i1 %.not.i.i.i.i, label %_ZN4llvm12is_containedINS_14iterator_rangeIN5clang18IdentifierResolver8iteratorEEEPNS2_9NamedDeclEEEbOT_RKT0_.exit.thread27, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZN4llvm12is_containedINS_14iterator_rangeIN5clang18IdentifierResolver8iteratorEEEPNS2_9NamedDeclEEEbOT_RKT0_.exit.thread27: ; preds = %_ZN5clang18IdentifierResolver8iteratorppEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.thread

_ZN4llvm12is_containedINS_14iterator_rangeIN5clang18IdentifierResolver8iteratorEEEPNS2_9NamedDeclEEEbOT_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN5clang9NamedDeclEEclINS2_18IdentifierResolver8iteratorEEEbT_.exit.i.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN5clang9NamedDeclEEclINS2_18IdentifierResolver8iteratorEEEbT_.exit.thread.i.i.i.i
  %.not29 = icmp eq i64 %i.ai, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.not29, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12is_containedINS_14iterator_rangeIN5clang18IdentifierResolver8iteratorEEEPNS2_9NamedDeclEEEbOT_RKT0_.exit
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !1561
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
end_hunk_1
