Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MmapArena?download=true
inline.NumInlined: 1185
inline.NumDeleted: 532
begin_hunk_0_@_ZN8facebook5velox6memory9MmapArena13freeLookupStrB5cxx11Ev:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZNSolsEm.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %.sroa.010.0.in = phi ptr [ %i.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 ], [ %.sroa.010.0, %_ZNSolsEm.exit8 ]
  %.sroa.010.0 = load ptr, ptr %.sroa.010.0.in, align 8, !tbaa !67 ; 3 uses
  %i.ae = icmp eq ptr %.sroa.010.0, null
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.38, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.ai)
          to label %_ZNSolsEm.exit8 unwind label %bb.i

_ZNSolsEm.exit8:                                  ; preds = %bb.h
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.37, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.i, !llvm.loop !124 ; 0 uses

bb.i:                                             ; preds = %_ZNSolsEm.exit8, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.f
  %i.am = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.013.018) #27 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %._crit_edge, label %bb.e, !llvm.loop !125

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %2, align 8, !tbaa !69
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !69
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #21
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bd, ptr %2, align 8, !tbaa !69
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bj) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.al, %bb.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory9MmapArena15removeFreeBlockEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = call noundef i64 @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !48
  call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.d, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory9MmapArena4freeEPvm(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.54", align 1     ; 3 uses
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.54", align 1     ; 3 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.53", align 16 ; 9 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.53", align 16 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = icmp eq ptr %1, null
  %i.f = icmp eq i64 %2, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.u, label %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit

_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit: ; preds = %bb.a
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.h = xor i64 %i.g, 63
  %i.i = lshr exact i64 -9223372036854775808, %i.g
  %i.j = icmp eq i64 %i.i, %2
  %i.k = shl i64 2, %i.h
  %.0.i.i = select i1 %i.j, i64 %2, i64 %i.k      ; 8 uses
  %i.l = tail call i32 @madvise(ptr noundef nonnull %1, i64 noundef %.0.i.i, i32 noundef 4) #21 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = atomicrmw add ptr %i.m, i64 %.0.i.i seq_cst, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = ptrtoint ptr %1 to i64                   ; 11 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !48
  %i.p = tail call ptr @_ZN8facebook5velox6memory9MmapArena12addFreeBlockEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.o, i64 noundef %.0.i.i) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = icmp eq ptr %i.p, %i.s
  br i1 %i.t, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit26, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.p) #27 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !52   ; 4 uses
  store i64 %i.w, ptr %i.b, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !53   ; 3 uses
  %i.z = add i64 %i.y, %i.w                       ; 3 uses
  %.not = icmp ugt i64 %i.z, %i.o
  br i1 %.not, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %.lr.ph.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !145
  store i64 %i.z, ptr %8, align 16, !tbaa !41, !alias.scope !146, !noalias !145
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.o, ptr %i.aa, align 16, !tbaa !41, !alias.scope !146, !noalias !145
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.o, ptr %i.ab, align 16, !tbaa !41, !alias.scope !146, !noalias !145
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %.0.i.i, ptr %i.ac, align 16, !tbaa !41, !alias.scope !146, !noalias !145
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %i.w, ptr %i.ad, align 16, !tbaa !41, !alias.scope !146, !noalias !145
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 %i.y, ptr %i.ae, align 16, !tbaa !41, !alias.scope !146, !noalias !145
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.12, i64 109, i64 4473924, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !145
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory9MmapArena4freeEPvmE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.12) #22
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.v

bb.e:                                             ; preds = %.lr.ph.i.preheader
  %i.al = icmp eq i64 %i.z, %i.o
  br label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit26

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit26: ; preds = %bb.e, %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit
  %i.am = phi i64 [ undef, %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit ], [ %i.w, %bb.e ] ; 3 uses
  %.083 = phi i64 [ undef, %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit ], [ %i.y, %bb.e ]
  %.0 = phi i1 [ false, %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit ], [ %i.al, %bb.e ] ; 2 uses
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.p) #27 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !52 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !53 ; 2 uses
  %i.au = add i64 %.0.i.i, %i.o                   ; 3 uses
  %.not23 = icmp ugt i64 %i.au, %i.ar
  br i1 %.not23, label %bb.g, label %bb.j, !prof !70

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !147
  store i64 %i.au, ptr %7, align 16, !tbaa !41, !alias.scope !148, !noalias !147
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.ar, ptr %i.av, align 16, !tbaa !41, !alias.scope !148, !noalias !147
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.o, ptr %i.aw, align 16, !tbaa !41, !alias.scope !148, !noalias !147
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %.0.i.i, ptr %i.ax, align 16, !tbaa !41, !alias.scope !148, !noalias !147
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.ar, ptr %i.ay, align 16, !tbaa !41, !alias.scope !148, !noalias !147
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i64 %i.at, ptr %i.az, align 16, !tbaa !41, !alias.scope !148, !noalias !147
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.14, i64 105, i64 4473924, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !147
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory9MmapArena4freeEPvmE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.14) #22
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !41
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.v

bb.j:                                             ; preds = %bb.f
  %i.bg = icmp eq i64 %i.au, %i.ar
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit26
  %.082 = phi i64 [ undef, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit26 ], [ %i.ar, %bb.j ] ; 2 uses
  %.081 = phi i64 [ undef, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit26 ], [ %i.at, %bb.j ] ; 2 uses
  %.020 = phi i1 [ false, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit26 ], [ %i.bg, %bb.j ] ; 3 uses
  %or.cond3 = or i1 %.0, %.020
  br i1 %or.cond3, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  br i1 %.0, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !53
  tail call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.bi, i64 noundef %i.bk)
  %i.bl = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 48) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !39
  %i.bo = add i64 %i.bn, -1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !39
  tail call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.am, i64 noundef %.083)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.bp = add i64 %.0.i.i, %i.o
  %i.bq = sub i64 %i.bp, %i.am                    ; 2 uses
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !48
  br i1 %.020, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !53
  tail call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.bs, i64 noundef %i.bu)
  %i.bv = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 48) #23
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !39
  %i.bx = add i64 %i.bw, -1
  store i64 %i.bx, ptr %i.bm, align 8, !tbaa !39
  %i.by = add i64 %.081, %.082
  %i.bz = sub i64 %i.by, %i.am                    ; 2 uses
  store i64 %i.bz, ptr %i.c, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ca = phi i64 [ %i.bz, %bb.n ], [ %i.bq, %bb.m ] ; 3 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !48
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ce, %bb.o ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cf, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !48
  %i.ci = icmp ult i64 %i.ch, %i.ca               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ci, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ci, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.cj = icmp eq ptr %.19.i.i.i.i, %i.cf
  br i1 %i.cj, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !48
  %i.cm = icmp ult i64 %i.ca, %i.cl
  br i1 %i.cm, label %.critedge.i, label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEEixERSA_.exit

.critedge.i:                                      ; preds = %bb.p, %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i, %bb.o
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.p ], [ %.19.i.i.i.i, %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i ], [ %i.cf, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.c, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.cn = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEEixERSA_.exit

_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEEixERSA_.exit: ; preds = %bb.p, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.cn, %.critedge.i ], [ %.19.i.i.i.i, %bb.p ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.cp = call { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRmEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.t

bb.q:                                             ; preds = %bb.l
  br i1 %.020, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !53
  tail call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.cr, i64 noundef %i.ct)
  %i.cu = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 48) #23
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.cx = add i64 %i.cw, -1
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !39
  tail call void @_ZN8facebook5velox6memory9MmapArena16removeFromLookupEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %i.o, i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.cy = sub i64 %.082, %i.o
  %i.cz = add i64 %i.cy, %.081                    ; 4 uses
  store i64 %i.cz, ptr %i.d, align 8, !tbaa !48
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !48
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !36 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.not10.i.i.i.i32 = icmp eq ptr %i.dd, null
  br i1 %.not10.i.i.i.i32, label %.critedge.i43, label %.lr.ph.i.i.i.i33

.lr.ph.i.i.i.i33:                                 ; preds = %bb.r, %.lr.ph.i.i.i.i33
  %.012.i.i.i.i34 = phi ptr [ %.1.i.i.i.i39, %.lr.ph.i.i.i.i33 ], [ %i.dd, %bb.r ] ; 3 uses
  %.0811.i.i.i.i35 = phi ptr [ %.19.i.i.i.i36, %.lr.ph.i.i.i.i33 ], [ %i.de, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i34, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !48
  %i.dh = icmp ult i64 %i.dg, %i.cz               ; 2 uses
  %.19.i.i.i.i36 = select i1 %i.dh, ptr %.0811.i.i.i.i35, ptr %.012.i.i.i.i34 ; 6 uses
  %.1.in.v.i.i.i.i37 = select i1 %i.dh, i64 24, i64 16
  %.1.in.i.i.i.i38 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i34, i64 %.1.in.v.i.i.i.i37
  %.1.i.i.i.i39 = load ptr, ptr %.1.in.i.i.i.i38, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i40 = icmp eq ptr %.1.i.i.i.i39, null
  br i1 %.not.i.i.i.i40, label %_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i41, label %.lr.ph.i.i.i.i33, !llvm.loop !1

_ZNSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i41: ; preds = %.lr.ph.i.i.i.i33
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6memory9MmapArena16checkConsistencyEv:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.0112 = phi i64 [ 0, %.lr.ph ], [ %.3, %bb.u ] ; 4 uses
  %.023111 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %bb.u ]
  %.sroa.085.0110 = phi ptr [ %i.g, %.lr.ph ], [ %i.cq, %bb.u ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.085.0110, i64 32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.085.0110, i64 40 ; 6 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8, !tbaa !48   ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.c ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %i.r = icmp ult i64 %i.q, %i.o                  ; 2 uses
  %.19.i.i.i = select i1 %i.r, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.c, !llvm.loop !153

_ZNKSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.c
  %i.s = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %i.s, label %.critedge, label %_ZNKSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE4findERSA_.exit

_ZNKSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE4findERSA_.exit: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = icmp ult i64 %i.o, %i.u
  br i1 %i.v, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE4findERSA_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !71
  %.not.not.i.i = icmp eq i64 %i.x, 0
  %i.y = load i64, ptr %i.l, align 8              ; 7 uses
  br i1 %.not.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %i.z, %bb.e ], [ %.sroa.06.0.i.i, %bb.g ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !67 ; 3 uses
  %i.aa = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.aa, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.ad = icmp eq i64 %i.y, %i.ac
  br i1 %i.ad, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %bb.f, !llvm.loop !154

bb.h:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !74 ; 2 uses
  %i.ah = urem i64 %i.y, %i.ag                    ; 2 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !48
  %i.ao = icmp eq i64 %i.y, %i.an
  br i1 %i.ao, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.ap = icmp eq i64 %i.y, %i.as
  br i1 %i.ap, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.020.i.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.al, %bb.i ]
  %i.aq = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !67 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not18.i.i.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %i.at = urem i64 %i.as, %i.ag
  %.not19.i.i.i.i = icmp eq i64 %i.at, %i.ah
  br i1 %.not19.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.k
  br label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %.lr.ph.i.i.i.i, %bb.f, %bb.h, %..loopexit_crit_edge21.i.i.i.i, %_ZNKSt8_Rb_treeImSt4pairIKmSt13unordered_setImSt4hashImESt8equal_toImESaImEEESt10_Select1stIS9_ESt4lessImESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.b, %_ZNKSt3mapImSt13unordered_setImSt4hashImESt8equal_toImESaImEESt4lessImESaISt4pairIKmS6_EEE4findERSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 1)
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %.critedge
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.18, i64 noundef 97)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.l
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !52
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i64 noundef %i.aw)
          to label %_ZNSolsEm.exit unwind label %bb.m ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZNSolsEm.exit
  %i.az = load i64, ptr %i.m, align 8, !tbaa !53
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i64 noundef %i.az)
          to label %_ZNSolsEm.exit40 unwind label %bb.m

_ZNSolsEm.exit40:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %_ZNSolsEm.exit40
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.bc = add i64 %.0112, 1
  %.pre = load i64, ptr %i.l, align 8, !tbaa !52
  %.pre126.a = load i64, ptr %i.m, align 8, !tbaa !53
  br label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

bb.m:                                             ; preds = %_ZNSolsEm.exit40, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.l, %.critedge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.ai

_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.be = phi i64 [ %.pre126.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 ], [ %i.o, %bb.g ], [ %i.o, %bb.i ], [ %i.o, %bb.j ]
  %i.bf = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 ], [ %i.y, %bb.g ], [ %i.y, %bb.i ], [ %i.y, %bb.j ]
  %.1 = phi i64 [ %i.bc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 ], [ %.0112, %bb.g ], [ %.0112, %bb.i ], [ %.0112, %bb.j ] ; 2 uses
  %i.bg = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, %i.e
  br i1 %i.bh, label %bb.n, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.n:                                             ; preds = %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 1)
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.21, i64 noundef 91)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %bb.o
  %i.bk = load i64, ptr %i.l, align 8, !tbaa !52
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i64 noundef %i.bk)
          to label %_ZNSolsEm.exit43 unwind label %bb.p ; 2 uses

_ZNSolsEm.exit43:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %_ZNSolsEm.exit43
  %i.bn = load i64, ptr %i.m, align 8, !tbaa !53
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %i.bn)
          to label %_ZNSolsEm.exit45 unwind label %bb.p

_ZNSolsEm.exit45:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %_ZNSolsEm.exit45
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bq = add i64 %.1, 1
  br label %_ZSt9__advanceISt23_Rb_tree_const_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.p:                                             ; preds = %_ZNSolsEm.exit45, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZNSolsEm.exit43, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42, %bb.o, %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ai

_ZSt9__advanceISt23_Rb_tree_const_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  %.2 = phi i64 [ %i.bq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 ], [ %.1, %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit ] ; 3 uses
  %i.bs = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.085.0110) #27 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, %i.h
  br i1 %i.bt, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !52
  %i.bw = icmp ugt i64 %i.bg, %i.bv
  br i1 %i.bw, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 1)
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.s unwind label %bb.t       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.22, i64 noundef 79)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %bb.s
  %i.bz = load i64, ptr %i.l, align 8, !tbaa !52
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i64 noundef %i.bz)
          to label %_ZNSolsEm.exit48 unwind label %bb.t ; 2 uses

_ZNSolsEm.exit48:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZNSolsEm.exit48
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !53
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i64 noundef %i.cc)
          to label %_ZNSolsEm.exit50 unwind label %bb.t ; 2 uses

_ZNSolsEm.exit50:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.23, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %_ZNSolsEm.exit50
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !52
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i64 noundef %i.cf)
          to label %_ZNSolsEm.exit52 unwind label %bb.t ; 2 uses

_ZNSolsEm.exit52:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %_ZNSolsEm.exit52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !53
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef %i.cj)
          to label %_ZNSolsEm.exit54 unwind label %bb.t

_ZNSolsEm.exit54:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZNSolsEm.exit54
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.cm = add i64 %.2, 1
  br label %bb.u

bb.t:                                             ; preds = %_ZNSolsEm.exit54, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53, %_ZNSolsEm.exit52, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51, %_ZNSolsEm.exit50, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %_ZNSolsEm.exit48, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %bb.s, %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ai

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55, %bb.q, %_ZSt9__advanceISt23_Rb_tree_const_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.3 = phi i64 [ %i.cm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 ], [ %.2, %bb.q ], [ %.2, %_ZSt9__advanceISt23_Rb_tree_const_iteratorISt4pairIKmmEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.co = load i64, ptr %i.m, align 8, !tbaa !53
  %i.cp = add i64 %i.co, %.023111                 ; 2 uses
  %i.cq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.085.0110) #27 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.h
  br i1 %i.cr, label %._crit_edge, label %bb.b, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.u, %bb.a
  %.023.lcssa = phi i64 [ 0, %bb.a ], [ %i.cp, %bb.u ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.3, %bb.u ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !37 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %._crit_edge119, label %.lr.ph118

._crit_edge119:                                   ; preds = %bb.y, %._crit_edge
  %.022.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.dj, %bb.y ] ; 2 uses
  %.4.lcssa = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.5, %bb.y ] ; 2 uses
  %.not = icmp eq i64 %.023.lcssa, %.022.lcssa
  br i1 %.not, label %bb.z, label %bb.aa

.lr.ph118:                                        ; preds = %._crit_edge, %bb.y
  %.4116 = phi i64 [ %.5, %bb.y ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.022115 = phi i64 [ %i.dj, %bb.y ], [ 0, %._crit_edge ]
  %.sroa.068.0114 = phi ptr [ %i.dk, %bb.y ], [ %i.ct, %._crit_edge ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.068.0114, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.068.0114, i64 64 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !71 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.lr.ph118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 1)
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.24, i64 noundef 84)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %bb.w
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !65
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i64 noundef %i.dc)
          to label %_ZNSolsEm.exit58 unwind label %bb.x ; 0 uses

_ZNSolsEm.exit58:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.de = add i64 %.4116, 1
  %.pre127 = load i64, ptr %i.cx, align 8, !tbaa !71
  br label %bb.y

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %bb.w, %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ai

bb.y:                                             ; preds = %_ZNSolsEm.exit58, %.lr.ph118
  %i.dg = phi i64 [ %.pre127, %_ZNSolsEm.exit58 ], [ %i.cy, %.lr.ph118 ]
  %.5 = phi i64 [ %i.de, %_ZNSolsEm.exit58 ], [ %.4116, %.lr.ph118 ] ; 2 uses
  %i.dh = load i64, ptr %i.cw, align 8, !tbaa !65
  %i.di = mul i64 %i.dg, %i.dh
  %i.dj = add i64 %i.di, %.022115                 ; 2 uses
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.068.0114) #27 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cu
  br i1 %i.dl, label %._crit_edge119, label %.lr.ph118, !llvm.loop !156

bb.z:                                             ; preds = %._crit_edge119
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dn = load atomic i64, ptr %i.dm seq_cst, align 8
  %.not32 = icmp eq i64 %.023.lcssa, %i.dn
  br i1 %.not32, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge119
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 1)
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.25, i64 noundef 74)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.ab
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, i64 noundef %.023.lcssa)
          to label %_ZNSolsEl.exit unwind label %bb.ac ; 2 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.26, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %_ZNSolsEl.exit
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, i64 noundef %.022.lcssa)
          to label %_ZNSolsEl.exit62 unwind label %bb.ac ; 2 uses

_ZNSolsEl.exit62:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.27, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZNSolsEl.exit62
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load atomic i64, ptr %i.du seq_cst, align 8
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i64 noundef %i.dv)
          to label %_ZNSolsEm.exit64 unwind label %bb.ac ; 0 uses

_ZNSolsEm.exit64:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.dx = add i64 %.4.lcssa, 1
  br label %bb.ad

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63, %_ZNSolsEl.exit62, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %_ZNSolsEl.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %bb.ab, %bb.aa
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ai

bb.ad:                                            ; preds = %_ZNSolsEm.exit64, %bb.z
  %.6 = phi i64 [ %i.dx, %_ZNSolsEm.exit64 ], [ %.4.lcssa, %bb.z ] ; 2 uses
  %.not33 = icmp eq i64 %.6, 0                    ; 2 uses
  br i1 %.not33, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
end_hunk_1
