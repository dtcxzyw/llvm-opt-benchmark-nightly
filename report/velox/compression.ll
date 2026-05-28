inline.NumInlined: 395
inline.NumDeleted: 164
begin_hunk_0_@_ZN5arrow4util5Codec6CreateENS_11Compression4typeERKNS0_12CodecOptionsE:bb.a
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE(i32 noundef %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !15
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.g, ptr %i.a, align 8, !tbaa !18
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !20
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.j, ptr %i.d, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.d ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !22
  store i8 %i.l, ptr %i.k, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.m = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !23
  %i.o = load ptr, ptr %6, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.q = load i64, ptr %i.n, align 8, !tbaa !23
  %i.r = icmp eq i64 %i.q, 7
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1852534389
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1853321070
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN5arrow6Status8FromArgsIJRA19_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(19) @.str.13)
          to label %_ZN5arrow6Status7InvalidIJRA19_KcEEES0_DpOT_.exit unwind label %bb.h

_ZN5arrow6Status7InvalidIJRA19_KcEEES0_DpOT_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  %i.ac = load ptr, ptr %7, align 8, !tbaa !7
  %.not.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i32, label %_ZN5arrow6StatusD2Ev.exit33, label %bb.g, !prof !26

bb.g:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA19_KcEEES0_DpOT_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN5arrow6StatusD2Ev.exit33

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6Status7InvalidIJRA19_KcEEES0_DpOT_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.n

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.o

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE(i32 noundef %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !60
  invoke void @_ZN5arrow4util13StringBuilderIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA12_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 1 dereferenceable(12) @.str.15)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %4, align 8, !tbaa !20, !noalias !60 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !22, !noalias !60
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.k:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !20, !noalias !60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.k
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !22, !noalias !60
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !60
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !60
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #22
  %i.aq = load ptr, ptr %8, align 8, !tbaa !7
  %.not.i34 = icmp eq ptr %i.aq, null
  br i1 %.not.i34, label %_ZN5arrow6StatusD2Ev.exit35, label %bb.l, !prof !26

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN5arrow6StatusD2Ev.exit35

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.o

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35, %_ZN5arrow6StatusD2Ev.exit33
  %i.as = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.au = load i64, ptr %i.d, align 8, !tbaa !22
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

bb.o:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %eh.lpad-body, %.body ]
  %i.aw = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.d
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.o
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !22
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.p:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !48 ; 5 uses
  %.not = icmp eq i32 %i.bb, -2147483648
  br i1 %.not, label %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %1, label %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit [
    i32 2, label %bb.v
    i32 4, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74
    i32 5, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56
    i32 6, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62
  ]

_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE(i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !65
  call void @_ZN5arrow4util13StringBuilderIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(8) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 1 dereferenceable(47) @.str.17), !noalias !65
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit
  %i.bd = load ptr, ptr %3, align 8, !tbaa !20, !noalias !65 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.r
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !22, !noalias !65
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #24
  br label %_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit

bb.s:                                             ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %3, align 8, !tbaa !20, !noalias !65 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i40: ; preds = %bb.s
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22, !noalias !65
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.cm, %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i88 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !65
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !65
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #22
  %i.bo = load ptr, ptr %9, align 8, !tbaa !7
  %.not.i45 = icmp eq ptr %i.bo, null
  br i1 %.not.i45, label %_ZN5arrow6StatusD2Ev.exit46, label %bb.t, !prof !26

bb.t:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN5arrow6StatusD2Ev.exit46

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread: ; preds = %bb.p
  switch i32 %1, label %unreachable [
    i32 0, label %bb.u
    i32 1, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit
    i32 2, label %bb.v
    i32 4, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74
    i32 5, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56
    i32 6, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62
    i32 9, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit68
  ]

bb.u:                                             ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN5arrow4util8internal15MakeSnappyCodecEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10)
  %i.bp = load ptr, ptr %10, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.x

bb.v:                                             ; preds = %bb.q, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  %i.bq = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN5arrow4util12CodecOptionsE, ptr nonnull @_ZTIN5arrow4util16GZipCodecOptionsE, i64 0) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %.not28 = icmp eq ptr %i.bq, null
  br i1 %.not28, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load i64, ptr %i.bt, align 8
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50: ; preds = %bb.v, %bb.w
  %i.bv = phi i32 [ %i.bs, %bb.w ], [ 2, %bb.v ]
  %.sroa.0.0.insert.insert = phi i64 [ %i.bu, %bb.w ], [ 0, %bb.v ]
  call void @_ZN5arrow4util8internal13MakeGZipCodecEiNS0_10GZipFormatESt8optionalIiE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, i32 noundef %i.bb, i32 noundef %i.bv, i64 %.sroa.0.0.insert.insert)
  %i.bw = load ptr, ptr %11, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.x

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56: ; preds = %bb.q, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN5arrow4util8internal15MakeLz4RawCodecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, i32 noundef %i.bb)
  %i.bx = load ptr, ptr %12, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.x

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62: ; preds = %bb.q, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZN5arrow4util8internal17MakeLz4FrameCodecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, i32 noundef %i.bb)
  %i.by = load ptr, ptr %13, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.x

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit68: ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZN5arrow4util8internal21MakeLz4HadoopRawCodecEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %14)
  %i.bz = load ptr, ptr %14, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.x

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74: ; preds = %bb.q, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN5arrow4util8internal13MakeZSTDCodecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %15, i32 noundef %i.bb)
  %i.ca = load ptr, ptr %15, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.x

unreachable:                                      ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  unreachable

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit68, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74
  %.sroa.090.0 = phi ptr [ %i.bz, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit68 ], [ %i.bp, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit ], [ %i.bw, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50 ], [ %i.ca, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74 ], [ %i.bx, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56 ], [ %i.by, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.cb = load ptr, ptr %.sroa.090.0, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.090.0)
          to label %_ZN5arrow6StatusD2Ev.exit79 unwind label %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i88

_ZN5arrow6StatusD2Ev.exit79:                      ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ce = load ptr, ptr %17, align 8, !tbaa !7, !noalias !78 ; 2 uses
  store ptr %i.ce, ptr %16, align 8, !tbaa !7, !alias.scope !78
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit83, label %bb.y, !prof !26

bb.y:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit79
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %16) #22
  %i.cg = load ptr, ptr %16, align 8, !tbaa !7
  %.not.i80 = icmp eq ptr %i.cg, null
  br i1 %.not.i80, label %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i85, label %bb.z, !prof !26

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i85

_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %_ZN5arrow6StatusD2Ev.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  store ptr null, ptr %0, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = ptrtoint ptr %.sroa.090.0 to i64
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !50
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i85: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.cj = load ptr, ptr %.sroa.090.0, align 8, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.090.0) #22, !inline_history !57
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i88: ; preds = %bb.x
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.cn = load ptr, ptr %.sroa.090.0, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.090.0) #22, !inline_history !57
  br label %common.resume

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86: ; preds = %bb.u, %_ZN5arrow6StatusD2Ev.exit83, %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i85, %_ZN5arrow6StatusD2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util12CodecOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #22, !inline_history !81
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = icmp eq ptr %.pr.pre, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread, !prof !59

_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util5Codec23MinimumCompressionLevelENS_11Compression4typeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.2") align 8 %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Result.7", align 8   ; 12 uses
  %5 = alloca %"class.arrow::util::CodecOptions", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  switch i32 %1, label %_ZN5arrow6StatusD2Ev.exit [
    i32 2, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 3, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 4, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 8, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 6, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 5, label %_ZN5arrow6StatusD2Ev.exit.thread
  ]

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA69_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(69) @.str.18)
  %.pr = load ptr, ptr %3, align 8, !tbaa !7, !noalias !82 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  store ptr %.pr, ptr %2, align 8, !tbaa !7, !alias.scope !82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.a = icmp eq ptr %.pr, null
  br i1 %i.a, label %bb.d, label %bb.b, !prof !44

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIiEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  %.pr20 = load ptr, ptr %2, align 8, !tbaa !7
  %.not.i12 = icmp eq ptr %.pr20, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13.thread, label %bb.c, !prof !45

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN5arrow6StatusD2Ev.exit13.thread

_ZN5arrow6StatusD2Ev.exit13.thread:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.i

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow4util12CodecOptionsE, i64 16), ptr %5, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -2147483648, ptr %i.b, align 8, !tbaa !48
  call void @_ZN5arrow4util5Codec6CreateENS_11Compression4typeERKNS0_12CodecOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.7") align 8 %4, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.c = load ptr, ptr %4, align 8, !tbaa !7
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultIiEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50, !noalias !85
  %i.g = inttoptr i64 %i.f to ptr                 ; 6 uses
  store ptr null, ptr %i.e, align 8, !tbaa !50, !noalias !85
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.f
  store ptr null, ptr %0, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.l, align 8, !tbaa !3
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22, !inline_history !57
  br label %bb.g

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22, !inline_history !57
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit, %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !7
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.i: ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
end_hunk_0
