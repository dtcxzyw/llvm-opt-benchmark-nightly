inline.NumInlined: 7296
inline.NumDeleted: 3038
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5arrow7compute21SimplifyWithGuaranteeENS0_10ExpressionERKS1_:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ee

_ZN5arrow6StatusD2Ev.exit91:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.p = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.o, align 8, !tbaa !79
  store <2 x ptr> %i.p, ptr %10, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !63
  invoke void @_ZN5arrow7compute28ReplaceFieldsWithKnownValuesERKNS0_16KnownFieldValuesENS0_10ExpressionE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.155") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %10)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit91
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.s, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !82
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31, !inline_history !300
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.l ], [ %i.af, %bb.m ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.n, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  %i.ah = load ptr, ptr %9, align 8, !tbaa !274
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.q, label %bb.o, !prof !290

bb.o:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  br label %.loopexit

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit91
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ee

bb.q:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !94, !noalias !713
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !79  ; 8 uses
  store <2 x ptr> %i.al, ptr %1, align 8, !tbaa !94
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit96, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.an, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !82
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31, !inline_history !345
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31, !inline_history !345
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit96

bb.t:                                             ; preds = %bb.r
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aq, %bb.u ], [ %i.ba, %bb.v ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.w, label %_ZN5arrow7compute10ExpressionD2Ev.exit96, !prof !87

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit96

_ZN5arrow7compute10ExpressionD2Ev.exit96:         ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke fastcc void @"_ZZN5arrow7compute21SimplifyWithGuaranteeENS0_10ExpressionERKS1_ENK3$_0clEv"(ptr dead_on_unwind noalias writable align 8 %12, ptr nonnull %1)
          to label %_ZN5arrow6StatusD2Ev.exit98 unwind label %bb.aa

_ZN5arrow6StatusD2Ev.exit98:                      ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit96
  %i.bc = load ptr, ptr %12, align 8, !tbaa !274  ; 2 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN5arrow6StatusD2Ev.exit104, label %bb.x, !prof !290

bb.x:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit98
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  %i.be = load ptr, ptr %11, align 8, !tbaa !274  ; 2 uses
  %.not.i99 = icmp eq ptr %i.be, null
  br i1 %.not.i99, label %_ZN5arrow6StatusD2Ev.exit100, label %bb.y, !prof !290

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !284, !range !189, !noundef !66
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit100, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZN5arrow6StatusD2Ev.exit100

_ZN5arrow6StatusD2Ev.exit100:                     ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.loopexit

bb.aa:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit96
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.dv

_ZN5arrow6StatusD2Ev.exit104:                     ; preds = %_ZN5arrow6StatusD2Ev.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.bj = load ptr, ptr %6, align 8, !tbaa !62    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !62 ; 2 uses
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %.thread218, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit104
  %.sroa.41.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.5.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.6.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %.thread216
  %.sroa.0188.0221 = phi ptr [ %i.bj, %.lr.ph ], [ %i.my, %.thread216 ] ; 5 uses
  %i.bx = load ptr, ptr %.sroa.0188.0221, align 8, !tbaa !63 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %.thread216, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i: ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !67
  %i.ca = icmp eq i8 %i.bz, 2
  br i1 %i.ca, label %_ZNK5arrow7compute10Expression4callEv.exit.i.a, label %.thread216

_ZNK5arrow7compute10Expression4callEv.exit.i.a:   ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %.val85 = load ptr, ptr %.sroa.0188.0221, align 8, !tbaa !63 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.cb = icmp eq ptr %.val85, null
  br i1 %i.cb, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i.a
  %25 = getelementptr inbounds nuw i8, ptr %.val85, i64 144
  %26 = load i8, ptr %25, align 8, !tbaa !67, !noalias !718
  %27 = icmp eq i8 %26, 2
  br i1 %27, label %_ZNK5arrow7compute10Expression4callEv.exit.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression4callEv.exit.i:     ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %28 = getelementptr inbounds nuw i8, ptr %.val85, i64 8
  %29 = load i64, ptr %28, align 8, !tbaa !38, !noalias !718
  %30 = icmp eq i64 %29, 9
  br i1 %30, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZNK5arrow7compute10Expression4callEv.exit.i28.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %i.cc = load ptr, ptr %.val85, align 8, !tbaa !33, !noalias !718 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 1
  %i.ce = xor i64 %i.cd, 7954875833152139887
  %i.cf = getelementptr i8, ptr %i.cc, i64 8
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 %i.ch, 101
  %i.cj = or i64 %i.ce, %i.ci
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZNK5arrow7compute10Expression4callEv.exit.i28.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.val85, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !130, !noalias !718
  %.val15.i = load ptr, ptr %i.co, align 8, !tbaa !63, !noalias !718 ; 4 uses
  %.not.i.i.i.i106 = icmp eq ptr %.val15.i, null
  br i1 %.not.i.i.i.i106, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.val15.i, i64 144
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !67, !noalias !721
  %i.cr = icmp eq i8 %i.cq, 2
  br i1 %i.cr, label %_ZNK5arrow7compute10Expression4callEv.exit.i.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression4callEv.exit.i.i:   ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i
  %i.cs = invoke noundef ptr @_ZN5arrow7compute10Comparison3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %.val15.i)
          to label %.noexc unwind label %bb.ap    ; 2 uses

.noexc:                                           ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i.i
  %.not16.i.i = icmp eq ptr %i.cs, null
  br i1 %.not16.i.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %bb.ac

bb.ac:                                            ; preds = %.noexc
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !160, !noalias !721 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 6
  br i1 %i.cu, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %.val15.i, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !130, !noalias !721 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !63, !noalias !721 ; 4 uses
  %.not.i.i.i.i.i107 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i107, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i

_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i: ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !67, !noalias !721
  %i.da = icmp eq i8 %i.cz, 1
  br i1 %i.da, label %_ZNK5arrow7compute10Expression9field_refEv.exit.i.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression9field_refEv.exit.i.i: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63, !noalias !721 ; 4 uses
  %.not.i.i19.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i19.i.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i

_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 144
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !67, !noalias !721
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %_ZNK5arrow7compute10Expression7literalEv.exit.i.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression7literalEv.exit.i.i: ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !69, !noalias !721
  %i.di = icmp eq i8 %i.dh, 1
  br i1 %i.di, label %_ZN5arrow7compute12_GLOBAL__N_110Inequality24ExtractOneFromComparisonERKNS0_10ExpressionE.exit.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZN5arrow7compute12_GLOBAL__N_110Inequality24ExtractOneFromComparisonERKNS0_10ExpressionE.exit.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i.i
  %i.dj = load ptr, ptr %i.cn, align 8, !tbaa !130, !noalias !718
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !63, !noalias !718 ; 5 uses
  %.not.i.i17.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i17.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i18.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i18.i: ; preds = %_ZN5arrow7compute12_GLOBAL__N_110Inequality24ExtractOneFromComparisonERKNS0_10ExpressionE.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !67, !noalias !718
  %i.do = icmp eq i8 %i.dn, 2
  br i1 %i.do, label %_ZNK5arrow7compute10Expression4callEv.exit21.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression4callEv.exit21.i:   ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i18.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !38, !noalias !718
  %i.dr = icmp eq i64 %i.dq, 7
  br i1 %i.dr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit21.i
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !33, !noalias !718 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 1
  %i.du = xor i32 %i.dt, 1851749225
  %i.dv = getelementptr i8, ptr %i.ds, i64 3
  %i.dw = load i32, ptr %i.dv, align 1
  %i.dx = xor i32 %i.dw, 1819047278
  %i.dy = or i32 %i.du, %i.dx
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !130, !noalias !718
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !63, !noalias !718 ; 3 uses
  %.not.i.i.i24.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i24.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i

_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 144
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !67, !noalias !718
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %_ZNK5arrow7compute10Expression9field_refEv.exit.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression9field_refEv.exit.i: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i
  %i.ei = invoke noundef zeroext i1 @_ZNK5arrow8FieldRef6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ee, ptr noundef nonnull align 8 dereferenceable(40) %i.cx)
          to label %.noexc108 unwind label %bb.ap

.noexc108:                                        ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit.i
  br i1 %i.ei, label %bb.ag, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression4callEv.exit.i28.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZNK5arrow7compute10Expression4callEv.exit.i
  %i.ej = invoke noundef ptr @_ZN5arrow7compute10Comparison3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %.val85)
          to label %.noexc109 unwind label %bb.ap ; 2 uses

.noexc109:                                        ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i28.i
  %.not16.i29.i = icmp eq ptr %i.ej, null
  br i1 %.not16.i29.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %bb.ae

bb.ae:                                            ; preds = %.noexc109
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !160, !noalias !724 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 6
  br i1 %i.el, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %.val85, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !130, !noalias !724 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !63, !noalias !724 ; 3 uses
  %.not.i.i.i.i30.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i30.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i31.i

_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i31.i: ; preds = %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !67, !noalias !724
  %i.er = icmp eq i8 %i.eq, 1
  br i1 %i.er, label %_ZNK5arrow7compute10Expression9field_refEv.exit.i32.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression9field_refEv.exit.i32.i: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i31.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !63, !noalias !724 ; 4 uses
  %.not.i.i19.i33.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i19.i33.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i34.i

_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i34.i: ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit.i32.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 144
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !67, !noalias !724
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %_ZNK5arrow7compute10Expression7literalEv.exit.i35.i, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

_ZNK5arrow7compute10Expression7literalEv.exit.i35.i: ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i34.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !69, !noalias !724
  %i.ez = icmp eq i8 %i.ey, 1
  br i1 %i.ez, label %bb.ag, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134

bb.ag:                                            ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i35.i, %.noexc108
  %.sink30.i = phi i32 [ %i.ct, %.noexc108 ], [ %i.ek, %_ZNK5arrow7compute10Expression7literalEv.exit.i35.i ]
  %.sink29.i = phi ptr [ %i.cx, %.noexc108 ], [ %i.eo, %_ZNK5arrow7compute10Expression7literalEv.exit.i35.i ]
  %.sink28.i = phi ptr [ %i.dc, %.noexc108 ], [ %i.et, %_ZNK5arrow7compute10Expression7literalEv.exit.i35.i ]
  %.sink27.i = phi i8 [ 1, %.noexc108 ], [ 0, %_ZNK5arrow7compute10Expression7literalEv.exit.i35.i ]
  store i32 %.sink30.i, ptr %13, align 8, !alias.scope !718
  store ptr %.sink29.i, ptr %.sroa.41.0..sroa_idx.i36.i, align 8, !alias.scope !718
  store ptr %.sink28.i, ptr %.sroa.5.0..sroa_idx.i37.i, align 8, !alias.scope !718
  store i8 %.sink27.i, ptr %.sroa.6.0..sroa_idx.i38.i, align 8, !alias.scope !718
  store i8 1, ptr %i.bn, align 8, !alias.scope !718
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.fa = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.o, align 8, !tbaa !79
  store <2 x ptr> %i.fa, ptr %15, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  store ptr %13, ptr %16, align 8, !tbaa !727
  invoke fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_21SimplifyWithGuaranteeENS0_10ExpressionERKS2_E3$_1ZNS0_21SimplifyWithGuaranteeES2_S4_E3$_2EENS_6ResultIS2_EES2_RKT_RKT0_"(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.fb = load ptr, ptr %i.bo, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i110 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i110, label %_ZN5arrow7compute10ExpressionD2Ev.exit114, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fc, align 8, !tbaa !80
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !82
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !83
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #31, !inline_history !300
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !83
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit114

bb.ak:                                            ; preds = %bb.ai
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i111 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i111, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112

bb.am:                                            ; preds = %bb.ak
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i113 = phi i32 [ %i.ff, %bb.al ], [ %i.fp, %bb.am ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i113, 1
  br i1 %i.fq, label %bb.an, label %_ZN5arrow7compute10ExpressionD2Ev.exit114, !prof !87

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit114

_ZN5arrow7compute10ExpressionD2Ev.exit114:        ; preds = %bb.ah, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112, %bb.an
  %i.fr = load ptr, ptr %14, align 8, !tbaa !274
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.ar, label %bb.ao, !prof !290

bb.ao:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit114
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #31
  br label %bb.bk

bb.ap:                                            ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i28.i, %_ZNK5arrow7compute10Expression9field_refEv.exit.i, %_ZNK5arrow7compute10Expression4callEv.exit.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.aq:                                            ; preds = %bb.ag
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #31
  br label %bb.cj

bb.ar:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.fv = load ptr, ptr %i.bp, align 8, !tbaa !63, !noalias !735 ; 3 uses
  store ptr %i.fv, ptr %17, align 8, !tbaa !63, !alias.scope !735
  %i.fw = load ptr, ptr %i.br, align 8, !tbaa !79, !noalias !735 ; 3 uses
  store ptr null, ptr %i.br, align 8, !tbaa !79, !noalias !735
  store ptr %i.fw, ptr %i.bq, align 8, !tbaa !79, !alias.scope !735
  store ptr null, ptr %i.bp, align 8, !tbaa !63, !noalias !735
  %i.fx = load ptr, ptr %1, align 8, !tbaa !63
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr %i.fv, ptr %1, align 8, !tbaa !78
  %i.fz = load ptr, ptr %i.o, align 8, !tbaa !79  ; 8 uses
  store ptr %i.fw, ptr %i.o, align 8, !tbaa !79
  %.not.i.i.i.i.i115 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i115, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit119, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ga, align 8, !tbaa !80
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !82
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !83
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #31, !inline_history !345
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !83
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #31, !inline_history !345
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit119

bb.av:                                            ; preds = %bb.at
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i116 = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i.i116, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i117

bb.ax:                                            ; preds = %bb.av
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i117

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i117: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i118 = phi i32 [ %i.gd, %bb.aw ], [ %i.gn, %bb.ax ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i.i118, 1
  br i1 %i.go, label %bb.ay, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit119, !prof !87

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i117
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit119

_ZN5arrow7compute10ExpressionaSEOS1_.exit119:     ; preds = %bb.as, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i117, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  invoke fastcc void @"_ZZN5arrow7compute21SimplifyWithGuaranteeENS0_10ExpressionERKS1_ENK3$_0clEv"(ptr dead_on_unwind noalias writable align 8 %19, ptr nonnull %1)
          to label %_ZN5arrow6StatusD2Ev.exit121 unwind label %bb.az

_ZN5arrow6StatusD2Ev.exit121:                     ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit119
  %i.gp = load ptr, ptr %19, align 8, !tbaa !274  ; 2 uses
  store ptr %i.gp, ptr %18, align 8, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZN5arrow6StatusD2Ev.exit125, label %bb.ba, !prof !290

bb.az:                                            ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit119
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.cj

bb.ba:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit121
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %18) #31
  %.pr = load ptr, ptr %18, align 8, !tbaa !274   ; 2 uses
  %.not.i124 = icmp eq ptr %.pr, null
  br i1 %.not.i124, label %_ZN5arrow6StatusD2Ev.exit125, label %bb.bb, !prof !736

bb.bb:                                            ; preds = %bb.ba
  %i.gs = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !284, !range !189, !noundef !66
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %_ZN5arrow6StatusD2Ev.exit125, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #31
  br label %_ZN5arrow6StatusD2Ev.exit125

_ZN5arrow6StatusD2Ev.exit125:                     ; preds = %_ZN5arrow6StatusD2Ev.exit121, %bb.ba, %bb.bb, %bb.bc
  %.251200 = phi i32 [ 1, %bb.bc ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 0, %_ZN5arrow6StatusD2Ev.exit121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %.pr201 = load ptr, ptr %i.bq, align 8, !tbaa !79
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ar, %_ZN5arrow6StatusD2Ev.exit125
  %i.gv = phi ptr [ %i.fw, %bb.ar ], [ %.pr201, %_ZN5arrow6StatusD2Ev.exit125 ] ; 8 uses
  %.352 = phi i32 [ 13, %bb.ar ], [ %.251200, %_ZN5arrow6StatusD2Ev.exit125 ]
  %.not.i.i.i126 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i126, label %_ZN5arrow7compute10ExpressionD2Ev.exit130, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gw, align 8, !tbaa !80
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !82
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !83
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #31, !inline_history !300
  %i.he = load ptr, ptr %i.gv, align 8, !tbaa !83
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit130

bb.bg:                                            ; preds = %bb.be
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i127 = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i.i127, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128

bb.bi:                                            ; preds = %bb.bg
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i129 = phi i32 [ %i.gz, %bb.bh ], [ %i.hj, %bb.bi ]
  %i.hk = icmp eq i32 %.0.i.i.i.i.i129, 1
  br i1 %i.hk, label %bb.bj, label %_ZN5arrow7compute10ExpressionD2Ev.exit130, !prof !87

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit130

_ZN5arrow7compute10ExpressionD2Ev.exit130:        ; preds = %bb.bd, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit130, %bb.ao
  %.453 = phi i32 [ 1, %bb.ao ], [ %.352, %_ZN5arrow7compute10ExpressionD2Ev.exit130 ] ; 2 uses
  %i.hl = load ptr, ptr %14, align 8, !tbaa !274  ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.bl, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !290

bb.bl:                                            ; preds = %bb.bk
  %i.hn = load ptr, ptr %i.br, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i131 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i.i131, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ho, align 8, !tbaa !80
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !82
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !83
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #31, !inline_history !346
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !83
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #31, !inline_history !346
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ia = add nsw i32 %i.hr, -1
  store i32 %i.ia, ptr %i.ho, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.ib = atomicrmw volatile add ptr %i.ho, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hr, %bb.bp ], [ %i.ib, %bb.bq ]
  %i.ic = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ic, label %bb.br, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i, !prof !87

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bn
  %.pr.i.pr = load ptr, ptr %14, align 8, !tbaa !274 ; 2 uses
  %.not.i.i132 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i132, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i, %bb.bk
  %i.id = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i ], [ %i.hl, %bb.bk ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !284, !range !189, !noundef !66
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit

_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit: ; preds = %bb.bl, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %cond7 = icmp eq i32 %.453, 0
  br i1 %cond7, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134, label %bb.bt

bb.bt:                                            ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.dm

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i35.i, %bb.ae, %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i31.i, %_ZNK5arrow7compute10Expression9field_refEv.exit.i32.i, %bb.af, %.noexc109, %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i, %_ZNK5arrow7compute10Expression4callEv.exit21.i, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i18.i, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i, %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i, %_ZNK5arrow7compute10Expression7literalEv.exit.i.i, %bb.ac, %_ZNK5arrow7compute10Expression9field_refEv.exit.i.i, %bb.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i, %.noexc108, %.noexc, %_ZN5arrow7compute12_GLOBAL__N_110Inequality24ExtractOneFromComparisonERKNS0_10ExpressionE.exit.i, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i34.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i, %_ZNK5arrow7compute10Expression4callEv.exit.i.a, %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.ih = load ptr, ptr %.sroa.0188.0221, align 8, !tbaa !63, !nonnull !66, !noundef !66 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !38
  %i.ik = icmp eq i64 %i.ij, 8
  br i1 %i.ik, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.thread216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i134
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !33
  %i.im = load i64, ptr %i.il, align 1
  %i.in = icmp ne i64 %i.im, 7235433442201006953
  %i.io = zext i1 %i.in to i32
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.thread216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.iq = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.ir = load ptr, ptr %i.o, align 8, !tbaa !79  ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !63
  %i.is = load ptr, ptr %.sroa.0188.0221, align 8, !tbaa !63, !nonnull !66, !noundef !66 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 144
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !67
  %i.iv = icmp eq i8 %i.iu, 2
  %spec.select.i.i.i.i = select i1 %i.iv, ptr %i.is, ptr null
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !38, !noalias !737
  %i.iy = icmp eq i64 %i.ix, 8
  br i1 %i.iy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i141, label %.thread207

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i141: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.iz = load ptr, ptr %i.is, align 8, !tbaa !33, !noalias !737
  %i.ja = load i64, ptr %i.iz, align 1
  %i.jb = icmp ne i64 %i.ja, 7235433442201006953
  %i.jc = zext i1 %i.jb to i32
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i143, label %.thread207

.thread207:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i141
  store ptr null, ptr %20, align 8, !tbaa !274, !alias.scope !737
  store ptr %i.iq, ptr %i.bt, align 8, !tbaa !63, !alias.scope !737
  store ptr null, ptr %i.bs, align 8, !tbaa !79, !noalias !737
  store ptr %i.ir, ptr %i.bu, align 8, !tbaa !79, !alias.scope !737
  store ptr null, ptr %21, align 8, !tbaa !63, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit150

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i143: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i141
  store ptr %i.iq, ptr %3, align 8, !tbaa !63, !noalias !737
  store ptr null, ptr %i.bs, align 8, !tbaa !79, !noalias !737
  store ptr %i.ir, ptr %i.bv, align 8, !tbaa !79, !noalias !737
  store ptr null, ptr %21, align 8, !tbaa !63, !noalias !737
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !737
  store ptr %spec.select.i.i.i.i, ptr %4, align 8, !tbaa !155, !noalias !737
  invoke fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_12_GLOBAL__N_124SimplifyIsValidGuaranteeENS0_10ExpressionERKNS3_4CallEE3$_0ZNS2_24SimplifyIsValidGuaranteeES3_S6_E3$_1EENS_6ResultIS3_EES3_RKT_RKT0_"(ptr dead_on_unwind noalias nonnull writable align 8 %20, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.bu unwind label %.body

bb.bu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !737
  %i.je = load ptr, ptr %i.bv, align 8, !tbaa !79, !noalias !737 ; 8 uses
  %.not.i.i.i.i144 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i144, label %bb.cb, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 4 uses
  %i.jg = load atomic i64, ptr %i.jf acquire, align 8 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 4294967297
  %i.ji = trunc i64 %i.jg to i32                  ; 2 uses
  br i1 %i.jh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.jf, align 8, !tbaa !80
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  store i32 0, ptr %i.jj, align 4, !tbaa !82
  %i.jk = load ptr, ptr %i.je, align 8, !tbaa !83
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #31, !inline_history !740
  %i.jn = load ptr, ptr %i.je, align 8, !tbaa !83
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #31, !inline_history !740
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bv
  %i.jq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !737
  %.not.i.i.i.i.i145 = icmp eq i8 %i.jq, 0
  br i1 %.not.i.i.i.i.i145, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jr = add nsw i32 %i.ji, -1
  store i32 %i.jr, ptr %i.jf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.js = atomicrmw volatile add ptr %i.jf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i = phi i32 [ %i.ji, %bb.by ], [ %i.js, %bb.bz ]
  %i.jt = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jt, label %bb.ca, label %bb.cb, !prof !87

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #31
  br label %bb.cb

.body:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i143
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !737
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #31
  br label %bb.dv

bb.cb:                                            ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bw, %bb.bu
  %.pr206 = load ptr, ptr %i.bs, align 8, !tbaa !79 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i.i.i146 = icmp eq ptr %.pr206, null
  br i1 %.not.i.i.i146, label %_ZN5arrow7compute10ExpressionD2Ev.exit150, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jv = getelementptr inbounds nuw i8, ptr %.pr206, i64 8 ; 4 uses
  %i.jw = load atomic i64, ptr %i.jv acquire, align 8 ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 4294967297
  %i.jy = trunc i64 %i.jw to i32                  ; 2 uses
  br i1 %i.jx, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.jv, align 8, !tbaa !80
  %i.jz = getelementptr inbounds nuw i8, ptr %.pr206, i64 12
  store i32 0, ptr %i.jz, align 4, !tbaa !82
  %i.ka = load ptr, ptr %.pr206, align 8, !tbaa !83
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %.pr206) #31, !inline_history !300
  %i.kd = load ptr, ptr %.pr206, align 8, !tbaa !83
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %.pr206) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit150

bb.ce:                                            ; preds = %bb.cc
  %i.kg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i147 = icmp eq i8 %i.kg, 0
  br i1 %.not.i.i.i.i147, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kh = add nsw i32 %i.jy, -1
  store i32 %i.kh, ptr %i.jv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i148

bb.cg:                                            ; preds = %bb.ce
  %i.ki = atomicrmw volatile add ptr %i.jv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i148

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i148: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i149 = phi i32 [ %i.jy, %bb.cf ], [ %i.ki, %bb.cg ]
  %i.kj = icmp eq i32 %.0.i.i.i.i.i149, 1
  br i1 %i.kj, label %bb.ch, label %_ZN5arrow7compute10ExpressionD2Ev.exit150, !prof !87

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i148
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr206) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit150

_ZN5arrow7compute10ExpressionD2Ev.exit150:        ; preds = %.thread207, %bb.cb, %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i148, %bb.ch
  %i.kk = load ptr, ptr %20, align 8, !tbaa !274
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.ck, label %bb.ci, !prof !290

bb.ci:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit150
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %20) #31
  br label %bb.dd

bb.cj:                                            ; preds = %bb.aq, %bb.az, %bb.ap
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.ap ], [ %i.gr, %bb.az ], [ %i.fu, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.dv

bb.ck:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit150
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.km = load ptr, ptr %i.bt, align 8, !tbaa !63, !noalias !747 ; 3 uses
  store ptr %i.km, ptr %22, align 8, !tbaa !63, !alias.scope !747
  %i.kn = load ptr, ptr %i.bu, align 8, !tbaa !79, !noalias !747 ; 3 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !79, !noalias !747
  store ptr %i.kn, ptr %i.bw, align 8, !tbaa !79, !alias.scope !747
  store ptr null, ptr %i.bt, align 8, !tbaa !63, !noalias !747
  %i.ko = load ptr, ptr %1, align 8, !tbaa !63
  %i.kp = icmp eq ptr %i.km, %i.ko
  br i1 %i.kp, label %bb.cw, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store ptr %i.km, ptr %1, align 8, !tbaa !78
  %i.kq = load ptr, ptr %i.o, align 8, !tbaa !79  ; 8 uses
end_hunk_0
