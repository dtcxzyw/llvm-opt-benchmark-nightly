Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/vm?download=true
inline.NumInlined: 10178
inline.NumDeleted: 3163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN7jsonnet8internal12_GLOBAL__N_111InterpreterC2EPNS0_9AllocatorERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5VmExtESt4lessISB_ESaISt4pairIKSB_SC_EEEjddRKS5_ISB_NS0_16VmNativeCallbackESE_SaISF_ISG_SM_EEEPFiPvPKcSU_PPcSW_PmESS_:_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !204
  %i.ahj = load i32, ptr %i.aej, align 8, !tbaa !205
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.aea, i64 40
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack7newCallERKNS0_13LocationRangeEPNS1_10HeapEntityEPNS1_10HeapObjectEjRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessISD_ESaISt4pairIKSD_SF_EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.ahg, ptr noundef nonnull %i.aea, ptr noundef %i.ahi, i32 noundef %i.ahj, ptr noundef nonnull align 8 dereferenceable(48) %i.ahk)
          to label %bb.ec unwind label %.loopexit.split-lp

bb.ec:                                            ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8makeHeapINS1_9HeapThunkEJDnDniPKNS0_3ASTEEEEPT_DpOT0_.exit
  %i.ahl = load ptr, ptr %i.aek, align 8, !tbaa !185
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8evaluateEPKNS0_3ASTEj(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %i.ahl, i32 noundef 0)
          to label %bb.ed unwind label %.loopexit.split-lp

bb.ed:                                            ; preds = %bb.ec
  %i.ahm = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !67 ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, null
  br i1 %i.ahn, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aho = call ptr @__dynamic_cast(ptr nonnull %i.ahm, ptr nonnull @_ZTIN7jsonnet8internal12_GLOBAL__N_110HeapEntityE, ptr nonnull @_ZTIN7jsonnet8internal12_GLOBAL__N_110HeapObjectE, i64 0) #39
  br label %bb.eh

bb.ef:                                            ; preds = %._crit_edge.i.i598
  %i.ahp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahq = load ptr, ptr %63, align 8, !tbaa !66  ; 2 uses
  %i.ahr = icmp eq ptr %i.ahq, %i.sr
  br i1 %i.ahr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770: ; preds = %bb.ef
  %i.ahs = load i64, ptr %i.sr, align 8, !tbaa !67
  %i.aht = add i64 %i.ahs, 1
  call void @_ZdlPvm(ptr noundef %i.ahq, i64 noundef %i.aht) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

bb.eg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

.loopexit846:                                     ; preds = %.lr.ph13.i
  %lpad.loopexit848 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

.loopexit.split-lp847.loopexit:                   ; preds = %bb.dx
  %lpad.loopexit851 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

.loopexit.split-lp847.loopexit.split-lp:          ; preds = %bb.dw, %.noexc765, %bb.dv, %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %bb.ds, %bb.dp
  %lpad.loopexit.split-lp852 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

.loopexit.split-lp:                               ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8makeHeapINS1_9HeapThunkEJDnDniPKNS0_3ASTEEEEPT_DpOT0_.exit, %bb.ec, %.noexc.i.i789
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

bb.eh:                                            ; preds = %bb.ed, %bb.ee
  %i.ahv = phi ptr [ %i.aho, %bb.ee ], [ null, %bb.ed ]
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ahv, ptr %i.ahw, align 8, !tbaa !585
  %i.ahx = load ptr, ptr %i.adz, align 8, !tbaa !584 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 152
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !207 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahx, i64 160
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !207 ; 2 uses
  %.not4786.i = icmp eq ptr %i.ahz, %i.aib
  br i1 %.not4786.i, label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter22prepareSourceValThunksEv.exit, label %.lr.ph.i773

.lr.ph.i773:                                      ; preds = %bb.eh
  %i.aic = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aii = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.fj, %.lr.ph.i773
  %.sroa.044.087.i = phi ptr [ %i.ahz, %.lr.ph.i773 ], [ %i.aob, %bb.fj ] ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.044.087.i, i64 8
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !210 ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 72
  %i.aim = load i32, ptr %i.ail, align 8, !tbaa !211
  %.not.i774 = icmp eq i32 %i.aim, 22
  br i1 %.not.i774, label %bb.ej, label %bb.fj

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aik) ]
  %i.ain = call ptr @__dynamic_cast(ptr nonnull %i.aik, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal13LiteralStringE, i64 0) #39 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 128
  store ptr %i.aic, ptr %9, align 8, !tbaa !74
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !72 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 136
  %i.air = load i64, ptr %i.aiq, align 8, !tbaa !73 ; 9 uses
  %.idx.i.i = shl nuw nsw i64 %i.air, 2           ; 6 uses
  %i.ais = icmp ugt i64 %i.air, 3                 ; 2 uses
  br i1 %i.ais, label %bb.ek, label %._crit_edge.i.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.ait = icmp ugt i64 %i.air, 1152921504606846975
  br i1 %i.ait, label %.noexc.i.i789, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc.i.i789:                                    ; preds = %bb.ek
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #42
          to label %.noexc790 unwind label %.loopexit.split-lp

.noexc790:                                        ; preds = %.noexc.i.i789
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.ek
  %i.aiu = add nuw nsw i64 %.idx.i.i, 4
  %i.aiv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiu) #41
          to label %.noexc791 unwind label %.loopexit ; 2 uses

.noexc791:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  store ptr %i.aiv, ptr %9, align 8, !tbaa !72
  store i64 %i.air, ptr %i.aic, align 8, !tbaa !67
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc791, %bb.ej
  %i.aiw = phi ptr [ %i.aiv, %.noexc791 ], [ %i.aic, %bb.ej ] ; 5 uses
  switch i64 %i.air, label %bb.em [
    i64 1, label %bb.el
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit.i
  ]

bb.el:                                            ; preds = %._crit_edge.i.i.i
  %i.aix = load i32, ptr %i.aip, align 4, !tbaa !76
  store i32 %i.aix, ptr %i.aiw, align 4, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit.i

bb.em:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aiw, ptr align 4 %i.aip, i64 %.idx.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit.i: ; preds = %bb.em, %bb.el, %._crit_edge.i.i.i
  store i64 %i.air, ptr %i.aid, align 8, !tbaa !73
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %.idx.i.i
  store i32 0, ptr %i.aiy, align 4, !tbaa !76
  %i.aiz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41
          to label %bb.en unwind label %.loopexit51.i ; 8 uses

bb.en:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit.i
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16 ; 3 uses
  store ptr %i.aja, ptr %i.aiz, align 8, !tbaa !74
  br i1 %i.ais, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i.i, label %._crit_edge.i.i.i.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.en
  %i.ajb = add nuw nsw i64 %.idx.i.i, 4
  %i.ajc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajb) #41
          to label %.noexc25.i unwind label %bb.fk ; 2 uses

.noexc25.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ajc, ptr %i.aiz, align 8, !tbaa !72
  store i64 %i.air, ptr %i.aja, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc25.i, %bb.en
  %.pre8.i.i.i.i = phi ptr [ %i.ajc, %.noexc25.i ], [ %i.aja, %bb.en ] ; 3 uses
  switch i64 %i.air, label %bb.ep [
    i64 1, label %bb.eo
    i64 0, label %bb.eq
  ]

bb.eo:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ajd = load i32, ptr %i.aiw, align 4, !tbaa !76
  store i32 %i.ajd, ptr %.pre8.i.i.i.i, align 4, !tbaa !76
  br label %bb.eq

bb.ep:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i.i, ptr nonnull align 4 %i.aiw, i64 %.idx.i.i, i1 false)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %._crit_edge.i.i.i.i
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  store i64 %i.air, ptr %i.aje, align 8, !tbaa !73
  %i.ajf = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i.i, i64 %.idx.i.i
  store i32 0, ptr %i.ajf, align 4, !tbaa !76
  %i.ajg = load ptr, ptr %i.aie, align 8, !tbaa !212 ; 6 uses
  %i.ajh = load ptr, ptr %i.aif, align 8, !tbaa !213
  %.not.i.i776 = icmp eq ptr %i.ajg, %i.ajh
  br i1 %.not.i.i776, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store ptr %i.aiz, ptr %i.ajg, align 8, !tbaa !131
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  store ptr %i.aji, ptr %i.aie, align 8, !tbaa !212
  br label %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit.i

bb.es:                                            ; preds = %bb.eq
  %i.ajj = load ptr, ptr %i.fd, align 8, !tbaa !214 ; 10 uses
  %i.ajk = ptrtoint ptr %i.ajg to i64             ; 2 uses
  %i.ajl = ptrtoint ptr %i.ajj to i64             ; 2 uses
  %i.ajm = sub i64 %i.ajk, %i.ajl                 ; 5 uses
  %i.ajn = icmp eq i64 %i.ajm, 9223372036854775800
  br i1 %i.ajn, label %bb.et, label %_ZNKSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.et:                                            ; preds = %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
          to label %.noexc26.i unwind label %.loopexit.split-lp52.i

.noexc26.i:                                       ; preds = %bb.et
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.es
  %i.ajo = ashr exact i64 %i.ajm, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ajo, i64 1)
  %i.ajp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ajo ; 2 uses
  %i.ajq = icmp ult i64 %i.ajp, %i.ajo
  %i.ajr = call i64 @llvm.umin.i64(i64 %i.ajp, i64 1152921504606846975)
  %i.ajs = select i1 %i.ajq, i64 1152921504606846975, i64 %i.ajr ; 3 uses
  %.not.i.i.i.i787 = icmp ne i64 %i.ajs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i787)
  %i.ajt = shl nuw nsw i64 %i.ajs, 3
  %i.aju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajt) #41
          to label %.noexc27.i unwind label %.loopexit51.i ; 10 uses

.noexc27.i:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 %i.ajm
  store ptr %i.aiz, ptr %i.ajv, align 8, !tbaa !131
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ajj, %i.ajg
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc27.i
  %i.ajw = add i64 %i.ajk, -8
  %i.ajx = sub i64 %i.ajw, %i.ajl                 ; 2 uses
  %i.ajy = lshr i64 %i.ajx, 3
  %i.ajz = add nuw nsw i64 %i.ajy, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ajx, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader1176, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.aka = and i64 %i.ajm, -8                     ; 2 uses
  %scevgep1169 = getelementptr i8, ptr %i.aju, i64 %i.aka
  %scevgep1170 = getelementptr i8, ptr %i.ajj, i64 %i.aka
  %bound0 = icmp ult ptr %i.aju, %scevgep1170
  %bound1 = icmp ult ptr %i.ajj, %scevgep1169
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader1176, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ajz, 4611686018427387900    ; 3 uses
  %i.akb = shl i64 %n.vec, 3                      ; 2 uses
  %i.akc = getelementptr i8, ptr %i.aju, i64 %i.akb ; 2 uses
  %i.akd = getelementptr i8, ptr %i.ajj, i64 %i.akb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ake = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aju, i64 %i.ake ; 2 uses
  %next.gep1171 = getelementptr i8, ptr %i.ajj, i64 %i.ake ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.akf = getelementptr i8, ptr %next.gep1171, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1171, align 8, !tbaa !131, !alias.scope !588, !noalias !586
  %wide.load1172 = load <2 x i64>, ptr %i.akf, align 8, !tbaa !131, !alias.scope !588, !noalias !586
  %i.akg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !131, !alias.scope !589, !noalias !588
  store <2 x i64> %wide.load1172, ptr %i.akg, align 8, !tbaa !131, !alias.scope !589, !noalias !588
  %i.akh = getelementptr i8, ptr %next.gep1171, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1171, align 8, !tbaa !131, !alias.scope !588, !noalias !586
  store <2 x ptr> splat (ptr null), ptr %i.akh, align 8, !tbaa !131, !alias.scope !588, !noalias !586
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aki = icmp eq i64 %index.next, %n.vec
  br i1 %i.aki, label %middle.block, label %vector.body, !llvm.loop !572

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ajz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1176

.lr.ph.i.i.i.i.i.i.preheader1176:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.aju, %vector.memcheck ], [ %i.aju, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.akc, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ajj, %vector.memcheck ], [ %i.ajj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.akd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1176, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.akl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1176 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.akk, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1176 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.akj = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !131, !alias.scope !587, !noalias !586
  store i64 %i.akj, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !131, !alias.scope !586, !noalias !587
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !131, !alias.scope !587, !noalias !586
  %i.akk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i788 = icmp eq ptr %i.akk, %i.ajg
  br i1 %.not.i.i.i.i.i.i788, label %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !573

_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc27.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aju, %.noexc27.i ], [ %i.akc, %middle.block ], [ %i.akl, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ajj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajj, i64 noundef %i.ajm) #40
  br label %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.eu, %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.aju, ptr %i.fd, align 8, !tbaa !214
  store ptr %i.akm, ptr %i.aie, align 8, !tbaa !212
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.aju, i64 %i.ajs
  store ptr %i.akn, ptr %i.aif, align 8, !tbaa !213
  %.pre = load ptr, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !131
  br label %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.er
  %i.ako = phi ptr [ %.pre, %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %i.aiz, %bb.er ]
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.044.087.i, i64 16
  %.val22.i777 = load ptr, ptr %i.ahw, align 8
  %.val24.i = load ptr, ptr %i.akp, align 8
  %i.akq = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #41
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 17 uses

.noexc29.i:                                       ; preds = %_ZNSt6vectorISt10unique_ptrIN7jsonnet8internal10IdentifierESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit.i
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 9
  store i8 0, ptr %i.akr, align 1, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal12_GLOBAL__N_19HeapThunkE, i64 16), ptr %i.akq, align 8, !tbaa !89
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akq, i64 10
  store i8 0, ptr %i.aks, align 2, !tbaa !183
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akq, i64 32
  store ptr %i.ako, ptr %i.akt, align 8, !tbaa !184
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akq, i64 48 ; 3 uses
  store i32 0, ptr %i.aku, align 8, !tbaa !165
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akq, i64 56
  store ptr null, ptr %i.akv, align 8, !tbaa !60
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akq, i64 64
  store ptr %i.aku, ptr %i.akw, align 8, !tbaa !166
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akq, i64 72
  store ptr %i.aku, ptr %i.akx, align 8, !tbaa !167
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akq, i64 80
  store i64 0, ptr %i.aky, align 8, !tbaa !168
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akq, i64 88
  store ptr %.val22.i777, ptr %i.akz, align 8, !tbaa !204
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akq, i64 96
  store i32 0, ptr %i.ala, align 8, !tbaa !205
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akq, i64 104
  store ptr %.val24.i, ptr %i.alb, align 8, !tbaa !185
  %i.alc = load ptr, ptr %i.ael, align 8, !tbaa !186 ; 5 uses
  %i.ald = load ptr, ptr %i.aen, align 8, !tbaa !187
  %.not.i.i.i.i.i = icmp eq ptr %i.alc, %i.ald
  br i1 %.not.i.i.i.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.noexc29.i
  store ptr %i.akq, ptr %i.alc, align 8, !tbaa !189
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alc, i64 8 ; 2 uses
  store ptr %i.ale, ptr %i.ael, align 8, !tbaa !186
  %.val.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !190
  br label %_ZN7jsonnet8internal12_GLOBAL__N_14Heap10makeEntityINS1_9HeapThunkEJPNS0_10IdentifierERPNS1_10HeapObjectEiRKPNS0_3ASTEEEEPT_DpOT0_.exit.i.i

bb.ew:                                            ; preds = %.noexc29.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !190 ; 5 uses
  %i.alf = ptrtoint ptr %i.alc to i64
  %i.alg = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.alh = sub i64 %i.alf, %i.alg                 ; 6 uses
  %i.ali = icmp eq i64 %i.alh, 9223372036854775800
  br i1 %i.ali, label %bb.ex, label %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc30.i:                                       ; preds = %bb.ex
  unreachable

_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.ew
  %i.alj = ashr exact i64 %i.alh, 3               ; 3 uses
  %i.alk = icmp eq ptr %i.alc, %.val.i.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.alk, i64 1, i64 %i.alj
  %i.all = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.alj ; 2 uses
  %i.alm = icmp ult i64 %i.all, %i.alj
  %i.aln = call i64 @llvm.umin.i64(i64 %i.all, i64 1152921504606846975)
  %i.alo = select i1 %i.alm, i64 1152921504606846975, i64 %i.aln ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.alo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.alp = shl nuw nsw i64 %i.alo, 3
  %i.alq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alp) #41
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 5 uses

.noexc31.i:                                       ; preds = %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.alr = getelementptr inbounds i8, ptr %i.alq, i64 %i.alh ; 2 uses
  store ptr %i.akq, ptr %i.alr, align 8, !tbaa !189
  %i.als = icmp sgt i64 %i.alh, 0
  br i1 %i.als, label %bb.ey, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i

bb.ey:                                            ; preds = %.noexc31.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.alq, ptr align 8 %.val.i.i.i.i.i.i, i64 %i.alh, i1 false)
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i: ; preds = %bb.ey, %.noexc31.i
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alr, i64 8 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.alh) #40
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ez, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i
  store ptr %i.alq, ptr %i.g, align 8, !tbaa !190
  store ptr %i.alt, ptr %i.ael, align 8, !tbaa !186
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %i.alo
  store ptr %i.alu, ptr %i.aen, align 8, !tbaa !187
  br label %_ZN7jsonnet8internal12_GLOBAL__N_14Heap10makeEntityINS1_9HeapThunkEJPNS0_10IdentifierERPNS1_10HeapObjectEiRKPNS0_3ASTEEEEPT_DpOT0_.exit.i.i

_ZN7jsonnet8internal12_GLOBAL__N_14Heap10makeEntityINS1_9HeapThunkEJPNS0_10IdentifierERPNS1_10HeapObjectEiRKPNS0_3ASTEEEEPT_DpOT0_.exit.i.i: ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, %bb.ev
  %.val9.i.i.i = phi ptr [ %i.ale, %bb.ev ], [ %i.alt, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ]
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %bb.ev ], [ %i.alq, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ]
  %i.alv = load i8, ptr %i.f, align 8, !tbaa !87  ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  store i8 %i.alv, ptr %i.alw, align 8, !tbaa !191
  %i.alx = ptrtoint ptr %.val9.i.i.i to i64
  %i.aly = ptrtoint ptr %.val.i.i.i to i64
  %i.alz = sub i64 %i.alx, %i.aly
  %i.ama = ashr exact i64 %i.alz, 3               ; 3 uses
  store i64 %i.ama, ptr %i.afm, align 8, !tbaa !192
  %i.amb = load i32, ptr %0, align 8, !tbaa !85
  %i.amc = zext i32 %i.amb to i64
  %i.amd = icmp ugt i64 %i.ama, %i.amc
  br i1 %i.amd, label %_ZN7jsonnet8internal12_GLOBAL__N_14Heap9checkHeapEv.exit.i.i, label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8makeHeapINS1_9HeapThunkEJPNS0_10IdentifierERPNS1_10HeapObjectEiRKPNS0_3ASTEEEEPT_DpOT0_.exit.i

_ZN7jsonnet8internal12_GLOBAL__N_14Heap9checkHeapEv.exit.i.i: ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_14Heap10makeEntityINS1_9HeapThunkEJPNS0_10IdentifierERPNS1_10HeapObjectEiRKPNS0_3ASTEEEEPT_DpOT0_.exit.i.i
  %i.ame = uitofp i64 %i.ama to double
  %i.amf = load double, ptr %i.e, align 8, !tbaa !86
  %i.amg = load i64, ptr %i.aig, align 8, !tbaa !193
  %i.amh = uitofp i64 %i.amg to double
  %i.ami = fmul double %i.amf, %i.amh
  %i.amj = fcmp olt double %i.ami, %i.ame
  br i1 %i.amj, label %bb.fa, label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8makeHeapINS1_9HeapThunkEJPNS0_10IdentifierERPNS1_10HeapObjectEiRKPNS0_3ASTEEEEPT_DpOT0_.exit.i

bb.fa:                                            ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_14Heap9checkHeapEv.exit.i.i
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS1_10HeapEntityE(i8 %i.alv, ptr noundef nonnull %i.akq)
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc32.i:                                       ; preds = %bb.fa
  %.val19.i.i = load ptr, ptr %i.k, align 8, !tbaa !194
end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter13builtinSubstrERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE:._crit_edge.i.i
  br i1 %i.bc, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.bd, ptr %9, align 8, !tbaa !74
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !73
  store i32 0, ptr %i.bd, align 8, !tbaa !76
  %i.bf = invoke fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter10makeStringERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr nonnull %i.bd, i64 0)
          to label %._crit_edge unwind label %bb.r

._crit_edge:                                      ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 19, ptr %i.bg, align 8, !tbaa !67
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bf, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !67
  %i.bh = load ptr, ptr %9, align 8, !tbaa !72    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.bd
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !67
  %i.bk = shl i64 %i.bj, 2
  %i.bl = add i64 %i.bk, 4
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %9, align 8, !tbaa !72    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bd
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i90: ; preds = %bb.r
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !67
  %i.bq = shl i64 %i.bp, 2
  %i.br = add i64 %i.bq, 4
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit92: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.bt = add nuw nsw i64 %i.s, %i.p
  %i.bu = icmp ugt i64 %i.bt, %i.bb
  %i.bv = sub nuw i64 %i.bb, %i.p                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !74, !alias.scope !773
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !72, !noalias !773
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.p ; 2 uses
  %i.bz = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.bv)
  %spec.select.i.i.i = select i1 %i.bu, i64 %i.bv, i64 %i.bz ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %spec.select.i.i.i, 2 ; 3 uses
  %i.ca = icmp ugt i64 %spec.select.i.i.i, 3
  br i1 %i.ca, label %bb.s, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i
  %i.cb = icmp ugt i64 %spec.select.i.i.i, 1152921504606846975
  br i1 %i.cb, label %.noexc10.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc10.i.i:                                     ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #42
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.s
  %i.cc = add nuw nsw i64 %.idx.i.i, 4
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #41 ; 2 uses
  store ptr %i.cd, ptr %10, align 8, !tbaa !72, !alias.scope !773
  store i64 %spec.select.i.i.i, ptr %i.bw, align 8, !tbaa !67, !alias.scope !773
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i
  %.pre8.i.i.i = phi ptr [ %i.cd, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.ce = load i32, ptr %i.by, align 4, !tbaa !76
  store i32 %i.ce, ptr %.pre8.i.i.i, align 4, !tbaa !76
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit

bb.u:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr align 4 %i.by, i64 %.idx.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.t, %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %spec.select.i.i.i, ptr %i.cf, align 8, !tbaa !73, !alias.scope !773
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i, i64 %.idx.i.i
  store i32 0, ptr %i.cg, align 4, !tbaa !76
  %.val = load ptr, ptr %10, align 8
  %.val59 = load i64, ptr %i.cf, align 8
  %i.ch = invoke fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter10makeStringERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr %.val, i64 %.val59)
          to label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit._crit_edge unwind label %bb.v

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit._crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 19, ptr %i.ci, align 8, !tbaa !67
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ch, ptr %.sroa.51.0..sroa_idx, align 8, !tbaa !67
  %i.cj = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bw
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit._crit_edge
  %i.cl = load i64, ptr %i.bw, align 8, !tbaa !67
  %i.cm = shl i64 %i.cl, 2
  %i.cn = add i64 %i.cm, 4
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit95: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit._crit_edge, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.w

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bw
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i96: ; preds = %bb.v
  %i.cr = load i64, ptr %i.bw, align 8, !tbaa !67
  %i.cs = shl i64 %i.cr, 2
  %i.ct = add i64 %i.cs, 4
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit98: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  ret ptr null

bb.x:                                             ; preds = %bb.h, %bb.o, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %.pn128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn54.pn, %bb.h ], [ %.pn51.pn, %bb.o ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit92 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit98 ]
  resume { ptr, i32 } %.pn54.pn.pn.pn

bb.y:                                             ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit86, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12builtinRangeERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.170", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.165, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !67
  %i.d = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #41 ; 6 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !320
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !321
  store i32 2, ptr %i.d, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 2, ptr %.sroa.5.0..sroa_idx, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !322
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter19validateBuiltinArgsERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_5ValueESaISF_EESE_INSF_4TypeESaISK_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofreeobj noundef align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit unwind label %bb.b

_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit: ; preds = %._crit_edge.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #40
  %i.h = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !67
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.val36 = load ptr, ptr %2, align 8, !tbaa !282 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val36, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !67
  %i.n = fptosi double %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val36, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !67
  %i.q = fptosi double %i.p to i64
  %5 = sub i64 %i.q, %i.n                         ; 2 uses
  %i.r = call fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeArrayERKSt6vectorIPNS1_9HeapThunkESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr null, ptr null) ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 16, ptr %i.s, align 8, !tbaa !67
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.r, ptr %.sroa.53.0..sroa_idx, align 8, !tbaa !67
  %6 = icmp sgt i64 %5, -1
  br i1 %6, label %bb.a, label %.loopexit

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #40
  %.pre = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.y = icmp eq ptr %.pre, %i.a
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.b
  %i.z = load i64, ptr %i.a, align 8, !tbaa !67
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.aa) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %i.x

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %.val33 = load ptr, ptr %i.u, align 8
  %i.ab = call fastcc noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8makeHeapINS1_9HeapThunkEJRPKNS0_10IdentifierEDniDnEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr %.val33, i32 0) ; 11 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !236 ; 4 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !237
  %.not.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !217
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %.val16.i.i = load ptr, ptr %i.t, align 8, !tbaa !238 ; 4 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %.val16.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
  unreachable

_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i50)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #41 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %i.ab, ptr %i.aq, align 8, !tbaa !217
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.g, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %.val16.i.i, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.not.i21.i.i = icmp eq ptr %.val16.i.i, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i, i64 noundef %i.ah) #40
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i
  store ptr %i.ap, ptr %i.t, align 8, !tbaa !238
  store ptr %i.as, ptr %i.v, align 8, !tbaa !236
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.w, align 8, !tbaa !237
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.au = add nsw i64 %indvars.iv, %i.n
  %i.av = sitofp i64 %i.au to double
  %i.aw = bitcast double %i.av to i64
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 2, ptr %i.ay, align 8, !tbaa !67
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ax, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  store i8 1, ptr %i.az, align 2, !tbaa !183
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store ptr null, ptr %i.ba, align 8, !tbaa !204
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val.i.i.i)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !166
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !167
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store i64 0, ptr %i.bf, align 8, !tbaa !168
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv, %5
  br i1 %exitcond, label %.loopexit, label %bb.c, !llvm.loop !774

.loopexit:                                        ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter17builtinStrReplaceERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.170", align 8   ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string.54", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.166, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !67
  %i.d = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #41
          to label %bb.a unwind label %.thread118 ; 7 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  store ptr %i.d, ptr %4, align 8, !tbaa !320
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !321
  store i32 19, ptr %i.d, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 19, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 19, ptr %.sroa.6.0..sroa_idx, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !322
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter19validateBuiltinArgsERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_5ValueESaISF_EESE_INSF_4TypeESaISK_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofreeobj noundef align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit: ; preds = %bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 12) #40
  %i.h = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !67
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.val46 = load ptr, ptr %2, align 8, !tbaa !282 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val46, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val46, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !73
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = call ptr @__cxa_allocate_exception(i64 56) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.167, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.thread

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.t, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %5)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.u unwind label %bb.e

.thread118:                                       ; preds = %._crit_edge.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 12) #40
  %.pre = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.x = icmp eq ptr %.pre, %i.a
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.d
  %i.y = load i64, ptr %i.a, align 8, !tbaa !67
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.z) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.d, %.thread118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  %.pn120 = phi { ptr, i32 } [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.v, %.thread118 ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.thread: ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.024 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %bb.c ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.e
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !67
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br i1 %.024, label %bb.f, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br i1 %.024, label %bb.f, label %bb.t

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.pn3972 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ]
  call void @__cxa_free_exception(ptr %i.t) #39
  br label %bb.t

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.val46, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !74
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 8 uses
  %.idx.i = shl nuw nsw i64 %i.an, 2              ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 3
  br i1 %i.ao, label %bb.h, label %._crit_edge.i.i61

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp ugt i64 %i.an, 1152921504606846975
  br i1 %i.ap, label %.noexc.i62, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i

.noexc.i62:                                       ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #42
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i: ; preds = %bb.h
  %i.aq = add nuw nsw i64 %.idx.i, 4
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #41 ; 2 uses
  store ptr %i.ar, ptr %7, align 8, !tbaa !72
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !67
  br label %._crit_edge.i.i61

._crit_edge.i.i61:                                ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i, %bb.g
  %.pre8.i.i = phi ptr [ %i.ar, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i ], [ %i.ak, %bb.g ] ; 4 uses
  switch i64 %i.an, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i61
  %i.as = load i32, ptr %i.al, align 4, !tbaa !76
  store i32 %i.as, ptr %.pre8.i.i, align 4, !tbaa !76
  br label %.lr.ph

bb.j:                                             ; preds = %._crit_edge.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i, ptr align 4 %i.al, i64 %.idx.i, i1 false)
  br label %.lr.ph

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i61
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.an, ptr %i.at, align 8, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %.pre8.i.i, i64 %.idx.i
  store i32 0, ptr %i.au, align 4, !tbaa !76
  br label %.thread

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store i64 %i.an, ptr %i.av, align 8, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre8.i.i, i64 %.idx.i
  store i32 0, ptr %i.aw, align 4, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  br label %bb.k

end_hunk_1
