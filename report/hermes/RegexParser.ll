Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegexParser?download=true
inline.NumInlined: 3182
inline.NumDeleted: 1582
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15AlternationNodeEJSt6vectorIS6_IPNS0_4NodeESaIS8_EESaISA_EEEEEPT_DpOT0_:bb.a
.lr.ph.i.i.i.i8:                                  ; preds = %.lr.ph.i.i.i.i8.preheader31, %.lr.ph.i.i.i.i8
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i8 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i8.preheader31 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i8 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i8.preheader31 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.bf = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !347, !noalias !346
  store i64 %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !37, !alias.scope !346, !noalias !347
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !347, !noalias !346
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.bg, %i.w
  br i1 %.not.i.i.i.i9, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i8, !llvm.loop !344

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i8, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i8 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !123
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.bl) #18
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.g
  store ptr %i.am, ptr %i.u, align 8, !tbaa !124
  store ptr %i.bi, ptr %i.v, align 8, !tbaa !122
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bm, ptr %i.x, align 8, !tbaa !123
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !55 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !58
  %.not.i.i4 = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.bp, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !55
  br label %_ZNSt10unique_ptrIN6hermes5regex15AlternationNodeESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !56 ; 4 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.j, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i5 = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17 ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store ptr %i.a, ptr %i.cf, align 8, !tbaa !37
  %i.cg = icmp sgt i64 %i.bw, 0
  br i1 %i.cg, label %bb.k, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ci = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.ck) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !56
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !55
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cl, ptr %i.bq, align 8, !tbaa !58
  br label %_ZNSt10unique_ptrIN6hermes5regex15AlternationNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex15AlternationNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.h
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex15AlternationNodeC2ESt6vectorIS2_IPNS0_4NodeESaIS4_EESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex15AlternationNodeE, i64 16), ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  store ptr %i.f, ptr %i.d, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = sdiv exact i64 %i.l, 24                  ; 3 uses
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %bb.b, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #17 ; 4 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !131
  %i.p = getelementptr i8, ptr %i.o, i64 %i.m     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.p, ptr %i.q, align 8, !tbaa !132
  store i8 0, ptr %i.o, align 1, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.s = add nsw i64 %i.m, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %bb.c, %bb.d
  %.0.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.r, %bb.c ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.u, align 8, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = sdiv exact i64 %i.aa, 24                ; 3 uses
  %i.ac = icmp slt i64 %i.aa, 0
  br i1 %i.ac, label %bb.e, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i6

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i6: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i7 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit10, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i6
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #17 ; 4 uses
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !131
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ab  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !132
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ah = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit10

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit10:             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i6, %bb.f, %bb.g
  %.0.i.i.i.i.i8 = phi ptr [ %i.ae, %bb.g ], [ %i.ag, %bb.f ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i6 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %.0.i.i.i.i.i8, ptr %i.aj, align 8, !tbaa !133
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, i8 0, i64 56, i1 false)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !61  ; 3 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 24                ; 3 uses
  %2 = icmp ugt i64 %i.aq, 576460752303423487
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit10
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #16
  unreachable

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not34 = icmp eq ptr %i.al, %i.am
  br i1 %.not34, label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.at = shl nuw nsw i64 %i.aq, 4
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #17 ; 4 uses
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !136 ; 5 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !137 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.au, %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.av, %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !140, !alias.scope !355
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i11 = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.av, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !141
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bc) #18
  br label %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.au, ptr %i.ak, align 8, !tbaa !136
  store ptr %i.au, ptr %i.as, align 8, !tbaa !137
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.aq
  store ptr %i.bd, ptr %i.ar, align 8, !tbaa !141
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !94
  br label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE7reserveEm.exit: ; preds = %bb.i, %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.be = phi ptr [ %i.al, %bb.i ], [ %.pre, %_ZNSt12_Vector_baseIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35 ; 2 uses
  %.not8.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not8.i, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE7reserveEm.exit, %.lr.ph.i
  %.010.i = phi i8 [ %i.bo, %.lr.ph.i ], [ 0, %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE7reserveEm.exit ]
  %.sroa.05.09.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.bg, %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE7reserveEm.exit ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !37 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !128
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #15, !inline_history !353
  %i.bo = or i8 %i.bn, %.010.i                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, %i.bi
  br i1 %.not.i, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE7reserveEm.exit
  %.0.lcssa.i = phi i8 [ 0, %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE7reserveEm.exit ], [ %i.bo, %.lr.ph.i ]
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !142
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1
  store i8 %.0.lcssa.i, ptr %i.br, align 1, !tbaa !29
  %i.bs = load ptr, ptr %i.u, align 8, !tbaa !142
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.bv = load ptr, ptr %i.aj, align 8, !tbaa !142
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -1
  store i8 %i.bu, ptr %i.bw, align 1, !tbaa !29
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = sdiv exact i64 %i.cb, 24
  %i.cd = add nsw i64 %i.cc, -1                   ; 2 uses
  %.not21 = icmp eq i64 %i.cd, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit18, %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit
  ret void

.lr.ph:                                           ; preds = %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit, %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit18
  %.022 = phi i64 [ %i.ce, %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit18 ], [ %i.cd, %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit ] ; 2 uses
  %i.ce = add i64 %.022, -1                       ; 6 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !35 ; 2 uses
  %.not8.i12 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not8.i12, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit18, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph, %.lr.ph.i13
  %.010.i14 = phi i8 [ %i.cp, %.lr.ph.i13 ], [ 0, %.lr.ph ]
  %.sroa.05.09.i15 = phi ptr [ %i.cq, %.lr.ph.i13 ], [ %i.ch, %.lr.ph ] ; 2 uses
  %i.ck = load ptr, ptr %.sroa.05.09.i15, align 8, !tbaa !37 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !128
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef zeroext i8 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #15, !inline_history !353
  %i.cp = or i8 %i.co, %.010.i14                  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i15, i64 8 ; 2 uses
  %.not.i16 = icmp eq ptr %i.cq, %i.cj
  br i1 %.not.i16, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit18, label %.lr.ph.i13

_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit18: ; preds = %.lr.ph.i13, %.lr.ph
  %.0.lcssa.i17 = phi i8 [ 0, %.lr.ph ], [ %i.cp, %.lr.ph.i13 ]
  %i.cr = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ce
  store i8 %.0.lcssa.i17, ptr %i.cs, align 1, !tbaa !29
  %i.ct = load ptr, ptr %i.v, align 8, !tbaa !131 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.022
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ce
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  %i.cz = and i8 %i.cy, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ce
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !29
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !354
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex15AlternationNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #15, !inline_history !5 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #18
  br label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !132
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EED2Ev.exit, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIhSaIhEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !132
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit3

_ZNSt6vectorIhSaIhEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit3, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i ], [ %i.aa, %_ZNSt6vectorIhSaIhEED2Ev.exit3 ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.aj, %i.ac
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.z, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt6vectorIhSaIhEED2Ev.exit3
  %i.ak = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i ], [ %i.aa, %_ZNSt6vectorIhSaIhEED2Ev.exit3 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #18
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex15AlternationNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes5regex15AlternationNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node26matchesExactlyOneCharacterEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex15AlternationNode16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  ret i8 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node6isGoalEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex15AlternationNode11getChildrenEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.61") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !93   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %2 = sdiv exact i64 %i.j, 24                    ; 2 uses
  %i.k = icmp ugt i64 %2, 1
  br i1 %i.k, label %bb.b, label %_ZN4llvh15SmallVectorImplIPSt6vectorIPN6hermes5regex4NodeESaIS5_EEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 8) #15
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !94
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !94
  br label %_ZN4llvh15SmallVectorImplIPSt6vectorIPN6hermes5regex4NodeESaIS5_EEE7reserveEm.exit

_ZN4llvh15SmallVectorImplIPSt6vectorIPN6hermes5regex4NodeESaIS5_EEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.f, %bb.a ], [ %.pre10, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.g, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not8 = icmp eq ptr %i.m, %i.l
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh15SmallVectorImplIPSt6vectorIPN6hermes5regex4NodeESaIS5_EEE7reserveEm.exit
  %.pre11 = load i32, ptr %i.b, align 8, !tbaa !40
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit, %_ZN4llvh15SmallVectorImplIPSt6vectorIPN6hermes5regex4NodeESaIS5_EEE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit
  %i.n = phi i32 [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit ], [ %.pre11, %.lr.ph.preheader ] ; 2 uses
  %.sroa.05.09 = phi ptr [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !41
  %.not.i = icmp ult i32 %i.n, %i.o
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit, label %bb.c, !prof !60

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #15
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !40
  br label %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit

_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit: ; preds = %.lr.ph, %bb.c
  %i.p = phi i32 [ %.pre.i, %bb.c ], [ %i.n, %.lr.ph ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !39
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = ptrtoint ptr %.sroa.05.09 to i64
  store i64 %i.t, ptr %i.s, align 1
  %i.u = load i32, ptr %i.b, align 8, !tbaa !40
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.b, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex15AlternationNode15reverseChildrenEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit
  %.sroa.04.08 = phi ptr [ %i.ac, %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = load ptr, ptr %.sroa.04.08, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #15, !inline_history !6
  %i.o = load ptr, ptr %.sroa.04.08, align 8, !tbaa !35 ; 5 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !35   ; 3 uses
  %.neg.i = sext i1 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.neg.i ; 2 uses
  %i.r = icmp ne ptr %i.o, %i.q
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.s = icmp ult ptr %i.o, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %bb.b ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.t = load ptr, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !37
  %i.u = load ptr, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !37
  store ptr %i.u, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !37
  store ptr %i.t, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -8 ; 2 uses
  %i.w = icmp ult ptr %i.v, %.sroa.0.0.i.i.i
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, !llvm.loop !7

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %.not13.i = icmp eq ptr %i.o, %i.p
  br i1 %.not13.i, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, %.lr.ph.i
  %.sroa.09.014.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.o, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.09.014.i, align 8, !tbaa !37 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #15, !inline_history !6
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit: ; preds = %.lr.ph.i, %.lr.ph, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex15AlternationNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 6 uses
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144
  %.not.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not, label %bb.e, label %_ZNKSt8functionIFbvEEclEv.exit

_ZNKSt8functionIFbvEEclEv.exit:                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !361
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #15, !inline_history !356
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137
  %.not.i.i6 = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i6, label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.j, align 8, !tbaa !137
  br label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit

_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit: ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !144  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt8functionIFbvEEaSEDn.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3) #15, !inline_history !357 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbvEEaSEDn.exit

bb.e:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !137
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !136
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !93
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = icmp ult i64 %i.u, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !133 ; 4 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !131   ; 4 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !29
  %i.al = icmp ult i64 %i.ak, -7
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.ag, i64 noundef 7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !131 ; 2 uses
  %.pre18 = load ptr, ptr %i.af, align 8, !tbaa !133
  %.pre19 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15AlternationInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 7      ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.an
end_hunk_0
