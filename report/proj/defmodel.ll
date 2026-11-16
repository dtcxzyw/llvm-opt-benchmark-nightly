Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN16DeformationModel13SpatialExtent5parseERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEEE:bb.a
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.thread: ; preds = %bb.g, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit
  %i.ao = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread

bb.j:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.thread
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.ak unwind label %bb.n

bb.l:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.m:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread: ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j
  %.010 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.n
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !29
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.010, label %bb.o, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.010, label %bb.o, label %.loopexit.split-lp

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn2657 = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  call void @__cxa_free_exception(ptr %i.ao) #37
  br label %.loopexit.split-lp

.preheader.1:                                     ; preds = %bb.t
  %i.ay = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.preheader.1
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !40
  %i.ba = add i8 %i.az, -5
  %spec.select.i.1 = icmp ult i8 %i.ba, 3
  br i1 %spec.select.i.1, label %.preheader.2, label %bb.u

.preheader.2:                                     ; preds = %bb.p
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 2)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.preheader.2
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !40
  %i.bd = add i8 %i.bc, -5
  %spec.select.i.2 = icmp ult i8 %i.bd, 3
  br i1 %spec.select.i.2, label %.preheader.3, label %bb.u

.preheader.3:                                     ; preds = %bb.q
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 3)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.preheader.3
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !40
  %i.bg = add i8 %i.bf, -5
  %spec.select.i.3 = icmp ult i8 %i.bg, 3
  br i1 %spec.select.i.3, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %.preheader.preheader
  %i.bi = load i8, ptr %i.an, align 8, !tbaa !40
  %i.bj = add i8 %i.bi, -5
  %spec.select.i = icmp ult i8 %i.bj, 3
  br i1 %spec.select.i, label %.preheader.1, label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.t
  %i.bk = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.ak unwind label %bb.x

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.s, %bb.aa, %bb.ac, %bb.ae
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread: ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0 = phi i1 [ false, %bb.w ], [ true, %bb.v ]  ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.x
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !29
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %.0, label %bb.y, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %.0, label %bb.y, label %.loopexit.split-lp

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn60 = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  call void @__cxa_free_exception(ptr %i.bk) #37
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  invoke void @_ZN13proj_nlohmann6detail20get_arithmetic_valueINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISG_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSH_RSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.bs = load double, ptr %i.d, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  store double %i.bs, ptr %0, align 8, !tbaa !344
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  invoke void @_ZN13proj_nlohmann6detail20get_arithmetic_valueINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISG_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSH_RSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.bu = load double, ptr %i.c, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  store double %i.bu, ptr %i.e, align 8, !tbaa !345
  %i.bv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 2)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  invoke void @_ZN13proj_nlohmann6detail20get_arithmetic_valueINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISG_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSH_RSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load double, ptr %i.b, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  store double %i.bw, ptr %i.f, align 8, !tbaa !346
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 3)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  invoke void @_ZN13proj_nlohmann6detail20get_arithmetic_valueINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISG_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSH_RSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.by = load double, ptr %i.a, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bz = insertelement <4 x double> poison, double %i.bs, i64 1
  %i.ca = insertelement <4 x double> %i.bz, double %i.bu, i64 2
  %i.cb = insertelement <4 x double> %i.ca, double %i.bw, i64 3
  %11 = fmul <4 x double> %i.cb, <double poison, double f0x3F91DF46A2529D39, double f0x3F91DF46A2529D39, double f0x3F91DF46A2529D39>
  %12 = insertelement <4 x double> %11, double %i.by, i64 0
  store <4 x double> %12, ptr %i.g, align 8, !tbaa !59
  %i.cc = fmul double %i.by, f0x3F91DF46A2529D39
  store double %i.cc, ptr %i.j, align 8, !tbaa !347
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load i8, ptr %6, align 8, !tbaa !40
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef zeroext %i.ce) #37, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cg = load i8, ptr %5, align 8, !tbaa !40
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i8 noundef zeroext %i.cg) #37, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ch = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ag
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !29
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.o
  %.pn26.pn = phi { ptr, i32 } [ %.pn2657, %bb.o ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn60, %bb.y ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp.loopexit.split-lp ]
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cn = load i8, ptr %6, align 8, !tbaa !40
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i8 noundef zeroext %i.cn) #37, !inline_history !0
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %bb.m
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %.loopexit.split-lp ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cp = load i8, ptr %5, align 8, !tbaa !40
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i8 noundef zeroext %i.cp) #37, !inline_history !0
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.l
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.ah ], [ %i.ap, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.ai
  %.pn31.pn = phi { ptr, i32 } [ %.pn3152, %bb.e ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn26.pn.pn.pn, %bb.ai ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cq = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.aj
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn31.pn

bb.ak:                                            ; preds = %bb.w, %bb.k, %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16DeformationModelL15getObjectMemberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !94
  %i.b = load i8, ptr %1, align 8, !tbaa !40
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIPKcvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread, label %bb.i

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread: ; preds = %bb.a, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  %i.i = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread

bb.b:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !94
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.j)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.116)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.u unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread: ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.06 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !29
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.g ] ; 4 uses
  %.17 = phi i1 [ true, %bb.f ], [ %.06, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.06, %bb.g ] ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !29
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.x = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread: ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #38
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !29
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ah) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.17, label %bb.h, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.17, label %bb.h, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread
  %.pn.pn.pn46.ph = phi { ptr, i32 } [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
end_hunk_0
