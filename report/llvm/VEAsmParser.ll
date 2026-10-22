Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VEAsmParser?download=true
inline.NumInlined: 2525
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_111VEAsmParser23matchAndEmitInstructionEN4llvm5SMLocERjRNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERNS1_10MCStreamerERmb:bb.a
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !17
  %i.xd = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.xc, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr null, ptr null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.eg

bb.ec:                                            ; preds = %bb.ea
  %i.xe = load ptr, ptr %3, align 8, !tbaa !40
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.wx
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !63 ; 2 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !14
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 80
  %i.xj = load ptr, ptr %i.xi, align 8
  %i.xk = call ptr %i.xj(ptr noundef nonnull align 8 dereferenceable(96) %i.xg) #17 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, null
  %spec.select = select i1 %i.xl, ptr %1, ptr %i.xk
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dz
  %.sroa.020.0 = phi ptr [ %1, %bb.dz ], [ %spec.select, %bb.ec ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.xm = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.xn = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.xn, align 1, !tbaa !23
  store ptr @.str.186, ptr %12, align 8, !tbaa !24
  store i8 3, ptr %i.xm, align 8, !tbaa !25
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !17
  %i.xq = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.xp, ptr %.sroa.020.0, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr null, ptr null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.eg

bb.ee:                                            ; preds = %_ZN12_GLOBAL__N_111VEAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit, %_ZN12_GLOBAL__N_111VEAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.xr = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.xs = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.xs, align 1, !tbaa !23
  store ptr @.str.187, ptr %13, align 8, !tbaa !24
  store i8 3, ptr %i.xr, align 8, !tbaa !25
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !17
  %i.xv = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.xu, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr null, ptr null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN12_GLOBAL__N_111VEAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit
  unreachable

bb.eg:                                            ; preds = %bb.eb, %bb.ed, %bb.ee, %bb.dy, %.loopexit
  %.1 = phi i1 [ false, %.loopexit ], [ %i.wv, %bb.dy ], [ %i.xv, %bb.ee ], [ %i.xd, %bb.eb ], [ %i.xq, %bb.ed ]
  %i.xw = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.xx = icmp eq ptr %i.xw, %i.b
  br i1 %i.xx, label %_ZN4llvm6MCInstD2Ev.exit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @free(ptr noundef %i.xw) #17
  br label %_ZN4llvm6MCInstD2Ev.exit

_ZN4llvm6MCInstD2Ev.exit:                         ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17MCTargetAsmParser28omitRegisterFromClobberListsENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 5) i32 @_ZN12_GLOBAL__N_111VEAsmParser26validateTargetOperandClassERN4llvm18MCParsedAsmOperandEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  switch i32 %2, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit [
    i32 22, label %bb.b
    i32 23, label %bb.d
    i32 21, label %bb.f
    i32 18, label %bb.h
    i32 20, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %1) #17
  br i1 %i.d, label %bb.c, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.g(ptr noundef nonnull align 8 dereferenceable(96) %1) #17, !inline_history !159
  %i.i = add i32 %i.h, -187                       ; 2 uses
  %i.j = icmp ult i32 %i.i, 64
  br i1 %i.j, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit.thread, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit.thread: ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL7F32Regs, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !86
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.n, ptr %i.o, align 8, !tbaa !38
  br label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(96) %1) #17
  br i1 %i.s, label %bb.e, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %1, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 %i.v(ptr noundef nonnull align 8 dereferenceable(96) %1) #17, !inline_history !160
  %i.x = add i32 %i.w, -187                       ; 2 uses
  %i.y = icmp ult i32 %i.x, 64
  br i1 %i.y, label %_ZN12_GLOBAL__N_19VEOperand13MorphToI32RegERS0_.exit.thread, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

_ZN12_GLOBAL__N_19VEOperand13MorphToI32RegERS0_.exit.thread: ; preds = %bb.e
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL7I32Regs, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !86
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !38
  br label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.f:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %1) #17
  br i1 %i.ah, label %bb.g, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %1, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(96) %1) #17, !inline_history !161
  %i.am = add i32 %i.al, -187                     ; 2 uses
  %i.an = and i32 %i.am, -63
  %or.cond.not.i = icmp eq i32 %i.an, 0
  br i1 %or.cond.not.i, label %_ZN12_GLOBAL__N_19VEOperand14MorphToF128RegERS0_.exit.thread, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

_ZN12_GLOBAL__N_19VEOperand14MorphToF128RegERS0_.exit.thread: ; preds = %bb.g
  %i.ao = lshr exact i32 %i.am, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @_ZL8F128Regs, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !86
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.as, ptr %i.at, align 8, !tbaa !38
  br label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %1, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(96) %1) #17
  br i1 %i.ax, label %bb.i, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %1, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(96) %1) #17, !inline_history !162
  %i.bc = add i32 %i.bb, -315                     ; 2 uses
  %i.bd = and i32 %i.bc, -15
  %or.cond.not.i12 = icmp eq i32 %i.bd, 0
  br i1 %or.cond.not.i12, label %_ZN12_GLOBAL__N_19VEOperand15MorphToVM512RegERS0_.exit.thread, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

_ZN12_GLOBAL__N_19VEOperand15MorphToVM512RegERS0_.exit.thread: ; preds = %bb.i
  %i.be = lshr exact i32 %i.bc, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZL9VM512Regs, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !86
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !38
  br label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.j:                                             ; preds = %bb.a
  %i.bk = load ptr, ptr %1, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(96) %1) #17
  br i1 %i.bn, label %bb.k, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.bo, align 8, !tbaa !24 ; 2 uses
  %i.bp = load i8, ptr %.val.i, align 8, !tbaa !83
  %.not.i = icmp eq i8 %i.bp, 1
  br i1 %.not.i, label %bb.l, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !85
  %i.bs = and i64 %i.br, 4294967295               ; 3 uses
  %.not10.i = icmp samesign ult i64 %i.bs, 31
  br i1 %.not10.i, label %bb.m, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

bb.m:                                             ; preds = %bb.l
  %3 = shl nuw nsw i64 1, %i.bs
  %4 = and i64 %3, 61560
  %i.bt = icmp eq i64 %4, 0
  br i1 %i.bt, label %_ZN12_GLOBAL__N_19VEOperand14MorphToMISCRegERS0_.exit, label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

_ZN12_GLOBAL__N_19VEOperand14MorphToMISCRegERS0_.exit: ; preds = %bb.m
  %5 = getelementptr inbounds nuw [2 x i8], ptr @_ZL8MISCRegs, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %i.bu, align 8, !tbaa !55
  %6 = load i16, ptr %5, align 2, !tbaa !86
  %i.bv = zext i16 %6 to i32
  store i32 %i.bv, ptr %i.bo, align 8, !tbaa !38
  br label %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit

_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit: ; preds = %bb.l, %bb.m, %bb.k, %bb.a, %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.c, %bb.e, %bb.g, %bb.i, %_ZN12_GLOBAL__N_19VEOperand14MorphToMISCRegERS0_.exit, %_ZN12_GLOBAL__N_19VEOperand15MorphToVM512RegERS0_.exit.thread, %_ZN12_GLOBAL__N_19VEOperand14MorphToF128RegERS0_.exit.thread, %_ZN12_GLOBAL__N_19VEOperand13MorphToI32RegERS0_.exit.thread, %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit.thread
  %.0 = phi i32 [ 4, %_ZN12_GLOBAL__N_19VEOperand14MorphToMISCRegERS0_.exit ], [ 4, %_ZN12_GLOBAL__N_19VEOperand15MorphToVM512RegERS0_.exit.thread ], [ 4, %_ZN12_GLOBAL__N_19VEOperand13MorphToF32RegERS0_.exit.thread ], [ 4, %_ZN12_GLOBAL__N_19VEOperand13MorphToI32RegERS0_.exit.thread ], [ 4, %_ZN12_GLOBAL__N_19VEOperand14MorphToF128RegERS0_.exit.thread ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm17MCTargetAsmParser30checkEarlyTargetMatchPredicateERNS_6MCInstERKNS_15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm17MCTargetAsmParser25checkTargetMatchPredicateERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111VEAsmParser26convertToMapAndConstraintsEjRKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [11 x i8], ptr @_ZL15ConversionTable, i64 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.0131 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.h ]  ; 2 uses
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.h ]  ; 3 uses
  %i.c = load i8, ptr %.0, align 1, !tbaa !24
  switch i8 %i.c, label %bb.d [
    i8 0, label %bb.c
    i8 1, label %.sink.split
    i8 2, label %bb.h
    i8 3, label %.sink.split
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.f
    i8 7, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.g
    i8 13, label %bb.g
    i8 14, label %bb.g
    i8 15, label %bb.g
    i8 16, label %bb.e
    i8 17, label %bb.e
    i8 18, label %bb.e
    i8 19, label %bb.e
    i8 20, label %bb.e
    i8 21, label %bb.e
    i8 22, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %.sink.split

bb.f:                                             ; preds = %bb.b, %bb.b
  br label %.sink.split

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.b, %bb.g, %bb.f, %bb.e
  %.str.191.sink = phi ptr [ @.str.192, %bb.g ], [ @.str.191, %bb.b ], [ @.str.192, %bb.e ], [ @.str.191, %bb.b ], [ @.str.192, %bb.f ]
  %.sink.ph = phi i32 [ 3, %bb.g ], [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %bb.b ], [ 2, %bb.f ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %i.f = zext i8 %i.e to i64
  %i.g = load ptr, ptr %2, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %.0131, ptr %i.j, align 8, !tbaa !52
  tail call void @_ZN4llvm18MCParsedAsmOperand13setConstraintENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr nonnull %.str.191.sink, i64 1)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ %.sink.ph, %.sink.split ]
  %i.k = add i32 %.0131, %.sink
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 2
  br label %bb.b, !llvm.loop !163
}

declare noundef zeroext i1 @_ZNK4llvm17MCTargetAsmParser12areEqualRegsERKNS_18MCParsedAsmOperandES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17MCTargetAsmParser20equalIsAsmAssignmentEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17MCTargetAsmParser7isLabelERNS_8AsmTokenE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17MCTargetAsmParser23tokenIsStartOfStatementENS_8AsmToken9TokenKindE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm17MCTargetAsmParser14applySpecifierEPKNS_6MCExprEjRNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(2208) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser17doBeforeLabelEmitEPNS_8MCSymbolENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser13onLabelParsedEPNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser24flushPendingInstructionsERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser13onBeginOfFileEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser11onEndOfFileEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243), ptr, ptr noundef nonnull align 8 dereferenceable(34), ptr, ptr) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243)) local_unnamed_addr #2

declare ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare ptr @_ZNK4llvm8AsmToken9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 339) i32 @_ZL17MatchRegisterNameN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #8 {
bb.a:
  switch i64 %1, label %bb.bj [
    i64 2, label %bb.b
    i64 3, label %bb.g
    i64 4, label %bb.af
    i64 5, label %bb.bd
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !24
  switch i8 %i.a, label %bb.bj [
    i8 105, label %bb.c
    i8 113, label %bb.d
    i8 115, label %bb.e
    i8 118, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24
  %.not10 = icmp eq i8 %i.c, 99
  br i1 %.not10, label %bb.bk, label %bb.bj

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24    ; 2 uses
  %switch.tableidx = add i8 %i.e, -48
  %i.f = icmp ult i8 %switch.tableidx, 10
  br i1 %i.f, label %switch.lookup, label %bb.bj

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_0
