Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpBuiltin?download=true
inline.NumInlined: 11951
inline.NumDeleted: 2545
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5clang6interpL27interp__builtin_ia32_psadbwERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprE:bb.a
_ZN4llvm5APIntD2Ev.exit417:                       ; preds = %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit416, %bb.lh
  %i.bcs = load i32, ptr %i.gi, align 8, !tbaa !642
  %i.bct = icmp ult i32 %i.bcs, 65
  %i.bcu = load ptr, ptr %136, align 8            ; 2 uses
  %i.bcv = icmp eq ptr %i.bcu, null
  %or.cond385 = select i1 %i.bct, i1 true, i1 %i.bcv
  br i1 %or.cond385, label %_ZN4llvm5APIntD2Ev.exit362, label %_ZN4llvm5APIntD2Ev.exit362.sink.split

bb.li:                                            ; preds = %bb.e
  store i32 %i.gq, ptr %i.gh, align 8, !tbaa !642
  br i1 %i.gr, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.bcw = load i64, ptr %68, align 8, !tbaa !33  ; 2 uses
  store i64 %i.bcw, ptr %137, align 8, !tbaa !33
  br label %_ZN4llvm5APIntC2ERKS0_.exit419

bb.lk:                                            ; preds = %bb.li
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %137, ptr noundef nonnull align 8 dereferenceable(12) %68) #21
  %.pr178 = load i32, ptr %i.gh, align 8, !tbaa !642
  %.pre = load i64, ptr %137, align 8
  br label %_ZN4llvm5APIntC2ERKS0_.exit419

_ZN4llvm5APIntC2ERKS0_.exit419:                   ; preds = %bb.lj, %bb.lk
  %i.bcx = phi i64 [ %i.bcw, %bb.lj ], [ %.pre, %bb.lk ] ; 2 uses
  %i.bcy = phi i32 [ %i.gq, %bb.lj ], [ %.pr178, %bb.lk ] ; 2 uses
  store i32 0, ptr %i.gh, align 8, !tbaa !642
  %i.bcz = inttoptr i64 %i.bcx to ptr             ; 2 uses
  %i.bda = load ptr, ptr %i.gf, align 8, !tbaa !33, !noalias !3610 ; 3 uses
  %i.bdb = load i32, ptr %i.gg, align 8, !tbaa !33, !noalias !3610 ; 3 uses
  %i.bdc = load ptr, ptr %i.bda, align 8, !tbaa !35 ; 2 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 24
  %i.bde = load i32, ptr %i.bdd, align 8, !tbaa !45
  %i.bdf = icmp eq i32 %i.bdb, %i.bde
  br i1 %i.bdf, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit421, label %bb.ll

bb.ll:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit419
  %i.bdg = zext i32 %i.bdb to i64
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bda, i64 %i.bdg
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 32
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit421

_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit421: ; preds = %_ZN4llvm5APIntC2ERKS0_.exit419, %bb.ll
  %.0.i.i.i420 = phi ptr [ %i.bdj, %bb.ll ], [ %i.bdc, %_ZN4llvm5APIntC2ERKS0_.exit419 ]
  %i.bdk = getelementptr inbounds nuw i8, ptr %.0.i.i.i420, i64 16
  %i.bdl = load i32, ptr %i.bdk, align 8, !tbaa !451
  %i.bdm = mul i32 %i.bdl, %.0112191
  %i.bdn = add i32 %i.bdb, 8
  %i.bdo = add i32 %i.bdn, %i.bdm
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bda, i64 40
  %i.bdq = zext i32 %i.bdo to i64
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdp, i64 %i.bdq ; 2 uses
  store ptr %i.bcz, ptr %i.bdr, align 8, !tbaa !33
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  store i32 %i.bcy, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !647
  %i.bds = icmp ult i32 %i.bcy, 65
  %i.bdt = icmp eq i64 %i.bcx, 0
  %or.cond = select i1 %i.bds, i1 true, i1 %i.bdt
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit422, label %bb.lm

bb.lm:                                            ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit421
  call void @_ZdaPv(ptr noundef nonnull %i.bcz) #24
  br label %_ZN4llvm5APIntD2Ev.exit422

_ZN4llvm5APIntD2Ev.exit422:                       ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit421, %bb.lm
  %i.bdu = load i32, ptr %i.gh, align 8, !tbaa !642
  %i.bdv = icmp ult i32 %i.bdu, 65
  %i.bdw = load ptr, ptr %137, align 8            ; 2 uses
  %i.bdx = icmp eq ptr %i.bdw, null
  %or.cond387 = select i1 %i.bdv, i1 true, i1 %i.bdx
  br i1 %or.cond387, label %_ZN4llvm5APIntD2Ev.exit362, label %_ZN4llvm5APIntD2Ev.exit362.sink.split

bb.ln:                                            ; preds = %bb.e
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !642
  br i1 %i.gr, label %_ZN4llvm5APIntC2ERKS0_.exit424.thread, label %_ZN4llvm5APIntC2ERKS0_.exit424

_ZN4llvm5APIntC2ERKS0_.exit424.thread:            ; preds = %bb.ln
  %i.bdy = load i64, ptr %68, align 8, !tbaa !33  ; 2 uses
  store i64 %i.bdy, ptr %138, align 8, !tbaa !33
  store i32 0, ptr %i.ge, align 8, !tbaa !642
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i

_ZN4llvm5APIntC2ERKS0_.exit424:                   ; preds = %bb.ln
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %138, ptr noundef nonnull align 8 dereferenceable(12) %68) #21
  %.pr179 = load i32, ptr %i.ge, align 8, !tbaa !642 ; 3 uses
  %i.bdz = load i64, ptr %138, align 8            ; 3 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !642
  %i.bea = icmp ult i32 %.pr179, 65
  br i1 %i.bea, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i, label %bb.lo

_ZNK4llvm5APInt12getSExtValueEv.exit.i:           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit424.thread, %_ZN4llvm5APIntC2ERKS0_.exit424
  %i.beb = phi i64 [ %i.bdy, %_ZN4llvm5APIntC2ERKS0_.exit424.thread ], [ %i.bdz, %_ZN4llvm5APIntC2ERKS0_.exit424 ] ; 2 uses
  %i.bec = phi i32 [ %i.gq, %_ZN4llvm5APIntC2ERKS0_.exit424.thread ], [ %.pr179, %_ZN4llvm5APIntC2ERKS0_.exit424 ] ; 3 uses
  %i.bed = icmp eq i32 %i.bec, 0
  %i.bee = sub nuw nsw i32 64, %i.bec
  %i.bef = zext nneg i32 %i.bee to i64            ; 2 uses
  %i.beg = shl i64 %i.beb, %i.bef
  %i.beh = ashr exact i64 %i.beg, %i.bef
  %i.bei = inttoptr i64 %i.beh to ptr
  %i.bej = select i1 %i.bed, ptr null, ptr %i.bei
  br label %_ZN5clang6interp10IntegralAPILb1EEC2ERKN4llvm5APIntE.exit

bb.lo:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit424
  %i.bek = inttoptr i64 %i.bdz to ptr
  br label %_ZN5clang6interp10IntegralAPILb1EEC2ERKN4llvm5APIntE.exit

_ZN5clang6interp10IntegralAPILb1EEC2ERKN4llvm5APIntE.exit: ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.i, %bb.lo
  %i.bel = phi i64 [ %i.bdz, %bb.lo ], [ %i.beb, %_ZNK4llvm5APInt12getSExtValueEv.exit.i ] ; 2 uses
  %i.bem = phi i32 [ %.pr179, %bb.lo ], [ %i.bec, %_ZNK4llvm5APInt12getSExtValueEv.exit.i ] ; 2 uses
  %storemerge.i = phi ptr [ %i.bek, %bb.lo ], [ %i.bej, %_ZNK4llvm5APInt12getSExtValueEv.exit.i ]
  %i.ben = load ptr, ptr %i.gf, align 8, !tbaa !33, !noalias !3611 ; 3 uses
  %i.beo = load i32, ptr %i.gg, align 8, !tbaa !33, !noalias !3611 ; 3 uses
  %i.bep = load ptr, ptr %i.ben, align 8, !tbaa !35 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 24
  %i.ber = load i32, ptr %i.beq, align 8, !tbaa !45
  %i.bes = icmp eq i32 %i.beo, %i.ber
  br i1 %i.bes, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit426, label %bb.lp

bb.lp:                                            ; preds = %_ZN5clang6interp10IntegralAPILb1EEC2ERKN4llvm5APIntE.exit
  %i.bet = zext i32 %i.beo to i64
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ben, i64 %i.bet
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 32
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit426

_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit426: ; preds = %_ZN5clang6interp10IntegralAPILb1EEC2ERKN4llvm5APIntE.exit, %bb.lp
  %.0.i.i.i425 = phi ptr [ %i.bew, %bb.lp ], [ %i.bep, %_ZN5clang6interp10IntegralAPILb1EEC2ERKN4llvm5APIntE.exit ]
  %i.bex = getelementptr inbounds nuw i8, ptr %.0.i.i.i425, i64 16
  %i.bey = load i32, ptr %i.bex, align 8, !tbaa !451
  %i.bez = mul i32 %i.bey, %.0112191
  %i.bfa = add i32 %i.beo, 8
  %i.bfb = add i32 %i.bfa, %i.bez
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.ben, i64 40
  %i.bfd = zext i32 %i.bfb to i64
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfc, i64 %i.bfd ; 2 uses
  store ptr %storemerge.i, ptr %i.bfe, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfe, i64 8
  store i32 %i.bem, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !647
  %i.bff = icmp ult i32 %i.bem, 65
  %i.bfg = icmp eq i64 %i.bel, 0
  %or.cond188 = select i1 %i.bff, i1 true, i1 %i.bfg
  br i1 %or.cond188, label %_ZN4llvm5APIntD2Ev.exit427, label %bb.lq

bb.lq:                                            ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit426
  %i.bfh = inttoptr i64 %i.bel to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.bfh) #24
  br label %_ZN4llvm5APIntD2Ev.exit427

_ZN4llvm5APIntD2Ev.exit427:                       ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit426, %bb.lq
  %i.bfi = load i32, ptr %i.ge, align 8, !tbaa !642
  %i.bfj = icmp ult i32 %i.bfi, 65
  %i.bfk = load ptr, ptr %138, align 8            ; 2 uses
  %i.bfl = icmp eq ptr %i.bfk, null
  %or.cond389 = select i1 %i.bfj, i1 true, i1 %i.bfl
  br i1 %or.cond389, label %_ZN4llvm5APIntD2Ev.exit362, label %_ZN4llvm5APIntD2Ev.exit362.sink.split

bb.lr:                                            ; preds = %bb.e
  unreachable

_ZN4llvm5APIntD2Ev.exit362.sink.split:            ; preds = %_ZN4llvm5APIntD2Ev.exit427, %_ZN4llvm5APIntD2Ev.exit422, %_ZN4llvm5APIntD2Ev.exit417, %_ZN4llvm5APIntD2Ev.exit409, %_ZN4llvm5APIntD2Ev.exit401, %_ZN4llvm5APIntD2Ev.exit393, %_ZN4llvm5APIntD2Ev.exit385, %_ZN4llvm5APIntD2Ev.exit377, %_ZN4llvm5APIntD2Ev.exit369, %_ZN4llvm5APIntD2Ev.exit361
  %.sink = phi ptr [ %i.bbj, %_ZN4llvm5APIntD2Ev.exit409 ], [ %i.azy, %_ZN4llvm5APIntD2Ev.exit401 ], [ %i.aym, %_ZN4llvm5APIntD2Ev.exit393 ], [ %i.axa, %_ZN4llvm5APIntD2Ev.exit385 ], [ %i.avo, %_ZN4llvm5APIntD2Ev.exit377 ], [ %i.auc, %_ZN4llvm5APIntD2Ev.exit369 ], [ %i.bdw, %_ZN4llvm5APIntD2Ev.exit422 ], [ %i.bcu, %_ZN4llvm5APIntD2Ev.exit417 ], [ %i.asq, %_ZN4llvm5APIntD2Ev.exit361 ], [ %i.bfk, %_ZN4llvm5APIntD2Ev.exit427 ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #24
  br label %_ZN4llvm5APIntD2Ev.exit362

_ZN4llvm5APIntD2Ev.exit362:                       ; preds = %_ZN4llvm5APIntD2Ev.exit362.sink.split, %_ZN4llvm5APIntD2Ev.exit417, %_ZN4llvm5APIntD2Ev.exit409, %_ZN4llvm5APIntD2Ev.exit401, %_ZN4llvm5APIntD2Ev.exit393, %_ZN4llvm5APIntD2Ev.exit385, %_ZN4llvm5APIntD2Ev.exit377, %_ZN4llvm5APIntD2Ev.exit427, %_ZN4llvm5APIntD2Ev.exit422, %_ZN4llvm5APIntD2Ev.exit369, %_ZN4llvm5APIntD2Ev.exit361
  %i.bfm = add i32 %.0112191, 1
  %i.bfn = load i32, ptr %i.ax, align 8, !tbaa !642
  %i.bfo = icmp ugt i32 %i.bfn, 64
  br i1 %i.bfo, label %bb.ls, label %_ZN4llvm5APIntD2Ev.exit429

bb.ls:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit362
  %i.bfp = load ptr, ptr %68, align 8, !tbaa !33  ; 2 uses
  %i.bfq = icmp eq ptr %i.bfp, null
  br i1 %i.bfq, label %_ZN4llvm5APIntD2Ev.exit429, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  call void @_ZdaPv(ptr noundef nonnull %i.bfp) #24
  br label %_ZN4llvm5APIntD2Ev.exit429

_ZN4llvm5APIntD2Ev.exit429:                       ; preds = %_ZN4llvm5APIntD2Ev.exit362, %bb.ls, %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  %i.bfr = add i32 %.0111192, 8                   ; 2 uses
  %.not = icmp eq i32 %i.bfr, %i.ah
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !3493
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6interpL29interp__builtin_ia32_dbpsadbwERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(456) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 17 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 21 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 29 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 6 uses
  %9 = alloca %"class.clang::interp::Pointer", align 8 ; 6 uses
  %10 = alloca %"class.llvm::SmallVector.972", align 8 ; 39 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i32, ptr %1, align 8
  %i.e = lshr i32 %i.d, 19
  %i.f = and i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !583
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val = load i64, ptr %i.k, align 8, !tbaa !33
  %i.l = call fastcc noundef zeroext i1 @_ZN5clang6interpL11popToUInt64ERKNS0_11InterpStateEPKNS_4ExprERm(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.dn

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !621, !nonnull !34, !align !502 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !638, !noalias !3673
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !638, !noalias !3673
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef 48) #21, !noalias !3673
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %i.r) #21
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef 48) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !621, !nonnull !34, !align !502 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !638, !noalias !3674
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !638, !noalias !3674
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef 48) #21, !noalias !3674
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %i.w) #21
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef 48) #21
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !621, !nonnull !34, !align !502
  %i.y = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 noundef 48) #21 ; 3 uses
  %i.z = load i32, ptr %1, align 8
  %i.aa = lshr i32 %i.z, 19
  %i.ab = and i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !583
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 8, !tbaa !33
  %i.ag = and i64 %.sroa.0.0.copyload.i, -16
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i8, ptr %i.aj, align 16
  %i.al = and i8 %i.ak, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.al, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ai) #21
  br label %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi ptr [ %i.am, %bb.c ], [ %i.ai, %bb.b ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !645, !nonnull !34, !align !502
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i270 = load i64, ptr %i.ap, align 16, !tbaa !33
  %i.aq = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.ao, i64 %.sroa.0.0.copyload.i270) #21 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i271 = load i64, ptr %i.at, align 8, !tbaa !33
  %i.au = and i64 %.sroa.0.0.copyload.i271, -16
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.ax, align 16
  %i.az = and i8 %i.ay, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i273 = icmp eq i8 %i.az, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i273, label %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit275, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit
  %i.ba = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aw) #21
  br label %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit275

_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit275: ; preds = %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit, %bb.d
  %.1.i274 = phi ptr [ %i.ba, %bb.d ], [ %i.aw, %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit ]
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !645, !nonnull !34, !align !502
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i274, i64 32
  %.sroa.0.0.copyload.i276 = load i64, ptr %i.bc, align 16, !tbaa !33
  %i.bd = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 %.sroa.0.0.copyload.i276) #21
  %.sroa.0.0.copyload.i277 = load i64, ptr %i.at, align 8, !tbaa !33
  %i.be = and i64 %.sroa.0.0.copyload.i277, -16
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !32
  %i.bh = call noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bg) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bi = zext i32 %i.as to i64                   ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store ptr %i.bj, ptr %10, align 8, !tbaa !640
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !638
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 64, ptr %i.bl, align 8, !tbaa !639
  %i.bm = icmp eq i32 %i.as, 0
  br i1 %i.bm, label %._crit_edge241, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit275
  %i.bn = icmp ugt i32 %i.as, 64
  br i1 %i.bn, label %bb.f, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull %i.bj, i64 noundef %i.bi, i64 noundef 1) #21
  %.pre.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !638
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.bo = phi i64 [ 0, %bb.e ], [ %.pre.i.i.i, %bb.f ] ; 3 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.bo, %i.bi
  br i1 %.not11.i.i.i, label %.preheader200.lr.ph, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i
  %i.bp = load ptr, ptr %10, align 8, !tbaa !640
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.br = sub i64 %i.bi, %i.bo
  call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 0, i64 %i.br, i1 false), !tbaa !33
  br label %.preheader200.lr.ph

.preheader200.lr.ph:                              ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !638
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !492
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 37 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 37 uses
  %.phi.trans.insert.i288 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %switch = icmp ult i8 %i.aq, 10
  call void @llvm.assume(i1 %switch)
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.lr.ph, %bb.g
  %.0254223 = phi i32 [ %i.cg, %bb.g ], [ 0, %.preheader200.lr.ph ] ; 3 uses
  %i.bz = zext i32 %.0254223 to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %i.ca = lshr i32 %i.as, 1                       ; 2 uses
  %.not242 = icmp eq i32 %i.ca, 0
  br i1 %.not242, label %._crit_edge241, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 10 uses
  %i.cf = zext nneg i32 %i.ca to i64
  br label %bb.by

bb.g:                                             ; preds = %.split203.us
  %i.cg = add i32 %.0254223, 16                   ; 2 uses
  %i.ch = icmp ult i32 %i.cg, %i.as
  br i1 %i.ch, label %.preheader200, label %._crit_edge, !llvm.loop !3616

bb.h:                                             ; preds = %.preheader200, %.split203.us
  %indvars.iv265 = phi i64 [ 0, %.preheader200 ], [ %indvars.iv.next266, %.split203.us ] ; 3 uses
  %i.ci = shl nuw nsw i64 %indvars.iv265, 1
  %i.cj = lshr i64 %i.bs, %i.ci
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = shl i32 %i.ck, 2
  %i.cm = and i32 %i.cl, 12
  %i.cn = or disjoint i32 %i.cm, %.0254223        ; 37 uses
  %i.co = shl nuw nsw i64 %indvars.iv265, 2
  %i.cp = add nuw nsw i64 %i.co, %i.bz            ; 29 uses
  switch i8 %i.aq, label %.split.us220 [
    i8 0, label %.split.us.preheader
    i8 1, label %.split.us204.preheader
    i8 2, label %.split.us206.preheader
    i8 3, label %.split.us208.preheader
    i8 4, label %.split.us210.preheader
    i8 5, label %.split.us212.preheader
    i8 6, label %.split.us214.preheader
    i8 7, label %.split.us216.preheader
    i8 8, label %.split.us218.preheader
  ]

.split.us218.preheader:                           ; preds = %bb.h
  %i.cq = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3675 ; 3 uses
  %i.cr = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3675 ; 3 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !35 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !45
  %i.cv = icmp eq i32 %i.cr, %i.cu
  br i1 %i.cv, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit.us, label %bb.ao

.split.us216.preheader:                           ; preds = %bb.h
  %i.cw = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3676 ; 3 uses
  %i.cx = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3676 ; 3 uses
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !35 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !45
  %i.db = icmp eq i32 %i.cx, %i.da
  br i1 %i.db, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit.us, label %bb.ak

.split.us214.preheader:                           ; preds = %bb.h
  %i.dc = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3677 ; 3 uses
  %i.dd = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3677 ; 3 uses
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !35 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !45
  %i.dh = icmp eq i32 %i.dd, %i.dg
  br i1 %i.dh, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit.us, label %bb.ag

.split.us212.preheader:                           ; preds = %bb.h
  %i.di = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3678 ; 3 uses
  %i.dj = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3678 ; 3 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !35 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !45
  %i.dn = icmp eq i32 %i.dj, %i.dm
  br i1 %i.dn, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit.us, label %bb.ac

.split.us210.preheader:                           ; preds = %bb.h
  %i.do = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3679 ; 3 uses
  %i.dp = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3679 ; 3 uses
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !35 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !45
  %i.dt = icmp eq i32 %i.dp, %i.ds
  br i1 %i.dt, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit.us, label %bb.y

.split.us208.preheader:                           ; preds = %bb.h
  %i.du = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3680 ; 3 uses
  %i.dv = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3680 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !35 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !45
  %i.dz = icmp eq i32 %i.dv, %i.dy
  br i1 %i.dz, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit.us, label %bb.u

.split.us206.preheader:                           ; preds = %bb.h
  %i.ea = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3681 ; 3 uses
  %i.eb = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3681 ; 3 uses
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !35 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !45
  %i.ef = icmp eq i32 %i.eb, %i.ee
  br i1 %i.ef, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit.us, label %bb.q

.split.us204.preheader:                           ; preds = %bb.h
  %i.eg = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3682 ; 3 uses
  %i.eh = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3682 ; 3 uses
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !35 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !45
  %i.el = icmp eq i32 %i.eh, %i.ek
  br i1 %i.el, label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit.us, label %bb.m

.split.us.preheader:                              ; preds = %bb.h
  %i.em = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3683 ; 3 uses
  %i.en = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3683 ; 3 uses
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !35 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !45
  %i.er = icmp eq i32 %i.en, %i.eq
  br i1 %i.er, label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us, label %bb.i

bb.i:                                             ; preds = %.split.us.preheader
  %i.es = zext i32 %i.en to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us

_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us: ; preds = %bb.i, %.split.us.preheader
  %.0.i.i.i.us = phi ptr [ %i.ev, %bb.i ], [ %i.eo, %.split.us.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i.us, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !451
  %i.ey = mul i32 %i.ex, %i.cn
  %i.ez = add i32 %i.en, 8
  %i.fa = add i32 %i.ez, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !650
  %i.ff = load ptr, ptr %10, align 8, !tbaa !640
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.cp
  store i8 %i.fe, ptr %i.fg, align 1, !tbaa !33
  %i.fh = or disjoint i32 %i.cn, 1
  %i.fi = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3683 ; 3 uses
  %i.fj = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3683 ; 3 uses
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !35 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !45
  %i.fn = icmp eq i32 %i.fj, %i.fm
  br i1 %i.fn, label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.1, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us
  %i.fo = zext i32 %i.fj to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.1

_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.1: ; preds = %bb.j, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us
  %.0.i.i.i.us.1 = phi ptr [ %i.fr, %bb.j ], [ %i.fk, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.us.1, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !451
  %i.fu = mul i32 %i.ft, %i.fh
  %i.fv = add i32 %i.fj, 8
  %i.fw = add i32 %i.fv, %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fy = zext i32 %i.fw to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !650
  %i.gb = load ptr, ptr %10, align 8, !tbaa !640
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.cp
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  store i8 %i.ga, ptr %i.gd, align 1, !tbaa !33
  %i.ge = or disjoint i32 %i.cn, 2
  %i.gf = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3683 ; 3 uses
  %i.gg = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3683 ; 3 uses
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !35 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !45
  %i.gk = icmp eq i32 %i.gg, %i.gj
  br i1 %i.gk, label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.2, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.1
  %i.gl = zext i32 %i.gg to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.2

_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.2: ; preds = %bb.k, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.1
  %.0.i.i.i.us.2 = phi ptr [ %i.go, %bb.k ], [ %i.gh, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.1 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.us.2, i64 16
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !451
  %i.gr = mul i32 %i.gq, %i.ge
  %i.gs = add i32 %i.gg, 8
  %i.gt = add i32 %i.gs, %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !650
  %i.gy = load ptr, ptr %10, align 8, !tbaa !640
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.cp
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  store i8 %i.gx, ptr %i.ha, align 1, !tbaa !33
  %i.hb = or disjoint i32 %i.cn, 3
  %i.hc = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3683 ; 3 uses
  %i.hd = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3683 ; 3 uses
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !35 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5clang6interpL29interp__builtin_ia32_dbpsadbwERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit.i.us.3

_ZN4llvm5APIntD2Ev.exit.i.i.us.3:                 ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i.us.3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 8) #21
  %i.akp = load i64, ptr %5, align 8              ; 2 uses
  %i.akq = load i32, ptr %i.by, align 8, !tbaa !642
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.akr = icmp ult i32 %i.akq, 65
  br i1 %i.akr, label %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit.i.us.3, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.us.3
  %i.aks = inttoptr i64 %i.akp to ptr             ; 2 uses
  %.0.i.else.val.i.i.us.3 = load i64, ptr %i.aks, align 8, !tbaa !33
  call void @_ZdaPv(ptr noundef nonnull %i.aks) #24
  br label %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit.i.us.3

_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit.i.us.3: ; preds = %bb.bn, %_ZN4llvm5APIntD2Ev.exit.i.i.us.3, %_ZN4llvm5APIntD2Ev.exit6.i.i.us.3
  %.0.in.i.i.us.3 = phi i64 [ %.0.i5.i.i.us.3, %_ZN4llvm5APIntD2Ev.exit6.i.i.us.3 ], [ %.0.i.else.val.i.i.us.3, %bb.bn ], [ %i.akp, %_ZN4llvm5APIntD2Ev.exit.i.i.us.3 ]
  %i.akt = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !642
  %i.aku = icmp ugt i32 %i.akt, 64
  br i1 %i.aku, label %bb.bo, label %_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit.us.3

bb.bo:                                            ; preds = %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit.i.us.3
  %i.akv = load ptr, ptr %7, align 8, !tbaa !33   ; 2 uses
  %i.akw = icmp eq ptr %i.akv, null
  br i1 %i.akw, label %_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit.us.3, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZdaPv(ptr noundef nonnull %i.akv) #24
  br label %_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit.us.3

_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit.us.3: ; preds = %bb.bp, %bb.bo, %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit.i.us.3
  %.0.i.i.us.3 = trunc i64 %.0.in.i.i.us.3 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.split203.us.sink.split

.split.us220:                                     ; preds = %bb.h, %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit.us ], [ 0, %bb.h ] ; 3 uses
  %i.akx = load ptr, ptr %i.bt, align 8, !tbaa !33, !noalias !3688 ; 3 uses
  %i.aky = load i32, ptr %i.bu, align 8, !tbaa !33, !noalias !3688 ; 3 uses
  %i.akz = load ptr, ptr %i.akx, align 8, !tbaa !35 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 24
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !45
  %i.alc = icmp eq i32 %i.aky, %i.alb
  br i1 %i.alc, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit.us, label %bb.bq

bb.bq:                                            ; preds = %.split.us220
  %i.ald = zext i32 %i.aky to i64
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 32
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit.us

_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit.us: ; preds = %bb.bq, %.split.us220
  %.0.i.i.i287.us = phi ptr [ %i.alg, %bb.bq ], [ %i.akz, %.split.us220 ]
  %i.alh = getelementptr inbounds nuw i8, ptr %.0.i.i.i287.us, i64 16
  %i.ali = load i32, ptr %i.alh, align 8, !tbaa !451
  %i.alj = trunc i64 %indvars.iv to i32
  %i.alk = add i32 %i.cn, %i.alj
  %i.all = mul i32 %i.ali, %i.alk
  %i.alm = add i32 %i.aky, 8
  %i.aln = add i32 %i.alm, %i.all
  %i.alo = getelementptr inbounds nuw i8, ptr %i.akx, i64 40
  %i.alp = zext i32 %i.aln to i64
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.alp ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  %i.als = load i32, ptr %i.alr, align 8, !tbaa !720, !noalias !3689 ; 7 uses
  %i.alt = icmp ult i32 %i.als, 65
  br i1 %i.alt, label %_ZN4llvm5APIntC2Ejmbb.exit.i.i298.us, label %bb.br

bb.br:                                            ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit.us
  %i.alu = zext i32 %i.als to i64
  %i.alv = add nuw nsw i64 %i.alu, 63
  %i.alw = lshr i64 %i.alv, 6
  %i.alx = load ptr, ptr %i.alq, align 8, !tbaa !33, !noalias !3689
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.als, ptr %i.alx, i64 %i.alw) #21
  %.pre.i289.us = load i32, ptr %.phi.trans.insert.i288, align 8, !tbaa !642
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i.us

_ZN4llvm5APIntC2Ejmbb.exit.i.i298.us:             ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit.us
  %i.aly = load i64, ptr %i.alq, align 8, !tbaa !33, !noalias !3689
  store i32 %i.als, ptr %.phi.trans.insert.i288, align 8, !tbaa !642, !alias.scope !3689
  %i.alz = sub nsw i32 0, %i.als
  %i.ama = and i32 %i.alz, 63
  %i.amb = zext nneg i32 %i.ama to i64
  %i.amc = lshr i64 -1, %i.amb
  %i.amd = icmp eq i32 %i.als, 0
  %spec.select.i.i.i.us = select i1 %i.amd, i64 0, i64 %i.amc, !prof !631
  %i.ame = and i64 %i.aly, %spec.select.i.i.i.us
  store i64 %i.ame, ptr %4, align 8, !tbaa !33, !alias.scope !3689
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i.us

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i.us: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i298.us, %bb.br
  %i.amf = phi i32 [ %i.als, %_ZN4llvm5APIntC2Ejmbb.exit.i.i298.us ], [ %.pre.i289.us, %bb.br ]
  %i.amg = icmp ult i32 %i.amf, 9
  br i1 %i.amg, label %_ZN4llvm5APIntD2Ev.exit.i.i296.us, label %bb.bs

bb.bs:                                            ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 8) #21
  %i.amh = load i32, ptr %i.bv, align 8, !tbaa !642
  %i.ami = icmp ult i32 %i.amh, 65                ; 2 uses
  %i.amj = load ptr, ptr %3, align 8              ; 3 uses
  %spec.select.i4.i.i290.us = select i1 %i.ami, ptr %3, ptr %i.amj
  %.0.i5.i.i291.us = load i64, ptr %spec.select.i4.i.i290.us, align 8, !tbaa !33
  %i.amk = icmp eq ptr %i.amj, null
  %or.cond.i.i292.us = select i1 %i.ami, i1 true, i1 %i.amk
  br i1 %or.cond.i.i292.us, label %_ZN4llvm5APIntD2Ev.exit6.i.i293.us, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZdaPv(ptr noundef nonnull %i.amj) #24
  br label %_ZN4llvm5APIntD2Ev.exit6.i.i293.us

_ZN4llvm5APIntD2Ev.exit6.i.i293.us:               ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i.us

_ZN4llvm5APIntD2Ev.exit.i.i296.us:                ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 8) #21
  %i.aml = load i64, ptr %2, align 8              ; 2 uses
  %i.amm = load i32, ptr %i.bw, align 8, !tbaa !642
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.amn = icmp ult i32 %i.amm, 65
  br i1 %i.amn, label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i.us, label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i296.us
  %i.amo = inttoptr i64 %i.aml to ptr             ; 2 uses
  %.0.i.else.val.i.i297.us = load i64, ptr %i.amo, align 8, !tbaa !33
  call void @_ZdaPv(ptr noundef nonnull %i.amo) #24
  br label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i.us

_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i.us: ; preds = %bb.bu, %_ZN4llvm5APIntD2Ev.exit.i.i296.us, %_ZN4llvm5APIntD2Ev.exit6.i.i293.us
  %.0.in.i.i294.us = phi i64 [ %.0.i5.i.i291.us, %_ZN4llvm5APIntD2Ev.exit6.i.i293.us ], [ %.0.i.else.val.i.i297.us, %bb.bu ], [ %i.aml, %_ZN4llvm5APIntD2Ev.exit.i.i296.us ]
  %i.amp = load i32, ptr %.phi.trans.insert.i288, align 8, !tbaa !642
  %i.amq = icmp ugt i32 %i.amp, 64
  br i1 %i.amq, label %bb.bv, label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit.us

bb.bv:                                            ; preds = %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i.us
  %i.amr = load ptr, ptr %4, align 8, !tbaa !33   ; 2 uses
  %i.ams = icmp eq ptr %i.amr, null
  br i1 %i.ams, label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZdaPv(ptr noundef nonnull %i.amr) #24
  br label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit.us

_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit.us: ; preds = %bb.bw, %bb.bv, %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i.us
  %.0.i.i295.us = trunc i64 %.0.in.i.i294.us to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.amt = load ptr, ptr %10, align 8, !tbaa !640
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 %indvars.iv
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.cp
  store i8 %.0.i.i295.us, ptr %i.amv, align 1, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.split203.us, label %.split.us220, !llvm.loop !3644

.split203.us.sink.split:                          ; preds = %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.3, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit.us.3, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit.us.3, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit.us.3, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit.us.3, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit.us.3, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit.us.3, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit.us.3, %_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit.us.3
  %.0.i.i.us.3.sink = phi i8 [ %.0.i.i.us.3, %_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit.us.3 ], [ %i.aen, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit.us.3 ], [ %i.abg, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit.us.3 ], [ %i.xz, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit.us.3 ], [ %i.us, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit.us.3 ], [ %i.rl, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit.us.3 ], [ %i.oe, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit.us.3 ], [ %i.kx, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit.us.3 ], [ %i.hu, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit.us.3 ]
  %i.amw = load ptr, ptr %10, align 8, !tbaa !640
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 %i.cp
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 3
  store i8 %.0.i.i.us.3.sink, ptr %i.amy, align 1, !tbaa !33
  br label %.split203.us

.split203.us:                                     ; preds = %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit.us, %.split203.us.sink.split
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next266, 4
  br i1 %exitcond268.not, label %bb.g, label %bb.h, !llvm.loop !3645

._crit_edge241:                                   ; preds = %bb.cy, %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit275, %._crit_edge
  call void @_ZNK5clang6interp7Pointer21initializeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %i.y) #21
  %i.amz = load ptr, ptr %10, align 8, !tbaa !640 ; 2 uses
  %i.ana = icmp eq ptr %i.amz, %i.bj
  br i1 %i.ana, label %_ZN4llvm11SmallVectorIhLj64EED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge241
  call void @free(ptr noundef %i.amz) #21
  br label %_ZN4llvm11SmallVectorIhLj64EED2Ev.exit

_ZN4llvm11SmallVectorIhLj64EED2Ev.exit:           ; preds = %._crit_edge241, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.dn

bb.by:                                            ; preds = %.lr.ph, %bb.cy
  %indvars.iv277 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next278, %bb.cy ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.anb = shl nuw nsw i64 %indvars.iv277, 1
  br label %bb.bz

.preheader:                                       ; preds = %bb.cx
  store <4 x i32> %19, ptr %i.b, align 16
  br label %bb.cz

bb.bz:                                            ; preds = %bb.by, %bb.cx
  %indvars.iv269 = phi i64 [ 0, %bb.by ], [ %indvars.iv.next270, %bb.cx ] ; 2 uses
  %11 = phi <4 x i32> [ zeroinitializer, %bb.by ], [ %19, %bb.cx ]
  %i.anc = add nuw nsw i64 %indvars.iv269, %i.anb ; 21 uses
  %i.and = load ptr, ptr %i.cb, align 8, !tbaa !33, !noalias !34 ; 29 uses
  %i.ane = load i32, ptr %i.cc, align 8, !tbaa !33, !noalias !34 ; 21 uses
  %i.anf = load ptr, ptr %i.and, align 8, !tbaa !35 ; 11 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 24
  %i.anh = load i32, ptr %i.ang, align 8, !tbaa !45
  %i.ani = icmp eq i32 %i.ane, %i.anh             ; 10 uses
  switch i8 %i.aq, label %bb.cw [
    i8 0, label %bb.ca
    i8 1, label %bb.cc
    i8 2, label %bb.ce
    i8 3, label %bb.cg
    i8 4, label %bb.ci
    i8 5, label %bb.ck
    i8 6, label %bb.cm
    i8 7, label %bb.co
    i8 8, label %bb.cq
    i8 9, label %bb.ct
  ]

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit302, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.anj = zext i32 %i.ane to i64
  %i.ank = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.anj
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 32
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit302

_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit302: ; preds = %bb.ca, %bb.cb
  %.sink382 = phi ptr [ %i.anm, %bb.cb ], [ %i.anf, %bb.ca ]
  %i.ann = getelementptr inbounds nuw i8, ptr %.sink382, i64 16
  %i.ano = load i32, ptr %i.ann, align 8, !tbaa !451 ; 2 uses
  %i.anp = trunc nuw i64 %i.anc to i32
  %i.anq = mul i32 %i.ano, %i.anp
  %i.anr = add i32 %i.ane, 8                      ; 2 uses
  %i.ans = add i32 %i.anq, %i.anr
  %i.ant = getelementptr inbounds nuw i8, ptr %i.and, i64 40
  %i.anu = zext i32 %i.ans to i64
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %i.and, i64 40
  %i.anx = load i8, ptr %i.anv, align 1, !tbaa !650
  %i.any = trunc i64 %i.anc to i32
  %i.anz = add i32 %i.any, 4
  %i.aoa = mul i32 %i.ano, %i.anz
  %i.aob = add i32 %i.aoa, %i.anr
  %i.aoc = zext i32 %i.aob to i64
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.aoc
  %i.aoe = load i8, ptr %i.aod, align 1, !tbaa !650
  br label %bb.cx

bb.cc:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit306, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aof = zext i32 %i.ane to i64
  %i.aog = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aof
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 32
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit306

_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit306: ; preds = %bb.cc, %bb.cd
  %.sink388 = phi ptr [ %i.aoi, %bb.cd ], [ %i.anf, %bb.cc ]
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sink388, i64 16
  %i.aok = load i32, ptr %i.aoj, align 8, !tbaa !451 ; 2 uses
  %i.aol = trunc nuw i64 %i.anc to i32
  %i.aom = mul i32 %i.aok, %i.aol
  %i.aon = add i32 %i.ane, 8                      ; 2 uses
  %i.aoo = add i32 %i.aom, %i.aon
  %i.aop = getelementptr inbounds nuw i8, ptr %i.and, i64 40
  %i.aoq = zext i32 %i.aoo to i64
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aop, i64 %i.aoq
  %i.aos = getelementptr inbounds nuw i8, ptr %i.and, i64 40
  %i.aot = load i8, ptr %i.aor, align 1, !tbaa !652
  %i.aou = trunc i64 %i.anc to i32
  %i.aov = add i32 %i.aou, 4
  %i.aow = mul i32 %i.aok, %i.aov
  %i.aox = add i32 %i.aow, %i.aon
  %i.aoy = zext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aoy
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !652
  br label %bb.cx

bb.ce:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit310, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.apb = zext i32 %i.ane to i64
  %i.apc = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.apb
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 32
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit310

_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit310: ; preds = %bb.ce, %bb.cf
  %.sink394 = phi ptr [ %i.ape, %bb.cf ], [ %i.anf, %bb.ce ]
  %i.apf = getelementptr inbounds nuw i8, ptr %.sink394, i64 16
  %i.apg = load i32, ptr %i.apf, align 8, !tbaa !451 ; 2 uses
  %i.aph = trunc nuw i64 %i.anc to i32
  %i.api = mul i32 %i.apg, %i.aph
  %i.apj = add i32 %i.ane, 8                      ; 2 uses
  %i.apk = add i32 %i.api, %i.apj
  %i.apl = zext i32 %i.apk to i64
  %i.apm = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.apl
  %.in196.in = getelementptr inbounds nuw i8, ptr %i.apm, i64 48
  %.in196 = load i16, ptr %.in196.in, align 8, !tbaa !33
  %i.apn = trunc i16 %.in196 to i8
  %i.apo = trunc i64 %i.anc to i32
  %i.app = add i32 %i.apo, 4
  %i.apq = mul i32 %i.apg, %i.app
  %i.apr = add i32 %i.apq, %i.apj
  %i.aps = zext i32 %i.apr to i64
  %i.apt = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 48
  %i.apv = load i16, ptr %i.apu, align 8, !tbaa !33
  %i.apw = trunc i16 %i.apv to i8
  br label %bb.cx

bb.cg:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit314, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.apx = zext i32 %i.ane to i64
  %i.apy = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.apx
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 32
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit314

_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit314: ; preds = %bb.cg, %bb.ch
  %.sink400 = phi ptr [ %i.aqa, %bb.ch ], [ %i.anf, %bb.cg ]
  %i.aqb = getelementptr inbounds nuw i8, ptr %.sink400, i64 16
  %i.aqc = load i32, ptr %i.aqb, align 8, !tbaa !451 ; 2 uses
  %i.aqd = trunc nuw i64 %i.anc to i32
  %i.aqe = mul i32 %i.aqc, %i.aqd
  %i.aqf = add i32 %i.ane, 8                      ; 2 uses
  %i.aqg = add i32 %i.aqe, %i.aqf
  %i.aqh = zext i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aqh
  %.in194.in = getelementptr inbounds nuw i8, ptr %i.aqi, i64 48
  %.in194 = load i16, ptr %.in194.in, align 8, !tbaa !33
  %i.aqj = trunc i16 %.in194 to i8
  %i.aqk = trunc i64 %i.anc to i32
  %i.aql = add i32 %i.aqk, 4
  %i.aqm = mul i32 %i.aqc, %i.aql
  %i.aqn = add i32 %i.aqm, %i.aqf
  %i.aqo = zext i32 %i.aqn to i64
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aqo
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 48
  %i.aqr = load i16, ptr %i.aqq, align 8, !tbaa !33
  %i.aqs = trunc i16 %i.aqr to i8
  br label %bb.cx

bb.ci:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit318, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.aqt = zext i32 %i.ane to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aqt
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 32
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit318

_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit318: ; preds = %bb.ci, %bb.cj
  %.sink406 = phi ptr [ %i.aqw, %bb.cj ], [ %i.anf, %bb.ci ]
  %i.aqx = getelementptr inbounds nuw i8, ptr %.sink406, i64 16
  %i.aqy = load i32, ptr %i.aqx, align 8, !tbaa !451 ; 2 uses
  %i.aqz = trunc nuw i64 %i.anc to i32
  %i.ara = mul i32 %i.aqy, %i.aqz
  %i.arb = add i32 %i.ane, 8                      ; 2 uses
  %i.arc = add i32 %i.ara, %i.arb
  %i.ard = zext i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.ard
  %.in192.in = getelementptr inbounds nuw i8, ptr %i.are, i64 48
  %.in192 = load i32, ptr %.in192.in, align 8, !tbaa !33
  %i.arf = trunc i32 %.in192 to i8
  %i.arg = trunc i64 %i.anc to i32
  %i.arh = add i32 %i.arg, 4
  %i.ari = mul i32 %i.aqy, %i.arh
  %i.arj = add i32 %i.ari, %i.arb
  %i.ark = zext i32 %i.arj to i64
  %i.arl = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.ark
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 48
  %i.arn = load i32, ptr %i.arm, align 8, !tbaa !33
  %i.aro = trunc i32 %i.arn to i8
  br label %bb.cx

bb.ck:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit322, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.arp = zext i32 %i.ane to i64
  %i.arq = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.arp
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 32
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit322

_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit322: ; preds = %bb.ck, %bb.cl
  %.sink412 = phi ptr [ %i.ars, %bb.cl ], [ %i.anf, %bb.ck ]
  %i.art = getelementptr inbounds nuw i8, ptr %.sink412, i64 16
  %i.aru = load i32, ptr %i.art, align 8, !tbaa !451 ; 2 uses
  %i.arv = trunc nuw i64 %i.anc to i32
  %i.arw = mul i32 %i.aru, %i.arv
  %i.arx = add i32 %i.ane, 8                      ; 2 uses
  %i.ary = add i32 %i.arw, %i.arx
  %i.arz = zext i32 %i.ary to i64
  %i.asa = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.arz
  %.in190.in = getelementptr inbounds nuw i8, ptr %i.asa, i64 48
  %.in190 = load i32, ptr %.in190.in, align 8, !tbaa !33
  %i.asb = trunc i32 %.in190 to i8
  %i.asc = trunc i64 %i.anc to i32
  %i.asd = add i32 %i.asc, 4
  %i.ase = mul i32 %i.aru, %i.asd
  %i.asf = add i32 %i.ase, %i.arx
  %i.asg = zext i32 %i.asf to i64
  %i.ash = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.asg
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 48
  %i.asj = load i32, ptr %i.asi, align 8, !tbaa !33
  %i.ask = trunc i32 %i.asj to i8
  br label %bb.cx

bb.cm:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit326, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.asl = zext i32 %i.ane to i64
  %i.asm = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.asl
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 32
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit326

_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit326: ; preds = %bb.cm, %bb.cn
  %.sink418 = phi ptr [ %i.aso, %bb.cn ], [ %i.anf, %bb.cm ]
  %i.asp = getelementptr inbounds nuw i8, ptr %.sink418, i64 16
  %i.asq = load i32, ptr %i.asp, align 8, !tbaa !451 ; 2 uses
  %i.asr = trunc nuw i64 %i.anc to i32
  %i.ass = mul i32 %i.asq, %i.asr
  %i.ast = add i32 %i.ane, 8                      ; 2 uses
  %i.asu = add i32 %i.ass, %i.ast
  %i.asv = zext i32 %i.asu to i64
  %i.asw = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.asv
  %.in188.in = getelementptr inbounds nuw i8, ptr %i.asw, i64 48
  %.in188 = load i64, ptr %.in188.in, align 8, !tbaa !33
  %i.asx = trunc i64 %.in188 to i8
  %i.asy = trunc i64 %i.anc to i32
  %i.asz = add i32 %i.asy, 4
  %i.ata = mul i32 %i.asq, %i.asz
  %i.atb = add i32 %i.ata, %i.ast
  %i.atc = zext i32 %i.atb to i64
  %i.atd = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.atc
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 48
  %i.atf = load i64, ptr %i.ate, align 8, !tbaa !33
  %i.atg = trunc i64 %i.atf to i8
  br label %bb.cx

bb.co:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit330, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ath = zext i32 %i.ane to i64
  %i.ati = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 32
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit330

_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit330: ; preds = %bb.co, %bb.cp
  %.sink424 = phi ptr [ %i.atk, %bb.cp ], [ %i.anf, %bb.co ]
  %i.atl = getelementptr inbounds nuw i8, ptr %.sink424, i64 16
  %i.atm = load i32, ptr %i.atl, align 8, !tbaa !451 ; 2 uses
  %i.atn = trunc nuw i64 %i.anc to i32
  %i.ato = mul i32 %i.atm, %i.atn
  %i.atp = add i32 %i.ane, 8                      ; 2 uses
  %i.atq = add i32 %i.ato, %i.atp
  %i.atr = zext i32 %i.atq to i64
  %i.ats = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.atr
  %.in.in = getelementptr inbounds nuw i8, ptr %i.ats, i64 48
  %.in = load i64, ptr %.in.in, align 8, !tbaa !33
  %i.att = trunc i64 %.in to i8
  %i.atu = trunc i64 %i.anc to i32
  %i.atv = add i32 %i.atu, 4
  %i.atw = mul i32 %i.atm, %i.atv
  %i.atx = add i32 %i.atw, %i.atp
  %i.aty = zext i32 %i.atx to i64
  %i.atz = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aty
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 48
  %i.aub = load i64, ptr %i.aua, align 8, !tbaa !33
  %i.auc = trunc i64 %i.aub to i8
  br label %bb.cx

bb.cq:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit332, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aud = zext i32 %i.ane to i64
  %i.aue = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aud
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 32
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit332

_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit332: ; preds = %bb.cq, %bb.cr
  %.0.i.i.i331 = phi ptr [ %i.aug, %bb.cr ], [ %i.anf, %bb.cq ]
  %i.auh = getelementptr inbounds nuw i8, ptr %.0.i.i.i331, i64 16
  %i.aui = load i32, ptr %i.auh, align 8, !tbaa !451
  %i.auj = trunc nuw i64 %i.anc to i32
  %i.auk = mul i32 %i.aui, %i.auj
  %i.aul = add i32 %i.ane, 8
  %i.aum = add i32 %i.aul, %i.auk
  %i.aun = getelementptr inbounds nuw i8, ptr %i.and, i64 40
  %i.auo = zext i32 %i.aum to i64
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aun, i64 %i.auo
  %i.auq = call noundef zeroext i8 @_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aup)
  %i.aur = load ptr, ptr %i.cb, align 8, !tbaa !33, !noalias !3690 ; 3 uses
  %i.aus = load i32, ptr %i.cc, align 8, !tbaa !33, !noalias !3690 ; 3 uses
  %i.aut = load ptr, ptr %i.aur, align 8, !tbaa !35 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 24
  %i.auv = load i32, ptr %i.auu, align 8, !tbaa !45
  %i.auw = icmp eq i32 %i.aus, %i.auv
  br i1 %i.auw, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit334, label %bb.cs

bb.cs:                                            ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit332
  %i.aux = zext i32 %i.aus to i64
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aur, i64 %i.aux
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 32
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit334

_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit334: ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit332, %bb.cs
  %.0.i.i.i333 = phi ptr [ %i.ava, %bb.cs ], [ %i.aut, %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit332 ]
  %i.avb = getelementptr inbounds nuw i8, ptr %.0.i.i.i333, i64 16
  %i.avc = load i32, ptr %i.avb, align 8, !tbaa !451
  %i.avd = trunc i64 %i.anc to i32
  %i.ave = add i32 %i.avd, 4
  %i.avf = mul i32 %i.avc, %i.ave
  %i.avg = add i32 %i.aus, 8
  %i.avh = add i32 %i.avg, %i.avf
  %i.avi = getelementptr inbounds nuw i8, ptr %i.aur, i64 40
  %i.avj = zext i32 %i.avh to i64
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avi, i64 %i.avj
  %i.avl = call noundef zeroext i8 @_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avk)
  br label %bb.cx

bb.ct:                                            ; preds = %bb.bz
  br i1 %i.ani, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit336, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.avm = zext i32 %i.ane to i64
  %i.avn = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.avm
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 32
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit336

_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit336: ; preds = %bb.ct, %bb.cu
  %.0.i.i.i335 = phi ptr [ %i.avp, %bb.cu ], [ %i.anf, %bb.ct ]
  %i.avq = getelementptr inbounds nuw i8, ptr %.0.i.i.i335, i64 16
  %i.avr = load i32, ptr %i.avq, align 8, !tbaa !451
  %i.avs = trunc nuw i64 %i.anc to i32
  %i.avt = mul i32 %i.avr, %i.avs
  %i.avu = add i32 %i.ane, 8
  %i.avv = add i32 %i.avu, %i.avt
  %i.avw = getelementptr inbounds nuw i8, ptr %i.and, i64 40
  %i.avx = zext i32 %i.avv to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.avx
  %i.avz = call noundef zeroext i8 @_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avy)
  %i.awa = load ptr, ptr %i.cb, align 8, !tbaa !33, !noalias !3691 ; 3 uses
  %i.awb = load i32, ptr %i.cc, align 8, !tbaa !33, !noalias !3691 ; 3 uses
  %i.awc = load ptr, ptr %i.awa, align 8, !tbaa !35 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 24
  %i.awe = load i32, ptr %i.awd, align 8, !tbaa !45
  %i.awf = icmp eq i32 %i.awb, %i.awe
  br i1 %i.awf, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit338, label %bb.cv

bb.cv:                                            ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit336
  %i.awg = zext i32 %i.awb to i64
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.awg
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 32
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit338

_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit338: ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit336, %bb.cv
  %.0.i.i.i337 = phi ptr [ %i.awj, %bb.cv ], [ %i.awc, %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit336 ]
  %i.awk = getelementptr inbounds nuw i8, ptr %.0.i.i.i337, i64 16
  %i.awl = load i32, ptr %i.awk, align 8, !tbaa !451
  %i.awm = trunc i64 %i.anc to i32
  %i.awn = add i32 %i.awm, 4
  %i.awo = mul i32 %i.awl, %i.awn
  %i.awp = add i32 %i.awb, 8
  %i.awq = add i32 %i.awp, %i.awo
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awa, i64 40
  %i.aws = zext i32 %i.awq to i64
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 %i.aws
  %i.awu = call noundef zeroext i8 @_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awt)
  br label %bb.cx

bb.cw:                                            ; preds = %bb.bz
  unreachable

bb.cx:                                            ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit338, %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit334, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit330, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit326, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit322, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit318, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit314, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit310, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit306, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit302
  %.0249 = phi i8 [ %i.avz, %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit338 ], [ %i.auq, %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit334 ], [ %i.att, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit330 ], [ %i.asx, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit326 ], [ %i.asb, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit322 ], [ %i.arf, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit318 ], [ %i.aqj, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit314 ], [ %i.apn, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit310 ], [ %i.aot, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit306 ], [ %i.anx, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit302 ]
  %.0248 = phi i8 [ %i.awu, %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit338 ], [ %i.avl, %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb0EEEEERT_j.exit334 ], [ %i.auc, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit330 ], [ %i.atg, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit326 ], [ %i.ask, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit322 ], [ %i.aro, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit318 ], [ %i.aqs, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit314 ], [ %i.apw, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit310 ], [ %i.apa, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit306 ], [ %i.aoe, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit302 ]
  %i.awv = load ptr, ptr %10, align 8, !tbaa !640
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.anc
  %i.awx = zext i8 %.0249 to i32
  %i.awy = zext i8 %.0248 to i32
  %12 = load <4 x i8>, ptr %i.aww, align 1, !tbaa !33
  %13 = zext <4 x i8> %12 to <4 x i32>
  %14 = insertelement <4 x i32> poison, i32 %i.awx, i64 0
  %15 = insertelement <4 x i32> %14, i32 %i.awy, i64 1
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %17 = sub nsw <4 x i32> %16, %13
  %18 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %17, i1 true)
  %19 = add <4 x i32> %11, %18                    ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next270, 4
  br i1 %exitcond272.not, label %.preheader, label %bb.bz, !llvm.loop !3650

bb.cy:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 4 ; 2 uses
  %i.awz = icmp samesign ult i64 %indvars.iv.next278, %i.cf
  br i1 %i.awz, label %bb.by, label %._crit_edge241, !llvm.loop !3651

bb.cz:                                            ; preds = %.preheader, %bb.dm
  %indvars.iv273 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next274, %bb.dm ] ; 12 uses
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv273
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !647 ; 12 uses
  switch i8 %i.bd, label %bb.dl [
    i8 0, label %_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit
    i8 1, label %_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit
    i8 2, label %_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit
    i8 3, label %_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit
    i8 4, label %_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit
    i8 5, label %_ZN5clang6interp8IntegralILj32ELb0EEC2ERKN4llvm6APSIntE.exit
    i8 6, label %_ZN5clang6interp8IntegralILj64ELb1EEC2ERKN4llvm6APSIntE.exit
    i8 7, label %_ZN5clang6interp8IntegralILj64ELb0EEC2ERKN4llvm6APSIntE.exit
    i8 8, label %bb.di
    i8 9, label %_ZN5clang6interp10IntegralAPILb1EEC2ERKN4llvm5APIntE.exit
  ]

_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.cz
  %i.axc = trunc i32 %i.axb to i8
  %i.axd = add nuw nsw i64 %indvars.iv273, %indvars.iv277
  %i.axe = load ptr, ptr %i.cd, align 8, !tbaa !33, !noalias !3692 ; 3 uses
  %i.axf = load i32, ptr %i.ce, align 8, !tbaa !33, !noalias !3692 ; 3 uses
  %i.axg = load ptr, ptr %i.axe, align 8, !tbaa !35 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.axi = load i32, ptr %i.axh, align 8, !tbaa !45
  %i.axj = icmp eq i32 %i.axf, %i.axi
  br i1 %i.axj, label %_ZN4llvm5APIntD2Ev.exit342, label %bb.da

bb.da:                                            ; preds = %_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit
  %i.axk = zext i32 %i.axf to i64
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.axk
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 32
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit342

_ZN4llvm5APIntD2Ev.exit342:                       ; preds = %_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit, %bb.da
  %.0.i.i.i340 = phi ptr [ %i.axn, %bb.da ], [ %i.axg, %_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit ]
  %i.axo = getelementptr inbounds nuw i8, ptr %.0.i.i.i340, i64 16
  %i.axp = load i32, ptr %i.axo, align 8, !tbaa !451
  %i.axq = trunc nuw nsw i64 %i.axd to i32
  %i.axr = mul i32 %i.axp, %i.axq
  %i.axs = add i32 %i.axf, 8
  %i.axt = add i32 %i.axs, %i.axr
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axe, i64 40
  %i.axv = zext i32 %i.axt to i64
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.axv
  store i8 %i.axc, ptr %i.axw, align 1, !tbaa !33
  br label %bb.dm

_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.cz
  %i.axx = trunc i32 %i.axb to i8
  %i.axy = add nuw nsw i64 %indvars.iv273, %indvars.iv277
  %i.axz = load ptr, ptr %i.cd, align 8, !tbaa !33, !noalias !3693 ; 3 uses
  %i.aya = load i32, ptr %i.ce, align 8, !tbaa !33, !noalias !3693 ; 3 uses
  %i.ayb = load ptr, ptr %i.axz, align 8, !tbaa !35 ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 24
  %i.ayd = load i32, ptr %i.ayc, align 8, !tbaa !45
  %i.aye = icmp eq i32 %i.aya, %i.ayd
  br i1 %i.aye, label %_ZN4llvm5APIntD2Ev.exit349, label %bb.db

bb.db:                                            ; preds = %_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit
  %i.ayf = zext i32 %i.aya to i64
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axz, i64 %i.ayf
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 32
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit349

_ZN4llvm5APIntD2Ev.exit349:                       ; preds = %_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit, %bb.db
  %.0.i.i.i346 = phi ptr [ %i.ayi, %bb.db ], [ %i.ayb, %_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit ]
  %i.ayj = getelementptr inbounds nuw i8, ptr %.0.i.i.i346, i64 16
  %i.ayk = load i32, ptr %i.ayj, align 8, !tbaa !451
  %i.ayl = trunc nuw nsw i64 %i.axy to i32
  %i.aym = mul i32 %i.ayk, %i.ayl
  %i.ayn = add i32 %i.aya, 8
  %i.ayo = add i32 %i.ayn, %i.aym
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axz, i64 40
  %i.ayq = zext i32 %i.ayo to i64
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %i.ayq
  store i8 %i.axx, ptr %i.ayr, align 1, !tbaa !33
  br label %bb.dm

_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.cz
  %i.ays = trunc i32 %i.axb to i16
  %i.ayt = add nuw nsw i64 %indvars.iv273, %indvars.iv277
  %i.ayu = load ptr, ptr %i.cd, align 8, !tbaa !33, !noalias !3694 ; 3 uses
  %i.ayv = load i32, ptr %i.ce, align 8, !tbaa !33, !noalias !3694 ; 3 uses
  %i.ayw = load ptr, ptr %i.ayu, align 8, !tbaa !35 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 24
  %i.ayy = load i32, ptr %i.ayx, align 8, !tbaa !45
  %i.ayz = icmp eq i32 %i.ayv, %i.ayy
  br i1 %i.ayz, label %_ZN4llvm5APIntD2Ev.exit356, label %bb.dc

bb.dc:                                            ; preds = %_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit
  %i.aza = zext i32 %i.ayv to i64
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayu, i64 %i.aza
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 32
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit356

_ZN4llvm5APIntD2Ev.exit356:                       ; preds = %_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit, %bb.dc
  %.0.i.i.i353 = phi ptr [ %i.azd, %bb.dc ], [ %i.ayw, %_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit ]
  %i.aze = getelementptr inbounds nuw i8, ptr %.0.i.i.i353, i64 16
  %i.azf = load i32, ptr %i.aze, align 8, !tbaa !451
  %i.azg = trunc nuw nsw i64 %i.ayt to i32
  %i.azh = mul i32 %i.azf, %i.azg
  %i.azi = add i32 %i.ayv, 8
  %i.azj = add i32 %i.azi, %i.azh
  %i.azk = getelementptr inbounds nuw i8, ptr %i.ayu, i64 40
  %i.azl = zext i32 %i.azj to i64
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azk, i64 %i.azl ; 2 uses
  store i8 0, ptr %i.azm, align 8, !tbaa !668
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azm, i64 8
  store i16 %i.ays, ptr %.sroa.4137.0..sroa_idx, align 8
  br label %bb.dm

_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.cz
  %i.azn = trunc i32 %i.axb to i16
  %i.azo = add nuw nsw i64 %indvars.iv273, %indvars.iv277
  %i.azp = load ptr, ptr %i.cd, align 8, !tbaa !33, !noalias !3695 ; 3 uses
  %i.azq = load i32, ptr %i.ce, align 8, !tbaa !33, !noalias !3695 ; 3 uses
  %i.azr = load ptr, ptr %i.azp, align 8, !tbaa !35 ; 2 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 24
  %i.azt = load i32, ptr %i.azs, align 8, !tbaa !45
  %i.azu = icmp eq i32 %i.azq, %i.azt
  br i1 %i.azu, label %_ZN4llvm5APIntD2Ev.exit363, label %bb.dd

bb.dd:                                            ; preds = %_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit
  %i.azv = zext i32 %i.azq to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azp, i64 %i.azv
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 32
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit363

_ZN4llvm5APIntD2Ev.exit363:                       ; preds = %_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit, %bb.dd
  %.0.i.i.i360 = phi ptr [ %i.azy, %bb.dd ], [ %i.azr, %_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit ]
  %i.azz = getelementptr inbounds nuw i8, ptr %.0.i.i.i360, i64 16
  %i.baa = load i32, ptr %i.azz, align 8, !tbaa !451
  %i.bab = trunc nuw nsw i64 %i.azo to i32
  %i.bac = mul i32 %i.baa, %i.bab
  %i.bad = add i32 %i.azq, 8
  %i.bae = add i32 %i.bad, %i.bac
  %i.baf = getelementptr inbounds nuw i8, ptr %i.azp, i64 40
  %i.bag = zext i32 %i.bae to i64
  %i.bah = getelementptr inbounds nuw i8, ptr %i.baf, i64 %i.bag ; 2 uses
  store i8 0, ptr %i.bah, align 8, !tbaa !668
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bah, i64 8
  store i16 %i.azn, ptr %.sroa.4116.0..sroa_idx, align 8
  br label %bb.dm

_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.cz
  %i.bai = zext i32 %i.axb to i64
  %i.baj = shl i64 %i.bai, 48
  %i.bak = ashr exact i64 %i.baj, 48
  %i.bal = trunc nsw i64 %i.bak to i32
  %i.bam = select i1 %i.bh, i32 %i.axb, i32 %i.bal
  %i.ban = add nuw nsw i64 %indvars.iv273, %indvars.iv277
  %i.bao = load ptr, ptr %i.cd, align 8, !tbaa !33, !noalias !3696 ; 3 uses
  %i.bap = load i32, ptr %i.ce, align 8, !tbaa !33, !noalias !3696 ; 3 uses
  %i.baq = load ptr, ptr %i.bao, align 8, !tbaa !35 ; 2 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 24
  %i.bas = load i32, ptr %i.bar, align 8, !tbaa !45
  %i.bat = icmp eq i32 %i.bap, %i.bas
  br i1 %i.bat, label %_ZN4llvm5APIntD2Ev.exit370, label %bb.de

bb.de:                                            ; preds = %_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit
  %i.bau = zext i32 %i.bap to i64
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bao, i64 %i.bau
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 32
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit370

_ZN4llvm5APIntD2Ev.exit370:                       ; preds = %_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit, %bb.de
  %.0.i.i.i367 = phi ptr [ %i.bax, %bb.de ], [ %i.baq, %_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit ]
  %i.bay = getelementptr inbounds nuw i8, ptr %.0.i.i.i367, i64 16
  %i.baz = load i32, ptr %i.bay, align 8, !tbaa !451
  %i.bba = trunc nuw nsw i64 %i.ban to i32
  %i.bbb = mul i32 %i.baz, %i.bba
  %i.bbc = add i32 %i.bap, 8
  %i.bbd = add i32 %i.bbc, %i.bbb
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bao, i64 40
  %i.bbf = zext i32 %i.bbd to i64
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bbf ; 2 uses
  store i8 0, ptr %i.bbg, align 8, !tbaa !668
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8
  store i32 %i.bam, ptr %.sroa.495.0..sroa_idx, align 8
  br label %bb.dm

_ZN5clang6interp8IntegralILj32ELb0EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.cz
  %i.bbh = zext i32 %i.axb to i64
  %i.bbi = shl i64 %i.bbh, 48
end_hunk_1
begin_hunk_2_@_ZN5clang6interpL28interp__builtin_ia32_mpsadbwERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprE:bb.a

_ZN4llvm5APIntC2Ejmbb.exit.i.i247:                ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit
  %i.qz = load i64, ptr %i.qv, align 8, !tbaa !33, !noalias !3770
  store i32 %i.qx, ptr %.phi.trans.insert.i237, align 8, !tbaa !642, !alias.scope !3770
  %i.ra = sub nsw i32 0, %i.qx
  %i.rb = and i32 %i.ra, 63
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = lshr i64 -1, %i.rc
  %i.re = icmp eq i32 %i.qx, 0
  %spec.select.i.i.i = select i1 %i.re, i64 0, i64 %i.rd, !prof !631
  %i.rf = and i64 %i.qz, %spec.select.i.i.i
  store i64 %i.rf, ptr %7, align 8, !tbaa !33, !alias.scope !3770
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i

bb.ax:                                            ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit
  %i.rg = zext i32 %i.qx to i64
  %i.rh = add nuw nsw i64 %i.rg, 63
  %i.ri = lshr i64 %i.rh, 6
  %i.rj = load ptr, ptr %i.qv, align 8, !tbaa !33, !noalias !3770
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef %i.qx, ptr %i.rj, i64 %i.ri) #21
  %.pre.i238 = load i32, ptr %.phi.trans.insert.i237, align 8, !tbaa !642
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i: ; preds = %bb.ax, %_ZN4llvm5APIntC2Ejmbb.exit.i.i247
  %i.rk = phi i32 [ %i.qx, %_ZN4llvm5APIntC2Ejmbb.exit.i.i247 ], [ %.pre.i238, %bb.ax ]
  %i.rl = icmp ult i32 %i.rk, 9
  br i1 %i.rl, label %_ZN4llvm5APIntD2Ev.exit.i.i245, label %bb.az

_ZN4llvm5APIntD2Ev.exit.i.i245:                   ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 8) #21
  %i.rm = load i64, ptr %5, align 8               ; 2 uses
  %i.rn = load i32, ptr %i.bl, align 8, !tbaa !642
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ro = icmp ult i32 %i.rn, 65
  br i1 %i.ro, label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i245
  %i.rp = inttoptr i64 %i.rm to ptr               ; 2 uses
  %.0.i.else.val.i.i246 = load i64, ptr %i.rp, align 8, !tbaa !33
  call void @_ZdaPv(ptr noundef nonnull %i.rp) #24
  br label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i

bb.az:                                            ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 8) #21
  %i.rq = load i32, ptr %i.bk, align 8, !tbaa !642
  %i.rr = icmp ult i32 %i.rq, 65                  ; 2 uses
  %i.rs = load ptr, ptr %6, align 8               ; 3 uses
  %spec.select.i4.i.i239 = select i1 %i.rr, ptr %6, ptr %i.rs
  %.0.i5.i.i240 = load i64, ptr %spec.select.i4.i.i239, align 8, !tbaa !33
  %i.rt = icmp eq ptr %i.rs, null
  %or.cond.i.i241 = select i1 %i.rr, i1 true, i1 %i.rt
  br i1 %or.cond.i.i241, label %_ZN4llvm5APIntD2Ev.exit6.i.i242, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.rs) #24
  br label %_ZN4llvm5APIntD2Ev.exit6.i.i242

_ZN4llvm5APIntD2Ev.exit6.i.i242:                  ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i

_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i: ; preds = %_ZN4llvm5APIntD2Ev.exit6.i.i242, %bb.ay, %_ZN4llvm5APIntD2Ev.exit.i.i245
  %.0.in.i.i243 = phi i64 [ %.0.i5.i.i240, %_ZN4llvm5APIntD2Ev.exit6.i.i242 ], [ %.0.i.else.val.i.i246, %bb.ay ], [ %i.rm, %_ZN4llvm5APIntD2Ev.exit.i.i245 ]
  %i.ru = load i32, ptr %.phi.trans.insert.i237, align 8, !tbaa !642
  %i.rv = icmp ugt i32 %i.ru, 64
  br i1 %i.rv, label %bb.bb, label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit

bb.bb:                                            ; preds = %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i
  %i.rw = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.rx = icmp eq ptr %i.rw, null
  br i1 %i.rx, label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.rw) #24
  br label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit

_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit: ; preds = %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i, %bb.bb, %bb.bc
  %.0.i.i244 = trunc i64 %.0.in.i.i243 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ry = add nuw nsw i32 %i.ce, %.0177200
  %i.rz = load ptr, ptr %i.bm, align 8, !tbaa !33, !noalias !3771 ; 3 uses
  %i.sa = load i32, ptr %i.bn, align 8, !tbaa !33, !noalias !3771 ; 3 uses
  %i.sb = load ptr, ptr %i.rz, align 8, !tbaa !35 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !45
  %i.se = icmp eq i32 %i.sa, %i.sd
  br i1 %i.se, label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit249, label %bb.bd

bb.bd:                                            ; preds = %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit
  %i.sf = zext i32 %i.sa to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit249

_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit249: ; preds = %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit, %bb.bd
  %.0.i.i.i248 = phi ptr [ %i.si, %bb.bd ], [ %i.sb, %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit ]
  %i.sj = getelementptr inbounds nuw i8, ptr %.0.i.i.i248, i64 16
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !451
  %i.sl = mul i32 %i.sk, %i.ry
  %i.sm = add i32 %i.sa, 8
  %i.sn = add i32 %i.sm, %i.sl
  %i.so = getelementptr inbounds nuw i8, ptr %i.rz, i64 40
  %i.sp = zext i32 %i.sn to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sp ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !3772)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !720, !noalias !3772 ; 7 uses
  %i.st = icmp ult i32 %i.ss, 65
  br i1 %i.st, label %_ZN4llvm5APIntC2Ejmbb.exit.i.i262, label %bb.be

_ZN4llvm5APIntC2Ejmbb.exit.i.i262:                ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit249
  %i.su = load i64, ptr %i.sq, align 8, !tbaa !33, !noalias !3772
  store i32 %i.ss, ptr %.phi.trans.insert.i250, align 8, !tbaa !642, !alias.scope !3772
  %i.sv = sub nsw i32 0, %i.ss
  %i.sw = and i32 %i.sv, 63
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = lshr i64 -1, %i.sx
  %i.sz = icmp eq i32 %i.ss, 0
  %spec.select.i.i.i263 = select i1 %i.sz, i64 0, i64 %i.sy, !prof !631
  %i.ta = and i64 %i.su, %spec.select.i.i.i263
  store i64 %i.ta, ptr %4, align 8, !tbaa !33, !alias.scope !3772
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i252

bb.be:                                            ; preds = %_ZNK5clang6interp7Pointer4elemINS0_10IntegralAPILb1EEEEERT_j.exit249
  %i.tb = zext i32 %i.ss to i64
  %i.tc = add nuw nsw i64 %i.tb, 63
  %i.td = lshr i64 %i.tc, 6
  %i.te = load ptr, ptr %i.sq, align 8, !tbaa !33, !noalias !3772
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.ss, ptr %i.te, i64 %i.td) #21
  %.pre.i251 = load i32, ptr %.phi.trans.insert.i250, align 8, !tbaa !642
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i252

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i252: ; preds = %bb.be, %_ZN4llvm5APIntC2Ejmbb.exit.i.i262
  %i.tf = phi i32 [ %i.ss, %_ZN4llvm5APIntC2Ejmbb.exit.i.i262 ], [ %.pre.i251, %bb.be ]
  %i.tg = icmp ult i32 %i.tf, 9
  br i1 %i.tg, label %_ZN4llvm5APIntD2Ev.exit.i.i260, label %bb.bg

_ZN4llvm5APIntD2Ev.exit.i.i260:                   ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i252
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 8) #21
  %i.th = load i64, ptr %2, align 8               ; 2 uses
  %i.ti = load i32, ptr %i.bp, align 8, !tbaa !642
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.tj = icmp ult i32 %i.ti, 65
  br i1 %i.tj, label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i257, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i260
  %i.tk = inttoptr i64 %i.th to ptr               ; 2 uses
  %.0.i.else.val.i.i261 = load i64, ptr %i.tk, align 8, !tbaa !33
  call void @_ZdaPv(ptr noundef nonnull %i.tk) #24
  br label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i257

bb.bg:                                            ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i252
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 8) #21
  %i.tl = load i32, ptr %i.bo, align 8, !tbaa !642
  %i.tm = icmp ult i32 %i.tl, 65                  ; 2 uses
  %i.tn = load ptr, ptr %3, align 8               ; 3 uses
  %spec.select.i4.i.i253 = select i1 %i.tm, ptr %3, ptr %i.tn
  %.0.i5.i.i254 = load i64, ptr %spec.select.i4.i.i253, align 8, !tbaa !33
  %i.to = icmp eq ptr %i.tn, null
  %or.cond.i.i255 = select i1 %i.tm, i1 true, i1 %i.to
  br i1 %or.cond.i.i255, label %_ZN4llvm5APIntD2Ev.exit6.i.i256, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.tn) #24
  br label %_ZN4llvm5APIntD2Ev.exit6.i.i256

_ZN4llvm5APIntD2Ev.exit6.i.i256:                  ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i257

_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i257: ; preds = %_ZN4llvm5APIntD2Ev.exit6.i.i256, %bb.bf, %_ZN4llvm5APIntD2Ev.exit.i.i260
  %.0.in.i.i258 = phi i64 [ %.0.i5.i.i254, %_ZN4llvm5APIntD2Ev.exit6.i.i256 ], [ %.0.i.else.val.i.i261, %bb.bf ], [ %i.th, %_ZN4llvm5APIntD2Ev.exit.i.i260 ]
  %i.tp = load i32, ptr %.phi.trans.insert.i250, align 8, !tbaa !642
  %i.tq = icmp ugt i32 %i.tp, 64
  br i1 %i.tq, label %bb.bi, label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit264

bb.bi:                                            ; preds = %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i257
  %i.tr = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.ts = icmp eq ptr %i.tr, null
  br i1 %i.ts, label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit264, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.tr) #24
  br label %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit264

_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit264: ; preds = %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit.i257, %bb.bi, %bb.bj
  %.0.i.i259 = trunc i64 %.0.in.i.i258 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.bl

bb.bk:                                            ; preds = %bb.h
  unreachable

bb.bl:                                            ; preds = %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit264, %_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit235, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit218, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit215, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit212, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit209, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit206, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit203, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit200, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit197
  %.0176 = phi i8 [ %i.dj, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit197 ], [ %i.eq, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit200 ], [ %i.fy, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit203 ], [ %i.hh, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit206 ], [ %i.iq, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit209 ], [ %i.jz, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit212 ], [ %i.li, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit215 ], [ %i.mr, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit218 ], [ %.0.i.i, %_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit235 ], [ %.0.i.i244, %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit264 ]
  %.0 = phi i8 [ %i.ed, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb1EEEEERT_j.exit197 ], [ %i.fk, %_ZNK5clang6interp7Pointer4elemINS0_4CharILb0EEEEERT_j.exit200 ], [ %i.gt, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit203 ], [ %i.ic, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit206 ], [ %i.jl, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb1EEEEERT_j.exit209 ], [ %i.ku, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj32ELb0EEEEERT_j.exit212 ], [ %i.md, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb1EEEEERT_j.exit215 ], [ %i.nm, %_ZNK5clang6interp7Pointer4elemINS0_8IntegralILj64ELb0EEEEERT_j.exit218 ], [ %.0.i.i231, %_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv.exit235 ], [ %.0.i.i259, %_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv.exit264 ]
  %i.tt = zext i8 %.0176 to i16
  %i.tu = zext i8 %.0 to i16
  %i.tv = sub nsw i16 %i.tt, %i.tu
  %16 = call i16 @llvm.abs.i16(i16 %i.tv, i1 true)
  %i.tw = add i16 %16, %.0178199                  ; 15 uses
  %i.tx = add nuw nsw i32 %.0177200, 1            ; 2 uses
  %.not186 = icmp eq i32 %i.tx, 4
  br i1 %.not186, label %bb.g, label %bb.h, !llvm.loop !3735

_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.g
  %i.ty = trunc i16 %i.tw to i8
  %i.tz = add nuw nsw i32 %.0179210, %i.cp
  %i.ua = load ptr, ptr %i.bu, align 8, !tbaa !33, !noalias !3773 ; 3 uses
  %i.ub = load i32, ptr %i.bv, align 8, !tbaa !33, !noalias !3773 ; 3 uses
  %i.uc = load ptr, ptr %i.ua, align 8, !tbaa !35 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !45
  %i.uf = icmp eq i32 %i.ub, %i.ue
  br i1 %i.uf, label %_ZN4llvm5APIntD2Ev.exit268, label %bb.bm

bb.bm:                                            ; preds = %_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit
  %i.ug = zext i32 %i.ub to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.ug
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 32
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit268

_ZN4llvm5APIntD2Ev.exit268:                       ; preds = %_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit, %bb.bm
  %.0.i.i.i266 = phi ptr [ %i.uj, %bb.bm ], [ %i.uc, %_ZN5clang6interp4CharILb1EEC2ERKN4llvm6APSIntE.exit ]
  %i.uk = getelementptr inbounds nuw i8, ptr %.0.i.i.i266, i64 16
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !451
  %i.um = mul i32 %i.ul, %i.tz
  %i.un = add i32 %i.ub, 8
  %i.uo = add i32 %i.un, %i.um
  %i.up = getelementptr inbounds nuw i8, ptr %i.ua, i64 40
  %i.uq = zext i32 %i.uo to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.uq
  store i8 %i.ty, ptr %i.ur, align 1, !tbaa !33
  br label %bb.by

_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.g
  %i.us = trunc i16 %i.tw to i8
  %i.ut = add nuw nsw i32 %.0179210, %i.co
  %i.uu = load ptr, ptr %i.bu, align 8, !tbaa !33, !noalias !3774 ; 3 uses
  %i.uv = load i32, ptr %i.bv, align 8, !tbaa !33, !noalias !3774 ; 3 uses
  %i.uw = load ptr, ptr %i.uu, align 8, !tbaa !35 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !45
  %i.uz = icmp eq i32 %i.uv, %i.uy
  br i1 %i.uz, label %_ZN4llvm5APIntD2Ev.exit275, label %bb.bn

bb.bn:                                            ; preds = %_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit
  %i.va = zext i32 %i.uv to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 32
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit275

_ZN4llvm5APIntD2Ev.exit275:                       ; preds = %_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit, %bb.bn
  %.0.i.i.i272 = phi ptr [ %i.vd, %bb.bn ], [ %i.uw, %_ZN5clang6interp4CharILb0EEC2ERKN4llvm6APSIntE.exit ]
  %i.ve = getelementptr inbounds nuw i8, ptr %.0.i.i.i272, i64 16
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !451
  %i.vg = mul i32 %i.vf, %i.ut
  %i.vh = add i32 %i.uv, 8
  %i.vi = add i32 %i.vh, %i.vg
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uu, i64 40
  %i.vk = zext i32 %i.vi to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vk
  store i8 %i.us, ptr %i.vl, align 1, !tbaa !33
  br label %bb.by

_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.g
  %i.vm = add nuw nsw i32 %.0179210, %i.cn
  %i.vn = load ptr, ptr %i.bu, align 8, !tbaa !33, !noalias !3775 ; 3 uses
  %i.vo = load i32, ptr %i.bv, align 8, !tbaa !33, !noalias !3775 ; 3 uses
  %i.vp = load ptr, ptr %i.vn, align 8, !tbaa !35 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !45
  %i.vs = icmp eq i32 %i.vo, %i.vr
  br i1 %i.vs, label %_ZN4llvm5APIntD2Ev.exit282, label %bb.bo

bb.bo:                                            ; preds = %_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit
  %i.vt = zext i32 %i.vo to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 32
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit282

_ZN4llvm5APIntD2Ev.exit282:                       ; preds = %_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit, %bb.bo
  %.0.i.i.i279 = phi ptr [ %i.vw, %bb.bo ], [ %i.vp, %_ZN5clang6interp8IntegralILj16ELb1EEC2ERKN4llvm6APSIntE.exit ]
  %i.vx = getelementptr inbounds nuw i8, ptr %.0.i.i.i279, i64 16
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !451
  %i.vz = mul i32 %i.vy, %i.vm
  %i.wa = add i32 %i.vo, 8
  %i.wb = add i32 %i.wa, %i.vz
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vn, i64 40
  %i.wd = zext i32 %i.wb to i64
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wd ; 2 uses
  store i8 0, ptr %i.we, align 8, !tbaa !668
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store i16 %i.tw, ptr %.sroa.4137.0..sroa_idx, align 8
  br label %bb.by

_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.g
  %i.wf = add nuw nsw i32 %.0179210, %i.cm
  %i.wg = load ptr, ptr %i.bu, align 8, !tbaa !33, !noalias !3776 ; 3 uses
  %i.wh = load i32, ptr %i.bv, align 8, !tbaa !33, !noalias !3776 ; 3 uses
  %i.wi = load ptr, ptr %i.wg, align 8, !tbaa !35 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !45
  %i.wl = icmp eq i32 %i.wh, %i.wk
  br i1 %i.wl, label %_ZN4llvm5APIntD2Ev.exit289, label %bb.bp

bb.bp:                                            ; preds = %_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit
  %i.wm = zext i32 %i.wh to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wm
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit289

_ZN4llvm5APIntD2Ev.exit289:                       ; preds = %_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit, %bb.bp
  %.0.i.i.i286 = phi ptr [ %i.wp, %bb.bp ], [ %i.wi, %_ZN5clang6interp8IntegralILj16ELb0EEC2ERKN4llvm6APSIntE.exit ]
  %i.wq = getelementptr inbounds nuw i8, ptr %.0.i.i.i286, i64 16
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !451
  %i.ws = mul i32 %i.wr, %i.wf
  %i.wt = add i32 %i.wh, 8
  %i.wu = add i32 %i.wt, %i.ws
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wg, i64 40
  %i.ww = zext i32 %i.wu to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.ww ; 2 uses
  store i8 0, ptr %i.wx, align 8, !tbaa !668
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  store i16 %i.tw, ptr %.sroa.4116.0..sroa_idx, align 8
  br label %bb.by

_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.g
  %i.wy = zext i16 %i.tw to i32
  %i.wz = sext i16 %i.tw to i32
  %i.xa = select i1 %i.bg, i32 %i.wy, i32 %i.wz
  %i.xb = add nuw nsw i32 %.0179210, %i.cl
  %i.xc = load ptr, ptr %i.bu, align 8, !tbaa !33, !noalias !3777 ; 3 uses
  %i.xd = load i32, ptr %i.bv, align 8, !tbaa !33, !noalias !3777 ; 3 uses
  %i.xe = load ptr, ptr %i.xc, align 8, !tbaa !35 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !45
  %i.xh = icmp eq i32 %i.xd, %i.xg
  br i1 %i.xh, label %_ZN4llvm5APIntD2Ev.exit296, label %bb.bq

bb.bq:                                            ; preds = %_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit
  %i.xi = zext i32 %i.xd to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 32
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit296

_ZN4llvm5APIntD2Ev.exit296:                       ; preds = %_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit, %bb.bq
  %.0.i.i.i293 = phi ptr [ %i.xl, %bb.bq ], [ %i.xe, %_ZN5clang6interp8IntegralILj32ELb1EEC2ERKN4llvm6APSIntE.exit ]
  %i.xm = getelementptr inbounds nuw i8, ptr %.0.i.i.i293, i64 16
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !451
  %i.xo = mul i32 %i.xn, %i.xb
  %i.xp = add i32 %i.xd, 8
  %i.xq = add i32 %i.xp, %i.xo
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xc, i64 40
  %i.xs = zext i32 %i.xq to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xs ; 2 uses
  store i8 0, ptr %i.xt, align 8, !tbaa !668
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store i32 %i.xa, ptr %.sroa.495.0..sroa_idx, align 8
  br label %bb.by

_ZN5clang6interp8IntegralILj32ELb0EEC2ERKN4llvm6APSIntE.exit: ; preds = %bb.g
  %i.xu = zext i16 %i.tw to i32
  %i.xv = sext i16 %i.tw to i32
  %i.xw = select i1 %i.bg, i32 %i.xu, i32 %i.xv
  %i.xx = add nuw nsw i32 %.0179210, %i.ck
  %i.xy = load ptr, ptr %i.bu, align 8, !tbaa !33, !noalias !3778 ; 3 uses
  %i.xz = load i32, ptr %i.bv, align 8, !tbaa !33, !noalias !3778 ; 3 uses
  %i.ya = load ptr, ptr %i.xy, align 8, !tbaa !35 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !45
  %i.yd = icmp eq i32 %i.xz, %i.yc
  br i1 %i.yd, label %_ZN4llvm5APIntD2Ev.exit303, label %bb.br

bb.br:                                            ; preds = %_ZN5clang6interp8IntegralILj32ELb0EEC2ERKN4llvm6APSIntE.exit
  %i.ye = zext i32 %i.xz to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !48
  br label %_ZN4llvm5APIntD2Ev.exit303

_ZN4llvm5APIntD2Ev.exit303:                       ; preds = %_ZN5clang6interp8IntegralILj32ELb0EEC2ERKN4llvm6APSIntE.exit, %bb.br
  %.0.i.i.i300 = phi ptr [ %i.yh, %bb.br ], [ %i.ya, %_ZN5clang6interp8IntegralILj32ELb0EEC2ERKN4llvm6APSIntE.exit ]
  %i.yi = getelementptr inbounds nuw i8, ptr %.0.i.i.i300, i64 16
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !451
  %i.yk = mul i32 %i.yj, %i.xx
  %i.yl = add i32 %i.xz, 8
  %i.ym = add i32 %i.yl, %i.yk
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xy, i64 40
  %i.yo = zext i32 %i.ym to i64
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yo ; 2 uses
  store i8 0, ptr %i.yp, align 8, !tbaa !668
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  store i32 %i.xw, ptr %.sroa.474.0..sroa_idx, align 8
  br label %bb.by

end_hunk_2
begin_hunk_3_@_ZN4llvm7maximumERKNS_7APFloatES2_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !33
  %.not.i.i.i15 = icmp eq ptr %i.k, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %.0.i.i.i16 = select i1 %.not.i.i.i15, ptr %i.m, ptr %2
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 20
  %i.o = load i8, ptr %i.n, align 4               ; 2 uses
  %i.p = and i8 %i.o, 7                           ; 2 uses
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  %i.r = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !9257
  %.not.i.i17 = icmp eq ptr %i.r, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !9257
  %.0.i.i18 = select i1 %.not.i.i17, ptr %i.t, ptr %0
  tail call void @_ZN4llvm6detail9IEEEFloat9makeQuietEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i18) #21
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i8 %i.f, 3
  %i.v = icmp eq i8 %i.p, 3
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = and i8 %i.e, 8
  %i.x = icmp ne i8 %i.w, 0                       ; 2 uses
  %i.y = and i8 %i.o, 8
  %i.z = icmp ne i8 %i.y, 0
  %i.aa = xor i1 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = select i1 %i.x, ptr %2, ptr %1
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #21
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.e
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef i32 @_ZNK4llvm6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  br label %_ZNK4llvm7APFloatltERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noundef i32 @_ZNK4llvm6detail13DoubleAPFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  br label %_ZNK4llvm7APFloatltERKS0_.exit

_ZNK4llvm7APFloatltERKS0_.exit:                   ; preds = %bb.i, %bb.j
  %.0.i.i30 = phi i32 [ %i.ac, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = icmp eq i32 %.0.i.i30, 0
  %i.af = select i1 %i.ae, ptr %2, ptr %1
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.af) #21
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm7APFloatltERKS0_.exit, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFSt8optionalINS_7APFloatEERKS2_S5_S1_INS_6APSIntEEEE11callback_fnIZN5clang6interp16InterpretBuiltinERNSC_11InterpStateENSC_7CodePtrEPKNSB_8CallExprEjE5$_112EES3_lS5_S5_S7_"(ptr dead_on_unwind noalias writable sret(%"class.std::optional.987") align 8 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef align 8 captures(none) dereferenceable(24) %4) #0 align 2 {
bb.a:
  %5 = alloca %"class.std::optional.853", align 8 ; 12 uses
  %6 = alloca %"class.std::optional.853", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !677
  %i.c = load i8, ptr %i.a, align 8, !tbaa !677, !range !50, !noundef !34
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalIN4llvm6APSIntEEC2EOS2_.exit

_ZNSt8optionalIN4llvm6APSIntEEC2EOS2_.exit:       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !677, !noalias !9260
  br label %_ZNSt8optionalIN4llvm6APSIntEEC2ERKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !642  ; 3 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !642
  %i.i = load i64, ptr %4, align 8                ; 2 uses
  store i64 %i.i, ptr %6, align 8
  store i32 0, ptr %i.g, align 8, !tbaa !642
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i8, ptr %i.k, align 4, !tbaa !644, !range !50, !noundef !34 ; 2 uses
  store i8 %i.l, ptr %i.j, align 4, !tbaa !644
  store i8 1, ptr %i.b, align 8, !tbaa !677
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 0, ptr %i.m, align 8, !tbaa !677, !noalias !9260
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.h, ptr %i.n, align 8, !tbaa !642, !noalias !9260
  %i.o = icmp ult i32 %i.h, 65
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.i, ptr %5, align 8, !tbaa !33, !noalias !9260
  br label %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #21, !noalias !9260
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !644, !range !50, !noalias !9260
  br label %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.p = phi i8 [ %.pre, %bb.d ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.p, ptr %i.q, align 4, !tbaa !644, !noalias !9260
  store i8 1, ptr %i.m, align 8, !tbaa !677, !noalias !9260
  br label %_ZNSt8optionalIN4llvm6APSIntEEC2ERKS2_.exit.i

_ZNSt8optionalIN4llvm6APSIntEEC2ERKS2_.exit.i:    ; preds = %_ZNSt8optionalIN4llvm6APSIntEEC2EOS2_.exit, %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.m, %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i ], [ %i.e, %_ZNSt8optionalIN4llvm6APSIntEEC2EOS2_.exit ] ; 2 uses
  call void @_Z18EvalScalarMinMaxFpRKN4llvm7APFloatES2_St8optionalINS_6APSIntEEb(ptr dead_on_unwind writable sret(%"class.std::optional.987") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext false) #21
  %i.s = load i8, ptr %i.r, align 8, !tbaa !677, !range !50, !noalias !9260, !noundef !34
  %i.t = trunc nuw i8 %i.s to i1
  store i8 0, ptr %i.r, align 8, !tbaa !677, !noalias !9260
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i32, ptr %i.u, align 8, !noalias !9260
  %i.w = icmp ugt i32 %i.v, 64
  %or.cond.i.i.i.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK5$_112clERKN4llvm7APFloatESB_St8optionalINS8_6APSIntEE.exit"

bb.e:                                             ; preds = %_ZNSt8optionalIN4llvm6APSIntEEC2ERKS2_.exit.i
  %i.x = load ptr, ptr %5, align 8, !tbaa !33, !noalias !9260 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK5$_112clERKN4llvm7APFloatESB_St8optionalINS8_6APSIntEE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.x) #24
  br label %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK5$_112clERKN4llvm7APFloatESB_St8optionalINS8_6APSIntEE.exit"

"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK5$_112clERKN4llvm7APFloatESB_St8optionalINS8_6APSIntEE.exit": ; preds = %_ZNSt8optionalIN4llvm6APSIntEEC2ERKS2_.exit.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.z = load i8, ptr %i.b, align 8, !tbaa !677, !range !50, !noundef !34
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.b, align 8, !tbaa !677
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp ugt i32 %i.ac, 64
  %or.cond.i.i.i = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK5$_112clERKN4llvm7APFloatESB_St8optionalINS8_6APSIntEE.exit"
  %i.ae = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #24
  br label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit: ; preds = %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK5$_112clERKN4llvm7APFloatESB_St8optionalINS8_6APSIntEE.exit", %bb.g, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v16i32(<16 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v16i32(<16 x i32>) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind willreturn memory(read, argmem: readwrite) }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !477}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !477}
!6 = distinct !{!6, !477}
!7 = distinct !{!7, !477}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !12, i64 0}
!17 = !{!"_ZTSN5clang6interp7StorageE", !12, i64 0}
!18 = !{!"_ZTSN5clang6interp7PointerE", !16, i64 0, !17, i64 8, !12, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!"any pointer", !12, i64 0}
!21 = !{!"p1 _ZTSN5clang6interp10DescriptorE", !20, i64 0}
!22 = !{!"p1 _ZTSN5clang6interp7PointerE", !20, i64 0}
!23 = !{!"_ZTSN5clang16OptionalUnsignedIjEE", !13, i64 0}
!24 = !{!"bool", !12, i64 0}
!25 = !{!"_ZTSN5clang6interp5BlockE", !21, i64 0, !22, i64 8, !23, i64 16, !13, i64 20, !24, i64 24, !24, i64 25, !23, i64 28, !12, i64 32}
!26 = !{!25, !12, i64 32}
!27 = !{!"p1 _ZTSN5clang4TypeE", !20, i64 0}
!28 = !{!"_ZTSN4llvm6detail13PunnedPointerINS_12PointerUnionIJPKN5clang4TypeEPKNS3_8ExtQualsEEEEEE", !12, i64 0}
!29 = !{!"_ZTSN4llvm14PointerIntPairINS_12PointerUnionIJPKN5clang4TypeEPKNS2_8ExtQualsEEEELj3EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj3ESB_EEEE", !28, i64 0}
!30 = !{!"_ZTSN5clang8QualTypeE", !29, i64 0}
!31 = !{!"_ZTSN5clang22ExtQualsTypeCommonBaseE", !27, i64 0, !30, i64 8}
!32 = !{!31, !27, i64 0}
!33 = !{!12, !12, i64 0}
!34 = !{}
!35 = !{!25, !21, i64 0}
!36 = !{!18, !16, i64 0}
!37 = !{!"_ZTSN4llvm6detail13PunnedPointerIPvEE", !12, i64 0}
!38 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang4DeclEPKNS3_4ExprEEEELi2EJEEE", !37, i64 0}
!39 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang4DeclEPKNS3_4ExprEEEELi1EJS9_EEE", !38, i64 0}
!40 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang4DeclEPKNS3_4ExprEEEELi0EJS6_S9_EEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm12PointerUnionIJPKN5clang4DeclEPKNS1_4ExprEEEE", !40, i64 0}
!42 = !{!"p1 _ZTSN5clang6interp6RecordE", !20, i64 0}
!43 = !{!"_ZTSN5clang6interp11OptPrimTypeE", !12, i64 0}
!44 = !{!"_ZTSN5clang6interp10DescriptorE", !41, i64 0, !27, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !42, i64 32, !21, i64 40, !43, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !20, i64 56, !20, i64 64}
!45 = !{!44, !13, i64 24}
!46 = !{!"_ZTSN5clang6interp8LifetimeE", !12, i64 0}
!47 = !{!"_ZTSN5clang6interp16InlineDescriptorE", !13, i64 0, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 5, !13, i64 5, !46, i64 6, !21, i64 8}
!48 = !{!47, !21, i64 8}
!49 = !{!44, !24, i64 53}
!50 = !{i8 0, i8 2}
!51 = !{!44, !13, i64 20}
!52 = !{!47, !13, i64 0}
!53 = !{!"_ZTSN4llvm14RefCountedBaseIN5clang10ASTContextEEE", !13, i64 0}
!54 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !20, i64 0, !13, i64 8, !13, i64 12}
!55 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPN5clang4TypeEvEE", !54, i64 0}
!56 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPN5clang4TypeELb1EEE", !55, i64 0}
!57 = !{!"_ZTSN4llvm15SmallVectorImplIPN5clang4TypeEEE", !56, i64 0}
!58 = !{!"_ZTSN4llvm11SmallVectorIPN5clang4TypeELj0EEE", !57, i64 0}
!59 = !{!"any p2 pointer", !20, i64 0}
!60 = !{!"_ZTSN4llvm14FoldingSetBaseE", !59, i64 0, !13, i64 8, !13, i64 12}
!61 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang8ExtQualsEEES3_EE", !60, i64 0}
!62 = !{!"_ZTSN4llvm10FoldingSetIN5clang8ExtQualsEEE", !61, i64 0}
!63 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang11ComplexTypeEEES3_EE", !60, i64 0}
!64 = !{!"_ZTSN4llvm10FoldingSetIN5clang11ComplexTypeEEE", !63, i64 0}
!65 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang11PointerTypeEEES3_EE", !60, i64 0}
!66 = !{!"_ZTSN4llvm10FoldingSetIN5clang11PointerTypeEEE", !65, i64 0}
!67 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang12AdjustedTypeEEES3_EE", !60, i64 0}
!68 = !{!"_ZTSN4llvm10FoldingSetIN5clang12AdjustedTypeEEE", !67, i64 0}
!69 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang16BlockPointerTypeEEES3_EE", !60, i64 0}
!70 = !{!"_ZTSN4llvm10FoldingSetIN5clang16BlockPointerTypeEEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19LValueReferenceTypeEEES3_EE", !60, i64 0}
!72 = !{!"_ZTSN4llvm10FoldingSetIN5clang19LValueReferenceTypeEEE", !71, i64 0}
!73 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19RValueReferenceTypeEEES3_EE", !60, i64 0}
!74 = !{!"_ZTSN4llvm10FoldingSetIN5clang19RValueReferenceTypeEEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang17MemberPointerTypeEEES3_EE", !60, i64 0}
!76 = !{!"_ZTSN4llvm10FoldingSetIN5clang17MemberPointerTypeEEE", !75, i64 0}
!77 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang17ConstantArrayTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!78 = !{!"p1 _ZTSN5clang10ASTContextE", !20, i64 0}
!79 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang17ConstantArrayTypeERNS1_10ASTContextEEE", !77, i64 0, !78, i64 16}
!80 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19IncompleteArrayTypeEEES3_EE", !60, i64 0}
!81 = !{!"_ZTSN4llvm10FoldingSetIN5clang19IncompleteArrayTypeEEE", !80, i64 0}
!82 = !{!"p2 _ZTSN5clang17VariableArrayTypeE", !59, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIPN5clang17VariableArrayTypeESaIS2_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseIPN5clang17VariableArrayTypeESaIS2_EE12_Vector_implE", !83, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseIPN5clang17VariableArrayTypeESaIS2_EE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorIPN5clang17VariableArrayTypeESaIS2_EE", !85, i64 0}
!87 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang23DependentSizedArrayTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!88 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang23DependentSizedArrayTypeERNS1_10ASTContextEEE", !87, i64 0, !78, i64 16}
!89 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang27DependentSizedExtVectorTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!90 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang27DependentSizedExtVectorTypeERNS1_10ASTContextEEE", !89, i64 0, !78, i64 16}
!91 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang25DependentAddressSpaceTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!92 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang25DependentAddressSpaceTypeERNS1_10ASTContextEEE", !91, i64 0, !78, i64 16}
!93 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang10VectorTypeEEES3_EE", !60, i64 0}
!94 = !{!"_ZTSN4llvm10FoldingSetIN5clang10VectorTypeEEE", !93, i64 0}
!95 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang19DependentVectorTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!96 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang19DependentVectorTypeERNS1_10ASTContextEEE", !95, i64 0, !78, i64 16}
!97 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang18ConstantMatrixTypeEEES3_EE", !60, i64 0}
!98 = !{!"_ZTSN4llvm10FoldingSetIN5clang18ConstantMatrixTypeEEE", !97, i64 0}
!99 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang24DependentSizedMatrixTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!100 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang24DependentSizedMatrixTypeERNS1_10ASTContextEEE", !99, i64 0, !78, i64 16}
!101 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19FunctionNoProtoTypeEEES3_EE", !60, i64 0}
!102 = !{!"_ZTSN4llvm10FoldingSetIN5clang19FunctionNoProtoTypeEEE", !101, i64 0}
!103 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang17FunctionProtoTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!104 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang17FunctionProtoTypeERNS1_10ASTContextEEE", !103, i64 0, !78, i64 16}
!105 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang23DependentTypeOfExprTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!106 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang23DependentTypeOfExprTypeERNS1_10ASTContextEEE", !105, i64 0, !78, i64 16}
!107 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang21DependentDecltypeTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!108 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang21DependentDecltypeTypeERNS1_10ASTContextEEE", !107, i64 0, !78, i64 16}
!109 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang16PackIndexingTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!110 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang16PackIndexingTypeERNS1_10ASTContextEEE", !109, i64 0, !78, i64 16}
!111 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang20TemplateTypeParmTypeEEES3_EE", !60, i64 0}
!112 = !{!"_ZTSN4llvm10FoldingSetIN5clang20TemplateTypeParmTypeEEE", !111, i64 0}
!113 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang17ObjCTypeParamTypeEEES3_EE", !60, i64 0}
!114 = !{!"_ZTSN4llvm10FoldingSetIN5clang17ObjCTypeParamTypeEEE", !113, i64 0}
!115 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang25SubstTemplateTypeParmTypeEEES3_EE", !60, i64 0}
!116 = !{!"_ZTSN4llvm10FoldingSetIN5clang25SubstTemplateTypeParmTypeEEE", !115, i64 0}
!117 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang29SubstTemplateTypeParmPackTypeEEES3_EE", !60, i64 0}
!118 = !{!"_ZTSN4llvm10FoldingSetIN5clang29SubstTemplateTypeParmPackTypeEEE", !117, i64 0}
!119 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang28SubstBuiltinTemplatePackTypeEEES3_EE", !60, i64 0}
!120 = !{!"_ZTSN4llvm10FoldingSetIN5clang28SubstBuiltinTemplatePackTypeEEE", !119, i64 0}
!121 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang26TemplateSpecializationTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!122 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang26TemplateSpecializationTypeERNS1_10ASTContextEEE", !121, i64 0, !78, i64 16}
!123 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang9ParenTypeEEES3_EE", !60, i64 0}
!124 = !{!"_ZTSN4llvm10FoldingSetIN5clang9ParenTypeEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang28TagTypeFoldingSetPlaceholderEEES3_EE", !60, i64 0}
!126 = !{!"_ZTSN4llvm10FoldingSetIN5clang28TagTypeFoldingSetPlaceholderEEE", !125, i64 0}
!127 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang21FoldingSetPlaceholderINS2_19UnresolvedUsingTypeEEEEES5_EE", !60, i64 0}
!128 = !{!"_ZTSN4llvm10FoldingSetIN5clang21FoldingSetPlaceholderINS1_19UnresolvedUsingTypeEEEEE", !127, i64 0}
!129 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang9UsingTypeEEES3_EE", !60, i64 0}
!130 = !{!"_ZTSN4llvm10FoldingSetIN5clang9UsingTypeEEE", !129, i64 0}
!131 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang21FoldingSetPlaceholderINS2_11TypedefTypeEEEEES5_EE", !60, i64 0}
!132 = !{!"_ZTSN4llvm10FoldingSetIN5clang21FoldingSetPlaceholderINS1_11TypedefTypeEEEEE", !131, i64 0}
!133 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang17DependentNameTypeEEES3_EE", !60, i64 0}
!134 = !{!"_ZTSN4llvm10FoldingSetIN5clang17DependentNameTypeEEE", !133, i64 0}
!135 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang17PackExpansionTypeEEES3_EE", !60, i64 0}
!136 = !{!"_ZTSN4llvm10FoldingSetIN5clang17PackExpansionTypeEEE", !135, i64 0}
!137 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang18ObjCObjectTypeImplEEES3_EE", !60, i64 0}
!138 = !{!"_ZTSN4llvm10FoldingSetIN5clang18ObjCObjectTypeImplEEE", !137, i64 0}
!139 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang21ObjCObjectPointerTypeEEES3_EE", !60, i64 0}
!140 = !{!"_ZTSN4llvm10FoldingSetIN5clang21ObjCObjectPointerTypeEEE", !139, i64 0}
!141 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang18UnaryTransformTypeEEES3_EE", !60, i64 0}
!142 = !{!"_ZTSN4llvm10FoldingSetIN5clang18UnaryTransformTypeEEE", !141, i64 0}
!143 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_16FoldingSetNodeIDEPN5clang8AutoTypeEEE", !20, i64 0}
!144 = !{!"p1 int", !20, i64 0}
!145 = !{!"_ZTSN4llvm8DenseMapINS_16FoldingSetNodeIDEPN5clang8AutoTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEEE", !143, i64 0, !144, i64 8, !13, i64 16, !13, i64 20}
!146 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang33DeducedTemplateSpecializationTypeEEES3_EE", !60, i64 0}
!147 = !{!"_ZTSN4llvm10FoldingSetIN5clang33DeducedTemplateSpecializationTypeEEE", !146, i64 0}
!148 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang10AtomicTypeEEES3_EE", !60, i64 0}
!149 = !{!"_ZTSN4llvm10FoldingSetIN5clang10AtomicTypeEEE", !148, i64 0}
!150 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang14AttributedTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!151 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang14AttributedTypeERNS1_10ASTContextEEE", !150, i64 0, !78, i64 16}
!152 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang8PipeTypeEEES3_EE", !60, i64 0}
!153 = !{!"_ZTSN4llvm10FoldingSetIN5clang8PipeTypeEEE", !152, i64 0}
!154 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang10BitIntTypeEEES3_EE", !60, i64 0}
!155 = !{!"_ZTSN4llvm10FoldingSetIN5clang10BitIntTypeEEE", !154, i64 0}
!156 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang19DependentBitIntTypeERNS2_10ASTContextEEES3_EE", !60, i64 0}
!157 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang19DependentBitIntTypeERNS1_10ASTContextEEE", !156, i64 0, !78, i64 16}
!158 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang20BTFTagAttributedTypeEEES3_EE", !60, i64 0}
!159 = !{!"_ZTSN4llvm10FoldingSetIN5clang20BTFTagAttributedTypeEEE", !158, i64 0}
!160 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang20OverflowBehaviorTypeEEES3_EE", !60, i64 0}
end_hunk_3
