inline.NumInlined: 1055
inline.NumDeleted: 604
begin_hunk_0_@_ZN5arrow7compute8internal29FunctionOptionsToStructScalarERKNS0_15FunctionOptionsE:bb.a
  store ptr %i.j, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !42
  invoke void @_ZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(13) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZNK5arrow7compute15FunctionOptions9type_nameEv.exit
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %2, align 8, !tbaa !47, !noalias !42 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !42
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !47, !noalias !42 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.r, align 8, !tbaa !50, !noalias !42
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !42
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !42
  call void @_ZN5arrow6ResultISt10shared_ptrINS_12StructScalarEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  %i.v = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !54

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !55, !range !64, !noundef !65
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev.exit

bb.g:                                             ; preds = %_ZNK5arrow7compute15FunctionOptions9type_nameEv.exit, %.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ax

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %_ZN5arrow6StatusD2Ev.exit32 unwind label %bb.l

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %bb.h
  %i.ad = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN5arrow6StatusD2Ev.exit38, label %bb.i, !prof !54

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32
  call void @_ZN5arrow6ResultISt10shared_ptrINS_12StructScalarEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %i.af = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %.not.i33 = icmp eq ptr %i.af, null
  br i1 %.not.i33, label %_ZN5arrow6StatusD2Ev.exit34, label %bb.j, !prof !54

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !55, !range !64, !noundef !65
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN5arrow6StatusD2Ev.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZN5arrow6StatusD2Ev.exit34

_ZN5arrow6StatusD2Ev.exit34:                      ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev.exit

bb.l:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ax

_ZN5arrow6StatusD2Ev.exit38:                      ; preds = %_ZN5arrow6StatusD2Ev.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.ak, ptr %8, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ak, ptr noundef nonnull align 1 dereferenceable(10) @_ZN5arrow7compute8internalL14kTypeNameFieldE, i64 10, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 10, ptr %i.al, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i8 0, ptr %i.am, align 2, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !71
  %.not.i.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !66
  %i.as = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ak
  br i1 %i.at, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ar, ptr noundef nonnull align 8 dereferenceable(11) %i.ak, i64 11, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %bb.m
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !47
  %i.au = load i64, ptr %i.ak, align 8, !tbaa !50
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !50
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 10, ptr %i.av, align 8, !tbaa !67
  store ptr %i.ak, ptr %8, align 8, !tbaa !47
  store i64 0, ptr %i.al, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.aw, ptr %i.an, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit38
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.aj

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.o
  %.pre = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.ax = icmp eq ptr %.pre, %i.ak
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !50
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.az) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_ZNK5arrow7compute15FunctionOptions9type_nameEv.exit45 unwind label %bb.ak, !inline_history !39 ; 2 uses

_ZNK5arrow7compute15FunctionOptions9type_nameEv.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bf = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23
          to label %bb.p unwind label %bb.al      ; 4 uses

bb.p:                                             ; preds = %_ZNK5arrow7compute15FunctionOptions9type_nameEv.exit45
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  store ptr null, ptr %9, align 8, !tbaa !78, !alias.scope !81
  %i.bh = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23
          to label %.noexc46 unwind label %bb.am  ; 6 uses

.noexc46:                                         ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 1, ptr %i.bi, align 8, !tbaa !82, !noalias !81
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 1, ptr %i.bj, align 4, !tbaa !84, !noalias !81
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.bh, align 8, !tbaa !37, !noalias !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bk, ptr noundef nonnull %i.be, i64 noundef %i.bg)
          to label %bb.q unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !81

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc46
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 96) #22, !noalias !81
  br label %.body47.thread

bb.q:                                             ; preds = %.noexc46
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.bm, align 8, !tbaa !85, !alias.scope !81
  store ptr %i.bk, ptr %9, align 8, !tbaa !86, !alias.scope !81
  invoke void @_ZN5arrow12BinaryScalarC2ESt10shared_ptrINS_6BufferEE(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull %9)
          to label %bb.r unwind label %.body47

bb.r:                                             ; preds = %bb.q
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !89 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !92
  %.not.i49 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i49, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEC2INS0_12BinaryScalarEvEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull %i.bf)
          to label %.noexc50 unwind label %.body47.thread94

.noexc50:                                         ; preds = %bb.s
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !89
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !89
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12emplace_backIJPNS1_12BinaryScalarEEEERS3_DpOT_.exit

bb.t:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJPNS1_12BinaryScalarEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12emplace_backIJPNS1_12BinaryScalarEEEERS3_DpOT_.exit unwind label %.body47.thread94

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12emplace_backIJPNS1_12BinaryScalarEEEERS3_DpOT_.exit: ; preds = %bb.t, %.noexc50
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !85 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12emplace_backIJPNS1_12BinaryScalarEEEERS3_DpOT_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bu, align 8, !tbaa !82
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !84
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #21, !inline_history !93
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #21, !inline_history !93
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bx, %bb.x ], [ %i.ch, %bb.y ]
  %i.ci = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ci, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #21
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12emplace_backIJPNS1_12BinaryScalarEEEERS3_DpOT_.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ck = load <2 x ptr>, ptr %4, align 16, !tbaa !95
  store <2 x ptr> %i.ck, ptr %10, align 16, !tbaa !95
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.bp, align 16, !tbaa !92
  store ptr %i.cm, ptr %i.cl, align 16, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.cn = load <2 x ptr>, ptr %3, align 16, !tbaa !96
  store <2 x ptr> %i.cn, ptr %11, align 16, !tbaa !96
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.ap, align 16, !tbaa !71
  store ptr %i.cp, ptr %i.co, align 16, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow12StructScalar4MakeESt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EES1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %bb.aa unwind label %bb.ao

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cr = load ptr, ptr %11, align 16, !tbaa !97  ; 3 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cr, %bb.aa ] ; 3 uses
  %i.ct = load ptr, ptr %.05.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !50
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.cy, %i.cs
  br i1 %.not.i.i.i53, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !98

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 16, !tbaa !97
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.aa
  %i.cz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cr, %bb.aa ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.da = load ptr, ptr %i.co, align 16, !tbaa !71
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ab
  %i.de = load ptr, ptr %10, align 16, !tbaa !100 ; 3 uses
  %i.df = load ptr, ptr %i.cj, align 8, !tbaa !89 ; 2 uses
  %.not4.i.i.i54 = icmp eq ptr %i.de, %i.df
  br i1 %.not4.i.i.i54, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i
  %.05.i.i.i56 = phi ptr [ %i.dx, %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i ], [ %i.de, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i56, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i55
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.di, align 8, !tbaa !82
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !84
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !37
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #21, !inline_history !101
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !37
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #21, !inline_history !101
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.af ], [ %i.dv, %bb.ag ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultISt10shared_ptrINS_12StructScalarEEEC2ERKNS_6StatusE:bb.a
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !50
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !50
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.m = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !50
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !66
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #26
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !94

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !47
  store i64 %i.c, ptr %i.a, align 8, !tbaa !50
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !50
  store i8 %i.j, ptr %i.i, align 1, !tbaa !50
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !50
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12BinaryScalarC2ESt10shared_ptrINS_6BufferEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.21", align 16 ; 4 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !103 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !85
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !103
  store ptr null, ptr %1, align 8, !tbaa !78
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv()
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !85
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %i.m = load <2 x ptr>, ptr %2, align 16, !tbaa !103
  %.pre10 = load ptr, ptr %3, align 8, !tbaa !104
  %.pre11 = load ptr, ptr %i.e, align 8, !tbaa !85
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.n = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %.pre11, %bb.e ]
  %i.o = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.d ], [ %.pre10, %bb.e ]
  %i.p = phi <2 x ptr> [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %i.m, %bb.e ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %i.r, align 8, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.s, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.t, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store <2 x ptr> %i.p, ptr %i.u, align 8, !tbaa !103
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN5arrow12BinaryScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN5arrow12BinaryScalar16FillScratchSpaceEPhRKSt10shared_ptrINS_6BufferEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %.body

.body:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow16BaseBinaryScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #21
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  br label %bb.g

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN5arrow12BinaryScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  ret void

bb.f:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %.body ], [ %i.x, %bb.f ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !115
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !115
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN5arrow12StructScalar4MakeESt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EES1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !47 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !50
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !98

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !97
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !84
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !116
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !116
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !102

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal26DeserializeFunctionOptionsERKNS_6BufferE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !264
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  %i.cc = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %.not.i55 = icmp eq ptr %i.cc, null
  br i1 %.not.i55, label %_ZN5arrow6StatusD2Ev.exit56, label %bb.ac, !prof !54

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !55, !range !64, !noundef !65
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit56, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  br label %_ZN5arrow6StatusD2Ev.exit56

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.cd

bb.ae:                                            ; preds = %bb.z, %bb.y
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i48, %bb.ae
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.cg, %bb.ae ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ck

bb.af:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.75") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 0)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ck = load ptr, ptr %14, align 8, !tbaa !165  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !168
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !104 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !269
  %.not26 = icmp eq i32 %i.cp, 26
  br i1 %.not26, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !281
  invoke void @_ZN5arrow8internal12JoinToStringIJRA71_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(71) @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc62 unwind label %bb.ap

.noexc62:                                         ; preds = %bb.ai
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %15, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc62
  %i.ct = load ptr, ptr %2, align 8, !tbaa !47, !noalias !281 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %bb.aj
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !50, !noalias !281
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61

bb.ak:                                            ; preds = %.noexc62
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %2, align 8, !tbaa !47, !noalias !281 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i57: ; preds = %bb.ak
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !50, !noalias !281
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !281
  br label %.body63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !281
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #21
  %i.de = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %.not.i65 = icmp eq ptr %i.de, null
  br i1 %.not.i65, label %_ZN5arrow6StatusD2Ev.exit66, label %bb.al, !prof !54

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !55, !range !64, !noundef !65
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZN5arrow6StatusD2Ev.exit66, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #21
  br label %_ZN5arrow6StatusD2Ev.exit66

_ZN5arrow6StatusD2Ev.exit66:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61, %bb.al, %bb.am
  %i.di = load ptr, ptr %16, align 8, !tbaa !47   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZN5arrow6StatusD2Ev.exit66
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !50
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZN5arrow6StatusD2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bu

bb.an:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ao:                                            ; preds = %bb.ah
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.ap:                                            ; preds = %bb.ai
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body63

.body63:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58, %bb.ap
  %eh.lpad-body64 = phi { ptr, i32 } [ %i.dp, %bb.ap ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58 ] ; 2 uses
  %i.dq = load ptr, ptr %16, align 8, !tbaa !47   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %.body63
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !50
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %.body63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.ao
  %.pn31 = phi { ptr, i32 } [ %i.do, %bb.ao ], [ %eh.lpad-body64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %eh.lpad-body64, %.body63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cb

bb.aq:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.31") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef 0)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dv = load ptr, ptr %17, align 8, !tbaa !51
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.au, label %bb.as, !prof !54

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  br label %bb.bl

bb.at:                                            ; preds = %bb.aq
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.eb = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !103, !noalias !292
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !140, !noalias !292 ; 5 uses
  store ptr null, ptr %i.ea, align 8, !tbaa !85, !noalias !292
  store <2 x ptr> %i.eb, ptr %18, align 16, !tbaa !103, !alias.scope !292
  store ptr null, ptr %i.dy, align 8, !tbaa !140, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.ed = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6ScalarE, i32 0, i32 0, i32 2), ptr %19, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !85 ; 2 uses
  %i.ei = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !103
  store <2 x ptr> %i.ei, ptr %i.ee, align 8, !tbaa !103
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ScalarC2ERKS0_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !3
  br label %_ZN5arrow6ScalarC2ERKS0_.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.en = atomicrmw volatile add ptr %i.ej, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ScalarC2ERKS0_.exit.i

_ZN5arrow6ScalarC2ERKS0_.exit.i:                  ; preds = %bb.ax, %bb.aw, %bb.au
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !107, !range !64, !noundef !65
  store i8 %i.eq, ptr %i.eo, align 8, !tbaa !107
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow12StructScalarE, i32 0, i32 0, i32 2), ptr %19, align 8, !tbaa !37
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 48 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !89 ; 2 uses
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !100 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i.i.i4.i, label %.noexc5.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow6ScalarC2ERKS0_.exit.i
  %i.ez = icmp ugt i64 %i.ey, 9223372036854775792
  br i1 %i.ez, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6ScalarEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !94

.noexc.i.i.i:                                     ; preds = %bb.ay
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i unwind label %bb.bc

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6ScalarEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #23
          to label %.noexc5.i unwind label %bb.bc

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6ScalarEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN5arrow6ScalarC2ERKS0_.exit.i
  %i.fb = phi ptr [ null, %_ZN5arrow6ScalarC2ERKS0_.exit.i ], [ %i.fa, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6ScalarEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.fb, ptr %i.er, align 8, !tbaa !100
  %i.fc = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 2 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !89
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ey
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !92
  %i.ff = load ptr, ptr %i.es, align 8, !tbaa !95 ; 2 uses
  %i.fg = load ptr, ptr %i.et, align 8, !tbaa !95 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.fr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.fb, %.noexc5.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.fq, %_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.ff, %.noexc5.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !85 ; 2 uses
  %i.fk = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !103
  store <2 x ptr> %i.fk, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !103
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fp = atomicrmw volatile add ptr %i.fl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba, %.lr.ph.i.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fg
  br i1 %i.fs, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !293

bb.bc:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6ScalarEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %19) #21
  br label %.body73

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.noexc5.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fb, %.noexc5.i ], [ %i.fr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6ScalarEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.fc, align 8, !tbaa !89
  invoke void @_ZN5arrow7compute8internal31FunctionOptionsFromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind writable sret(%"class.arrow::Result.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %19)
          to label %bb.bd unwind label %bb.bk

bb.bd:                                            ; preds = %.loopexit
  call void @_ZN5arrow12StructScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.fu = load ptr, ptr %i.dz, align 8, !tbaa !85 ; 8 uses
  %.not.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.fv, align 8, !tbaa !82
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !84
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !144
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !144
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i = phi i32 [ %i.fy, %bb.bh ], [ %i.gi, %bb.bi ]
  %i.gj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gj, label %bb.bj, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bd, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.bl

bb.bk:                                            ; preds = %.loopexit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12StructScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %19) #21
  br label %.body73

.body73:                                          ; preds = %bb.bc, %bb.bk
  %.pn27 = phi { ptr, i32 } [ %i.gk, %bb.bk ], [ %i.ft, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.cb

bb.bl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.as
  %i.gl = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.bm, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !54

bb.bm:                                            ; preds = %bb.bl
  %i.gn = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i75, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 4 uses
  %i.gq = load atomic i64, ptr %i.gp acquire, align 8 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 4294967297
  %i.gs = trunc i64 %i.gq to i32                  ; 2 uses
  br i1 %i.gr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.gp, align 8, !tbaa !82
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store i32 0, ptr %i.gt, align 4, !tbaa !84
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !37
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #21, !inline_history !145
  %i.gx = load ptr, ptr %i.go, align 8, !tbaa !37
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #21, !inline_history !145
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i76 = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i.i.i.i76, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hb = add nsw i32 %i.gs, -1
  store i32 %i.hb, ptr %i.gp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.hc = atomicrmw volatile add ptr %i.gp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal26DeserializeFunctionOptionsERKNS_6BufferE:bb.a
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i: ; preds = %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i88, %bb.co, %bb.cm
  %.pr.i90 = load ptr, ptr %10, align 8, !tbaa !51 ; 2 uses
  %.not.i.i91 = icmp eq ptr %.pr.i90, null
  br i1 %.not.i.i91, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !146

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %bb.cl
  %i.ji = phi ptr [ %.pr.i90, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i ], [ %i.ip, %bb.cl ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !55, !range !64, !noundef !65
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.jm = load ptr, ptr %i.ah, align 8, !tbaa !85 ; 8 uses
  %.not.i.i92 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i92, label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 4 uses
  %i.jo = load atomic i64, ptr %i.jn acquire, align 8 ; 2 uses
  %i.jp = icmp eq i64 %i.jo, 4294967297
  %i.jq = trunc i64 %i.jo to i32                  ; 2 uses
  br i1 %i.jp, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.jn, align 8, !tbaa !82
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store i32 0, ptr %i.jr, align 4, !tbaa !84
  %i.js = load ptr, ptr %i.jm, align 8, !tbaa !37
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #21, !inline_history !295
  %i.jv = load ptr, ptr %i.jm, align 8, !tbaa !37
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #21, !inline_history !295
  br label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cw:                                            ; preds = %bb.cu
  %i.jy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i93 = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i93, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jz = add nsw i32 %i.jq, -1
  store i32 %i.jz, ptr %i.jn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94

bb.cy:                                            ; preds = %bb.cw
  %i.ka = atomicrmw volatile add ptr %i.jn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i95 = phi i32 [ %i.jq, %bb.cx ], [ %i.ka, %bb.cy ]
  %i.kb = icmp eq i32 %.0.i.i.i.i95, 1
  br i1 %i.kb, label %bb.cz, label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #21
  br label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, %bb.cv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.db

bb.da:                                            ; preds = %bb.ck, %bb.n
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35, %bb.ck ], [ %i.aq, %bb.n ]
  call void @_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.dk

bb.db:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f
  %i.kc = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.dc, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread.i, !prof !54

bb.dc:                                            ; preds = %bb.db
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i.i96, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 4 uses
  %i.kh = load atomic i64, ptr %i.kg acquire, align 8 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 4294967297
  %i.kj = trunc i64 %i.kh to i32                  ; 2 uses
  br i1 %i.ki, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.kg, align 8, !tbaa !82
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  store i32 0, ptr %i.kk, align 4, !tbaa !84
  %i.kl = load ptr, ptr %i.kf, align 8, !tbaa !37
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #21, !inline_history !296
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !37
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #21, !inline_history !296
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i97 = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i.i.i.i97, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ks = add nsw i32 %i.kj, -1
  store i32 %i.ks, ptr %i.kg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98

bb.dh:                                            ; preds = %bb.df
  %i.kt = atomicrmw volatile add ptr %i.kg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i.i.i.i99 = phi i32 [ %i.kj, %bb.dg ], [ %i.kt, %bb.dh ]
  %i.ku = icmp eq i32 %.0.i.i.i.i.i.i.i99, 1
  br i1 %i.ku, label %bb.di, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.i, !prof !94

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.i: ; preds = %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98, %bb.de, %bb.dc
  %.pr.i100 = load ptr, ptr %7, align 8, !tbaa !51 ; 2 uses
  %.not.i.i101 = icmp eq ptr %.pr.i100, null
  br i1 %.not.i.i101, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread.i, !prof !146

_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.i, %bb.db
  %i.kv = phi ptr [ %.pr.i100, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.i ], [ %i.kc, %bb.db ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !55, !range !64, !noundef !65
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev.exit, label %bb.dj

bb.dj:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.kz = load ptr, ptr %5, align 8, !tbaa !234   ; 3 uses
  %.not.i102 = icmp eq ptr %i.kz, null
  br i1 %.not.i102, label %_ZNSt10unique_ptrIN5arrow2io12BufferReaderESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow2io12BufferReaderEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow2io12BufferReaderEEclEPS2_.exit.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev.exit
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !37
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(81) %i.kz) #21, !inline_history !297
  br label %_ZNSt10unique_ptrIN5arrow2io12BufferReaderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow2io12BufferReaderESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow2io12BufferReaderEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.dk:                                            ; preds = %bb.da, %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit46
  %.pn35.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn, %bb.da ], [ %.pn, %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit46 ] ; 2 uses
  %i.ld = load ptr, ptr %5, align 8, !tbaa !234   ; 3 uses
  %.not.i103 = icmp eq ptr %i.ld, null
  br i1 %.not.i103, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt14default_deleteIN5arrow2io12BufferReaderEEclEPS2_.exit.i104

_ZNKSt14default_deleteIN5arrow2io12BufferReaderEEclEPS2_.exit.i104: ; preds = %bb.dk
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !37
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(81) %i.ld) #21, !inline_history !297
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt14default_deleteIN5arrow2io12BufferReaderEEclEPS2_.exit.i104, %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %.pn35.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn35.pn.pn.pn.pn, %_ZNKSt14default_deleteIN5arrow2io12BufferReaderEEclEPS2_.exit.i104 ], [ %.pn35.pn.pn.pn.pn, %bb.dk ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn35.pn.pn.pn.pn.pn
}

declare void @_ZN5arrow2io12BufferReader10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.134") align 8, ptr noundef) local_unnamed_addr #7

declare void @_ZN5arrow3ipc21RecordBatchFileReader4OpenEPNS_2io16RandomAccessFileERKNS0_14IpcReadOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result.142") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #7

declare void @_ZN5arrow3ipc14IpcReadOptions8DefaultsEv(ptr dead_on_unwind writable sret(%"struct.arrow::ipc::IpcReadOptions") align 8) local_unnamed_addr #7

declare noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.31") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12StructScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow12StructScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !84
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !101
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !101
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !102

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6ScalarEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !92
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6ScalarEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6ScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !84
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !298
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !298
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !94

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !299
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !300 ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3  ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.az = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.r, label %_ZN5arrow6ScalarD2Ev.exit

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #21, !inline_history !301
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !84
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21, !inline_history !302
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21, !inline_history !302
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit, !prof !94

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread, !prof !146

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !55, !range !64, !noundef !65
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !115
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !115
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
end_hunk_3
begin_hunk_4_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !97
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !71
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJPNS1_12BinaryScalarEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !100    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !87
  invoke void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEC2INS0_12BinaryScalarEvEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %i.r)
          to label %_ZNSt16allocator_traitsISaISt10shared_ptrIN5arrow6ScalarEEEE9constructIS3_JPNS1_12BinaryScalarEEEEvRS4_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaISt10shared_ptrIN5arrow6ScalarEEEE9constructIS3_JPNS1_12BinaryScalarEEEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt10shared_ptrIN5arrow6ScalarEEEE9constructIS3_JPNS1_12BinaryScalarEEEEvRS4_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt10shared_ptrIN5arrow6ScalarEEEE9constructIS3_JPNS1_12BinaryScalarEEEEvRS4_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt10shared_ptrIN5arrow6ScalarEEEE9constructIS3_JPNS1_12BinaryScalarEEEEvRS4_PT_DpOT0_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.t = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !351, !noalias !348
  store ptr null, ptr %i.s, align 8, !tbaa !85, !alias.scope !351, !noalias !348
  store <2 x ptr> %i.t, ptr %.012.i.i.i, align 8, !tbaa !103, !alias.scope !348, !noalias !351
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !140, !alias.scope !351, !noalias !348
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !353

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaISt10shared_ptrIN5arrow6ScalarEEEE9constructIS3_JPNS1_12BinaryScalarEEEEvRS4_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaISt10shared_ptrIN5arrow6ScalarEEEE9constructIS3_JPNS1_12BinaryScalarEEEEvRS4_PT_DpOT0_.exit ], [ %i.v, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.aa, %.lr.ph.i.i.i27 ], [ %i.w, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.z, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i29, align 8, !tbaa !103, !alias.scope !357, !noalias !354
  store ptr null, ptr %i.x, align 8, !tbaa !85, !alias.scope !357, !noalias !354
  store <2 x ptr> %i.y, ptr %.012.i.i.i28, align 8, !tbaa !103, !alias.scope !354, !noalias !357
  store ptr null, ptr %.0911.i.i.i29, align 8, !tbaa !140, !alias.scope !357, !noalias !354
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !353

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.w, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.aa, %.lr.ph.i.i.i27 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !100
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !92
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #21 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #22
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ag

bb.g:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #25
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEC2INS0_12BinaryScalarEvEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !140
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !85
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5arrow12BinaryScalarEEET_St17integral_constantIbLb0EE.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #21 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(80) %1) #21, !inline_history !359
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5arrow12BinaryScalarEEET_St17integral_constantIbLb0EE.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store i32 1, ptr %i.n, align 4, !tbaa !84
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt15_Sp_counted_ptrIPN5arrow12BinaryScalarELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.b, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !360
  store ptr %i.b, ptr %i.a, align 8, !tbaa !85
  %i.p = icmp eq ptr %1, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.p, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS0_12BinaryScalarES6_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5arrow12BinaryScalarEEET_St17integral_constantIbLb0EE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !300  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load atomic i32, ptr %i.t monotonic, align 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS0_12BinaryScalarES6_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.j:                                             ; preds = %bb.i, %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %1, ptr %i.q, align 8, !tbaa !362
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i3.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i3.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.x = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !300
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.y = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.s, %bb.k ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i7.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i7.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ad = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.n ], [ %i.ad, %bb.o ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.p, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !363
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.b, ptr %i.r, align 8, !tbaa !300
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS0_12BinaryScalarES6_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS0_12BinaryScalarES6_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5arrow12BinaryScalarEEET_St17integral_constantIbLb0EE.exit, %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow12BinaryScalarELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow12BinaryScalarELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow12BinaryScalarELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN5arrow12BinaryScalarELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv() local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16BaseBinaryScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN5arrow16BaseBinaryScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !93
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !93
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6ScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !84
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !298
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !298
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !94

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !299
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !300 ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3  ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.am, %bb.o ], [ %i.ao, %bb.p ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.q, label %_ZN5arrow6ScalarD2Ev.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21, !inline_history !301
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12BinaryScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow16BaseBinaryScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK5arrow16BaseBinaryScalar4dataEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !364, !range !64, !noundef !65
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = select i1 %i.e, ptr %i.g, ptr null, !prof !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow16BaseBinaryScalar4viewEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !372
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16BaseBinaryScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow16BaseBinaryScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6ScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !190
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !190
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !300  ; 4 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !373
  br label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit

_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6ScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !298
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !298
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !299
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !300  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !301
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

declare void @_ZN5arrow12BinaryScalar16FillScratchSpaceEPhRKSt10shared_ptrINS_6BufferEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !117
  switch i8 %i.b, label %bb.g [
    i8 -1, label %bb.h
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !prof !119

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !120    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #22
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !50
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128  ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i2.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.0.i.i3.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.n, %bb.e ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i), !inline_history !374
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i, label %.lr.ph.i, !llvm.loop !130

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !125
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i, %bb.e
  %i.r = phi ptr [ %.pre.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i ], [ %i.n, %bb.e ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #22, !inline_history !375
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit

bb.g:                                             ; preds = %bb.a
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit: ; preds = %bb.d, %bb.f, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  store i8 -1, ptr %i.a, align 8, !tbaa !117
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !117
  switch i8 %i.b, label %bb.g [
    i8 -1, label %_ZN5arrow8FieldRefD2Ev.exit
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !prof !119

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !120    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #22, !inline_history !124
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !50
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !47
  store i64 %.0, ptr %i.h, align 8, !tbaa !50
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(17) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !65, !align !388
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #21
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !65, !align !388 ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !40     ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !389
  %i.m = or i32 %i.l, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.j, i32 noundef %i.m)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.f

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #21
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.f, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %bb.b, %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !65, !align !388
  %i.q = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %3) #21
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(17) %3, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcPS2_RA17_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.h
  %.pn9 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.s, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn9
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6BufferEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #21, !inline_history !398
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !399  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.55", align 16 ; 5 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow6BufferE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !401
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !364
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !371
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !372
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !402
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !403
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.55") align 8 %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !85   ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !103
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !84
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #21, !inline_history !404
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #21, !inline_history !404
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !94

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #21
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !405
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !406 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !409, !range !64, !noundef !65
  store i8 %i.af, ptr %i.b, align 1, !tbaa !364
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q, !inline_history !414

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !403
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !85  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !84
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #21, !inline_history !415
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #21, !inline_history !415
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #21
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.ba, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.55") align 8) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !115
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !115
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow6BufferE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !415
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !415
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !84
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !93
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !93
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD0Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow6Buffer17device_sync_eventEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.89") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(68) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !65, !align !388
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(68) %1) #21
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(68) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !65, !align !388
  %i.f = load i64, ptr %2, align 8, !tbaa !258
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIlEEDaSF_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIlEEDaSF_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIlEEDaSF_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIlEEDaSF_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA71_KciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(71) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !65, !align !388
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(71) %1) #21
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(71) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA71_KciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA71_KciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !65, !align !388
  %i.f = load i32, ptr %2, align 4, !tbaa !3
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA71_KciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIiEEDaSF_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA71_KciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIiEEDaSF_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA71_KciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA71_KciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIiEEDaSF_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.c:                                             ; preds = %bb.a
end_hunk_5
