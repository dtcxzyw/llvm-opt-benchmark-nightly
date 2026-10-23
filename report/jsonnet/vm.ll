Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/vm?download=true
inline.NumInlined: 10178
inline.NumDeleted: 3163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter13builtinFilterERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE:._crit_edge.i.i
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.e
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br i1 %.0, label %bb.f, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br i1 %.0, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn4086 = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ]
  call void @__cxa_free_exception(ptr %i.v) #39
  br label %bb.p

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.val61, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.val45 = load ptr, ptr %i.ak, align 8, !tbaa !238
  %i.al = getelementptr i8, ptr %i.aj, i64 24
  %.val46 = load ptr, ptr %i.al, align 8, !tbaa !236
  %i.am = icmp eq ptr %.val46, %.val45
  br i1 %i.am, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit, label %bb.h

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit: ; preds = %bb.g
  %i.an = call fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeArrayERKSt6vectorIPNS1_9HeapThunkESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr null, ptr null)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 16, ptr %i.ao, align 8, !tbaa !67
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.an, ptr %.sroa.51.0..sroa_idx, align 8, !tbaa !67
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  store i32 4, ptr %i.c, align 8, !tbaa !231
  %i.ap = getelementptr inbounds i8, ptr %.val51, i64 -312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %.val61, i64 16, i1 false), !tbaa.struct !253
  %.val58 = load ptr, ptr %2, align 8, !tbaa !282
  %i.aq = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  %i.ar = getelementptr inbounds i8, ptr %.val51, i64 -296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !253
  %i.as = getelementptr inbounds i8, ptr %.val51, i64 -168
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !238 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.val51, i64 -160 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !236
  %.not.i.i = icmp eq ptr %i.av, %i.at
  br i1 %.not.i.i, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7jsonnet8internal12_GLOBAL__N_19HeapThunkES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7jsonnet8internal12_GLOBAL__N_19HeapThunkES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.at, ptr %i.au, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE5clearEv.exit

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE5clearEv.exit: ; preds = %bb.h, %_ZSt8_DestroyIPPN7jsonnet8internal12_GLOBAL__N_19HeapThunkES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %.val51, i64 -224
  store i32 0, ptr %i.aw, align 8, !tbaa !278
  %.val57 = load ptr, ptr %i.ak, align 8, !tbaa !238
  %i.ax = load ptr, ptr %.val57, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !165
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr null, ptr %i.az, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !166
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !167
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val.i.i = load ptr, ptr %i.bd, align 8, !tbaa !60 ; 2 uses
  %.not.i.i79 = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i79, label %_ZNSt3mapIPKN7jsonnet8internal10IdentifierEPNS1_12_GLOBAL__N_19HeapThunkESt4lessIS4_ESaISt4pairIKS4_S7_EEEC2ERKSE_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE5clearEv.exit
  %i.be = call fastcc noundef ptr @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull %.val.i.i, ptr noundef %i.ay) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.bg, %.noexc.i.i ], [ %i.be, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.ba, align 8, !tbaa !170
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.be, %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !171 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.k, label %bb.j, !llvm.loop !3

bb.k:                                             ; preds = %bb.j
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bb, align 8, !tbaa !170
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !168
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !168
  store ptr %i.be, ptr %i.az, align 8, !tbaa !170
  br label %_ZNSt3mapIPKN7jsonnet8internal10IdentifierEPNS1_12_GLOBAL__N_19HeapThunkESt4lessIS4_ESaISt4pairIKS4_S7_EEEC2ERKSE_.exit

_ZNSt3mapIPKN7jsonnet8internal10IdentifierEPNS1_12_GLOBAL__N_19HeapThunkESt4lessIS4_ESaISt4pairIKS4_S7_EEEC2ERKSE_.exit: ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE5clearEv.exit, %bb.k
  %.val56 = load ptr, ptr %i.q, align 8, !tbaa !243
  %i.bl = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIPKN7jsonnet8internal10IdentifierEPNS1_12_GLOBAL__N_19HeapThunkESt4lessIS4_ESaISt4pairIKS4_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(8) %.val56)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt3mapIPKN7jsonnet8internal10IdentifierEPNS1_12_GLOBAL__N_19HeapThunkESt4lessIS4_ESaISt4pairIKS4_S7_EEEC2ERKSE_.exit
  store ptr %i.ax, ptr %i.bl, align 8, !tbaa !217
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !271
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack7newCallERKNS0_13LocationRangeEPNS1_10HeapEntityEPNS1_10HeapObjectEjRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessISD_ESaISt4pairIKSD_SF_EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.p, ptr noundef %i.bn, i32 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !267
  %.val44 = load ptr, ptr %i.az, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val44)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %_ZNSt3mapIPKN7jsonnet8internal10IdentifierEPNS1_12_GLOBAL__N_19HeapThunkESt4lessIS4_ESaISt4pairIKS4_S7_EEEC2ERKSE_.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.az, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit, %bb.m
  %.030 = phi ptr [ null, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit ], [ %i.br, %bb.m ]
  ret ptr %.030

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.n, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn4086, %bb.f ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.bs, %bb.n ]
  resume { ptr, i32 } %.pn40.pn.pn

bb.q:                                             ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter18builtinObjectHasExERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.170", align 8   ; 4 uses
  %5 = alloca %"class.std::set", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.130, i64 11, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 11, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 0, ptr %i.c, align 1, !tbaa !67
  %i.d = call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #41 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !320
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !321
  store i32 18, ptr %i.d, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 19, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !322
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter19validateBuiltinArgsERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_5ValueESaISF_EESE_INSF_4TypeESaISK_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofreeobj noundef align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit unwind label %bb.a

_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit: ; preds = %._crit_edge.i.i
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
  %.val25 = load ptr, ptr %2, align 8, !tbaa !282 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %.val25, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val25, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !67, !range !251, !noundef !252
  %6 = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %7 = xor i1 %6, true
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12objectFieldsEPKNS1_10HeapObjectEb(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.m, i1 noundef zeroext %7)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !166  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not47.not = icmp eq ptr %i.s, %i.t
  br i1 %.not47.not, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread43, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.not.i.i = icmp eq i64 %i.v, 0
  br label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 12) #40
  %.pre = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.y = icmp eq ptr %.pre, %i.a
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.a
  %i.z = load i64, ptr %i.a, align 8, !tbaa !67
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.aa) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %i.x

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.036.048 = phi ptr [ %i.s, %.lr.ph ], [ %i.an, %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.036.048, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !73
  %i.af = icmp eq i64 %i.ae, %i.v
  br i1 %i.af, label %bb.c, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !72
  br i1 %.not.i.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread43, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.v
  br i1 %exitcond.not.i.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread43, label %.lr.ph.i.i, !llvm.loop !15

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01216.i.i = phi i64 [ %i.ai, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.01216.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01216.i.i
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !76
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !76
  %or.cond.not.i = icmp eq i32 %i.am, %i.al
  br i1 %or.cond.not.i, label %bb.d, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %i.an = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.036.048) #43 ; 2 uses
  %.not.not = icmp eq ptr %i.an, %i.t
  br i1 %.not.not, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread43, label %bb.b

_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread43: ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not46 = phi i64 [ 1, %bb.d ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ 1, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ap)
          to label %_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread43
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #38
  unreachable

_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit: ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.as = inttoptr i64 %.not46 to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.at, align 8, !tbaa !67
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.as, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !67
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter13builtinLengthERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %5 = alloca %"class.std::set", align 8          ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.val42 = load ptr, ptr %2, align 8, !tbaa !282 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val43 = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.b = ptrtoint ptr %.val43 to i64
  %i.c = ptrtoint ptr %.val42 to i64
  %i.d = sub i64 %i.b, %i.c
  %.not = icmp eq i64 %i.d, 16
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 56) #39 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.131, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %3)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.e, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.p unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %.sink.split82

bb.d:                                             ; preds = %bb.c, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.031 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !67
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br i1 %.031, label %.sink.split82, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br i1 %.031, label %.sink.split82, label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.val42, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67   ; 6 uses
  %i.p = load i32, ptr %.val42, align 8, !tbaa !261
  switch i32 %i.p, label %bb.k [
    i32 18, label %bb.f
    i32 16, label %bb.h
    i32 19, label %bb.i
    i32 17, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12objectFieldsEPKNS1_10HeapObjectEb(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.o, i1 noundef zeroext true)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !168
  %i.s = uitofp i64 %i.r to double
  %i.t = bitcast double %i.s to i64
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.v, align 8, !tbaa !67
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.u, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.x)
          to label %_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #38
  unreachable

_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !238
  %i.ab = getelementptr i8, ptr %i.o, i64 24
  %.val38 = load ptr, ptr %i.ab, align 8, !tbaa !236
  %i.ac = ptrtoint ptr %.val38 to i64
  %i.ad = ptrtoint ptr %.val to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = uitofp i64 %i.af to double
  %i.ah = bitcast double %i.ag to i64
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.aj, align 8, !tbaa !67
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ai, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !67
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !73
  %i.am = uitofp i64 %i.al to double
  %i.an = bitcast double %i.am to i64
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.ap, align 8, !tbaa !67
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ao, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !67
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.val39 = load ptr, ptr %i.aq, align 8, !tbaa !243
  %i.ar = getelementptr i8, ptr %i.o, i64 88
  %.val40 = load ptr, ptr %i.ar, align 8, !tbaa !244
  %i.as = ptrtoint ptr %.val40 to i64
  %i.at = ptrtoint ptr %.val39 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4
  %i.aw = uitofp i64 %i.av to double
  %i.ax = bitcast double %i.aw to i64
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.az, align 8, !tbaa !67
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ay, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !67
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 56) #39 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %.val44 = load ptr, ptr %2, align 8, !tbaa !282
  %.val41 = load i32, ptr %.val44, align 8, !tbaa !261
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ENS1_5Value4TypeE(ptr dead_on_unwind noalias nonnull writable align 8 %7, i32 noundef %.val41)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit: ; preds = %bb.k
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.132, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread

bb.l:                                             ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %6)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit50 unwind label %bb.m

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit50: ; preds = %bb.l
  invoke void @__cxa_throw(ptr %i.ba, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.p unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.l, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit50
  %.0 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit50 ], [ true, %bb.l ] ; 2 uses
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.be = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.m
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !67
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bj = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread: ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !67
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #40
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !67
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bt) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br i1 %.0, label %.sink.split82, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br i1 %.0, label %.sink.split82, label %bb.o

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread
  %.pn.pn62.ph = phi { ptr, i32 } [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.sink.split82

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit
  ret ptr null

.sink.split82:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ba, %.sink.split ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  %.pn35.pn.ph = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.pn.pn62.ph, %.sink.split ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @__cxa_free_exception(ptr %.sink) #39
  br label %bb.o

bb.o:                                             ; preds = %.sink.split82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn35.pn = phi { ptr, i32 } [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn35.pn.ph, %.sink.split82 ]
  resume { ptr, i32 } %.pn35.pn

bb.p:                                             ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit50, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter21builtinObjectFieldsExERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.170", align 8   ; 4 uses
  %5 = alloca %"class.std::set.273", align 8      ; 11 uses
  %6 = alloca %"class.std::set", align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.133, i64 14, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.c, align 2, !tbaa !67
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #41
          to label %bb.a unwind label %.thread    ; 6 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  store ptr %i.d, ptr %4, align 8, !tbaa !320
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !321
  store i32 18, ptr %i.d, align 4
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 1, ptr %.sroa.574.0..sroa_idx, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !322
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter19validateBuiltinArgsERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_5ValueESaISF_EESE_INSF_4TypeESaISK_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofreeobj noundef align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit: ; preds = %bb.a
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
  %.val43 = load ptr, ptr %2, align 8, !tbaa !282 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val43, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %.val43, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !67, !range !251, !noundef !252
  %7 = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.p, align 8, !tbaa !165
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !166
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !167
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %8 = xor i1 %7, true
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12objectFieldsEPKNS1_10HeapObjectEb(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %i.m, i1 noundef zeroext %8)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.v, %i.w
  br i1 %.not77, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.y)
          to label %_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #38
  unreachable

_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %i.ab = invoke fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeArrayERKSt6vectorIPNS1_9HeapThunkESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr null, ptr null)
          to label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.thread:                                          ; preds = %._crit_edge.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.d:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #40
  %.pre = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.ae = icmp eq ptr %.pre, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.d
  %i.af = load i64, ptr %i.a, align 8, !tbaa !67
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.d, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %.pn96 = phi { ptr, i32 } [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.ac, %.thread ], [ %i.ad, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.n

.lr.ph:                                           ; preds = %bb.b, %_ZNSt3setINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %.sroa.069.078 = phi ptr [ %i.ak, %_ZNSt3setINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit ], [ %i.v, %bb.b ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.069.078, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !131
  %i.aj = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.e ; 0 uses

_ZNSt3setINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %.lr.ph
  %i.ak = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.069.078) #43 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.loopexit.split-lp

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit: ; preds = %_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 16, ptr %i.am, align 8, !tbaa !67
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ab, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !166 ; 2 uses
  %.not7679 = icmp eq ptr %i.ao, %i.p
  br i1 %.not7679, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  br label %bb.g

._crit_edge82:                                    ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit._crit_edge, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.as)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge82
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #38
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %._crit_edge82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret ptr null

bb.g:                                             ; preds = %.lr.ph81, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit._crit_edge
  %.sroa.063.080 = phi ptr [ %i.ao, %.lr.ph81 ], [ %i.bz, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit._crit_edge ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.063.080, i64 32
  %.val40 = load ptr, ptr %i.ap, align 8
  %i.aw = invoke fastcc noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8makeHeapINS1_9HeapThunkEJRPKNS0_10IdentifierEDniDnEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr %.val40, i32 0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !236 ; 4 uses
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !237
  %.not.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !217
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit

bb.j:                                             ; preds = %bb.h
  %.val16.i.i = load ptr, ptr %i.an, align 8, !tbaa !238 ; 4 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %.val16.i.i to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.k, label %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i58 = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i58)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #41
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %i.aw, ptr %i.bl, align 8, !tbaa !217
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.l, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i

bb.l:                                             ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %.val16.i.i, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i: ; preds = %bb.l, %.noexc60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i21.i.i = icmp eq ptr %.val16.i.i, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i, i64 noundef %i.bc) #40
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i
  store ptr %i.bk, ptr %i.an, align 8, !tbaa !238
  store ptr %i.bn, ptr %i.aq, align 8, !tbaa !236
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bo, ptr %i.ar, align 8, !tbaa !237
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.i
  %.val38 = load ptr, ptr %i.av, align 8
  %i.bp = getelementptr i8, ptr %.sroa.063.080, i64 40
  %.val39 = load i64, ptr %i.bp, align 8
  %i.bq = invoke fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter10makeStringERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr %.val38, i64 %.val39)
          to label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit._crit_edge: ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 19, ptr %i.br, align 8, !tbaa !67
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.bq, ptr %.sroa.561.0..sroa_idx, align 8, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  store i8 1, ptr %i.bs, align 2, !tbaa !183
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store ptr null, ptr %i.bt, align 8, !tbaa !204
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val.i.i.i)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !60
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !166
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !167
end_hunk_0
