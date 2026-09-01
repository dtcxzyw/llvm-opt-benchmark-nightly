Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compiler?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau8Compiler21compileConditionValueEPNS_7AstExprEPKhRSt6vectorImSaImEEb:bb.a
  %i.en = add i32 %i.em, 1                        ; 3 uses
  %i.eo = icmp ugt i32 %i.en, 255
  br i1 %i.eo, label %bb.as, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr112, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.ep, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc210 unwind label %bb.ap, !inline_history !655

.noexc210:                                        ; preds = %bb.as
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i: ; preds = %bb.ar
  store i32 %i.en, ptr %i.ef, align 4, !tbaa !223
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !9
  %i.es = tail call i32 @llvm.umax.i32(i32 %i.er, i32 %i.en)
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !224
  %i.et = trunc i32 %i.em to i8                   ; 2 uses
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %.tr112, i8 noundef zeroext %i.et, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit unwind label %bb.ap, !inline_history !655

_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit: ; preds = %.noexc209, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i, %bb.ao
  %.0 = phi i8 [ %i.eh, %bb.ao ], [ %i.el, %.noexc209 ], [ %i.et, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i ]
  %i.eu = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %i.ev = invoke noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.eu)
          to label %bb.at unwind label %bb.ba     ; 2 uses

bb.at:                                            ; preds = %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !555 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !342
  %.not.i.i212 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i.i212, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.ev, ptr %i.ex, align 8, !tbaa !25
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.fa, ptr %i.ew, align 8, !tbaa !555
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit221

bb.av:                                            ; preds = %bb.at
  %i.fb = load ptr, ptr %3, align 8, !tbaa !339   ; 4 uses
  %i.fc = ptrtoint ptr %i.ex to i64
  %i.fd = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 5 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %bb.aw, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i213

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #28
          to label %.noexc219 unwind label %bb.ba

.noexc219:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i213: ; preds = %bb.av
  %i.fg = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i214 = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i.i214, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.umin.i64(i64 %i.fh, i64 1152921504606846975)
  %i.fk = select i1 %i.fi, i64 1152921504606846975, i64 %i.fj ; 3 uses
  %.not.i.i.i.i215 = icmp ne i64 %i.fk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i215)
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #31
          to label %.noexc220 unwind label %bb.ba ; 4 uses

.noexc220:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i213
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.fe ; 2 uses
  store i64 %i.ev, ptr %i.fn, align 8, !tbaa !25
  %i.fo = icmp sgt i64 %i.fe, 0
  br i1 %i.fo, label %bb.ax, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i216

bb.ax:                                            ; preds = %.noexc220
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr align 8 %i.fb, i64 %i.fe, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i216

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i216: ; preds = %bb.ax, %.noexc220
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.not.i17.i.i.i217 = icmp eq ptr %i.fb, null
  br i1 %.not.i17.i.i.i217, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i218, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i216
  %i.fq = load ptr, ptr %i.ey, align 8, !tbaa !342
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fs) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i218

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i218: ; preds = %bb.ay, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i216
  store ptr %i.fm, ptr %3, align 8, !tbaa !339
  store ptr %i.fp, ptr %i.ew, align 8, !tbaa !555
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.ft, ptr %i.ey, align 8, !tbaa !342
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit221

_ZNSt6vectorImSaImEE9push_backEOm.exit221:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i218, %bb.au
  %i.fu = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %i.fv = select i1 %.tr115.ph, i32 25, i32 26
  invoke void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.fu, i32 noundef %i.fv, i8 noundef zeroext %.0, i16 noundef signext 0)
          to label %bb.az unwind label %bb.ap

bb.az:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit221
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !223
  br label %.thread

.thread:                                          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.af, %_ZNSt6vectorImSaImEED2Ev.exit, %.split, %._ZNK4Luau7Compile8Constant10isTruthfulEv.exit_crit_edge, %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit, %bb.az
  ret void

bb.ba:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i213, %bb.aw, %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ap
  %.pn79 = phi { ptr, i32 } [ %i.ei, %bb.ap ], [ %i.fw, %bb.ba ]
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !223
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNSt6vectorImSaImEED2Ev.exit86
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %bb.bb ], [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit86 ]
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !533
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !534  ; 2 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !535
  %i.i = add i64 %i.h, -1                         ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = load ptr, ptr %0, align 8, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.m, %bb.c ], [ %i.t, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.s, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.i            ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.01929.i.i ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !534  ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq ptr %i.p, %i.e
  br i1 %i.r, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.t = add i64 %i.s, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.s, %i.i
  br i1 %.not.i.i, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.d, !llvm.loop !536

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !470
  switch i32 %i.v, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread [
    i32 2, label %bb.h
    i32 1, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !10, !range !73, !noundef !74
  %i.y = icmp eq i8 %i.x, 0
  br label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit:    ; preds = %bb.g
  br label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.a, %bb.b, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  %i.z = phi i1 [ false, %bb.g ], [ %i.y, %bb.h ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4Luau8Compiler18compileCompareJumpEPNS_13AstExprBinaryEb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !223  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !547
  %i.e = and i32 %i.d, -2                         ; 3 uses
  %spec.select = icmp eq i32 %i.e, 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !551  ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !550  ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.l = load i64, ptr %i.k, align 8, !tbaa !533
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.thread97, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !534  ; 7 uses
  %i.p = icmp eq ptr %i.i, %i.o
  br i1 %i.p, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load i64, ptr %i.q, align 8, !tbaa !535  ; 2 uses
  %i.s = add i64 %i.r, -1                         ; 2 uses
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !252  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.ad, %bb.f ]
  %.01828.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ac, %bb.f ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.s        ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.01929.i.i.i ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !534  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.i
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq ptr %i.z, %i.o
  br i1 %i.ab, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.ad = add i64 %i.ac, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.s
  br i1 %.not.i.i.i, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit, label %bb.d, !llvm.loop !536

bb.g:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !470
  %i.ag = icmp ne i32 %i.af, 0
  br label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit

_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit: ; preds = %bb.f, %bb.e, %bb.g
  %i.ah = phi i1 [ %i.ag, %bb.g ], [ false, %bb.e ], [ false, %bb.f ] ; 2 uses
  %.not = icmp ne i32 %i.e, 8
  %or.cond = or i1 %.not, %i.ah
  br i1 %or.cond, label %bb.l, label %.thread

_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread: ; preds = %bb.b
  %i.ai = icmp ne i32 %i.e, 8
  %3 = icmp eq ptr %i.g, %i.o
  %or.cond173.not = select i1 %i.ai, i1 true, i1 %3
  br i1 %or.cond173.not, label %.thread97, label %bb.h

.thread:                                          ; preds = %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit
  %.old = icmp eq ptr %i.g, %i.o
  br i1 %.old, label %.thread97, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread, %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !535 ; 2 uses
  %i.al = add i64 %i.ak, -1                       ; 2 uses
  %i.am = ptrtoint ptr %i.g to i64
  %i.an = mul i64 %i.am, -4658895280553007687     ; 2 uses
  %i.ao = lshr i64 %i.an, 31
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !252 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.i.i.i56 = phi i64 [ %i.ap, %bb.h ], [ %i.aw, %bb.k ]
  %.01828.i.i.i57 = phi i64 [ 0, %bb.h ], [ %i.av, %bb.k ]
  %.01929.i.i.i58 = and i64 %.pn.i.i.i56, %i.al   ; 2 uses
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.aq, i64 %.01929.i.i.i58 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !534 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.g
  br i1 %i.at, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = icmp eq ptr %i.as, %i.o
  br i1 %i.au, label %.thread97, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add i64 %.01828.i.i.i57, 1              ; 3 uses
  %i.aw = add i64 %i.av, %.01929.i.i.i58
  %.not.i.i.i59 = icmp ugt i64 %i.av, %i.al
  br i1 %.not.i.i.i59, label %.thread97, label %bb.i, !llvm.loop !536

_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !470
  %.not123 = icmp eq i32 %i.ay, 0
  br i1 %.not123, label %.thread97, label %.thread103

bb.l:                                             ; preds = %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit
  br i1 %i.ah, label %.thread103, label %.thread97

.thread103:                                       ; preds = %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60, %bb.l
  %i.az = phi ptr [ %i.x, %bb.l ], [ %i.aq, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60 ] ; 2 uses
  %i.ba = phi i64 [ %i.r, %bb.l ], [ %i.ak, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60 ] ; 2 uses
  %.089108 = phi ptr [ %i.i, %bb.l ], [ %i.g, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60 ] ; 9 uses
  %.090107 = phi ptr [ %i.g, %bb.l ], [ %i.i, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60 ] ; 5 uses
  %i.bb = add i64 %i.ba, -1                       ; 2 uses
  %i.bc = ptrtoint ptr %.089108 to i64
  %i.bd = mul i64 %i.bc, -4658895280553007687     ; 2 uses
  %i.be = lshr i64 %i.bd, 31
  %i.bf = xor i64 %i.be, %i.bd
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.thread103
  %.pn.i.i.i61 = phi i64 [ %i.bf, %.thread103 ], [ %i.bl, %bb.o ]
  %.01828.i.i.i62 = phi i64 [ 0, %.thread103 ], [ %i.bk, %bb.o ]
  %.01929.i.i.i63 = and i64 %.pn.i.i.i61, %i.bb   ; 2 uses
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %.01929.i.i.i63 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !534 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %.089108
  br i1 %i.bi, label %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp eq ptr %i.bh, %i.o
  br i1 %i.bj, label %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = add i64 %.01828.i.i.i62, 1              ; 3 uses
  %i.bl = add i64 %i.bk, %.01929.i.i.i63
  %.not.i.i.i64 = icmp ugt i64 %i.bk, %i.bb
  br i1 %.not.i.i.i64, label %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread, label %bb.m, !llvm.loop !536

_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit: ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !470
  %i.bo = add i32 %i.bn, -5
  %spec.select.i = icmp ult i32 %i.bo, 2
  br i1 %spec.select.i, label %bb.s, label %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread

_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread: ; preds = %bb.n, %bb.o, %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit
  %i.bp = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !80, !range !73, !noundef !74
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.thread119, label %.thread97

.thread119:                                       ; preds = %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread
  %i.br = add i64 %i.ba, -1                       ; 2 uses
  %i.bs = ptrtoint ptr %.089108 to i64
  %i.bt = mul i64 %i.bs, -4658895280553007687     ; 2 uses
  %i.bu = lshr i64 %i.bt, 31
  %i.bv = xor i64 %i.bu, %i.bt
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.thread119
  %.pn.i.i.i65 = phi i64 [ %i.bv, %.thread119 ], [ %i.cb, %bb.r ]
  %.01828.i.i.i66 = phi i64 [ 0, %.thread119 ], [ %i.ca, %bb.r ]
  %.01929.i.i.i67 = and i64 %.pn.i.i.i65, %i.br   ; 2 uses
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %.01929.i.i.i67 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !534 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %.089108
  br i1 %i.by, label %_ZN4Luau8Compiler17isConstantIntegerEPNS_7AstExprE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = icmp eq ptr %i.bx, %i.o
  br i1 %i.bz, label %.thread97, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add i64 %.01828.i.i.i66, 1              ; 3 uses
  %i.cb = add i64 %i.ca, %.01929.i.i.i67
  %.not.i.i.i68 = icmp ugt i64 %i.ca, %i.br
  br i1 %.not.i.i.i68, label %.thread97, label %bb.p, !llvm.loop !536

_ZN4Luau8Compiler17isConstantIntegerEPNS_7AstExprE.exit: ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !470
  %i.ce = icmp eq i32 %i.cd, 4
  br i1 %i.ce, label %bb.s, label %.thread97

bb.s:                                             ; preds = %_ZN4Luau8Compiler17isConstantIntegerEPNS_7AstExprE.exit, %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit
  br label %.thread97

.thread97:                                        ; preds = %bb.j, %bb.k, %bb.q, %bb.r, %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread, %bb.a, %.thread, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60, %bb.s, %_ZN4Luau8Compiler17isConstantIntegerEPNS_7AstExprE.exit, %bb.l
  %.089102 = phi ptr [ %.089108, %bb.s ], [ %.089108, %_ZN4Luau8Compiler17isConstantIntegerEPNS_7AstExprE.exit ], [ %.089108, %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread ], [ %i.i, %bb.l ], [ %i.i, %bb.a ], [ %i.i, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60 ], [ %i.i, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ], [ %.089108, %bb.q ], [ %i.i, %.thread ], [ %.089108, %bb.r ], [ %i.i, %bb.k ], [ %i.i, %bb.j ] ; 9 uses
  %.090101 = phi ptr [ %.090107, %bb.s ], [ %.090107, %_ZN4Luau8Compiler17isConstantIntegerEPNS_7AstExprE.exit ], [ %.090107, %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread ], [ %i.g, %bb.l ], [ %i.g, %bb.a ], [ %i.g, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60 ], [ %i.g, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ], [ %.090107, %bb.q ], [ %i.g, %.thread ], [ %.090107, %bb.r ], [ %i.g, %bb.k ], [ %i.g, %bb.j ] ; 3 uses
  %.146.shrunk = phi i1 [ false, %bb.s ], [ %spec.select, %_ZN4Luau8Compiler17isConstantIntegerEPNS_7AstExprE.exit ], [ %spec.select, %_ZN4Luau8Compiler16isConstantVectorEPNS_7AstExprE.exit.thread ], [ false, %bb.l ], [ false, %bb.a ], [ false, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit60 ], [ false, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ], [ %spec.select, %bb.q ], [ false, %.thread ], [ %spec.select, %bb.r ], [ false, %bb.k ], [ false, %bb.j ]
  %i.cf = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %.090101)
          to label %.noexc unwind label %bb.w, !inline_history !655 ; 2 uses

.noexc:                                           ; preds = %.thread97
  %i.cg = icmp slt i32 %i.cf, 0
  %i.ch = trunc i32 %i.cf to i8
  br i1 %i.cg, label %bb.t, label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit

bb.t:                                             ; preds = %.noexc
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !223 ; 2 uses
  %i.cj = add i32 %i.ci, 1                        ; 3 uses
  %i.ck = icmp ugt i32 %i.cj, 255
  br i1 %i.ck, label %bb.u, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %.090101, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc69 unwind label %bb.w, !inline_history !655

.noexc69:                                         ; preds = %bb.u
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i: ; preds = %bb.t
  store i32 %i.cj, ptr %i.a, align 4, !tbaa !223
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !9
  %i.co = tail call i32 @llvm.umax.i32(i32 %i.cn, i32 %i.cj)
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !224
  %i.cp = trunc i32 %i.ci to i8                   ; 2 uses
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %.090101, i8 noundef zeroext %i.cp, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit unwind label %bb.w, !inline_history !655

_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit: ; preds = %.noexc, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i
  %.1.i = phi i8 [ %i.ch, %.noexc ], [ %i.cp, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i ] ; 3 uses
  br i1 %.146.shrunk, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !534
  %i.cs = icmp ne ptr %.089102, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !535
  %i.cv = add i64 %i.cu, -1                       ; 3 uses
  %i.cw = ptrtoint ptr %.089102 to i64
  %i.cx = mul i64 %i.cw, -4658895280553007687     ; 2 uses
  %i.cy = lshr i64 %i.cx, 31
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !252 ; 2 uses
  %.01929.i.i133 = and i64 %i.cz, %i.cv           ; 2 uses
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.da, i64 %.01929.i.i133 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !534
  %i.dd = icmp eq ptr %i.dc, %.089102
  br i1 %i.dd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %.lr.ph
  %.01929.i.i135 = phi i64 [ %.01929.i.i, %.lr.ph ], [ %.01929.i.i133, %bb.v ]
  %.01828.i.i134 = phi i64 [ %i.de, %.lr.ph ], [ 0, %bb.v ]
  %i.de = add i64 %.01828.i.i134, 1               ; 3 uses
  %i.df = add i64 %i.de, %.01929.i.i135
  %.not.i.i = icmp ule i64 %i.de, %i.cv
  tail call void @llvm.assume(i1 %.not.i.i)
  %.01929.i.i = and i64 %i.df, %i.cv              ; 2 uses
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %i.da, i64 %.01929.i.i ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !534
  %i.di = icmp eq ptr %i.dh, %.089102
  br i1 %i.di, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.v
  %.lcssa = phi ptr [ %i.db, %bb.v ], [ %i.dg, %.lr.ph ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !547
  %i.dl = icmp ne i32 %i.dk, 9
end_hunk_0
begin_hunk_1_@_ZN4Luau8Compiler21tryIndexConstantTableEPNS_16AstExprIndexNameE:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %.098, i64 24 ; 2 uses
  %.not47 = icmp eq ptr %i.dn, %i.by
  br i1 %.not47, label %_ZN4Luau7Compile16unwrapExprOfTypeINS_12AstExprLocalEEEPT_PNS_7AstExprE.exit, label %bb.s

_ZN4Luau7Compile16unwrapExprOfTypeINS_12AstExprLocalEEEPT_PNS_7AstExprE.exit: ; preds = %bb.b, %bb.f, %bb.g, %bb.n, %bb.o, %bb.r, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, %.loopexit, %bb.j, %bb.k, %.loopexit90, %bb.c, %bb.i, %bb.h, %bb.p
  %.335 = phi ptr [ %.3, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread ], [ null, %bb.n ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.p ], [ null, %bb.f ], [ null, %bb.c ], [ null, %.loopexit90 ], [ null, %bb.r ], [ null, %bb.k ], [ null, %.loopexit ], [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.b ]
  ret ptr %.335
}

declare ptr @_ZN4Luau12AstNameTable8getOrAddEPKcm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !533
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !534  ; 2 uses
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load i64, ptr %i.h, align 8, !tbaa !535
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.n, %bb.c ], [ %i.u, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.j            ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.01929.i.i ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !534  ; 2 uses
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq ptr %i.q, %i.f
  br i1 %i.s, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.t, %i.j
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.d, !llvm.loop !536

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !470
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.h, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !10
  %i.ab = tail call noundef i32 @_ZN4Luau15BytecodeBuilder17addConstantNumberEd(ptr noundef nonnull align 8 dereferenceable(1048) %i.y, double noundef %i.aa) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull @.str.134) #28
  unreachable

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.g, %bb.h
  %.0 = phi i32 [ %i.ab, %bb.h ], [ -1, %bb.g ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler13unrollConcatsERSt6vectorIPNS_7AstExprESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !871  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !534  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !288  ; 2 uses
  %i.g = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprBinaryEE5valueE, align 4, !tbaa !9
  %i.h = icmp ne i32 %i.f, %i.g
  %.not1011 = icmp eq ptr %i.d, null
  %.not12 = or i1 %.not1011, %i.h
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit
  %i.j = phi i32 [ %i.f, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit ]
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.as, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit ]
  %i.m = phi ptr [ %i.b, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !547
  %.not8 = icmp eq i32 %i.o, 7
  br i1 %.not8, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !551
  store ptr %i.q, ptr %i.l, align 8, !tbaa !534
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !719
  %.not.i = icmp eq ptr %i.m, %i.s
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !534
  store ptr %i.t, ptr %i.m, align 8, !tbaa !534
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !720
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !717    ; 4 uses
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #28
  unreachable

_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !534
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !534
  %i.aj = icmp sgt i64 %i.y, 0
  br i1 %i.aj, label %bb.g, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !719
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.an) #29
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !717
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !720
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !719
  %.pre = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprBinaryEE5valueE, align 4, !tbaa !9
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.ap = phi i32 [ %.pre, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.aq = phi ptr [ %i.ak, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !534 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !288
  %i.av = icmp ne i32 %i.au, %i.ap
  %.not10 = icmp eq ptr %i.as, null
  %.not = or i1 %.not10, %i.av
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler16compileExprAndOrEPNS_13AstExprBinaryEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %4 = alloca %"class.std::vector.277", align 8   ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !547  ; 2 uses
  %i.d = icmp eq i32 %i.c, 14                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 9 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !223  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load i64, ptr %i.i, align 8, !tbaa !533
  %i.k = icmp eq i64 %i.j, 0
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !534 ; 4 uses
  br i1 %i.k, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !534  ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m
  br i1 %i.n, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = load i64, ptr %i.o, align 8, !tbaa !535
  %i.q = add i64 %i.p, -1                         ; 2 uses
  %i.r = ptrtoint ptr %.pre to i64
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.u, %bb.c ], [ %i.ab, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.aa, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.q            ; 2 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.01929.i.i ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !534  ; 2 uses
  %i.y = icmp eq ptr %i.x, %.pre
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq ptr %i.x, %i.m
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.ab = add i64 %i.aa, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.aa, %i.q
  br i1 %.not.i.i, label %.thread, label %bb.d, !llvm.loop !536

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !470
  switch i32 %i.ad, label %bb.i [
    i32 0, label %.thread
    i32 1, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !10, !range !73, !noundef !74
  %i.ag = icmp ne i8 %i.af, 0
  br label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit

bb.i:                                             ; preds = %bb.g
  br label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit:    ; preds = %bb.g, %bb.h, %bb.i
  %i.ah = phi i1 [ false, %bb.g ], [ %i.ag, %bb.h ], [ true, %bb.i ]
  %i.ai = xor i1 %i.d, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.in = select i1 %i.ai, ptr %i.h, ptr %i.aj
  %i.ak = load ptr, ptr %.in, align 8, !tbaa !534
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ak, i8 noundef zeroext %2, i1 noundef zeroext %3)
          to label %.critedge unwind label %bb.j

bb.j:                                             ; preds = %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.a, %bb.b
  %i.am = invoke noundef zeroext i1 @_ZN4Luau8Compiler15isConditionFastEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %.pre)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %.thread
  br i1 %i.am, label %.critedge70, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !550
  %i.ap = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ao)
          to label %bb.m unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.critedge68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !551 ; 3 uses
  %i.as = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ar)
          to label %.noexc unwind label %bb.s, !inline_history !655 ; 2 uses

.noexc:                                           ; preds = %bb.n
  %i.at = icmp slt i32 %i.as, 0
  %i.au = trunc i32 %i.as to i8
  br i1 %i.at, label %bb.o, label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit

bb.o:                                             ; preds = %.noexc
  %i.av = load i32, ptr %i.e, align 4, !tbaa !223 ; 2 uses
  %i.aw = add i32 %i.av, 1                        ; 3 uses
  %i.ax = icmp ugt i32 %i.aw, 255
  br i1 %i.ax, label %bb.p, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc71 unwind label %bb.s, !inline_history !655

.noexc71:                                         ; preds = %bb.p
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i: ; preds = %bb.o
  store i32 %i.aw, ptr %i.e, align 4, !tbaa !223
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !9
  %i.bb = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 %i.aw)
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !224
  %i.bc = trunc i32 %i.av to i8                   ; 2 uses
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ar, i8 noundef zeroext %i.bc, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit unwind label %bb.s, !inline_history !655

_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit: ; preds = %.noexc, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i
  %.1.i = phi i8 [ %i.au, %.noexc ], [ %i.bc, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i ]
  %i.bd = trunc i32 %i.ap to i8
  %i.be = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %i.bf = select i1 %i.d, i32 45, i32 46
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.be, i32 noundef %i.bf, i8 noundef zeroext %2, i8 noundef zeroext %.1.i, i8 noundef zeroext %i.bd)
          to label %.critedge unwind label %bb.t

bb.q:                                             ; preds = %.thread
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.r:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.s:                                             ; preds = %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i, %bb.p, %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.t:                                             ; preds = %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.critedge68:                                      ; preds = %bb.m
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !550
  %i.bl = invoke noundef i32 @_ZN4Luau8Compiler16getConstantIndexEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bk)
          to label %bb.u unwind label %bb.y       ; 2 uses

bb.u:                                             ; preds = %.critedge68
  %or.cond = icmp ugt i32 %i.bl, 255
  br i1 %or.cond, label %.critedge70, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !551 ; 3 uses
  %i.bn = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bm)
          to label %.noexc75 unwind label %bb.z, !inline_history !655 ; 2 uses

.noexc75:                                         ; preds = %bb.v
  %i.bo = icmp slt i32 %i.bn, 0
  %i.bp = trunc i32 %i.bn to i8
  br i1 %i.bo, label %bb.w, label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit78

bb.w:                                             ; preds = %.noexc75
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !223 ; 2 uses
  %i.br = add i32 %i.bq, 1                        ; 3 uses
  %i.bs = icmp ugt i32 %i.br, 255
  br i1 %i.bs, label %bb.x, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i74

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.bt, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc76 unwind label %bb.z, !inline_history !655

.noexc76:                                         ; preds = %bb.x
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i74: ; preds = %bb.w
  store i32 %i.br, ptr %i.e, align 4, !tbaa !223
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !9
  %i.bw = tail call i32 @llvm.umax.i32(i32 %i.bv, i32 %i.br)
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !224
  %i.bx = trunc i32 %i.bq to i8                   ; 2 uses
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bm, i8 noundef zeroext %i.bx, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit78 unwind label %bb.z, !inline_history !655

_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit78: ; preds = %.noexc75, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i74
  %.1.i73 = phi i8 [ %i.bp, %.noexc75 ], [ %i.bx, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i74 ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %i.bz = select i1 %i.d, i32 47, i32 48
  %i.ca = trunc nuw i32 %i.bl to i8
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.by, i32 noundef %i.bz, i8 noundef zeroext %2, i8 noundef zeroext %.1.i73, i8 noundef zeroext %i.ca)
          to label %.critedge unwind label %bb.z

bb.y:                                             ; preds = %.critedge68
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i74, %bb.x, %bb.v, %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit78
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.critedge70:                                      ; preds = %bb.u, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  br i1 %3, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.critedge70
  %i.cd = load i32, ptr %i.e, align 4, !tbaa !223 ; 2 uses
  %i.ce = add i32 %i.cd, 1                        ; 3 uses
  %i.cf = icmp ugt i32 %i.ce, 255
  br i1 %i.cf, label %bb.ab, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.cg, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc79 unwind label %bb.ai

.noexc79:                                         ; preds = %bb.ab
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit:   ; preds = %bb.aa
  store i32 %i.ce, ptr %i.e, align 4, !tbaa !223
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !9
  %i.cj = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 %i.ce)
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !224
  %i.ck = trunc i32 %i.cd to i8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit, %.critedge70
  %i.cl = phi i8 [ %i.ck, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit ], [ %2, %.critedge70 ]
  store i8 %i.cl, ptr %i.a, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !551
  %5 = icmp ne i32 %i.c, 14
  invoke void @_ZN4Luau8Compiler21compileConditionValueEPNS_7AstExprEPKhRSt6vectorImSaImEEb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.cm, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !550
  %i.cp = load i8, ptr %i.a, align 1, !tbaa !10
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.co, i8 noundef zeroext %i.cp, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit unwind label %bb.aj, !inline_history !653

_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit: ; preds = %bb.ad
  %i.cq = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %i.cr = invoke noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.cq)
          to label %bb.ae unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.cs = load ptr, ptr %4, align 8, !tbaa !554   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !554 ; 2 uses
  %.not9.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not9.i, label %_ZN4Luau8Compiler10patchJumpsEPNS_7AstNodeERSt6vectorImSaImEEm.exit, label %_ZN4Luau8Compiler9patchJumpEPNS_7AstNodeEmm.exit.i

bb.af:                                            ; preds = %.noexc82
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8 ; 2 uses
  %.not.i81 = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i81, label %_ZN4Luau8Compiler10patchJumpsEPNS_7AstNodeERSt6vectorImSaImEEm.exit, label %_ZN4Luau8Compiler9patchJumpEPNS_7AstNodeEmm.exit.i

_ZN4Luau8Compiler9patchJumpEPNS_7AstNodeEmm.exit.i: ; preds = %bb.ae, %bb.af
  %.sroa.06.010.i = phi ptr [ %i.cv, %bb.af ], [ %i.cs, %bb.ae ] ; 2 uses
  %i.cw = load i64, ptr %.sroa.06.010.i, align 8, !tbaa !25
  %i.cx = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  %i.cy = invoke noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchJumpDEmm(ptr noundef nonnull align 8 dereferenceable(1048) %i.cx, i64 noundef %i.cw, i64 noundef %i.cr)
          to label %.noexc82 unwind label %.loopexit

.noexc82:                                         ; preds = %_ZN4Luau8Compiler9patchJumpEPNS_7AstNodeEmm.exit.i
  br i1 %i.cy, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %.noexc82
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull @.str.148) #28
          to label %.noexc83 unwind label %.loopexit.split-lp

.noexc83:                                         ; preds = %bb.ag
  unreachable

_ZN4Luau8Compiler10patchJumpsEPNS_7AstNodeERSt6vectorImSaImEEm.exit: ; preds = %bb.af, %bb.ae
  %i.da = load i8, ptr %i.a, align 1, !tbaa !10   ; 2 uses
  %.not62 = icmp eq i8 %2, %i.da
  br i1 %.not62, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZN4Luau8Compiler10patchJumpsEPNS_7AstNodeERSt6vectorImSaImEEm.exit
  %i.db = load ptr, ptr %0, align 8, !tbaa !272, !nonnull !74, !align !273
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.db, i32 noundef 6, i8 noundef zeroext %2, i8 noundef zeroext %i.da, i8 noundef zeroext 0)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit:                                        ; preds = %_ZN4Luau8Compiler9patchJumpEPNS_7AstNodeEmm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit, %bb.ah, %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah, %_ZN4Luau8Compiler10patchJumpsEPNS_7AstNodeERSt6vectorImSaImEEm.exit
  %i.de = load ptr, ptr %4, align 8, !tbaa !339   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !342
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.critedge

.critedge:                                        ; preds = %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit78, %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit, %_ZNSt6vectorImSaImEED2Ev.exit
  store i32 %i.f, ptr %i.e, align 4, !tbaa !223
  ret void

bb.am:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj
  %.pn63 = phi { ptr, i32 } [ %i.dd, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dk = load ptr, ptr %4, align 8, !tbaa !339   ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorImSaImEED2Ev.exit85, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !342
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit85

_ZNSt6vectorImSaImEED2Ev.exit85:                  ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit85, %bb.ai
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %_ZNSt6vectorImSaImEED2Ev.exit85 ], [ %i.dc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.ap

bb.ap:                                            ; preds = %bb.y, %bb.z, %bb.r, %bb.t, %bb.s, %bb.ao, %bb.q, %bb.j
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.ao ], [ %i.bi, %bb.s ], [ %i.al, %bb.j ], [ %i.bg, %bb.q ], [ %i.bh, %bb.r ], [ %i.bj, %bb.t ], [ %i.cc, %bb.z ], [ %i.cb, %bb.y ]
  store i32 %i.f, ptr %i.e, align 4, !tbaa !223
  resume { ptr, i32 } %.pn63.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau8Compiler15isConditionFastEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %.tr37 = phi ptr [ %1, %bb.a ], [ %i.ah, %bb.j ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !533
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !534  ; 2 uses
  %i.g = icmp eq ptr %.tr37, %i.f
  br i1 %i.g, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load i64, ptr %i.h, align 8, !tbaa !535
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = ptrtoint ptr %.tr37 to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.n, %bb.c ], [ %i.u, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.j            ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.01929.i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !534  ; 2 uses
  %i.r = icmp eq ptr %i.q, %.tr37
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq ptr %i.q, %i.f
  br i1 %i.s, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.t, %i.j
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.d, !llvm.loop !536

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !470
  %.not15 = icmp eq i32 %i.w, 0
  br i1 %.not15, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.k

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %tailrecurse, %bb.b, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.tr37, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !288  ; 2 uses
  %i.z = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprBinaryEE5valueE, align 4, !tbaa !9
  %i.aa = icmp ne i32 %i.y, %i.z
  %.not1625 = icmp eq ptr %.tr37, null
  %.not16 = or i1 %.not1625, %i.aa
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr37, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !547
  %i.ad = and i32 %i.ac, -8
  %switch.selectcmp = icmp eq i32 %i.ad, 8
  br label %bb.k

bb.i:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread
end_hunk_1
