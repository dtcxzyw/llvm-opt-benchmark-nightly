Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaStmtAttr?download=true
inline.NumInlined: 2066
inline.NumDeleted: 1119
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang4Sema21ProcessStmtAttributesEPNS_4StmtERKNS_16ParsedAttributesERN4llvm15SmallVectorImplIPKNS_4AttrEEE:bb.a
  switch i32 %trunc.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i [
    i32 9, label %bb.ew
    i32 15, label %bb.ex
    i32 10, label %bb.ey
    i32 19, label %bb.ez
    i32 16, label %bb.fa
    i32 6, label %bb.fb
    i32 12, label %bb.fc
    i32 8, label %bb.fd
    i32 28, label %bb.fe
    i32 4, label %bb.ff
  ]

bb.ew:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.adm = load i64, ptr %i.adj, align 1
  %i.adn = xor i64 %i.adm, 8820707168201434486
  %i.ado = getelementptr i8, ptr %i.adj, i64 8
  %i.adp = load i8, ptr %i.ado, align 1
  %i.adq = zext i8 %i.adp to i64
  %i.adr = xor i64 %i.adq, 101
  %i.ads = or i64 %i.adn, %i.adr
  %i.adt = icmp ne i64 %i.ads, 0
  %i.adu = zext i1 %i.adt to i32
  %.not.i.i123.i = icmp eq i32 %i.adu, 0
  br i1 %.not.i.i123.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i

bb.ex:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.adv = load i64, ptr %i.adj, align 1
  %i.adw = xor i64 %i.adv, 8820707168201434486
  %i.adx = getelementptr i8, ptr %i.adj, i64 7
  %i.ady = load i64, ptr %i.adx, align 1
  %i.adz = xor i64 %i.ady, 7526751281380025722
  %i.aea = or i64 %i.adw, %i.adz
  %i.aeb = icmp ne i64 %i.aea, 0
  %i.aec = zext i1 %i.aeb to i32
  %.not.i.i130.i = icmp eq i32 %i.aec, 0
  br i1 %.not.i.i130.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i

bb.ey:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.aed = load i64, ptr %i.adj, align 1
  %i.aee = xor i64 %i.aed, 7018134832910986857
  %i.aef = getelementptr i8, ptr %i.adj, i64 8
  %i.aeg = load i16, ptr %i.aef, align 1
  %i.aeh = zext i16 %i.aeg to i64
  %i.aei = xor i64 %i.aeh, 25974
  %i.aej = or i64 %i.aee, %i.aei
  %i.aek = icmp ne i64 %i.aej, 0
  %i.ael = zext i1 %i.aek to i32
  %.not.i.i139.i = icmp eq i32 %i.ael, 0
  br i1 %.not.i.i139.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit195.thread469.thread490.i

bb.ez:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.aem = load i128, ptr %i.adj, align 1
  %i.aen = xor i128 %i.aem, 132140799031274748734401000286743389558
  %i.aeo = getelementptr i8, ptr %i.adj, i64 3
  %i.aep = load i128, ptr %i.aeo, align 1
  %i.aeq = xor i128 %i.aep, 134856309279803483975638186908823220084
  %i.aer = or i128 %i.aen, %i.aeq
  %i.aes = icmp ne i128 %i.aer, 0
  %i.aet = zext i1 %i.aes to i32
  %.not.i.i148.i = icmp eq i32 %i.aet, 0
  br i1 %.not.i.i148.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i

bb.fa:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.aeu = load i128, ptr %i.adj, align 1
  %i.aev = icmp ne i128 %i.aeu, 154763982032493081692686305240668204649
  %i.aew = zext i1 %i.aev to i32
  %.not.i.i157.i = icmp eq i32 %i.aew, 0
  br i1 %.not.i.i157.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i

bb.fb:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.aex = load i32, ptr %i.adj, align 1
  %i.aey = xor i32 %i.aex, 1869770357
  %i.aez = getelementptr i8, ptr %i.adj, i64 4
  %i.afa = load i16, ptr %i.aez, align 1
  %i.afb = zext i16 %i.afa to i32
  %i.afc = xor i32 %i.afb, 27756
  %i.afd = or i32 %i.aey, %i.afc
  %i.afe = icmp ne i32 %i.afd, 0
  %i.aff = zext i1 %i.afe to i32
  %.not.i.i166.i = icmp eq i32 %i.aff, 0
  br i1 %.not.i.i166.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i

bb.fc:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.afg = load i64, ptr %i.adj, align 1
  %i.afh = xor i64 %i.afg, 7160561145524416117
  %i.afi = getelementptr i8, ptr %i.adj, i64 8
  %i.afj = load i32, ptr %i.afi, align 1
  %i.afk = zext i32 %i.afj to i64
  %i.afl = xor i64 %i.afk, 1953396079
  %i.afm = or i64 %i.afh, %i.afl
  %i.afn = icmp ne i64 %i.afm, 0
  %i.afo = zext i1 %i.afn to i32
  %.not.i.i175.i = icmp eq i32 %i.afo, 0
  %spec.select = select i1 %.not.i.i175.i, i64 4294967301, i64 0
  br label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i

bb.fd:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.afp = load i64, ptr %i.adj, align 1
  %i.afq = icmp ne i64 %i.afp, 7308895159548143984
  %i.afr = zext i1 %i.afq to i32
  %.not.i.i184.i = icmp eq i32 %i.afr, 0
  br i1 %.not.i.i184.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.thread.i

bb.fe:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i
  %i.afs = load i128, ptr %i.adj, align 1
  %i.aft = xor i128 %i.afs, 154696239182432760096495877348960266608
  %i.afu = getelementptr i8, ptr %i.adj, i64 12
  %i.afv = load i128, ptr %i.afu, align 1
  %i.afw = xor i128 %i.afv, 144062678727791292867952080599574997364
  %i.afx = or i128 %i.aft, %i.afw
  %i.afy = icmp ne i128 %i.afx, 0
  %i.afz = zext i1 %i.afy to i32
  %.not.i.i193.i = icmp eq i32 %i.afz, 0
  br i1 %.not.i.i193.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.thread.i

_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit195.thread469.thread490.i: ; preds = %bb.ey
  %i.aga = load i64, ptr %i.adj, align 1
  %i.agb = xor i64 %i.aga, 8458438990456121700
  %i.agc = getelementptr i8, ptr %i.adj, i64 8
  %i.agd = load i16, ptr %i.agc, align 1
  %i.age = zext i16 %i.agd to i64
  %i.agf = xor i64 %i.age, 25972
  %i.agg = or i64 %i.agb, %i.agf
  %i.agh = icmp ne i64 %i.agg, 0
  %i.agi = zext i1 %i.agh to i32
  %.not.i.i202.i = icmp eq i32 %i.agi, 0
  br i1 %.not.i.i202.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.i

_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.thread.i: ; preds = %bb.fe, %bb.fd
  br label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i

_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.i: ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit195.thread469.thread490.i
  %.not.i.i.i.i208.i = icmp eq i64 %i.adl, 4
  br i1 %.not.i.i.i.i208.i, label %bb.ff, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i

bb.ff:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.i
  %i.agj = load i32, ptr %i.adj, align 1
  %i.agk = icmp ne i32 %i.agj, 1835231596
  %i.agl = zext i1 %i.agk to i32
  %.not.i.i211.i = icmp eq i32 %i.agl, 0
  %spec.select538.i = select i1 %.not.i.i211.i, i64 4294967308, i64 0
  br label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i

_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i: ; preds = %bb.fc, %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i, %bb.ff, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.i, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.thread.i, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit195.thread469.thread490.i, %bb.fe, %bb.fd, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew
  %.sroa.26.10.i = phi i64 [ 0, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.i ], [ 4294967298, %bb.ey ], [ %spec.select538.i, %bb.ff ], [ 4294967307, %bb.ez ], [ 4294967305, %bb.fe ], [ 4294967306, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit195.thread469.thread490.i ], [ %spec.select, %bb.fc ], [ 4294967304, %bb.fd ], [ 4294967299, %bb.fa ], [ 4294967300, %bb.fb ], [ 0, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit204.thread.i ], [ 4294967296, %bb.ew ], [ 4294967297, %bb.ex ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit113.thread335.i ] ; 2 uses
  %spec.select.i623.i = call i64 @llvm.umax.i64(i64 %.sroa.26.10.i, i64 4294967296)
  %spec.select.i.i = trunc i64 %spec.select.i623.i to i32 ; 2 uses
  switch i32 %spec.select.i.i, label %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i [
    i32 1, label %bb.fg
    i32 9, label %bb.fl
    i32 5, label %bb.fl
    i32 3, label %bb.fl
  ]

bb.fg:                                            ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i
  %.not.i96 = icmp eq i64 %i.yf, 0
  br i1 %.not.i96, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.agm = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %i.agn = call noundef zeroext i1 @_ZN5clang4Sema17CheckLoopHintExprEPNS_4ExprENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.yg, i32 %i.agm, i1 noundef zeroext false) #16
  br i1 %i.agn, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE9push_backES4_.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.not66.i97 = icmp eq i64 %i.yc, 0
  br i1 %.not66.i97, label %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.thread.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ago = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !1234 ; 2 uses
  %.not67.i98 = icmp eq ptr %i.agp, null
  br i1 %.not67.i98, label %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.thread.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !1236 ; 2 uses
  %i.ags = load i64, ptr %i.agr, align 8, !tbaa !1239
  %i.agt = and i64 %i.ags, 4294967295
  %i.agu = icmp eq i64 %i.agt, 8
  br i1 %i.agu, label %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.i, label %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.thread.i

_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.i: ; preds = %bb.fk
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  %i.agw = load i64, ptr %i.agv, align 1
  %i.agx = icmp ne i64 %i.agw, 7308324465885143923
  %i.agy = zext i1 %i.agx to i32
  %i.agz = icmp eq i32 %i.agy, 0
  br i1 %i.agz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.thread.i

_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.thread.i: ; preds = %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.i, %bb.fk, %bb.fj, %bb.fi
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i

bb.fl:                                            ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i
  %.sroa.26.16.extract.trunc.i = trunc i64 %.sroa.26.10.i to i32
  %i.aha = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %i.ahb = call noundef zeroext i1 @_ZN5clang4Sema17CheckLoopHintExprEPNS_4ExprENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.yg, i32 %i.aha, i1 noundef zeroext false) #16
  br i1 %i.ahb, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE9push_backES4_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i

_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i: ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i, %bb.fb, %bb.fa, %bb.ez, %bb.ex, %bb.ew
  %spec.select.i507.i = phi i32 [ %spec.select.i.i, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.i ], [ 0, %bb.fb ], [ 0, %bb.fa ], [ 0, %bb.ez ], [ 0, %bb.ex ], [ 0, %bb.ew ] ; 8 uses
  %68 = and i32 %spec.select.i507.i, -3           ; 2 uses
  %or.cond5.i = icmp eq i32 %68, 0
  %69 = icmp eq i32 %spec.select.i507.i, 11
  %or.cond7.i = or i1 %69, %or.cond5.i
  %70 = icmp eq i32 %spec.select.i507.i, 4
  %or.cond9.i = or i1 %70, %or.cond7.i
  %71 = icmp eq i32 %68, 8
  %or.cond13.i = or i1 %71, %or.cond9.i
  %72 = icmp eq i32 %spec.select.i507.i, 12
  %or.cond15.i99 = or i1 %72, %or.cond13.i
  call void @llvm.assume(i1 %or.cond15.i99)
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !1234
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !1236
  %i.ahg = load i64, ptr %i.ahf, align 8, !tbaa !1239
  %trunc546.i = trunc i64 %i.ahg to i32
  switch i32 %trunc546.i, label %unreachable.i [
    i32 7, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
    i32 13, label %_ZNK5clang14IdentifierInfo5isStrILm14EEEbRAT__Kc.exit.i
    i32 4, label %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i
    i32 6, label %_ZNK5clang14IdentifierInfo5isStrILm7EEEbRAT__Kc.exit.i
  ]

_ZNK5clang14IdentifierInfo5isStrILm14EEEbRAT__Kc.exit.i: ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i

_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i: ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i

_ZNK5clang14IdentifierInfo5isStrILm7EEEbRAT__Kc.exit.i: ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i

unreachable.i:                                    ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i
  unreachable

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i, %_ZNK5clang14IdentifierInfo5isStrILm7EEEbRAT__Kc.exit.i, %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i, %_ZNK5clang14IdentifierInfo5isStrILm14EEEbRAT__Kc.exit.i, %bb.fl, %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.thread.i, %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit113.thread.i, %_ZN4llvmeqENS_9StringRefES0_.exit109.i, %_ZN4llvm5APIntD2Ev.exit.i, %bb.et, %_ZN4llvmeqENS_9StringRefES0_.exit103.thread.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %.1311.i = phi i32 [ 1, %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.i ], [ 5, %bb.et ], [ 4, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ %.0310322.i, %_ZN4llvm5APIntD2Ev.exit.i ], [ 4, %_ZN4llvmeqENS_9StringRefES0_.exit103.thread.i ], [ %spec.select.i507.i, %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i ], [ 6, %_ZN4llvmeqENS_9StringRefES0_.exit109.i ], [ %.sroa.26.16.extract.trunc.i, %bb.fl ], [ %spec.select.i, %_ZN4llvmeqENS_9StringRefES0_.exit113.thread.i ], [ %spec.select.i507.i, %_ZNK5clang14IdentifierInfo5isStrILm14EEEbRAT__Kc.exit.i ], [ %spec.select.i507.i, %_ZNK5clang14IdentifierInfo5isStrILm7EEEbRAT__Kc.exit.i ], [ 1, %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.thread.i ], [ %spec.select.i507.i, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i ]
  %.1309.i = phi i32 [ 4, %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.i ], [ 2, %bb.et ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ %.0308324.i, %_ZN4llvm5APIntD2Ev.exit.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit103.thread.i ], [ 6, %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit109.i ], [ 2, %bb.fl ], [ %spec.select529.i, %_ZN4llvmeqENS_9StringRefES0_.exit113.thread.i ], [ 5, %_ZNK5clang14IdentifierInfo5isStrILm14EEEbRAT__Kc.exit.i ], [ 0, %_ZNK5clang14IdentifierInfo5isStrILm7EEEbRAT__Kc.exit.i ], [ 3, %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit.thread.i ], [ 1, %_ZN4llvm12StringSwitchIN5clang12LoopHintAttr10OptionTypeES3_E4CaseENS_13StringLiteralES3_.exit213.thread.i ]
  %i.ahh = load ptr, ptr %i.w, align 8, !tbaa !8, !nonnull !712, !align !765
  %i.ahi = call noundef ptr @_ZN5clang12LoopHintAttr14CreateImplicitERNS_10ASTContextENS0_10OptionTypeENS0_13LoopHintStateEPNS_4ExprERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ahh, i32 noundef %.1311.i, i32 noundef %.1309.i, ptr noundef %i.yg, ptr noundef nonnull align 8 dereferenceable(80) %i.pu) #16
  br label %_ZL20ProcessStmtAttributeRN5clang4SemaEPNS_4StmtERKNS_10ParsedAttrENS_11SourceRangeE.exit

bb.fm:                                            ; preds = %bb.co
  %i.ahj = call noundef i32 @_ZNK5clang10ParsedAttr19getSemanticSpellingEv(ptr noundef nonnull align 8 dereferenceable(80) %i.pu) #16
  %i.ahk = icmp eq i32 %i.ahj, 1
  br i1 %i.ahk, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.ahl = call noundef zeroext i1 @_ZNK5clang10ParsedAttr18checkAtMostNumArgsERNS_4SemaEj(ptr noundef nonnull align 8 dereferenceable(80) %i.pu, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 0) #16
  br i1 %i.ahl, label %bb.fo, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE9push_backES4_.exit

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.ahm = load i32, ptr %i.pv, align 8
  %i.ahn = and i32 %i.ahm, 65535
  %i.aho = icmp eq i32 %i.ahn, 1
  br i1 %i.aho, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.pu, i64 80
  %.sroa.0.0.copyload.i.i.i93 = load i64, ptr %i.ahp, align 8
  %i.ahq = and i64 %.sroa.0.0.copyload.i.i.i93, -3
  %i.ahr = inttoptr i64 %i.ahq to ptr             ; 2 uses
  %i.ahs = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %i.aht = call noundef zeroext i1 @_ZN5clang4Sema17CheckLoopHintExprEPNS_4ExprENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ahr, i32 %i.ahs, i1 noundef zeroext false) #16
  br i1 %i.aht, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE9push_backES4_.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.ahu = load ptr, ptr %i.w, align 8, !tbaa !8, !nonnull !712, !align !765
  call void @_ZNK5clang4Expr22getIntegerConstantExprERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1211") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %i.ahr, ptr noundef nonnull align 8 dereferenceable(23904) %i.ahu) #16
  %i.ahv = load i32, ptr %i.ap, align 8, !tbaa !752 ; 3 uses
  %i.ahw = icmp ult i32 %i.ahv, 65
  br i1 %i.ahw, label %_ZNK4llvm5APInt12getSExtValueEv.exit.thread.i, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i94

_ZNK4llvm5APInt12getSExtValueEv.exit.thread.i:    ; preds = %bb.fq
  %i.ahx = load i64, ptr %21, align 8, !tbaa !754
  %i.ahy = icmp eq i32 %i.ahv, 0
  %i.ahz = sub nuw nsw i32 64, %i.ahv
  %i.aia = zext nneg i32 %i.ahz to i64            ; 2 uses
  %i.aib = shl i64 %i.ahx, %i.aia
  %i.aic = ashr exact i64 %i.aib, %i.aia
  %i.aid = trunc i64 %i.aic to i32
  %i.aie = select i1 %i.ahy, i32 0, i32 %i.aid
  br label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.i

_ZNK4llvm5APInt12getSExtValueEv.exit.i94:         ; preds = %bb.fq
  %i.aif = load ptr, ptr %21, align 8, !tbaa !754 ; 2 uses
  %i.aig = load i64, ptr %i.aif, align 8, !tbaa !764
  %i.aih = trunc i64 %i.aig to i32                ; 2 uses
  %i.aii = load i8, ptr %i.aq, align 8, !tbaa !1245, !range !711, !noundef !712
  %i.aij = trunc nuw i8 %i.aii to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !1245
  br i1 %i.aij, label %bb.fr, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.i

bb.fr:                                            ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.i94
  call void @_ZdaPv(ptr noundef nonnull %i.aif) #18
  br label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.i: ; preds = %bb.fr, %_ZNK4llvm5APInt12getSExtValueEv.exit.i94, %_ZNK4llvm5APInt12getSExtValueEv.exit.thread.i
  %i.aik = phi i32 [ %i.aie, %_ZNK4llvm5APInt12getSExtValueEv.exit.thread.i ], [ %i.aih, %_ZNK4llvm5APInt12getSExtValueEv.exit.i94 ], [ %i.aih, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.fs

bb.fs:                                            ; preds = %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.i, %bb.fo
  %.119.i = phi i32 [ %i.aik, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.i ], [ 0, %bb.fo ]
  %i.ail = load ptr, ptr %i.w, align 8, !tbaa !8, !nonnull !712, !align !765 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 2632 ; 3 uses
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !766 ; 2 uses
  %i.aio = ptrtoint ptr %i.ain to i64
  %i.aip = add i64 %i.aio, 48                     ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ail, i64 2640
  %i.air = load i64, ptr %i.aiq, align 8, !tbaa !767
  %i.ais = icmp ult i64 %i.aip, %i.air
  br i1 %i.ais, label %bb.ft, label %bb.fu, !prof !768

bb.ft:                                            ; preds = %bb.fs
  %i.ait = inttoptr i64 %i.aip to ptr
  store ptr %i.ait, ptr %i.aim, align 8, !tbaa !766
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i89

bb.fu:                                            ; preds = %bb.fs
  %i.aiu = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.aim, i64 noundef 48, i64 noundef 48, i8 3)
  %.pre.i88 = load ptr, ptr %i.w, align 8, !tbaa !8
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i89

_ZnwmRKN5clang10ASTContextEm.exit.i89:            ; preds = %bb.fu, %bb.ft
  %i.aiv = phi ptr [ %i.ail, %bb.ft ], [ %.pre.i88, %bb.fu ]
  %.0.i.i.i.i.i90 = phi ptr [ %i.ain, %bb.ft ], [ %i.aiu, %bb.fu ] ; 2 uses
  call void @_ZN5clang16HLSLLoopHintAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEj(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i.i90, ptr noundef nonnull align 8 dereferenceable(23904) %i.aiv, ptr noundef nonnull align 8 dereferenceable(80) %i.pu, i32 noundef %.119.i) #16
  br label %_ZL20ProcessStmtAttributeRN5clang4SemaEPNS_4StmtERKNS_10ParsedAttrENS_11SourceRangeE.exit.thread144

bb.fv:                                            ; preds = %bb.co
  %i.aiw = load ptr, ptr %i.w, align 8, !tbaa !8, !nonnull !712, !align !765 ; 3 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 2632 ; 3 uses
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !766 ; 2 uses
  %i.aiz = ptrtoint ptr %i.aiy to i64
  %i.aja = add i64 %i.aiz, 40                     ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiw, i64 2640
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !767
  %i.ajd = icmp ult i64 %i.aja, %i.ajc
  br i1 %i.ajd, label %bb.fw, label %bb.fx, !prof !768

bb.fw:                                            ; preds = %bb.fv
  %i.aje = inttoptr i64 %i.aja to ptr
  store ptr %i.aje, ptr %i.aix, align 8, !tbaa !766
  br label %_ZL25handleHLSLControlFlowHintRN5clang4SemaEPNS_4StmtERKNS_10ParsedAttrENS_11SourceRangeE.exit

bb.fx:                                            ; preds = %bb.fv
  %i.ajf = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.aix, i64 noundef 40, i64 noundef 40, i8 3)
  %.pre.i85 = load ptr, ptr %i.w, align 8, !tbaa !8
  br label %_ZL25handleHLSLControlFlowHintRN5clang4SemaEPNS_4StmtERKNS_10ParsedAttrENS_11SourceRangeE.exit

_ZL25handleHLSLControlFlowHintRN5clang4SemaEPNS_4StmtERKNS_10ParsedAttrENS_11SourceRangeE.exit: ; preds = %bb.fw, %bb.fx
  %i.ajg = phi ptr [ %i.aiw, %bb.fw ], [ %.pre.i85, %bb.fx ]
  %.0.i.i.i.i.i87 = phi ptr [ %i.aiy, %bb.fw ], [ %i.ajf, %bb.fx ] ; 2 uses
  call void @_ZN5clang23HLSLControlFlowHintAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(39) %.0.i.i.i.i.i87, ptr noundef nonnull align 8 dereferenceable(23904) %i.ajg, ptr noundef nonnull align 8 dereferenceable(80) %i.pu) #16
  br label %_ZL20ProcessStmtAttributeRN5clang4SemaEPNS_4StmtERKNS_10ParsedAttrENS_11SourceRangeE.exit.thread144

bb.fy:                                            ; preds = %bb.co
  %i.ajh = load i32, ptr %i.pv, align 8
  %i.aji = and i32 %i.ajh, 65535
  %i.ajj = icmp eq i32 %i.aji, 1
  br i1 %i.ajj, label %bb.fz, label %bb.gg

bb.fz:                                            ; preds = %bb.fy
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.pu, i64 80
  %.sroa.0.0.copyload.i.i.i81 = load i64, ptr %i.ajk, align 8
  %i.ajl = and i64 %.sroa.0.0.copyload.i.i.i81, -3
  %i.ajm = inttoptr i64 %i.ajl to ptr             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.ajn = load ptr, ptr %i.w, align 8, !tbaa !8, !nonnull !712, !align !765
  call void @_ZNK5clang4Expr22getIntegerConstantExprERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1211") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %i.ajm, ptr noundef nonnull align 8 dereferenceable(23904) %i.ajn) #16
  %i.ajo = load i8, ptr %i.an, align 8, !range !711
  %i.ajp = trunc nuw i8 %i.ajo to i1
  br i1 %i.ajp, label %bb.ga, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit27.i

_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit27.i: ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %.sroa.0.0.copyload.i.i25.i = load i32, ptr %i.ajq, align 8, !tbaa !734
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 %.sroa.0.0.copyload.i.i25.i, i32 noundef 3172) #16
  %i.ajr = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %23, ptr noundef nonnull align 8 dereferenceable(80) %i.pu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 1, ptr %i.b, align 4, !tbaa !1247
  %i.ajs = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_22AttributeArgumentNTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ajr, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.ajt = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ajm) #17
  store i64 %i.ajt, ptr %24, align 8
  %i.aju = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ajs, ptr noundef nonnull align 4 dereferenceable(8) %24) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE9push_backES4_.exit

bb.ga:                                            ; preds = %bb.fz
  %i.ajv = load i32, ptr %i.ao, align 8, !tbaa !752 ; 3 uses
  %i.ajw = load i64, ptr %22, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  %i.ajx = icmp ult i32 %i.ajv, 65                ; 2 uses
  br i1 %i.ajx, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ajy = icmp eq i32 %i.ajv, 0
  %i.ajz = sub nuw nsw i32 64, %i.ajv
  %i.aka = zext nneg i32 %i.ajz to i64            ; 2 uses
  %i.akb = shl i64 %i.ajw, %i.aka
  %i.akc = ashr exact i64 %i.akb, %i.aka
  %.0.i.i.i = select i1 %i.ajy, i64 0, i64 %i.akc
end_hunk_0
