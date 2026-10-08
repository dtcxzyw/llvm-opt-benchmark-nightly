Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPMacroExpansion?download=true
inline.NumInlined: 4052
inline.NumDeleted: 1617
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL10HasFeatureRKN5clang12PreprocessorEN4llvm9StringRefE:bb.a
  %.sroa.460.224 = phi i16 [ %.sroa.460.223, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2838 ], [ %.sroa.0.0.insert.insert.i.i2848, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2846 ], [ %.sroa.460.223, %bb.hg ] ; 3 uses
  %i.bwx = and i64 %i.dh, 16
  %i.bwy = icmp ne i64 %i.bwx, 0
  %i.bwz = select i1 %.not298, i1 %i.bwy, i1 false
  %i.bxa = and i16 %.sroa.460.224, 256
  %.not2797 = icmp eq i16 %i.bxa, 0
  %or.cond2449 = and i1 %.not.i.i.i.i19583161, %.not2797
  br i1 %or.cond2449, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i2854, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2860

_ZN4llvmneENS_9StringRefES0_.exit.i.i2854:        ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2849
  %i.bxb = load i128, ptr %.sroa.01371.013841398143614702834285328742896, align 1
  %i.bxc = xor i128 %i.bxb, 134866857477209936913516367298384394339
  %i.bxd = getelementptr i8, ptr %.sroa.01371.013841398143614702834285328742896, i64 7
  %i.bxe = load i128, ptr %i.bxd, align 1
  %i.bxf = xor i128 %i.bxe, 134814791032314551176968157302719083103
  %i.bxg = or i128 %i.bxc, %i.bxf
  %i.bxh = icmp ne i128 %i.bxg, 0
  %i.bxi = zext i1 %i.bxh to i32
  %.not.i.i2856 = icmp eq i32 %i.bxi, 0
  br i1 %.not.i.i2856, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2857, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2860

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2857: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i2854
  %.sroa.0.0.insert.ext.i.i2858 = zext i1 %i.bwz to i16
  %.sroa.0.0.insert.insert.i.i2859 = or disjoint i16 %.sroa.0.0.insert.ext.i.i2858, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2860

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2860: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2849, %_ZN4llvmneENS_9StringRefES0_.exit.i.i2854, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2857
  %.sroa.460.225 = phi i16 [ %.sroa.460.224, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2849 ], [ %.sroa.0.0.insert.insert.i.i2859, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2857 ], [ %.sroa.460.224, %_ZN4llvmneENS_9StringRefES0_.exit.i.i2854 ] ; 4 uses
  %i.bxj = and i16 %.sroa.460.225, 256
  %.not2798 = icmp eq i16 %i.bxj, 0               ; 2 uses
  %or.cond2451 = and i1 %.not.i.i.i.i19583161, %.not2798
  br i1 %or.cond2451, label %bb.hh, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2869

bb.hh:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2860
  %i.bxk = load i128, ptr %.sroa.01371.013841398143614702834285328742896, align 1
  %i.bxl = xor i128 %i.bxk, 154794728897813744306188362555924245603
  %i.bxm = getelementptr i8, ptr %.sroa.01371.013841398143614702834285328742896, i64 7
  %i.bxn = load i128, ptr %i.bxm, align 1
  %i.bxo = xor i128 %i.bxn, 153388003557643389408654869737233018740
  %i.bxp = or i128 %i.bxl, %i.bxo
  %i.bxq = icmp ne i128 %i.bxp, 0
  %i.bxr = zext i1 %i.bxq to i32
  %.not.i.i2867 = icmp eq i32 %i.bxr, 0
  %spec.select2452 = select i1 %.not.i.i2867, i16 257, i16 %.sroa.460.225
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2880

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2869: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2860
  %i.bxs = getelementptr inbounds nuw i8, ptr %.64.val, i64 56
  %i.bxt = load i64, ptr %i.bxs, align 8
  %or.cond2454 = and i1 %.not.i.i.i.i1980, %.not2798
  br i1 %or.cond2454, label %bb.hi, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2880

bb.hi:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2869
  %i.bxu = load i128, ptr %.sroa.01371.013841398143614702834285328742896, align 1
  %i.bxv = xor i128 %i.bxu, 134809538203267290912652552237488567651
  %i.bxw = getelementptr i8, ptr %.sroa.01371.013841398143614702834285328742896, i64 5
  %i.bxx = load i128, ptr %i.bxw, align 1
  %i.bxy = xor i128 %i.bxx, 133516982233552196922033494462676168558
  %i.bxz = or i128 %i.bxv, %i.bxy
  %i.bya = icmp ne i128 %i.bxz, 0
  %i.byb = zext i1 %i.bya to i32
  %.not.i.i2876 = icmp eq i32 %i.byb, 0
  br i1 %.not.i.i2876, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2877, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2880

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2877: ; preds = %bb.hi
  %i.byc = lshr i64 %i.bxt, 37
  %i.byd = trunc i64 %i.byc to i16
  %.sroa.0.0.insert.insert.i.i2879 = or i16 %i.byd, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2880

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2880: ; preds = %bb.hh, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2869, %bb.hi, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2877
  %.sroa.460.227 = phi i16 [ %.sroa.460.225, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit2869 ], [ %.sroa.0.0.insert.insert.i.i2879, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i2877 ], [ %.sroa.460.225, %bb.hi ], [ %spec.select2452, %bb.hh ]
  %i.bye = and i16 %.sroa.460.227, 257
  %.0.i2881 = icmp eq i16 %i.bye, 257
  ret i1 %.0.i2881
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @"_ZN4llvm12function_refIFiRN5clang5TokenERbEE11callback_fnIZNS1_12Preprocessor18ExpandBuiltinMacroES3_E3$_1EEilS3_S4_"(i64 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1, ptr nofree nonnull readnone align 1 captures(none) %2) #2 align 2 {
bb.a:
  %3 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !628 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !524
  %i.d = tail call noundef zeroext i1 @_ZN5clang3tok12isAnnotationENS0_9TokenKindE(i16 noundef zeroext %i.c) #21
  br i1 %i.d, label %_ZL27ExpectFeatureIdentifierInfoRN5clang5TokenERNS_12PreprocessorEi.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %i.b, align 8, !tbaa !524  ; 2 uses
  %i.f = add i16 %i.e, -7
  %i.g = icmp ult i16 %i.f, 13
  %i.h = icmp eq i16 %i.e, 1
  %or.cond.i.i.i = or i1 %i.h, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not7.i.i = icmp eq ptr %i.j, null
  %.not.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %.not7.i.i
  br i1 %.not.i.i, label %_ZL27ExpectFeatureIdentifierInfoRN5clang5TokenERNS_12PreprocessorEi.exit.thread.i, label %bb.c

_ZL27ExpectFeatureIdentifierInfoRN5clang5TokenERNS_12PreprocessorEi.exit.thread.i: ; preds = %bb.b, %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !522
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !523, !noalias !1224
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %i.m, i32 %i.k, i32 noundef 1043) #21
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_1clES2_Rb.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !430  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !552
  %i.r = and i64 %i.q, 4294967295                 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %.val.i.i = load ptr, ptr %i.s, align 8, !tbaa !481 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 3 uses
  %.val45.i.i = load ptr, ptr %i.t, align 8       ; 3 uses
  %i.u = tail call fastcc noundef zeroext i1 @_ZL10HasFeatureRKN5clang12PreprocessorEN4llvm9StringRefE(ptr %.val.i.i, ptr %.val45.i.i, ptr nonnull %i.p, i64 %i.r)
  br i1 %i.u, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_1clES2_Rb.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !523
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1232
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !1237
  %i.ab = icmp ugt i8 %i.aa, 3
  br i1 %i.ab, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_1clES2_Rb.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp samesign ult i64 %i.r, 2
  br i1 %.not.i.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i:    ; preds = %bb.e
  %i.ac = load i16, ptr %i.p, align 1
  %i.ad = icmp ne i16 %i.ac, 24415
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i

_ZNK4llvm9StringRef9ends_withES0_.exit.i.i:       ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -2
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = icmp ne i16 %i.ai, 24415
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i

_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i.i: ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i
  %i.am = icmp samesign ugt i64 %i.r, 3
  br i1 %i.am, label %bb.f, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i.i

bb.f:                                             ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i.i
  %i.an = add nsw i64 %i.r, -4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i: ; preds = %bb.f, %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %.sroa.0836.0.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.p, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.p, %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i ] ; 4 uses
  %.sroa.6.0.i.i = phi i64 [ %i.an, %bb.f ], [ %i.r, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.r, %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.6.0.i.i, 23
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i.i

bb.g:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !445, !nonnull !421, !align !422
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 74
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1238, !range !431, !noundef !421
  %.sroa.0.0.insert.ext.i.i.i.i = zext nneg i8 %i.as to i16
  %i.at = load i128, ptr %.sroa.0836.0.i.i, align 1
  %i.au = xor i128 %i.at, 153439500517324935312933046456408237412
  %i.av = getelementptr i8, ptr %.sroa.0836.0.i.i, i64 7
  %i.aw = load i128, ptr %i.av, align 1
  %i.ax = xor i128 %i.aw, 153439884534997866074527617151394799988
  %i.ay = or i128 %i.au, %i.ax
  %i.az = icmp ne i128 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %.not.i.i.i.i = icmp eq i32 %i.ba, 0
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i.i.i, 256
  %spec.select1164.i.i = select i1 %.not.i.i.i.i, i16 %.sroa.0.0.insert.insert.i.i.i.i, i16 0
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i.i: ; preds = %bb.g, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i.i, %bb.e
  %.sroa.6.0850.i.i = phi i64 [ %.sroa.6.0.i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i ], [ %i.r, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i.i ], [ 23, %bb.g ], [ %i.r, %bb.e ] ; 29 uses
  %.sroa.0836.0849.i.i = phi ptr [ %.sroa.0836.0.i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i ], [ %i.p, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i.i ], [ %.sroa.0836.0.i.i, %bb.g ], [ %i.p, %bb.e ] ; 87 uses
  %.sroa.102.0.i.i = phi i16 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread844.i.i ], [ 0, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i.i ], [ %spec.select1164.i.i, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %i.bb = load ptr, ptr %.val45.i.i, align 8, !tbaa !515
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 768
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(517) %.val45.i.i, i32 noundef 14) #21, !inline_history !1223
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = and i16 %.sroa.102.0.i.i, 256
  %.not1093.i.i = icmp eq i16 %i.bg, 0
  %.not.i.i.i.i51.i.i = icmp eq i64 %.sroa.6.0850.i.i, 7 ; 2 uses
  %or.cond.i.i = select i1 %.not1093.i.i, i1 %.not.i.i.i.i51.i.i, i1 false
  br i1 %or.cond.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit57.i.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i:        ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i.i
  %i.bh = load i32, ptr %.sroa.0836.0849.i.i, align 1
  %i.bi = xor i32 %i.bh, 1718187891
  %i.bj = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 3
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = xor i32 %i.bk, 1667462246
  %i.bm = or i32 %i.bi, %i.bl
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i53.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i53.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i54.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit57.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i54.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i
  %.sroa.0.0.insert.ext.i.i55.i.i = zext i1 %i.bf to i16
  %.sroa.0.0.insert.insert.i.i56.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i55.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit57.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit57.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i54.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i.i
  %.sroa.102.1.i.i = phi i16 [ %.sroa.102.0.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i.i ], [ %.sroa.0.0.insert.insert.i.i56.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i54.i.i ], [ %.sroa.102.0.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i ] ; 8 uses
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !566 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !515
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 768
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(517) %i.bp, i32 noundef 15) #21, !inline_history !1223
  %i.bu = and i16 %.sroa.102.1.i.i, 256
  %.not1094.i.i = icmp eq i16 %i.bu, 0            ; 8 uses
  %.not.i.i.i.i61.i.i = icmp eq i64 %.sroa.6.0850.i.i, 12 ; 3 uses
  %or.cond998.i.i = select i1 %.not1094.i.i, i1 %.not.i.i.i.i61.i.i, i1 false
  br i1 %or.cond998.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i62.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit68.i.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i62.i.i:      ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit57.i.i
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.bx = xor i64 %i.bw, 8751445653473294195
  %i.by = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = xor i64 %i.ca, 1667457902
  %i.cc = or i64 %i.bx, %i.cb
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %.not.i.i64.i.i = icmp eq i32 %i.ce, 0
  %.sroa.0.0.insert.ext.i.i66.i.i = zext i1 %i.bv to i16
  %.sroa.0.0.insert.insert.i.i67.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i66.i.i, 256
  %.sroa.102.2.ph.i.i = select i1 %.not.i.i64.i.i, i16 %.sroa.0.0.insert.insert.i.i67.i.i, i16 %.sroa.102.1.i.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit68.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit57.i.i
  %.not.i.i.i.i72.i.i = icmp eq i64 %.sroa.6.0850.i.i, 20 ; 4 uses
  %or.cond1000.i.i = select i1 %.not1094.i.i, i1 %.not.i.i.i.i72.i.i, i1 false
  br i1 %or.cond1000.i.i, label %bb.h, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit77.i.i

bb.h:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit68.i.i
  %i.cf = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.cg = xor i128 %i.cf, 153366807015680261128766119630649057903
  %i.ch = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 16
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = zext i32 %i.ci to i128
  %i.ck = xor i128 %i.cj, 1953654131
  %i.cl = or i128 %i.cg, %i.ck
  %i.cm = icmp ne i128 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %.not.i.i75.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i75.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i, label %bb.k

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit77.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit68.i.i
  %.not.i.i.i.i81.i.i = icmp eq i64 %.sroa.6.0850.i.i, 9
  %or.cond1002.i.i = select i1 %.not1094.i.i, i1 %.not.i.i.i.i81.i.i, i1 false
  br i1 %or.cond1002.i.i, label %bb.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit95.i.i

bb.i:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit77.i.i
  %i.co = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.cp = xor i64 %i.co, 7020662571604729699
  %i.cq = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = xor i64 %i.cs, 115
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not.i.i84.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i84.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i, label %.thread869.i.i

.thread869.i.i:                                   ; preds = %bb.i
  %i.cx = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.cy = xor i64 %i.cx, 8029468888135720803
  %i.cz = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = xor i64 %i.db, 102
  %i.dd = or i64 %i.cy, %i.dc
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %.not.i.i93.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i93.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit95.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit77.i.i
  %.not.i.i.i.i99.i.i = icmp eq i64 %.sroa.6.0850.i.i, 8
  %or.cond1006.i.i = select i1 %.not1094.i.i, i1 %.not.i.i.i.i99.i.i, i1 false
  br i1 %or.cond1006.i.i, label %bb.j, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit113.i.i

bb.j:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit95.i.i
  %i.dg = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.dh = icmp ne i64 %i.dg, 7163377007770820451
  %i.di = zext i1 %i.dh to i32
  %.not.i.i102.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i102.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i

bb.k:                                             ; preds = %bb.h
  %i.dj = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.dk = xor i128 %i.dj, 154706542011454172471180734160223821667
  %i.dl = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 16
  %i.dm = load i32, ptr %i.dl, align 1
  %i.dn = zext i32 %i.dm to i128
  %i.do = xor i128 %i.dn, 1936617321
  %i.dp = or i128 %i.dk, %i.do
  %i.dq = icmp ne i128 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not.i.i111.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i111.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit113.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit95.i.i
  %.not.i.i.i.i117.i.i = icmp eq i64 %.sroa.6.0850.i.i, 41
  %or.cond1010.i.i = select i1 %.not1094.i.i, i1 %.not.i.i.i.i117.i.i, i1 false
  br i1 %or.cond1010.i.i, label %bb.l, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit122.i.i

bb.l:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit113.i.i
  %bcmp.i.i.i.i119.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(41) %.sroa.0836.0849.i.i, ptr noundef nonnull dereferenceable(41) @.str.306, i64 41)
  %.not.i.i120.i.i = icmp eq i32 %bcmp.i.i.i.i119.i.i, 0
  br i1 %.not.i.i120.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.thread.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit122.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit113.i.i
  %.not.i.i.i.i126.i.i = icmp eq i64 %.sroa.6.0850.i.i, 15
  %or.cond1012.i.i = select i1 %.not1094.i.i, i1 %.not.i.i.i.i126.i.i, i1 false
  br i1 %or.cond1012.i.i, label %bb.m, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit131.i.i

bb.m:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit122.i.i
  %i.ds = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.dt = xor i64 %i.ds, 7163384644223852387
  %i.du = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 7
  %i.dv = load i64, ptr %i.du, align 1
  %i.dw = xor i64 %i.dv, 8390880602276061027
  %i.dx = or i64 %i.dt, %i.dw
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not.i.i129.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i129.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.thread.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit131.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit122.i.i
  %.not.i.i.i.i135.i.i = icmp eq i64 %.sroa.6.0850.i.i, 14
  %or.cond1014.i.i = select i1 %.not1094.i.i, i1 %.not.i.i.i.i135.i.i, i1 false
  br i1 %or.cond1014.i.i, label %bb.n, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.i.i

bb.n:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit131.i.i
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !566
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 274
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !717, !range !431, !noundef !421
  %.sroa.0.0.insert.ext.i.i140.i.i = zext nneg i8 %i.ec to i16
  %i.ed = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.ee = xor i64 %i.ed, 7233174018586861411
  %i.ef = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 6
  %i.eg = load i64, ptr %i.ef, align 1
  %i.eh = xor i64 %i.eg, 7809632559047861345
  %i.ei = or i64 %i.ee, %i.eh
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %.not.i.i138.i.i = icmp eq i32 %i.ek, 0
  %.sroa.0.0.insert.insert.i.i141.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i140.i.i, 256
  %spec.select1165.i.i = select i1 %.not.i.i138.i.i, i16 %.sroa.0.0.insert.insert.i.i141.i.i, i16 %.sroa.102.1.i.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.thread.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.thread.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.102.10.ph.i.i = phi i16 [ %spec.select1165.i.i, %bb.n ], [ %.sroa.102.1.i.i, %bb.m ], [ %.sroa.102.1.i.i, %bb.l ]
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit131.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i62.i.i
  %.not.i.i.i.i721184121112431250.i.i = phi i1 [ %.not.i.i.i.i72.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit131.i.i ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.i.i62.i.i ] ; 3 uses
  %.sroa.102.10.i.i = phi i16 [ %.sroa.102.1.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit131.i.i ], [ %.sroa.102.2.ph.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i62.i.i ] ; 3 uses
  %i.el = and i16 %.sroa.102.10.i.i, 256
  %.not1103.i.i = icmp eq i16 %i.el, 0
  %or.cond1016.i.i = select i1 %.not1103.i.i, i1 %.not.i.i.i.i61.i.i, i1 false
  br i1 %or.cond1016.i.i, label %bb.o, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i

bb.o:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.i.i
  %i.em = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.en = xor i64 %i.em, 7091324932765867875
  %i.eo = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.ep = load i32, ptr %i.eo, align 1
  %i.eq = zext i32 %i.ep to i64
  %i.er = xor i64 %i.eq, 1936028789
  %i.es = or i64 %i.en, %i.er
  %i.et = icmp ne i64 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %.not.i.i149.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i149.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i, label %.thread911.i.i

.thread911.i.i:                                   ; preds = %bb.o
  %i.ev = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.ew = xor i64 %i.ev, 6873730499113017187
  %i.ex = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.ey = load i32, ptr %i.ex, align 1
  %i.ez = zext i32 %i.ey to i64
  %i.fa = xor i64 %i.ez, 1836412517
  %i.fb = or i64 %i.ew, %i.fa
  %i.fc = icmp ne i64 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %.not.i.i158.i.i = icmp eq i32 %i.fd, 0
  %spec.select.i.i = select i1 %.not.i.i158.i.i, i16 257, i16 %.sroa.102.10.i.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i: ; preds = %.thread911.i.i, %bb.o, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.thread.i.i, %bb.m, %bb.l, %bb.k, %bb.j, %.thread869.i.i, %bb.i, %bb.h
  %.not.i.i.i.i721183.i.ph.i = phi i1 [ %.not.i.i.i.i72.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.thread.i.i ], [ false, %bb.j ], [ true, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.i ], [ %.not.i.i.i.i721184121112431250.i.i, %bb.o ], [ %.not.i.i.i.i721184121112431250.i.i, %.thread911.i.i ], [ true, %bb.h ], [ false, %.thread869.i.i ]
  %.sroa.102.12.i.ph.i = phi i16 [ %.sroa.102.10.ph.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.thread.i.i ], [ 257, %bb.j ], [ 257, %bb.k ], [ 257, %bb.l ], [ 257, %bb.m ], [ 257, %bb.i ], [ 257, %bb.o ], [ %spec.select.i.i, %.thread911.i.i ], [ 257, %bb.h ], [ 257, %.thread869.i.i ] ; 2 uses
  %i.fe = load i64, ptr %.val.i.i, align 8        ; 2 uses
  %i.ff = and i64 %i.fe, 4096
  %i.fg = and i16 %.sroa.102.12.i.ph.i, 256
  %.not.i45.i = icmp eq i16 %i.fg, 0
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i: ; preds = %bb.k, %bb.j
  %i.fh = load i64, ptr %.val.i.i, align 8        ; 2 uses
  %i.fi = and i64 %i.fh, 4096
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.i.i, %.thread869.i.i
  %.not.i.i.i.i721183.i.i = phi i1 [ %.not.i.i.i.i721184121112431250.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.i.i ], [ false, %.thread869.i.i ] ; 2 uses
  %.sroa.102.12.i.i = phi i16 [ %.sroa.102.10.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit142.i.i ], [ %.sroa.102.1.i.i, %.thread869.i.i ] ; 3 uses
  %i.fj = load i64, ptr %.val.i.i, align 8        ; 4 uses
  %i.fk = and i64 %i.fj, 4096                     ; 2 uses
  %i.fl = and i16 %.sroa.102.12.i.i, 256
  %.not.i4.i = icmp eq i16 %i.fl, 0               ; 2 uses
  %.not.i.i.i.i164.i.i = icmp eq i64 %.sroa.6.0850.i.i, 9
  %or.cond1020.i.i = select i1 %.not.i4.i, i1 %.not.i.i.i.i164.i.i, i1 false
  br i1 %or.cond1020.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.thread.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i
  %i.fm = and i64 %i.fj, 4112
  %i.fn = icmp eq i64 %i.fm, 0
  %i.fo = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.fp = xor i64 %i.fo, 8031165486167449443
  %i.fq = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i64
  %i.ft = xor i64 %i.fs, 102
  %i.fu = or i64 %i.fp, %i.ft
  %i.fv = icmp ne i64 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %.not.i.i167.i.i = icmp eq i32 %i.fw, 0
  %.sroa.0.0.insert.ext.i.i169.i.i = zext i1 %i.fn to i16
  %.sroa.0.0.insert.insert.i.i170.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i169.i.i, 256
  %.sroa.102.13.ph.i.i = select i1 %.not.i.i167.i.i, i16 %.sroa.0.0.insert.insert.i.i170.i.i, i16 %.sroa.102.12.i.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i
  %.not.i412.i = phi i1 [ %.not.i45.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i ], [ %.not.i4.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i ], [ %.not1094.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i ] ; 3 uses
  %i.fx = phi i64 [ %i.ff, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i ], [ %i.fk, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i ], [ %i.fi, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i ] ; 12 uses
  %i.fy = phi i64 [ %i.fe, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i ], [ %i.fj, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i ], [ %i.fh, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i ] ; 8 uses
  %.sroa.102.12.i11.i = phi i16 [ %.sroa.102.12.i.ph.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i ], [ %.sroa.102.12.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i ], [ %.sroa.102.1.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i ] ; 6 uses
  %.not.i.i.i.i721183.i10.i = phi i1 [ %.not.i.i.i.i721183.i.ph.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread.i ], [ %.not.i.i.i.i721183.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.i ], [ %.not.i.i.i.i72.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit160.i.thread81.i ] ; 8 uses
  %.not.i.i.i.i175.i.i = icmp eq i64 %.sroa.6.0850.i.i, 10 ; 2 uses
  %or.cond1022.i.i = select i1 %.not.i412.i, i1 %.not.i.i.i.i175.i.i, i1 false
  br i1 %or.cond1022.i.i, label %bb.p, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit182.i.i

bb.p:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.i.i
  %i.fz = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.ga = xor i64 %i.fz, 7885649434111408227
  %i.gb = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.gc = load i16, ptr %i.gb, align 1
  %i.gd = zext i16 %i.gc to i64
  %i.ge = xor i64 %i.gd, 25449
  %i.gf = or i64 %i.ga, %i.ge
  %i.gg = icmp ne i64 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %.not.i.i178.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i178.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i179.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i179.i.i: ; preds = %bb.p
  %.lobit.i.i = lshr exact i64 %i.fx, 12
  %.sroa.0.0.insert.ext.i.i180.i.i = trunc nuw nsw i64 %.lobit.i.i to i16
  %.sroa.0.0.insert.insert.i.i181.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i180.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit182.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.i.i
  %.not.i.i.i.i186.i.i = icmp eq i64 %.sroa.6.0850.i.i, 34
  %or.cond1024.i.i = select i1 %.not.i412.i, i1 %.not.i.i.i.i186.i.i, i1 false
  br i1 %or.cond1024.i.i, label %bb.q, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit193.i.i

bb.q:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit182.i.i
  %bcmp.i.i.i.i188.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %.sroa.0836.0849.i.i, ptr noundef nonnull dereferenceable(34) @.str.222, i64 34)
  %.not.i.i189.i.i = icmp eq i32 %bcmp.i.i.i.i188.i.i, 0
  br i1 %.not.i.i189.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i190.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i190.i.i: ; preds = %bb.q
  %.lobit1107.i.i = lshr exact i64 %i.fx, 12
  %.sroa.0.0.insert.ext.i.i191.i.i = trunc nuw nsw i64 %.lobit1107.i.i to i16
  %.sroa.0.0.insert.insert.i.i192.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i191.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit193.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit182.i.i
  %.not.i.i.i.i197.i.i = icmp eq i64 %.sroa.6.0850.i.i, 23 ; 2 uses
  %or.cond1026.i.i = select i1 %.not.i412.i, i1 %.not.i.i.i.i197.i.i, i1 false
  br i1 %or.cond1026.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit193.i.i
  %i.gi = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.gj = xor i128 %i.gi, 156051224569533041450878335043893753955
  %i.gk = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 7
  %i.gl = load i128, ptr %i.gk, align 1
  %i.gm = xor i128 %i.gl, 153434631872147692177625445642386830689
  %i.gn = or i128 %i.gj, %i.gm
  %i.go = icmp ne i128 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %.not.i.i200.i.i = icmp eq i32 %i.gp, 0
  %.lobit1109.i.i = lshr exact i64 %i.fx, 12
  %.sroa.0.0.insert.ext.i.i202.i.i = trunc nuw nsw i64 %.lobit1109.i.i to i16
  %.sroa.0.0.insert.insert.i.i203.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i202.i.i, 256
  %.sroa.102.16.ph.i.i = select i1 %.not.i.i200.i.i, i16 %.sroa.0.0.insert.insert.i.i203.i.i, i16 %.sroa.102.12.i11.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i190.i.i, %bb.q, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i179.i.i, %bb.p, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.thread.i.i
  %.ph.i = phi i64 [ %i.fx, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i179.i.i ], [ %i.fx, %bb.p ], [ %i.fk, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.thread.i.i ], [ %i.fx, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i190.i.i ], [ %i.fx, %bb.q ]
  %.ph13.i = phi i64 [ %i.fy, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i179.i.i ], [ %i.fy, %bb.p ], [ %i.fj, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.thread.i.i ], [ %i.fy, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i190.i.i ], [ %i.fy, %bb.q ]
  %.not.i.i.i.i721183.i9.ph.i = phi i1 [ %.not.i.i.i.i721183.i10.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i179.i.i ], [ %.not.i.i.i.i721183.i10.i, %bb.p ], [ %.not.i.i.i.i721183.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.thread.i.i ], [ %.not.i.i.i.i721183.i10.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i190.i.i ], [ %.not.i.i.i.i721183.i10.i, %bb.q ]
  %.not.i.i.i.i175126112671273.i.ph.i = phi i1 [ true, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i179.i.i ], [ true, %bb.p ], [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.thread.i.i ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i190.i.i ], [ false, %bb.q ]
  %.sroa.102.16.i.ph.i = phi i16 [ %.sroa.0.0.insert.insert.i.i181.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i179.i.i ], [ %.sroa.102.12.i11.i, %bb.p ], [ %.sroa.102.13.ph.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit171.thread.i.i ], [ %.sroa.0.0.insert.insert.i.i192.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i190.i.i ], [ %.sroa.102.12.i11.i, %bb.q ] ; 2 uses
  %i.gq = and i16 %.sroa.102.16.i.ph.i, 256
  %.not1110.i18.i = icmp eq i16 %i.gq, 0
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit193.i.i
  %i.gr = and i16 %.sroa.102.12.i11.i, 256
  %.not1110.i.i = icmp eq i16 %i.gr, 0            ; 2 uses
  %.not.i.i.i.i208.i.i = icmp eq i64 %.sroa.6.0850.i.i, 21 ; 2 uses
  %or.cond1028.i.i = select i1 %.not1110.i.i, i1 %.not.i.i.i.i208.i.i, i1 false
  br i1 %or.cond1028.i.i, label %bb.r, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i

bb.r:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i
  %i.gs = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.gt = xor i128 %i.gs, 132167105389864153778151944541739448419
  %i.gu = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 5
  %i.gv = load i128, ptr %i.gu, align 1
  %i.gw = xor i128 %i.gv, 153434631872147692177625445642386369637
  %i.gx = or i128 %i.gt, %i.gw
  %i.gy = icmp ne i128 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %.not.i.i211.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not.i.i211.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i: ; preds = %bb.r
  %.lobit1111.i.i = lshr exact i64 %i.fx, 12
  %.sroa.0.0.insert.ext.i.i213.i.i = trunc nuw nsw i64 %.lobit1111.i.i to i16
  %.sroa.0.0.insert.insert.i.i214.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i213.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i
  %.not.i.i.i.i208.i26.i = phi i1 [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i ], [ %.not.i.i.i.i208.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i ] ; 3 uses
  %.not1110.i25.i = phi i1 [ %.not1110.i18.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i ], [ %.not1110.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i ]
  %.sroa.102.16.i24.i = phi i16 [ %.sroa.102.16.i.ph.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i ], [ %.sroa.102.12.i11.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i ] ; 2 uses
  %.not.i.i.i.i175126112671273.i23.i = phi i1 [ %.not.i.i.i.i175126112671273.i.ph.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i ], [ %.not.i.i.i.i175.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i ] ; 3 uses
  %.not.i.i.i.i1971274.i22.i = phi i1 [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i ], [ %.not.i.i.i.i197.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i ] ; 3 uses
  %.not.i.i.i.i721183.i921.i = phi i1 [ %.not.i.i.i.i721183.i9.ph.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i ], [ %.not.i.i.i.i721183.i10.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i ] ; 3 uses
  %i.ha = phi i64 [ %.ph13.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i ], [ %i.fy, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i ] ; 3 uses
  %i.hb = phi i64 [ %.ph.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.thread.i ], [ %i.fx, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit204.i.i ] ; 4 uses
  %.not.i.i.i.i219.i.i = icmp eq i64 %.sroa.6.0850.i.i, 24
  %or.cond1030.i.i = select i1 %.not1110.i25.i, i1 %.not.i.i.i.i219.i.i, i1 false
  br i1 %or.cond1030.i.i, label %bb.s, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i

bb.s:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i
  %i.hc = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.hd = xor i128 %i.hc, 146793440008891980066009077488008329315
  %i.he = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 16
  %i.hf = load i64, ptr %i.he, align 1
  %i.hg = zext i64 %i.hf to i128
  %i.hh = xor i128 %i.hg, 8317708060499010934
  %i.hi = or i128 %i.hd, %i.hh
  %i.hj = icmp ne i128 %i.hi, 0
  %i.hk = zext i1 %i.hj to i32
  %.not.i.i222.i.i = icmp eq i32 %i.hk, 0
  br i1 %.not.i.i222.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i: ; preds = %bb.s
  %.lobit1113.i.i = lshr exact i64 %i.hb, 12
  %.sroa.0.0.insert.ext.i.i224.i.i = trunc nuw nsw i64 %.lobit1113.i.i to i16
  %.sroa.0.0.insert.insert.i.i225.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i224.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i, %bb.s, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i, %bb.r
  %i.hl = phi i64 [ %i.hb, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i ], [ %i.hb, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i ], [ %i.hb, %bb.s ], [ %i.fx, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i ], [ %i.fx, %bb.r ] ; 10 uses
  %i.hm = phi i64 [ %i.ha, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i ], [ %i.ha, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i ], [ %i.ha, %bb.s ], [ %i.fy, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i ], [ %i.fy, %bb.r ] ; 6 uses
  %.not.i.i.i.i721183.i8.i = phi i1 [ %.not.i.i.i.i721183.i921.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i ], [ %.not.i.i.i.i721183.i921.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i ], [ %.not.i.i.i.i721183.i921.i, %bb.s ], [ %.not.i.i.i.i721183.i10.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i ], [ %.not.i.i.i.i721183.i10.i, %bb.r ] ; 6 uses
  %.not.i.i.i.i197127412811293.i.i = phi i1 [ %.not.i.i.i.i1971274.i22.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i ], [ %.not.i.i.i.i1971274.i22.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i ], [ %.not.i.i.i.i1971274.i22.i, %bb.s ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i ], [ false, %bb.r ] ; 6 uses
  %.not.i.i.i.i17512611267127312821292.i.i = phi i1 [ %.not.i.i.i.i175126112671273.i23.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i ], [ %.not.i.i.i.i175126112671273.i23.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i ], [ %.not.i.i.i.i175126112671273.i23.i, %bb.s ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i ], [ false, %bb.r ] ; 6 uses
  %.not.i.i.i.i20812831291.i.i = phi i1 [ %.not.i.i.i.i208.i26.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i ], [ %.not.i.i.i.i208.i26.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i ], [ %.not.i.i.i.i208.i26.i, %bb.s ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i ], [ true, %bb.r ] ; 7 uses
  %.sroa.102.18.i.i = phi i16 [ %.sroa.102.16.i24.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit215.i.i ], [ %.sroa.0.0.insert.insert.i.i225.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i223.i.i ], [ %.sroa.102.16.i24.i, %bb.s ], [ %.sroa.0.0.insert.insert.i.i214.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i212.i.i ], [ %.sroa.102.12.i11.i, %bb.r ] ; 3 uses
  %i.hn = and i16 %.sroa.102.18.i.i, 256
  %.not1114.i.i = icmp eq i16 %i.hn, 0
  %or.cond1032.i.i = select i1 %.not1114.i.i, i1 %.not.i.i.i.i20812831291.i.i, i1 false
  br i1 %or.cond1032.i.i, label %bb.t, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit237.i.i

bb.t:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i
  %i.ho = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.hp = xor i128 %i.ho, 153387859999914582919100882229504014435
  %i.hq = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 5
  %i.hr = load i128, ptr %i.hq, align 1
  %i.hs = xor i128 %i.hr, 153387657176461694919408967092271672430
  %i.ht = or i128 %i.hp, %i.hs
  %i.hu = icmp ne i128 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %.not.i.i233.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i233.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i234.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit237.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i234.i.i: ; preds = %bb.t
  %.lobit1115.i.i = lshr exact i64 %i.hl, 12
  %.sroa.0.0.insert.ext.i.i235.i.i = trunc nuw nsw i64 %.lobit1115.i.i to i16
  %.sroa.0.0.insert.insert.i.i236.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i235.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit237.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit237.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i234.i.i, %bb.t, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i
  %.sroa.102.19.i.i = phi i16 [ %.sroa.102.18.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit226.i.i ], [ %.sroa.0.0.insert.insert.i.i236.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i234.i.i ], [ %.sroa.102.18.i.i, %bb.t ] ; 5 uses
  %i.hw = and i16 %.sroa.102.19.i.i, 256
  %.not1116.i.i = icmp eq i16 %i.hw, 0            ; 3 uses
  %.not.i.i.i.i241.i.i = icmp eq i64 %.sroa.6.0850.i.i, 11
  %or.cond1034.i.i = select i1 %.not1116.i.i, i1 %.not.i.i.i.i241.i.i, i1 false
  br i1 %or.cond1034.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit237.i.i
  %i.hx = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.hy = xor i64 %i.hx, 7092432106264492131
  %i.hz = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 3
  %i.ia = load i64, ptr %i.hz, align 1
  %i.ib = xor i64 %i.ia, 8314036761007320159
  %i.ic = or i64 %i.hy, %i.ib
  %i.id = icmp ne i64 %i.ic, 0
  %i.ie = zext i1 %i.id to i32
  %.not.i.i244.i.i = icmp eq i32 %i.ie, 0
  %.lobit1117.i.i = lshr exact i64 %i.hl, 12
  %.sroa.0.0.insert.ext.i.i246.i.i = trunc nuw nsw i64 %.lobit1117.i.i to i16
  %.sroa.0.0.insert.insert.i.i247.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i246.i.i, 256
  %.sroa.102.20.ph.i.i = select i1 %.not.i.i244.i.i, i16 %.sroa.0.0.insert.insert.i.i247.i.i, i16 %.sroa.102.19.i.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit237.i.i
  %.not.i.i.i.i252.i.i = icmp eq i64 %.sroa.6.0850.i.i, 28 ; 2 uses
  %or.cond1036.i.i = select i1 %.not1116.i.i, i1 %.not.i.i.i.i252.i.i, i1 false
  br i1 %or.cond1036.i.i, label %bb.u, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i

bb.u:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.i.i
  %i.if = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.ig = xor i128 %i.if, 154685773147123592505410503325611751523
  %i.ih = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 12
  %i.ii = load i128, ptr %i.ih, align 1
  %i.ij = xor i128 %i.ii, 153398346001044719836214442354729248112
  %i.ik = or i128 %i.ig, %i.ij
  %i.il = icmp ne i128 %i.ik, 0
  %i.im = zext i1 %i.il to i32
  %.not.i.i255.i.i = icmp eq i32 %i.im, 0
  br i1 %.not.i.i255.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i: ; preds = %bb.u
  %.lobit1119.i.i = lshr exact i64 %i.hl, 12
  %.sroa.0.0.insert.ext.i.i257.i.i = trunc nuw nsw i64 %.lobit1119.i.i to i16
  %.sroa.0.0.insert.insert.i.i258.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i257.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.i.i
  %.not.i.i.i.i263.i.i = icmp eq i64 %.sroa.6.0850.i.i, 25 ; 2 uses
  %or.cond1038.i.i = select i1 %.not1116.i.i, i1 %.not.i.i.i.i263.i.i, i1 false
  br i1 %or.cond1038.i.i, label %bb.v, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i

bb.v:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i
  %i.in = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.io = xor i128 %i.in, 134819922636993856839659422125823391843
  %i.ip = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 9
  %i.iq = load i128, ptr %i.ip, align 1
  %i.ir = xor i128 %i.iq, 154737878094749236090481767918556771425
  %i.is = or i128 %i.io, %i.ir
  %i.it = icmp ne i128 %i.is, 0
  %i.iu = zext i1 %i.it to i32
  %.not.i.i266.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not.i.i266.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i: ; preds = %bb.v
  %.lobit1121.i.i = lshr exact i64 %i.hl, 12
  %.sroa.0.0.insert.ext.i.i268.i.i = trunc nuw nsw i64 %.lobit1121.i.i to i16
  %.sroa.0.0.insert.insert.i.i269.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i268.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i, %bb.v, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i, %bb.u, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i
  %i.iv = phi i64 [ %i.hl, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ %i.hl, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ %i.hl, %bb.v ], [ %i.hl, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ %i.hl, %bb.u ], [ %i.hl, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ %i.fx, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ] ; 7 uses
  %i.iw = phi i64 [ %i.hm, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ %i.hm, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ %i.hm, %bb.v ], [ %i.hm, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ %i.hm, %bb.u ], [ %i.hm, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ %i.fy, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ] ; 4 uses
  %.not.i.i.i.i721183.i83452.i = phi i1 [ %.not.i.i.i.i721183.i8.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ %.not.i.i.i.i721183.i8.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ %.not.i.i.i.i721183.i8.i, %bb.v ], [ %.not.i.i.i.i721183.i8.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ %.not.i.i.i.i721183.i8.i, %bb.u ], [ %.not.i.i.i.i721183.i8.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ %.not.i.i.i.i721183.i10.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ] ; 2 uses
  %.not.i.i.i.i197127412811293.i3550.i = phi i1 [ %.not.i.i.i.i197127412811293.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ %.not.i.i.i.i197127412811293.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ %.not.i.i.i.i197127412811293.i.i, %bb.v ], [ %.not.i.i.i.i197127412811293.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ %.not.i.i.i.i197127412811293.i.i, %bb.u ], [ %.not.i.i.i.i197127412811293.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ true, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ]
  %.not.i.i.i.i17512611267127312821292.i3648.i = phi i1 [ %.not.i.i.i.i17512611267127312821292.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ %.not.i.i.i.i17512611267127312821292.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ %.not.i.i.i.i17512611267127312821292.i.i, %bb.v ], [ %.not.i.i.i.i17512611267127312821292.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ %.not.i.i.i.i17512611267127312821292.i.i, %bb.u ], [ %.not.i.i.i.i17512611267127312821292.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ]
  %.not.i.i.i.i20812831291.i3746.i = phi i1 [ %.not.i.i.i.i20812831291.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ %.not.i.i.i.i20812831291.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ %.not.i.i.i.i20812831291.i.i, %bb.v ], [ %.not.i.i.i.i20812831291.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ %.not.i.i.i.i20812831291.i.i, %bb.u ], [ %.not.i.i.i.i20812831291.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ] ; 2 uses
  %.not.i.i.i.i2631305.i.i = phi i1 [ %.not.i.i.i.i263.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ true, %bb.v ], [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ false, %bb.u ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ] ; 3 uses
  %.not.i.i.i.i25212981304.i.i = phi i1 [ %.not.i.i.i.i252.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ false, %bb.v ], [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ true, %bb.u ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ]
  %.sroa.102.22.i.i = phi i16 [ %.sroa.102.19.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.i ], [ %.sroa.0.0.insert.insert.i.i269.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i267.i.i ], [ %.sroa.102.19.i.i, %bb.v ], [ %.sroa.102.20.ph.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit248.thread.i.i ], [ %.sroa.102.19.i.i, %bb.u ], [ %.sroa.0.0.insert.insert.i.i258.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i256.i.i ], [ %.sroa.102.16.ph.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit259.i.thread.i ] ; 3 uses
  %i.ix = and i16 %.sroa.102.22.i.i, 256
  %.not1122.i.i = icmp eq i16 %i.ix, 0
  %or.cond1040.i.i = select i1 %.not1122.i.i, i1 %.not.i.i.i.i721183.i83452.i, i1 false
  br i1 %or.cond1040.i.i, label %bb.w, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit281.i.i

bb.w:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i
  %i.iy = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.iz = xor i128 %i.iy, 146793440004243688790239669375930497123
  %i.ja = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 16
  %i.jb = load i32, ptr %i.ja, align 1
  %i.jc = zext i32 %i.jb to i128
  %i.jd = xor i128 %i.jc, 1819243124
  %i.je = or i128 %i.iz, %i.jd
  %i.jf = icmp ne i128 %i.je, 0
  %i.jg = zext i1 %i.jf to i32
  %.not.i.i277.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i277.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i278.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit281.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i278.i.i: ; preds = %bb.w
  %.lobit1123.i.i = lshr exact i64 %i.iv, 12
  %.sroa.0.0.insert.ext.i.i279.i.i = trunc nuw nsw i64 %.lobit1123.i.i to i16
  %.sroa.0.0.insert.insert.i.i280.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i279.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit281.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit281.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i278.i.i, %bb.w, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i
  %.sroa.102.23.i.i = phi i16 [ %.sroa.102.22.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit270.i.i ], [ %.sroa.0.0.insert.insert.i.i280.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i278.i.i ], [ %.sroa.102.22.i.i, %bb.w ] ; 4 uses
  %i.jh = and i16 %.sroa.102.23.i.i, 256
  %.not1124.i.i = icmp eq i16 %i.jh, 0            ; 2 uses
  %.not.i.i.i.i285.i.i = icmp eq i64 %.sroa.6.0850.i.i, 13
  %or.cond1042.i.i = select i1 %.not1124.i.i, i1 %.not.i.i.i.i285.i.i, i1 false
  br i1 %or.cond1042.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.thread.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit281.i.i
  %i.ji = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.jj = xor i64 %i.ji, 7453001577200646243
  %i.jk = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 5
  %i.jl = load i64, ptr %i.jk, align 1
  %i.jm = xor i64 %i.jl, 8245922002647871073
  %i.jn = or i64 %i.jj, %i.jm
  %i.jo = icmp ne i64 %i.jn, 0
  %i.jp = zext i1 %i.jo to i32
  %.not.i.i288.i.i = icmp eq i32 %i.jp, 0
  %.lobit1125.i.i = lshr exact i64 %i.iv, 12
  %.sroa.0.0.insert.ext.i.i290.i.i = trunc nuw nsw i64 %.lobit1125.i.i to i16
  %.sroa.0.0.insert.insert.i.i291.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i290.i.i, 256
  %.sroa.102.24.ph.i.i = select i1 %.not.i.i288.i.i, i16 %.sroa.0.0.insert.insert.i.i291.i.i, i16 %.sroa.102.23.i.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit303.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit281.i.i
  %.not.i.i.i.i296.i.i = icmp eq i64 %.sroa.6.0850.i.i, 33 ; 2 uses
  %or.cond1044.i.i = select i1 %.not1124.i.i, i1 %.not.i.i.i.i296.i.i, i1 false
  br i1 %or.cond1044.i.i, label %bb.x, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit303.i.i

bb.x:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.i.i
  %bcmp.i.i.i.i298.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(33) %.sroa.0836.0849.i.i, ptr noundef nonnull dereferenceable(33) @.str.239, i64 33)
  %.not.i.i299.i.i = icmp eq i32 %bcmp.i.i.i.i298.i.i, 0
  br i1 %.not.i.i299.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i300.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit303.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i300.i.i: ; preds = %bb.x
  %.lobit1127.i.i = lshr exact i64 %i.iv, 12
  %.sroa.0.0.insert.ext.i.i301.i.i = trunc nuw nsw i64 %.lobit1127.i.i to i16
  %.sroa.0.0.insert.insert.i.i302.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i301.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit303.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit303.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i300.i.i, %bb.x, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.thread.i.i
  %.not.i.i.i.i2961312.i.i = phi i1 [ %.not.i.i.i.i296.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.i.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i300.i.i ], [ true, %bb.x ], [ false, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.thread.i.i ]
  %.sroa.102.25.i.i = phi i16 [ %.sroa.102.23.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.i.i ], [ %.sroa.0.0.insert.insert.i.i302.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i300.i.i ], [ %.sroa.102.23.i.i, %bb.x ], [ %.sroa.102.24.ph.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit292.thread.i.i ] ; 3 uses
  %i.jq = and i16 %.sroa.102.25.i.i, 256
  %.not1128.i.i = icmp eq i16 %i.jq, 0
  %or.cond1046.i.i = select i1 %.not1128.i.i, i1 %.not.i.i.i.i20812831291.i3746.i, i1 false
  br i1 %or.cond1046.i.i, label %bb.y, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit314.i.i

bb.y:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit303.i.i
  %i.jr = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.js = xor i128 %i.jr, 152058490345413031710187132095624149091
  %i.jt = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 5
  %i.ju = load i128, ptr %i.jt, align 1
  %i.jv = xor i128 %i.ju, 153387658203022263442153093183405056374
  %i.jw = or i128 %i.js, %i.jv
  %i.jx = icmp ne i128 %i.jw, 0
  %i.jy = zext i1 %i.jx to i32
  %.not.i.i310.i.i = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i310.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i311.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit314.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i311.i.i: ; preds = %bb.y
  %.lobit1129.i.i = lshr exact i64 %i.iv, 12
  %.sroa.0.0.insert.ext.i.i312.i.i = trunc nuw nsw i64 %.lobit1129.i.i to i16
  %.sroa.0.0.insert.insert.i.i313.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i312.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit314.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit314.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i311.i.i, %bb.y, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit303.i.i
  %.sroa.102.26.i.i = phi i16 [ %.sroa.102.25.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit303.i.i ], [ %.sroa.0.0.insert.insert.i.i313.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i311.i.i ], [ %.sroa.102.25.i.i, %bb.y ] ; 6 uses
  %i.jz = and i16 %.sroa.102.26.i.i, 256
  %.not1130.i.i = icmp eq i16 %i.jz, 0            ; 4 uses
  %.not.i.i.i.i318.i.i = icmp eq i64 %.sroa.6.0850.i.i, 22 ; 2 uses
  %or.cond1048.i.i = select i1 %.not1130.i.i, i1 %.not.i.i.i.i318.i.i, i1 false
  br i1 %or.cond1048.i.i, label %bb.z, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit325.i.i

bb.z:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit314.i.i
  %i.ka = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.kb = xor i128 %i.ka, 145412633840223737402831201631441811555
  %i.kc = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 6
  %i.kd = load i128, ptr %i.kc, align 1
  %i.ke = xor i128 %i.kd, 153388001976183427813784736977733642610
  %i.kf = or i128 %i.kb, %i.ke
  %i.kg = icmp ne i128 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %.not.i.i321.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i321.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i322.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.thread.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i322.i.i: ; preds = %bb.z
  %.lobit1131.i.i = lshr exact i64 %i.iv, 12
  %.sroa.0.0.insert.ext.i.i323.i.i = trunc nuw nsw i64 %.lobit1131.i.i to i16
  %.sroa.0.0.insert.insert.i.i324.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i323.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.thread.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit325.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit314.i.i
  %.not.i.i.i.i329.i.i = icmp eq i64 %.sroa.6.0850.i.i, 14
  %or.cond1050.i.i = select i1 %.not1130.i.i, i1 %.not.i.i.i.i329.i.i, i1 false
  br i1 %or.cond1050.i.i, label %bb.aa, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit334.i.i

bb.aa:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit325.i.i
  %i.ki = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.kj = xor i64 %i.ki, 7311709883445311587
  %i.kk = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 6
  %i.kl = load i64, ptr %i.kk, align 1
  %i.km = xor i64 %i.kl, 7887331704080459128
  %i.kn = or i64 %i.kj, %i.km
  %i.ko = icmp ne i64 %i.kn, 0
  %i.kp = zext i1 %i.ko to i32
  %.not.i.i332.i.i = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i332.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.thread.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit334.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit325.i.i
  %.not.i.i.i.i338.i.i = icmp eq i64 %.sroa.6.0850.i.i, 19
  %or.cond1052.i.i = select i1 %.not1130.i.i, i1 %.not.i.i.i.i338.i.i, i1 false
  br i1 %or.cond1052.i.i, label %bb.ab, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.i.i

bb.ab:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit334.i.i
  %i.kq = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.kr = xor i128 %i.kq, 152058774614203317222902783768654280803
  %i.ks = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 3
  %i.kt = load i128, ptr %i.ks, align 1
  %i.ku = xor i128 %i.kt, 153423964033127886840624579950603231839
  %i.kv = or i128 %i.kr, %i.ku
  %i.kw = icmp ne i128 %i.kv, 0
  %i.kx = zext i1 %i.kw to i32
  %.not.i.i341.i.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i341.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.thread.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.thread.i.i: ; preds = %bb.ab, %bb.aa, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i322.i.i, %bb.z
  %.sroa.102.271317.ph.i.i = phi i16 [ %.sroa.102.26.i.i, %bb.aa ], [ %.sroa.102.26.i.i, %bb.ab ], [ %.sroa.102.26.i.i, %bb.z ], [ %.sroa.0.0.insert.insert.i.i324.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i322.i.i ]
  %i.ky = and i64 %i.iw, 8192
  %i.kz = icmp ne i64 %i.ky, 0
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit354.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit334.i.i
  %i.la = and i64 %i.iw, 8192                     ; 2 uses
  %i.lb = icmp ne i64 %i.la, 0                    ; 3 uses
  %.not.i.i.i.i347.i.i = icmp eq i64 %.sroa.6.0850.i.i, 17
  %or.cond1054.i.i = select i1 %.not1130.i.i, i1 %.not.i.i.i.i347.i.i, i1 false
  br i1 %or.cond1054.i.i, label %bb.ac, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit354.i.i

bb.ac:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.i.i
  %i.lc = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.ld = xor i128 %i.lc, 134846331683320008592643867353556744291
  %i.le = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 16
  %i.lf = load i8, ptr %i.le, align 1
  %i.lg = zext i8 %i.lf to i128
  %i.lh = xor i128 %i.lg, 115
  %i.li = or i128 %i.ld, %i.lh
  %i.lj = icmp ne i128 %i.li, 0
  %i.lk = zext i1 %i.lj to i32
  %.not.i.i350.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i350.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i351.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i351.i.i: ; preds = %bb.ac
  %.lobit1135.i.i = lshr exact i64 %i.la, 13
  %.sroa.0.0.insert.ext.i.i352.i.i = trunc nuw nsw i64 %.lobit1135.i.i to i16
  %.sroa.0.0.insert.insert.i.i353.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i352.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit354.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.thread.i.i
  %i.ll = phi i1 [ %i.lb, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.i.i ], [ %i.kz, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.thread.i.i ] ; 3 uses
  %.sroa.102.30.i.i = phi i16 [ %.sroa.102.26.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.i.i ], [ %.sroa.102.271317.ph.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit343.thread.i.i ] ; 3 uses
  %i.lm = and i16 %.sroa.102.30.i.i, 256
  %.not1136.i.i = icmp eq i16 %i.lm, 0
  %or.cond1056.i.i = select i1 %.not1136.i.i, i1 %.not.i.i.i.i318.i.i, i1 false
  br i1 %or.cond1056.i.i, label %bb.ad, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i

bb.ad:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit354.i.i
  %i.ln = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.lo = xor i128 %i.ln, 145412633840846324755199769917125064803
  %i.lp = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 6
  %i.lq = load i128, ptr %i.lp, align 1
  %i.lr = xor i128 %i.lq, 153388001976183427813784739189608245618
  %i.ls = or i128 %i.lo, %i.lr
  %i.lt = icmp ne i128 %i.ls, 0
  %i.lu = zext i1 %i.lt to i32
  %.not.i.i361.i.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i361.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i362.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i362.i.i: ; preds = %bb.ad
  %.lobit1137.i.i = lshr exact i64 %i.iv, 12
  %.sroa.0.0.insert.ext.i.i363.i.i = trunc nuw nsw i64 %.lobit1137.i.i to i16
  %.sroa.0.0.insert.insert.i.i364.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i363.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i362.i.i, %bb.ad, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit354.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i351.i.i, %bb.ac
  %i.lv = phi i1 [ %i.ll, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit354.i.i ], [ %i.ll, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i362.i.i ], [ %i.ll, %bb.ad ], [ %i.lb, %bb.ac ], [ %i.lb, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i351.i.i ] ; 2 uses
  %.sroa.102.31.i.i = phi i16 [ %.sroa.102.30.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit354.i.i ], [ %.sroa.0.0.insert.insert.i.i364.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i362.i.i ], [ %.sroa.102.30.i.i, %bb.ad ], [ %.sroa.102.26.i.i, %bb.ac ], [ %.sroa.0.0.insert.insert.i.i353.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i351.i.i ] ; 3 uses
  %i.lw = and i16 %.sroa.102.31.i.i, 256
  %.not1138.i.i = icmp eq i16 %i.lw, 0
  %or.cond1058.i.i = select i1 %.not1138.i.i, i1 %.not.i.i.i.i721183.i83452.i, i1 false
  br i1 %or.cond1058.i.i, label %bb.ae, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit376.i.i

bb.ae:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i
  %i.lx = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.ly = xor i128 %i.lx, 126797947507253236447222891109668124771
  %i.lz = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 16
  %i.ma = load i32, ptr %i.lz, align 1
  %i.mb = zext i32 %i.ma to i128
  %i.mc = xor i128 %i.mb, 1886680174
  %i.md = or i128 %i.ly, %i.mc
  %i.me = icmp ne i128 %i.md, 0
  %i.mf = zext i1 %i.me to i32
  %.not.i.i372.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i372.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i373.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit376.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i373.i.i: ; preds = %bb.ae
  %i.mg = lshr i64 %i.iw, 16
  %i.mh = trunc i64 %i.mg to i16
  %.sroa.0.0.insert.insert.i.i375.i.i = or i16 %i.mh, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit376.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit376.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i373.i.i, %bb.ae, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i
  %.sroa.102.32.i.i = phi i16 [ %.sroa.102.31.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit365.i.i ], [ %.sroa.0.0.insert.insert.i.i375.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i373.i.i ], [ %.sroa.102.31.i.i, %bb.ae ] ; 3 uses
  %i.mi = and i16 %.sroa.102.32.i.i, 256
  %.not1140.i.i = icmp eq i16 %i.mi, 0
  %.not.i.i.i.i380.i.i = icmp eq i64 %.sroa.6.0850.i.i, 27
  %or.cond1060.i.i = select i1 %.not1140.i.i, i1 %.not.i.i.i.i380.i.i, i1 false
  br i1 %or.cond1060.i.i, label %bb.af, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit387.i.i

bb.af:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit376.i.i
  %i.mj = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.mk = xor i128 %i.mj, 140111298752920918986487535815573928035
  %i.ml = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 11
  %i.mm = load i128, ptr %i.ml, align 1
  %i.mn = xor i128 %i.mm, 152058774297602536658222631192223833972
  %i.mo = or i128 %i.mk, %i.mn
  %i.mp = icmp ne i128 %i.mo, 0
  %i.mq = zext i1 %i.mp to i32
  %.not.i.i383.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not.i.i383.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i384.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit387.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i384.i.i: ; preds = %bb.af
  %i.mr = lshr i64 %i.iw, 17
  %i.ms = trunc i64 %i.mr to i16
  %.sroa.0.0.insert.insert.i.i386.i.i = or i16 %i.ms, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit387.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit387.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i384.i.i, %bb.af, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit376.i.i
  %.sroa.102.33.i.i = phi i16 [ %.sroa.102.32.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit376.i.i ], [ %.sroa.0.0.insert.insert.i.i386.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i384.i.i ], [ %.sroa.102.32.i.i, %bb.af ] ; 4 uses
  %i.mt = and i16 %.sroa.102.33.i.i, 256
  %.not1142.i.i = icmp eq i16 %i.mt, 0            ; 5 uses
  %or.cond1062.i.i = select i1 %.not1142.i.i, i1 %.not.i.i.i.i20812831291.i3746.i, i1 false
  br i1 %or.cond1062.i.i, label %bb.ag, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit396.i.i

bb.ag:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit387.i.i
  %i.mu = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.mv = xor i128 %i.mu, 145459384794982741855161910637076248175
  %i.mw = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 5
  %i.mx = load i128, ptr %i.mw, align 1
  %i.my = xor i128 %i.mx, 133449400841194062728196792284568904047
  %i.mz = or i128 %i.mv, %i.my
  %i.na = icmp ne i128 %i.mz, 0
  %i.nb = zext i1 %i.na to i32
  %.not.i.i394.i.i = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i394.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit405.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit396.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit387.i.i
  %or.cond1064.i.i = select i1 %.not1142.i.i, i1 %.not.i.i.i.i2961312.i.i, i1 false
  br i1 %or.cond1064.i.i, label %bb.ah, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit405.i.i

bb.ah:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit396.i.i
  %bcmp.i.i.i.i402.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(33) %.sroa.0836.0849.i.i, ptr noundef nonnull dereferenceable(33) @.str.312, i64 33)
  %.not.i.i403.i.i = icmp eq i32 %bcmp.i.i.i.i402.i.i, 0
  br i1 %.not.i.i403.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit405.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit405.i.i: ; preds = %bb.ah, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit396.i.i, %bb.ag
  %.not.i.i.i.i409.i.i = icmp eq i64 %.sroa.6.0850.i.i, 43
  %or.cond1066.i.i = select i1 %.not1142.i.i, i1 %.not.i.i.i.i409.i.i, i1 false
  br i1 %or.cond1066.i.i, label %bb.ai, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit414.i.i

bb.ai:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit405.i.i
  %bcmp.i.i.i.i411.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(43) %.sroa.0836.0849.i.i, ptr noundef nonnull dereferenceable(43) @.str.313, i64 43)
  %.not.i.i412.i.i = icmp eq i32 %bcmp.i.i.i.i411.i.i, 0
  br i1 %.not.i.i412.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.thread.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit414.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit405.i.i
  %.not.i.i.i.i418.i.i = icmp eq i64 %.sroa.6.0850.i.i, 36
  %or.cond1068.i.i = select i1 %.not1142.i.i, i1 %.not.i.i.i.i418.i.i, i1 false
  br i1 %or.cond1068.i.i, label %bb.aj, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.i.i

bb.aj:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit414.i.i
  %bcmp.i.i.i.i420.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(36) %.sroa.0836.0849.i.i, ptr noundef nonnull dereferenceable(36) @.str.314, i64 36)
  %.not.i.i421.i.i = icmp eq i32 %bcmp.i.i.i.i420.i.i, 0
  br i1 %.not.i.i421.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.thread.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ab, %bb.aa
  %i.nc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 160
  %i.nd = load i64, ptr %i.nc, align 8
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.thread.i.i: ; preds = %bb.aj, %bb.ai
  %i.ne = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.nf = load i64, ptr %i.ne, align 8
  %i.ng = and i64 %i.nf, 144115188075855872
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit434.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit414.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.ni = load i64, ptr %i.nh, align 8
  %i.nj = and i64 %i.ni, 144115188075855872       ; 4 uses
  %or.cond1070.i.i = select i1 %.not1142.i.i, i1 %.not.i.i.i.i51.i.i, i1 false
  br i1 %or.cond1070.i.i, label %bb.ak, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit434.i.i

bb.ak:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.i.i
  %i.nk = load i32, ptr %.sroa.0836.0849.i.i, align 1
  %i.nl = xor i32 %i.nk, 1601531495
  %i.nm = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 3
  %i.nn = load i32, ptr %i.nm, align 1
  %i.no = xor i32 %i.nn, 1836278111
  %i.np = or i32 %i.nl, %i.no
  %i.nq = icmp ne i32 %i.np, 0
  %i.nr = zext i1 %i.nq to i32
  %.not.i.i430.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not.i.i430.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i431.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit434.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i431.i.i: ; preds = %bb.ak
  %.lobit1147.i.i = lshr exact i64 %i.nj, 57
  %.sroa.0.0.insert.ext.i.i432.i.i = trunc nuw nsw i64 %.lobit1147.i.i to i16
  %.sroa.0.0.insert.insert.i.i433.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i432.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit434.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit434.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i431.i.i, %bb.ak, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.thread.i.i
  %i.ns = phi i64 [ %i.nj, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.i.i ], [ %i.nj, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i431.i.i ], [ %i.nj, %bb.ak ], [ %i.ng, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.thread.i.i ] ; 3 uses
  %.sroa.102.38.i.i = phi i16 [ %.sroa.102.33.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.i.i ], [ %.sroa.0.0.insert.insert.i.i433.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i431.i.i ], [ %.sroa.102.33.i.i, %bb.ak ], [ %.sroa.102.33.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit423.thread.i.i ] ; 3 uses
  %i.nt = and i16 %.sroa.102.38.i.i, 256
  %.not1148.i.i = icmp eq i16 %i.nt, 0
  %or.cond1072.i.i = select i1 %.not1148.i.i, i1 %.not.i.i.i.i2631305.i.i, i1 false
  br i1 %or.cond1072.i.i, label %bb.al, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit445.i.i

bb.al:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit434.i.i
  %i.nu = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.nv = xor i128 %i.nu, 154738059849108269136544959020200717927
  %i.nw = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 9
  %i.nx = load i128, ptr %i.nw, align 1
  %i.ny = xor i128 %i.nx, 153465907902375425634710743768959513711
  %i.nz = or i128 %i.nv, %i.ny
  %i.oa = icmp ne i128 %i.nz, 0
  %i.ob = zext i1 %i.oa to i32
  %.not.i.i441.i.i = icmp eq i32 %i.ob, 0
  br i1 %.not.i.i441.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i442.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit445.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i442.i.i: ; preds = %bb.al
  %.lobit1149.i.i = lshr exact i64 %i.ns, 57
  %.sroa.0.0.insert.ext.i.i443.i.i = trunc nuw nsw i64 %.lobit1149.i.i to i16
  %.sroa.0.0.insert.insert.i.i444.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i443.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit445.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit445.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i442.i.i, %bb.al, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit434.i.i
  %.sroa.102.39.i.i = phi i16 [ %.sroa.102.38.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit434.i.i ], [ %.sroa.0.0.insert.insert.i.i444.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i442.i.i ], [ %.sroa.102.38.i.i, %bb.al ] ; 3 uses
  %i.oc = and i16 %.sroa.102.39.i.i, 256
  %.not1150.i.i = icmp eq i16 %i.oc, 0
  %.not.i.i.i.i449.i.i = icmp eq i64 %.sroa.6.0850.i.i, 30
  %or.cond1074.i.i = select i1 %.not1150.i.i, i1 %.not.i.i.i.i449.i.i, i1 false
  br i1 %or.cond1074.i.i, label %bb.am, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit456.i.i

bb.am:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit445.i.i
  %i.od = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.oe = xor i128 %i.od, 154738059849108269136544959020200717927
  %i.of = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 14
  %i.og = load i128, ptr %i.of, align 1
  %i.oh = xor i128 %i.og, 144119772758229531721062256621272986729
  %i.oi = or i128 %i.oe, %i.oh
  %i.oj = icmp ne i128 %i.oi, 0
  %i.ok = zext i1 %i.oj to i32
  %.not.i.i452.i.i = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i452.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i453.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit456.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i453.i.i: ; preds = %bb.am
  %.lobit1151.i.i = lshr exact i64 %i.ns, 57
  %.sroa.0.0.insert.ext.i.i454.i.i = trunc nuw nsw i64 %.lobit1151.i.i to i16
  %.sroa.0.0.insert.insert.i.i455.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i454.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit456.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit456.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i453.i.i, %bb.am, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit445.i.i
  %.sroa.102.40.i.i = phi i16 [ %.sroa.102.39.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit445.i.i ], [ %.sroa.0.0.insert.insert.i.i455.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i453.i.i ], [ %.sroa.102.39.i.i, %bb.am ] ; 3 uses
  %.not43.i.i = icmp ne i64 %i.ns, 0
  %spec.select1075.i.i = select i1 %.not43.i.i, i1 %i.lv, i1 false
  %i.ol = and i16 %.sroa.102.40.i.i, 256
  %.not1152.i.i = icmp eq i16 %i.ol, 0
  %or.cond1077.i.i = select i1 %.not1152.i.i, i1 %.not.i.i.i.i2631305.i.i, i1 false
  br i1 %or.cond1077.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i461.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit467.i.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i461.i.i:     ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit456.i.i
  %i.om = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.on = xor i128 %i.om, 149498668900495861539421862842930130535
  %i.oo = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 9
  %i.op = load i128, ptr %i.oo, align 1
  %i.oq = xor i128 %i.op, 153398265511129949658719609699259608687
  %i.or = or i128 %i.on, %i.oq
  %i.os = icmp ne i128 %i.or, 0
  %i.ot = zext i1 %i.os to i32
  %.not.i.i463.i.i = icmp eq i32 %i.ot, 0
  br i1 %.not.i.i463.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i464.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit467.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i464.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i461.i.i
  %.sroa.0.0.insert.ext.i.i465.i.i = zext i1 %spec.select1075.i.i to i16
  %.sroa.0.0.insert.insert.i.i466.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i465.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit467.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit467.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i464.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i461.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit456.i.i
  %.sroa.102.41.i.i = phi i16 [ %.sroa.102.40.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit456.i.i ], [ %.sroa.0.0.insert.insert.i.i466.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i464.i.i ], [ %.sroa.102.40.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i461.i.i ] ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 160
  %i.ov = load i64, ptr %i.ou, align 8            ; 5 uses
  %i.ow = and i16 %.sroa.102.41.i.i, 256
  %.not1153.i.i = icmp eq i16 %i.ow, 0
  %or.cond1079.i.i = select i1 %.not1153.i.i, i1 %.not.i.i.i.i61.i.i, i1 false
  br i1 %or.cond1079.i.i, label %bb.an, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit478.i.i

bb.an:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit467.i.i
  %i.ox = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.oy = xor i64 %i.ox, 8385553425474281837
  %i.oz = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.pa = load i32, ptr %i.oz, align 1
  %i.pb = zext i32 %i.pa to i64
  %i.pc = xor i64 %i.pb, 1936027769
  %i.pd = or i64 %i.oy, %i.pc
  %i.pe = icmp ne i64 %i.pd, 0
  %i.pf = zext i1 %i.pe to i32
  %.not.i.i474.i.i = icmp eq i32 %i.pf, 0
  br i1 %.not.i.i474.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i475.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit478.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i475.i.i: ; preds = %bb.an
  %i.pg = trunc i64 %i.ov to i16
  %i.ph = lshr i16 %i.pg, 4
  %.sroa.0.0.insert.insert.i.i477.i.i = or i16 %i.ph, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit478.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit478.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i475.i.i, %bb.an, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit467.i.i
  %.sroa.102.42.i.i = phi i16 [ %.sroa.102.41.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit467.i.i ], [ %.sroa.0.0.insert.insert.i.i477.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i475.i.i ], [ %.sroa.102.41.i.i, %bb.an ] ; 4 uses
  %i.pi = and i16 %.sroa.102.42.i.i, 256
  %.not1155.i.i = icmp eq i16 %i.pi, 0            ; 2 uses
  %or.cond1081.i.i = select i1 %.not1155.i.i, i1 %.not.i.i.i.i25212981304.i.i, i1 false
  br i1 %or.cond1081.i.i, label %bb.ao, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit487.i.i

bb.ao:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit478.i.i
  %i.pj = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.pk = xor i128 %i.pj, 129451493019625055186828057498948493677
  %i.pl = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 12
  %i.pm = load i128, ptr %i.pl, align 1
  %i.pn = xor i128 %i.pm, 146793563284524261429967533283807032159
  %i.po = or i128 %i.pk, %i.pn
  %i.pp = icmp ne i128 %i.po, 0
  %i.pq = zext i1 %i.pp to i32
  %.not.i.i485.i.i = icmp eq i32 %i.pq, 0
  br i1 %.not.i.i485.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit487.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit478.i.i
  %.not.i.i.i.i491.i.i = icmp eq i64 %.sroa.6.0850.i.i, 36
  %or.cond1083.i.i = select i1 %.not1155.i.i, i1 %.not.i.i.i.i491.i.i, i1 false
  br i1 %or.cond1083.i.i, label %bb.ap, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i

bb.ap:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit487.i.i
  %bcmp.i.i.i.i493.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(36) %.sroa.0836.0849.i.i, ptr noundef nonnull dereferenceable(36) @.str.321, i64 36)
  %.not.i.i494.i.i = icmp eq i32 %bcmp.i.i.i.i493.i.i, 0
  br i1 %.not.i.i494.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i495.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i495.i.i: ; preds = %bb.ap
  %.sroa.0.0.insert.ext.i.i496.i.i = zext i1 %i.lv to i16
  %.sroa.0.0.insert.insert.i.i497.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i496.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i495.i.i, %bb.ap, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit487.i.i, %bb.ao
  %.sroa.102.44.i.i = phi i16 [ %.sroa.102.42.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit487.i.i ], [ %.sroa.0.0.insert.insert.i.i497.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i495.i.i ], [ %.sroa.102.42.i.i, %bb.ap ], [ %.sroa.102.42.i.i, %bb.ao ] ; 3 uses
  %i.pr = and i16 %.sroa.102.44.i.i, 256
  %.not1157.i.i = icmp eq i16 %i.pr, 0
  %or.cond1085.i.i = select i1 %.not1157.i.i, i1 %.not.i.i.i.i17512611267127312821292.i3648.i, i1 false
  br i1 %or.cond1085.i.i, label %bb.aq, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i

bb.aq:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i
  %i.ps = load i64, ptr %.sroa.0836.0849.i.i, align 1
  %i.pt = xor i64 %i.ps, 7312272889266594148
  %i.pu = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 8
  %i.pv = load i16, ptr %i.pu, align 1
  %i.pw = zext i16 %i.pv to i64
  %i.px = xor i64 %i.pw, 26223
  %i.py = or i64 %i.pt, %i.px
  %i.pz = icmp ne i64 %i.py, 0
  %i.qa = zext i1 %i.pz to i32
  %.not.i.i505.i.i = icmp eq i32 %i.qa, 0
  br i1 %.not.i.i505.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i506.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i506.i.i: ; preds = %bb.aq
  %.lobit1158.i.i = lshr exact i64 %i.iv, 12
  %.sroa.0.0.insert.ext.i.i507.i.i = trunc nuw nsw i64 %.lobit1158.i.i to i16
  %.sroa.0.0.insert.insert.i.i508.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i507.i.i, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i506.i.i, %bb.aq, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i, %bb.ao, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i
  %i.qb = phi i64 [ %i.ov, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i ], [ %i.ov, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i506.i.i ], [ %i.ov, %bb.aq ], [ %i.ov, %bb.ao ], [ %i.nd, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i ]
  %.sroa.102.45.i.i = phi i16 [ %.sroa.102.44.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.i.i ], [ %.sroa.0.0.insert.insert.i.i508.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i506.i.i ], [ %.sroa.102.44.i.i, %bb.aq ], [ 257, %bb.ao ], [ 257, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit498.thread.i.i ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 56
  %i.qd = load i64, ptr %i.qc, align 8
  %i.qe = and i64 %i.qd, 137438953472
  %.not44.i.i = icmp eq i64 %i.qe, 0
  br i1 %.not44.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 80
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = lshr i64 %i.qg, 50
  %i.qi = trunc nuw nsw i64 %i.qh to i16
  %i.qj = or i16 %i.qi, 256
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i
  %.sroa.0.0.insert.ext.i.i518.i.i = phi i16 [ 256, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit509.i.i ], [ %i.qj, %bb.ar ]
  %i.qk = and i16 %.sroa.102.45.i.i, 256
  %.not1159.i.i = icmp eq i16 %i.qk, 0
  %.not.i.i.i.i513.i.i = icmp eq i64 %.sroa.6.0850.i.i, 35
  %or.cond1087.i.i = select i1 %.not1159.i.i, i1 %.not.i.i.i.i513.i.i, i1 false
  br i1 %or.cond1087.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i514.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit520.i.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i514.i.i:     ; preds = %bb.as
  %bcmp.i.i.i.i515.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(35) %.sroa.0836.0849.i.i, ptr noundef nonnull dereferenceable(35) @.str.323, i64 35)
  %.not.i.i516.i.i = icmp eq i32 %bcmp.i.i.i.i515.i.i, 0
  %spec.select1166.i.i = select i1 %.not.i.i516.i.i, i16 %.sroa.0.0.insert.ext.i.i518.i.i, i16 %.sroa.102.45.i.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit520.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit520.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i514.i.i, %bb.as
  %.sroa.102.46.i.i = phi i16 [ %.sroa.102.45.i.i, %bb.as ], [ %spec.select1166.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i514.i.i ] ; 4 uses
  %i.ql = and i16 %.sroa.102.46.i.i, 256
  %.not1161.i.i = icmp eq i16 %i.ql, 0            ; 2 uses
  %or.cond1089.i.i = select i1 %.not1161.i.i, i1 %.not.i.i.i.i2631305.i.i, i1 false
  br i1 %or.cond1089.i.i, label %bb.at, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit529.i.i

bb.at:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit520.i.i
  %i.qm = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.qn = xor i128 %i.qm, 129430441378242511695730599966893701219
  %i.qo = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 9
  %i.qp = load i128, ptr %i.qo, align 1
  %i.qq = xor i128 %i.qp, 153455401925211408515220414073764149089
  %i.qr = or i128 %i.qn, %i.qq
  %i.qs = icmp ne i128 %i.qr, 0
  %i.qt = zext i1 %i.qs to i32
  %.not.i.i527.i.i = icmp eq i32 %i.qt, 0
  %spec.select1090.i.i = select i1 %.not.i.i527.i.i, i16 257, i16 %.sroa.102.46.i.i
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit540.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit529.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit520.i.i
  %or.cond1092.i.i = select i1 %.not1161.i.i, i1 %.not.i.i.i.i197127412811293.i3550.i, i1 false
  br i1 %or.cond1092.i.i, label %bb.au, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit540.i.i

bb.au:                                            ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit529.i.i
  %i.qu = load i128, ptr %.sroa.0836.0849.i.i, align 1
  %i.qv = xor i128 %i.qu, 148091899744045820656232247676952213103
  %i.qw = getelementptr i8, ptr %.sroa.0836.0849.i.i, i64 7
  %i.qx = load i128, ptr %i.qw, align 1
  %i.qy = xor i128 %i.qx, 153387922750476265684598148559678889847
  %i.qz = or i128 %i.qv, %i.qy
  %i.ra = icmp ne i128 %i.qz, 0
  %i.rb = zext i1 %i.ra to i32
  %.not.i.i536.i.i = icmp eq i32 %i.rb, 0
  br i1 %.not.i.i536.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i537.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit540.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i537.i.i: ; preds = %bb.au
  %i.rc = trunc i64 %i.qb to i16
  %i.rd = lshr i16 %i.rc, 2
  %.sroa.0.0.insert.insert.i.i539.i.i = or i16 %i.rd, 256
  br label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit540.i.i

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit540.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i537.i.i, %bb.au, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit529.i.i, %bb.at
  %.sroa.102.48.i.i = phi i16 [ %.sroa.102.46.i.i, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit529.i.i ], [ %.sroa.0.0.insert.insert.i.i539.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread8.i.i537.i.i ], [ %.sroa.102.46.i.i, %bb.au ], [ %spec.select1090.i.i, %bb.at ]
  %i.re = and i16 %.sroa.102.48.i.i, 257
  %.0.i.i.i = icmp eq i16 %i.re, 257
  %i.rf = zext i1 %.0.i.i.i to i32
  br label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_1clES2_Rb.exit"

"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_1clES2_Rb.exit": ; preds = %_ZL27ExpectFeatureIdentifierInfoRN5clang5TokenERNS_12PreprocessorEi.exit.thread.i, %bb.c, %bb.d, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit540.i.i
  %i.rg = phi i32 [ 0, %_ZL27ExpectFeatureIdentifierInfoRN5clang5TokenERNS_12PreprocessorEi.exit.thread.i ], [ %i.rf, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit540.i.i ], [ 1, %bb.c ], [ 0, %bb.d ]
  ret i32 %i.rg
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 201803) i32 @"_ZN4llvm12function_refIFiRN5clang5TokenERbEE11callback_fnIZNS1_12Preprocessor18ExpandBuiltinMacroES3_E3$_2EEilS3_S4_"(i64 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1, ptr nofree nonnull readnone align 1 captures(none) %2) #2 align 2 {
bb.a:
  %3 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !630 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !524
  %i.d = tail call noundef zeroext i1 @_ZN5clang3tok12isAnnotationENS0_9TokenKindE(i16 noundef zeroext %i.c) #21
  br i1 %i.d, label %_ZL27ExpectFeatureIdentifierInfoRN5clang5TokenERNS_12PreprocessorEi.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %i.b, align 8, !tbaa !524  ; 3 uses
  %i.f = add i16 %i.e, -7
  %i.g = icmp ult i16 %i.f, 13
  %i.h = icmp eq i16 %i.e, 1
  %or.cond.i.i.i = or i1 %i.h, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not7.i.i = icmp eq ptr %i.j, null
  %.not.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %.not7.i.i
  br i1 %.not.i.i, label %_ZL27ExpectFeatureIdentifierInfoRN5clang5TokenERNS_12PreprocessorEi.exit.thread.i, label %bb.c

_ZL27ExpectFeatureIdentifierInfoRN5clang5TokenERNS_12PreprocessorEi.exit.thread.i: ; preds = %bb.b, %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !522
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !523, !noalias !1242
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %i.m, i32 %i.k, i32 noundef 1043) #21
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = load i64, ptr %i.j, align 8              ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = lshr i32 %i.o, 9
  %i.q = and i32 %i.p, 65535                      ; 3 uses
  %i.r = icmp samesign ugt i32 %i.q, 35
  %i.s = icmp ne i32 %i.q, 65534
  %or.cond.i.i = and i1 %i.r, %i.s
  %i.t = add nsw i32 %i.q, -36
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.t, i32 0 ; 3 uses
  switch i32 %spec.select.i.i, label %bb.g [
    i32 0, label %bb.j
    i32 223, label %bb.d
    i32 222, label %bb.e
    i32 224, label %bb.f
    i32 242, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i32 241, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
  ]

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !566  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !515
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 608
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(517) %i.v) #21, !inline_history !1241
  %i.aa = zext i1 %i.z to i32
  br label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !566 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !515
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 616
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(517) %i.ac) #21, !inline_history !1241
  %i.ah = zext i1 %i.ag to i32
  br label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !566 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !515
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 600
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(517) %i.aj) #21, !inline_history !1241
  %i.ao = zext i1 %i.an to i32
  br label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"

bb.g:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 688
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !719 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1249
  %i.at = add i32 %i.as, 1695
  %.not210.i = icmp ult i32 %spec.select.i.i, %i.at
  br i1 %.not210.i, label %bb.h, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"

bb.h:                                             ; preds = %bb.g
  %i.au = tail call noundef ptr @_ZNK5clang7Builtin7Context19getRequiredFeaturesEj(ptr noundef nonnull align 8 dereferenceable(176) %i.aq, i32 noundef %spec.select.i.i) #21 ; 3 uses
  %.not.i18.i = icmp eq ptr %i.au, null
  br i1 %.not.i18.i, label %_ZN4llvm9StringRefC2EPKc.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #21
  br label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i64 [ %i.av, %bb.i ], [ 0, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !566
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1250
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 280
  %i.bb = tail call noundef zeroext i1 @_ZN5clang7Builtin30evaluateRequiredTargetFeaturesEN4llvm9StringRefERKNS1_9StringMapIbNS1_15MallocAllocatorEEE(ptr %i.au, i64 %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.ba) #21
  %i.bc = zext i1 %i.bb to i32
  br label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"

bb.j:                                             ; preds = %bb.c
  switch i16 %i.e, label %_ZL14IsBuiltinTraitRN5clang5TokenE.exit.i [
    i16 203, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 220, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 221, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 222, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 223, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 224, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 225, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 226, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 227, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 228, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 229, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 230, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 231, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 232, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 233, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 234, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 235, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 236, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 237, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 238, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 239, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 240, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 241, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 242, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 243, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 244, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 245, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 246, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 247, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 248, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 249, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 250, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 251, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 252, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 253, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 254, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 255, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 256, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 257, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 258, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 259, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 260, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 261, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 262, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 263, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 264, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 265, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 266, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 267, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 268, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 269, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 270, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 271, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
    i16 272, label %"_ZZN5clang12Preprocessor18ExpandBuiltinMacroERNS_5TokenEENK3$_2clES2_Rb.exit"
end_hunk_0
