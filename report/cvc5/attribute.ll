inline.NumInlined: 4254
inline.NumDeleted: 1875
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4cvc58internal4expr4attr16AttributeManager16deleteAttributesERKSt6vectorIPKNS2_17AttributeUniqueIdESaIS7_EE:bb.a
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.bc, ptr %i.be, i64 noundef %i.bl)
          to label %.noexc27 unwind label %bb.l

.noexc27:                                         ; preds = %bb.k
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.bc, ptr %i.be)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit unwind label %bb.l

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %bb.j, %.noexc27
  %i.bm = trunc i64 %i.ba to i32
  switch i32 %i.bm, label %bb.ad [
    i32 0, label %bb.m
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
    i32 5, label %bb.w
    i32 6, label %bb.x
    i32 7, label %bb.x
    i32 8, label %bb.x
    i32 9, label %bb.x
    i32 10, label %bb.x
    i32 11, label %bb.x
  ]

bb.l:                                             ; preds = %.noexc27, %bb.k, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.m:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal4expr4attr16AttributeManager16deleteAttributesERKSt6vectorIPKNS2_17AttributeUniqueIdESaIS7_EE, ptr noundef nonnull @.str, i32 noundef 86)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.o unwind label %bb.r       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.1, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.2)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #23
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.al

bb.r:                                             ; preds = %bb.o, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #23
  unreachable

bb.s:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  invoke void @_ZN4cvc58internal4expr4attr16AttributeManager25deleteAttributesFromTableImEEvRNS2_8AttrHashIT_EERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.aj unwind label %bb.l

bb.t:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  invoke void @_ZN4cvc58internal4expr4attr16AttributeManager25deleteAttributesFromTableINS0_12NodeTemplateILb0EEEEEvRNS2_8AttrHashIT_EERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.aj unwind label %bb.l

bb.u:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  invoke void @_ZN4cvc58internal4expr4attr16AttributeManager25deleteAttributesFromTableINS0_12NodeTemplateILb1EEEEEvRNS2_8AttrHashIT_EERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.aj unwind label %bb.l

bb.v:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  invoke void @_ZN4cvc58internal4expr4attr16AttributeManager25deleteAttributesFromTableINS0_8TypeNodeEEEvRNS2_8AttrHashIT_EERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.aj unwind label %bb.l

bb.w:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  invoke void @_ZN4cvc58internal4expr4attr16AttributeManager25deleteAttributesFromTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRNS2_8AttrHashIT_EERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.aj unwind label %bb.l

bb.x:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal4expr4attr16AttributeManager16deleteAttributesERKSt6vectorIPKNS2_17AttributeUniqueIdESaIS7_EE, ptr noundef nonnull @.str, i32 noundef 100)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.z unwind label %bb.ac      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.1, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.z
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.3)
          to label %bb.aa unwind label %bb.ac     ; 0 uses

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #23
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.al

bb.ac:                                            ; preds = %bb.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #23
  unreachable

bb.ad:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal4expr4attr16AttributeManager16deleteAttributesERKSt6vectorIPKNS2_17AttributeUniqueIdESaIS7_EE, ptr noundef nonnull @.str, i32 noundef 105)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.4)
          to label %bb.ag unwind label %bb.ai     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #23
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.al

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #23
  unreachable

bb.aj:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.cc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.046) #27 ; 2 uses
  %.not41 = icmp eq ptr %i.cc, %i.b
  br i1 %.not41, label %._crit_edge49, label %bb.j, !llvm.loop !132

._crit_edge49:                                    ; preds = %bb.aj, %bb.a, %._crit_edge
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !102
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorImSaImEEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.cd)
          to label %_ZNSt3mapImSt6vectorImSaImEESt4lessImESaISt4pairIKmS2_EEED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %._crit_edge49
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #23
  unreachable

_ZNSt3mapImSt6vectorImSaImEESt4lessImESaISt4pairIKmS2_EEED2Ev.exit: ; preds = %._crit_edge49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.al:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.q, %bb.ab, %bb.ah, %bb.i
  %.pn20.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.bw, %bb.ab ], [ %i.ca, %bb.ah ], [ %i.br, %bb.q ], [ %i.bn, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3mapImSt6vectorImSaImEESt4lessImESaISt4pairIKmS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal4expr4attr16AttributeManager25deleteAttributesFromTableImEEvRNS2_8AttrHashIT_EERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::expr::attr::AttrHash<unsigned long>::Iterator", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::expr::attr::AttrHash<unsigned long>::Iterator", align 8 ; 6 uses
  store i8 1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit35.thread, label %bb.b

_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit35.thread: ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !8
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133, !noalias !134 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133, !noalias !134
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.preheader.i, label %_ZN4cvc58internal4expr4attr8AttrHashImE5beginEv.exit

.lr.ph.i.i.preheader.i:                           ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !134 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN4cvc58internal4expr4attr8AttrHashImE5beginEv.exit, label %.lr.ph.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i
  %i.k = load ptr, ptr %i.m, align 8, !tbaa !55, !noalias !134 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4cvc58internal4expr4attr8AttrHashImE5beginEv.exit, label %.lr.ph.i, !llvm.loop !137

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133, !noalias !134 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133, !noalias !134
  %i.r = icmp eq ptr %i.o, %i.q                   ; 3 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZN4cvc58internal4expr4attr8AttrHashImE5beginEv.exit, !llvm.loop !137

_ZN4cvc58internal4expr4attr8AttrHashImE5beginEv.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i, %bb.b
  %.sroa.041.2 = phi i1 [ true, %.lr.ph.i.i.preheader.i ], [ false, %bb.b ], [ %i.r, %.lr.ph.i.i.i ], [ %i.r, %.lr.ph.i ]
  %.sroa.9.2 = phi ptr [ null, %.lr.ph.i.i.preheader.i ], [ %i.b, %bb.b ], [ %i.m, %.lr.ph.i ], [ null, %.lr.ph.i.i.i ]
  %.sroa.17.2 = phi ptr [ %i.e, %.lr.ph.i.i.preheader.i ], [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i ]
  %i.s = load ptr, ptr %2, align 8, !tbaa !116    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116  ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4cvc58internal4expr4attr8AttrHashImE5beginEv.exit, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i
  %.015.i.i = phi i32 [ %i.ao, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i ], [ 0, %_ZN4cvc58internal4expr4attr8AttrHashImE5beginEv.exit ]
  %.sroa.09.014.i.i = phi ptr [ %i.ap, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i ], [ %i.b, %_ZN4cvc58internal4expr4attr8AttrHashImE5beginEv.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !138  ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !71   ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775792
  br i1 %i.ac, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !139

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #26
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !133
  %.pre17.i.i = load ptr, ptr %i.w, align 8, !tbaa !133
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.pre17.i.i, %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.af = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.pre.i.i, %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ag = phi ptr [ null, %.lr.ph.i.i ], [ %i.ad, %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ag, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.af, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !140

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.aj = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 4
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %.015.i.i, %i.an                ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.loopexit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ab) #22
  br label %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i

_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i: ; preds = %bb.e, %.loopexit.i.i
  %i.ap = load ptr, ptr %.sroa.09.014.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit, label %.lr.ph.i.i, !llvm.loop !141

_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit: ; preds = %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i
  %i.aq = lshr i32 %i.ao, 3
  %i.ar = zext nneg i32 %i.aq to i64
  br i1 %.sroa.041.2, label %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit, label %.lr.ph74

.lr.ph74:                                         ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit
  %i.as = ptrtoint ptr %i.u to i64
  %i.at = ptrtoint ptr %i.s to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.8.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sroa.844.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.17.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %.lr.ph74
  %.sroa.8.sroa.0.0 = phi <7 x i8> [ undef, %.lr.ph74 ], [ %.sroa.8.sroa.0.1, %.backedge ] ; 3 uses
  %.sroa.17.073 = phi ptr [ %.sroa.17.2, %.lr.ph74 ], [ %.sroa.17.073.be, %.backedge ] ; 3 uses
  %.sroa.9.072 = phi ptr [ %.sroa.9.2, %.lr.ph74 ], [ %.sroa.9.072.be, %.backedge ] ; 4 uses
  %.sroa.844.071 = phi ptr [ %1, %.lr.ph74 ], [ %.sroa.844.071.be, %.backedge ] ; 3 uses
  %i.ax = load i64, ptr %.sroa.17.073, align 8, !tbaa !113, !noalias !142 ; 2 uses
  br i1 %i.aw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.av, %bb.f ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.s, %bb.f ] ; 2 uses
  %i.ay = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !113
  %i.bb = icmp ult i64 %i.ba, %i.ax               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = xor i64 %i.ay, -1
  %i.be = add nsw i64 %.016.i.i, %i.bd
  %.sroa.011.1.i.i = select i1 %i.bb, ptr %i.bc, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.bb, i64 %i.be, i64 %i.ay ; 2 uses
  %i.bf = icmp sgt i64 %.1.i.i, 0
  br i1 %i.bf, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !145

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.f
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.u
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.bg = load i64, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !113
  %.not = icmp ult i64 %i.ax, %i.bg
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread, label %.split

.split:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i8 0, ptr %4, align 8
  store <7 x i8> %.sroa.8.sroa.0.0, ptr %.sroa.8.0..sroa_idx, align 1
  store ptr %.sroa.844.071, ptr %.sroa.844.0..sroa_idx, align 8
  store ptr %.sroa.9.072, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %.sroa.17.073, ptr %.sroa.17.0..sroa_idx, align 8
  call void @_ZN4cvc58internal4expr4attr8AttrHashImE5eraseENS4_8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::expr::attr::AttrHash<unsigned long>::Iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull byval(%"class.cvc5::internal::expr::attr::AttrHash<unsigned long>::Iterator") align 8 %4)
  %.sroa.041.0.copyload42 = load i8, ptr %3, align 8
  %.sroa.8.sroa.0.0.copyload149 = load <7 x i8>, ptr %.sroa.8.0..sroa_idx43, align 1
  %.sroa.844.0.copyload46 = load ptr, ptr %.sroa.844.0..sroa_idx45, align 8
  %.sroa.9.0.copyload48 = load ptr, ptr %.sroa.9.0..sroa_idx47, align 8
  %.sroa.17.0.copyload51 = load ptr, ptr %.sroa.17.0..sroa_idx50, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bh = trunc nuw i8 %.sroa.041.0.copyload42 to i1
  br i1 %i.bh, label %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit, label %.backedge

.backedge:                                        ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread, %._ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.loopexit_crit_edge, %.split
  %.sroa.8.sroa.0.1 = phi <7 x i8> [ %.sroa.8.sroa.0.0, %._ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.loopexit_crit_edge ], [ %.sroa.8.sroa.0.0, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread ], [ %.sroa.8.sroa.0.0.copyload149, %.split ]
  %.sroa.17.073.be = phi ptr [ %i.bs, %._ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.loopexit_crit_edge ], [ %i.bi, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread ], [ %.sroa.17.0.copyload51, %.split ]
  %.sroa.9.072.be = phi ptr [ %i.bq, %._ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.loopexit_crit_edge ], [ %.sroa.9.072, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread ], [ %.sroa.9.0.copyload48, %.split ]
  %.sroa.844.071.be = phi ptr [ %.sroa.844.071, %._ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.loopexit_crit_edge ], [ %.sroa.844.071, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread ], [ %.sroa.844.0.copyload46, %.split ]
  br label %bb.f, !llvm.loop !146

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.17.073, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.9.072, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !133
  %i.bl = icmp eq ptr %i.bi, %i.bk
  br i1 %i.bl, label %.lr.ph.i.i.i12.preheader, label %.backedge

.lr.ph.i.i.i12.preheader:                         ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread
  %i.bm = load ptr, ptr %.sroa.9.072, align 8, !tbaa !55 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit, label %.lr.ph

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph
  %i.bo = load ptr, ptr %i.bq, align 8, !tbaa !55 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit, label %.lr.ph, !llvm.loop !137

.lr.ph:                                           ; preds = %.lr.ph.i.i.i12.preheader, %.lr.ph.i.i.i12
  %i.bq = phi ptr [ %i.bo, %.lr.ph.i.i.i12 ], [ %i.bm, %.lr.ph.i.i.i12.preheader ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !133 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !133
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i.i12, label %._ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.loopexit_crit_edge, !llvm.loop !137

._ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %.backedge, !llvm.loop !137

_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit: ; preds = %.lr.ph.i.i.i12.preheader, %.split, %.lr.ph.i.i.i12, %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  store i8 0, ptr %0, align 8, !tbaa !8
  %.not13.i.i14 = icmp eq ptr %.pr, null
  br i1 %.not13.i.i14, label %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit35, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i30
  %.015.i.i16 = phi i32 [ %i.cp, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i30 ], [ 0, %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit ]
  %.sroa.09.014.i.i17 = phi ptr [ %i.cq, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i30 ], [ %.pr, %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i17, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i17, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !138 ; 3 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !71 ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i.i.i.i.i.i.i18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i15
  %i.cd = icmp ugt i64 %i.cc, 9223372036854775792
  br i1 %i.cd, label %.noexc.i.i.i.i.i.i34, label %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19, !prof !139

.noexc.i.i.i.i.i.i34:                             ; preds = %bb.g
  call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19: ; preds = %bb.g
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #26
  %.pre.i.i20 = load ptr, ptr %i.bw, align 8, !tbaa !133
  %.pre17.i.i21 = load ptr, ptr %i.bx, align 8, !tbaa !133
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19, %.lr.ph.i.i15
  %i.cf = phi ptr [ %i.by, %.lr.ph.i.i15 ], [ %.pre17.i.i21, %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19 ] ; 2 uses
  %i.cg = phi ptr [ %i.bz, %.lr.ph.i.i15 ], [ %.pre.i.i20, %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19 ] ; 2 uses
  %i.ch = phi ptr [ null, %.lr.ph.i.i15 ], [ %i.ce, %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19 ] ; 5 uses
  %.not7.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.cg, %i.cf
  br i1 %.not7.i.i.i.i.i.i.i.i.i22, label %.loopexit.i.i27, label %.lr.ph.i.i.i.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i.i.i.i23:                       ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i23
  %.09.i.i.i.i.i.i.i.i.i24 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i23 ], [ %i.ch, %bb.h ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i25 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i23 ], [ %i.cg, %bb.h ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i.i25, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i25, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i24, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.ci, %i.cf
  br i1 %.not.i.i.i.i.i.i.i.i.i26, label %.loopexit.i.i27, label %.lr.ph.i.i.i.i.i.i.i.i.i23, !llvm.loop !140

.loopexit.i.i27:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i23, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i28 = phi ptr [ %i.ch, %bb.h ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i23 ]
  %i.ck = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i.i.i28 to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = lshr exact i64 %i.cm, 4
  %i.co = trunc i64 %i.cn to i32
  %i.cp = add i32 %.015.i.i16, %i.co              ; 2 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i30, label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i27
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cc) #22
  br label %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i30

_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i30: ; preds = %bb.i, %.loopexit.i.i27
  %i.cq = load ptr, ptr %.sroa.09.014.i.i17, align 8, !tbaa !55 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i31, label %_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashImE5IdMapEELb0ELb1EEEjZNKSB_4sizeEvEUlmRKS2_IS7_SC_EE_ET0_T_SK_SJ_T1_.exit.loopexit.i32, label %.lr.ph.i.i15, !llvm.loop !141

_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashImE5IdMapEELb0ELb1EEEjZNKSB_4sizeEvEUlmRKS2_IS7_SC_EE_ET0_T_SK_SJ_T1_.exit.loopexit.i32: ; preds = %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashImE5IdMapEED2Ev.exit.i.i30
  %i.cr = zext i32 %i.cp to i64
  br label %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit35

_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit35: ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit, %_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashImE5IdMapEELb0ELb1EEEjZNKSB_4sizeEvEUlmRKS2_IS7_SC_EE_ET0_T_SK_SJ_T1_.exit.loopexit.i32
  %.0.lcssa.i.i33 = phi i64 [ 0, %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit ], [ %i.cr, %_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashImE5IdMapEELb0ELb1EEEjZNKSB_4sizeEvEUlmRKS2_IS7_SC_EE_ET0_T_SK_SJ_T1_.exit.loopexit.i32 ]
  %i.cs = icmp samesign ult i64 %.0.lcssa.i.i33, %i.ar
  br i1 %i.cs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit35
  call void @_ZN4cvc58internal4expr4attr16AttributeManager16reconstructTableImEEvRNS2_8AttrHashIT_EE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit35.thread, %bb.j, %_ZNK4cvc58internal4expr4attr8AttrHashImE4sizeEv.exit35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal4expr4attr16AttributeManager25deleteAttributesFromTableINS0_12NodeTemplateILb0EEEEEvRNS2_8AttrHashIT_EERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::expr::attr::AttrHash<cvc5::internal::NodeTemplate<false>>::Iterator", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::expr::attr::AttrHash<cvc5::internal::NodeTemplate<false>>::Iterator", align 8 ; 6 uses
  store i8 1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit35.thread, label %bb.b

_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit35.thread: ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !8
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147, !noalias !148 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147, !noalias !148
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.preheader.i, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5beginEv.exit

.lr.ph.i.i.preheader.i:                           ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !148 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5beginEv.exit, label %.lr.ph.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i
  %i.k = load ptr, ptr %i.m, align 8, !tbaa !55, !noalias !148 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5beginEv.exit, label %.lr.ph.i, !llvm.loop !151

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !147, !noalias !148 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !147, !noalias !148
  %i.r = icmp eq ptr %i.o, %i.q                   ; 3 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5beginEv.exit, !llvm.loop !151

_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5beginEv.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i, %bb.b
  %.sroa.041.2 = phi i1 [ true, %.lr.ph.i.i.preheader.i ], [ false, %bb.b ], [ %i.r, %.lr.ph.i.i.i ], [ %i.r, %.lr.ph.i ]
  %.sroa.9.2 = phi ptr [ null, %.lr.ph.i.i.preheader.i ], [ %i.b, %bb.b ], [ %i.m, %.lr.ph.i ], [ null, %.lr.ph.i.i.i ]
  %.sroa.17.2 = phi ptr [ %i.e, %.lr.ph.i.i.preheader.i ], [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i ]
  %i.s = load ptr, ptr %2, align 8, !tbaa !116    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116  ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5beginEv.exit, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i
  %.015.i.i = phi i32 [ %i.as, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i ], [ 0, %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5beginEv.exit ]
  %.sroa.09.014.i.i = phi ptr [ %i.at, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i ], [ %i.b, %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5beginEv.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152  ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !77   ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775792
  br i1 %i.ac, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !139

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #26
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !147
  %.pre17.i.i = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.pre17.i.i, %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.af = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.pre.i.i, %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ag = phi ptr [ null, %.lr.ph.i.i ], [ %i.ad, %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ag, %bb.d ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.af, %bb.d ] ; 3 uses
  %i.ah = load i64, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, align 8, !tbaa !153
  store i64 %i.ah, ptr %.013.i.i.i.i.i.i.i.i.i, align 8, !tbaa !153
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !156
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !156
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !157

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.an = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i.i.i to i64
  %i.ao = ptrtoint ptr %i.ag to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 4
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add i32 %.015.i.i, %i.ar                ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.loopexit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ab) #22
  br label %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i

_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i: ; preds = %bb.e, %.loopexit.i.i
  %i.at = load ptr, ptr %.sroa.09.014.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit, label %.lr.ph.i.i, !llvm.loop !158

_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit: ; preds = %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i
  %i.au = lshr i32 %i.as, 3
  %i.av = zext nneg i32 %i.au to i64
  br i1 %.sroa.041.2, label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit, label %.lr.ph74

.lr.ph74:                                         ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit
  %i.aw = ptrtoint ptr %i.u to i64
  %i.ax = ptrtoint ptr %i.s to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.8.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sroa.844.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.17.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %.lr.ph74
  %.sroa.8.sroa.0.0 = phi <7 x i8> [ undef, %.lr.ph74 ], [ %.sroa.8.sroa.0.1, %.backedge ] ; 3 uses
  %.sroa.17.073 = phi ptr [ %.sroa.17.2, %.lr.ph74 ], [ %.sroa.17.073.be, %.backedge ] ; 3 uses
  %.sroa.9.072 = phi ptr [ %.sroa.9.2, %.lr.ph74 ], [ %.sroa.9.072.be, %.backedge ] ; 4 uses
  %.sroa.844.071 = phi ptr [ %1, %.lr.ph74 ], [ %.sroa.844.071.be, %.backedge ] ; 3 uses
  %i.bb = load i64, ptr %.sroa.17.073, align 8, !tbaa !113, !noalias !159 ; 2 uses
  br i1 %i.ba, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.az, %bb.f ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.s, %bb.f ] ; 2 uses
  %i.bc = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !113
  %i.bf = icmp ult i64 %i.be, %i.bb               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = xor i64 %i.bc, -1
  %i.bi = add nsw i64 %.016.i.i, %i.bh
  %.sroa.011.1.i.i = select i1 %i.bf, ptr %i.bg, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.bf, i64 %i.bi, i64 %i.bc ; 2 uses
  %i.bj = icmp sgt i64 %.1.i.i, 0
  br i1 %i.bj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !145

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.f
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.u
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.bk = load i64, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !113
  %.not = icmp ult i64 %i.bb, %i.bk
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread, label %.split

.split:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i8 0, ptr %4, align 8
  store <7 x i8> %.sroa.8.sroa.0.0, ptr %.sroa.8.0..sroa_idx, align 1
  store ptr %.sroa.844.071, ptr %.sroa.844.0..sroa_idx, align 8
  store ptr %.sroa.9.072, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %.sroa.17.073, ptr %.sroa.17.0..sroa_idx, align 8
  call void @_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE5eraseENS6_8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::expr::attr::AttrHash<cvc5::internal::NodeTemplate<false>>::Iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull byval(%"class.cvc5::internal::expr::attr::AttrHash<cvc5::internal::NodeTemplate<false>>::Iterator") align 8 %4)
  %.sroa.041.0.copyload42 = load i8, ptr %3, align 8
  %.sroa.8.sroa.0.0.copyload149 = load <7 x i8>, ptr %.sroa.8.0..sroa_idx43, align 1
  %.sroa.844.0.copyload46 = load ptr, ptr %.sroa.844.0..sroa_idx45, align 8
  %.sroa.9.0.copyload48 = load ptr, ptr %.sroa.9.0..sroa_idx47, align 8
  %.sroa.17.0.copyload51 = load ptr, ptr %.sroa.17.0..sroa_idx50, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bl = trunc nuw i8 %.sroa.041.0.copyload42 to i1
  br i1 %i.bl, label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit, label %.backedge

.backedge:                                        ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread, %._ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEppEv.exit.loopexit_crit_edge, %.split
  %.sroa.8.sroa.0.1 = phi <7 x i8> [ %.sroa.8.sroa.0.0, %._ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEppEv.exit.loopexit_crit_edge ], [ %.sroa.8.sroa.0.0, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread ], [ %.sroa.8.sroa.0.0.copyload149, %.split ]
  %.sroa.17.073.be = phi ptr [ %i.bw, %._ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEppEv.exit.loopexit_crit_edge ], [ %i.bm, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread ], [ %.sroa.17.0.copyload51, %.split ]
  %.sroa.9.072.be = phi ptr [ %i.bu, %._ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEppEv.exit.loopexit_crit_edge ], [ %.sroa.9.072, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread ], [ %.sroa.9.0.copyload48, %.split ]
  %.sroa.844.071.be = phi ptr [ %.sroa.844.071, %._ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEppEv.exit.loopexit_crit_edge ], [ %.sroa.844.071, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread ], [ %.sroa.844.0.copyload46, %.split ]
  br label %bb.f, !llvm.loop !162

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.17.073, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.9.072, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !147
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i.i12.preheader, label %.backedge

.lr.ph.i.i.i12.preheader:                         ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread
  %i.bq = load ptr, ptr %.sroa.9.072, align 8, !tbaa !55 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit, label %.lr.ph

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph
  %i.bs = load ptr, ptr %i.bu, align 8, !tbaa !55 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit, label %.lr.ph, !llvm.loop !151

.lr.ph:                                           ; preds = %.lr.ph.i.i.i12.preheader, %.lr.ph.i.i.i12
  %i.bu = phi ptr [ %i.bs, %.lr.ph.i.i.i12 ], [ %i.bq, %.lr.ph.i.i.i12.preheader ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !147 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !147
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %.lr.ph.i.i.i12, label %._ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEppEv.exit.loopexit_crit_edge, !llvm.loop !151

._ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %.backedge, !llvm.loop !151

_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit: ; preds = %.lr.ph.i.i.i12.preheader, %.split, %.lr.ph.i.i.i12, %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  store i8 0, ptr %0, align 8, !tbaa !8
  %.not13.i.i14 = icmp eq ptr %.pr, null
  br i1 %.not13.i.i14, label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit35, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i30
  %.015.i.i16 = phi i32 [ %i.cx, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i30 ], [ 0, %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit ]
  %.sroa.09.014.i.i17 = phi ptr [ %i.cy, %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i30 ], [ %.pr, %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i17, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i17, i64 24 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !152 ; 3 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !77 ; 3 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i.i.i.i.i18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i15
  %i.ch = icmp ugt i64 %i.cg, 9223372036854775792
  br i1 %i.ch, label %.noexc.i.i.i.i.i.i34, label %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19, !prof !139

.noexc.i.i.i.i.i.i34:                             ; preds = %bb.g
  call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19: ; preds = %bb.g
  %i.ci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #26
  %.pre.i.i20 = load ptr, ptr %i.ca, align 8, !tbaa !147
  %.pre17.i.i21 = load ptr, ptr %i.cb, align 8, !tbaa !147
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19, %.lr.ph.i.i15
  %i.cj = phi ptr [ %i.cc, %.lr.ph.i.i15 ], [ %.pre17.i.i21, %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19 ] ; 2 uses
  %i.ck = phi ptr [ %i.cd, %.lr.ph.i.i15 ], [ %.pre.i.i20, %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19 ] ; 2 uses
  %i.cl = phi ptr [ null, %.lr.ph.i.i15 ], [ %i.ci, %_ZNSt15__new_allocatorISt4pairImN4cvc58internal12NodeTemplateILb0EEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19 ] ; 5 uses
  %.not11.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.ck, %i.cj
  br i1 %.not11.i.i.i.i.i.i.i.i.i22, label %.loopexit.i.i27, label %.lr.ph.i.i.i.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i.i.i.i23:                       ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i23
  %.013.i.i.i.i.i.i.i.i.i24 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i23 ], [ %i.cl, %bb.h ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i25 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i23 ], [ %i.ck, %bb.h ] ; 3 uses
  %i.cm = load i64, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i25, align 8, !tbaa !153
  store i64 %i.cm, ptr %.013.i.i.i.i.i.i.i.i.i24, align 8, !tbaa !153
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i24, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i25, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !156
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !156
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i25, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i24, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.cq, %i.cj
  br i1 %.not.i.i.i.i.i.i.i.i.i26, label %.loopexit.i.i27, label %.lr.ph.i.i.i.i.i.i.i.i.i23, !llvm.loop !157

.loopexit.i.i27:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i23, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i28 = phi ptr [ %i.cl, %bb.h ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i23 ]
  %i.cs = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i.i.i28 to i64
  %i.ct = ptrtoint ptr %i.cl to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = lshr exact i64 %i.cu, 4
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = add i32 %.015.i.i16, %i.cw              ; 2 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i30, label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i27
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cg) #22
  br label %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i30

_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i30: ; preds = %bb.i, %.loopexit.i.i27
  %i.cy = load ptr, ptr %.sroa.09.014.i.i17, align 8, !tbaa !55 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i31, label %_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb0EEEE5IdMapEELb0ELb1EEEjZNKSD_4sizeEvEUlmRKS2_IS7_SE_EE_ET0_T_SM_SL_T1_.exit.loopexit.i32, label %.lr.ph.i.i15, !llvm.loop !158

_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb0EEEE5IdMapEELb0ELb1EEEjZNKSD_4sizeEvEUlmRKS2_IS7_SE_EE_ET0_T_SM_SL_T1_.exit.loopexit.i32: ; preds = %_ZNSt4pairIPN4cvc58internal4expr9NodeValueENS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEED2Ev.exit.i.i30
  %i.cz = zext i32 %i.cx to i64
  br label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit35

_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit35: ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit, %_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb0EEEE5IdMapEELb0ELb1EEEjZNKSD_4sizeEvEUlmRKS2_IS7_SE_EE_ET0_T_SM_SL_T1_.exit.loopexit.i32
  %.0.lcssa.i.i33 = phi i64 [ 0, %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit ], [ %i.cz, %_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb0EEEE5IdMapEELb0ELb1EEEjZNKSD_4sizeEvEUlmRKS2_IS7_SE_EE_ET0_T_SM_SL_T1_.exit.loopexit.i32 ]
  %i.da = icmp samesign ult i64 %.0.lcssa.i.i33, %i.av
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit35
  call void @_ZN4cvc58internal4expr4attr16AttributeManager16reconstructTableINS0_12NodeTemplateILb0EEEEEvRNS2_8AttrHashIT_EE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit35.thread, %bb.j, %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb0EEEE4sizeEv.exit35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal4expr4attr16AttributeManager25deleteAttributesFromTableINS0_12NodeTemplateILb1EEEEEvRNS2_8AttrHashIT_EERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82, !noalias !163 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE5beginEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166, !noalias !163 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166, !noalias !163
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.preheader.i, label %.lr.ph47

.lr.ph.i.i.preheader.i:                           ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !163 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE5beginEv.exit.thread, label %.lr.ph.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i
  %i.k = load ptr, ptr %i.m, align 8, !tbaa !55, !noalias !163 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE5beginEv.exit.thread, label %.lr.ph.i, !llvm.loop !168

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !166, !noalias !163 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !166, !noalias !163
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.lr.ph47, !llvm.loop !168

_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE5beginEv.exit.thread: ; preds = %.lr.ph.i.i.i, %bb.a, %.lr.ph.i.i.preheader.i
  %i.s = tail call noundef i32 @_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb1EEEE5IdMapEELb0ELb1EEEjZNKSD_4sizeEvEUlmRKS2_IS7_SE_EE_ET0_T_SM_SL_T1_(ptr %i.b, ptr null, i32 noundef 0)
  br label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEneERKSP_.exit

.lr.ph47:                                         ; preds = %.lr.ph.i, %bb.b
  %.sroa.11.2 = phi ptr [ %i.b, %bb.b ], [ %i.m, %.lr.ph.i ]
  %.sroa.20.2 = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i ]
  %i.t = load ptr, ptr %2, align 8, !tbaa !116    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116  ; 2 uses
  %i.w = tail call noundef i32 @_ZSt10accumulateINSt8__detail20_Node_const_iteratorISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb1EEEE5IdMapEELb0ELb1EEEjZNKSD_4sizeEvEUlmRKS2_IS7_SE_EE_ET0_T_SM_SL_T1_(ptr nonnull %i.b, ptr null, i32 noundef 0) ; 4 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.lr.ph47
  %.sroa.20.046 = phi ptr [ %.sroa.20.2, %.lr.ph47 ], [ %.sroa.20.046.be, %.backedge ] ; 4 uses
  %.sroa.11.045 = phi ptr [ %.sroa.11.2, %.lr.ph47 ], [ %.sroa.11.045.be, %.backedge ] ; 11 uses
  %i.ad = load i64, ptr %.sroa.20.046, align 8, !tbaa !113, !noalias !169 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.20.046, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !172, !noalias !174 ; 7 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !174 ; 4 uses
  %i.ah = lshr i64 %i.ag, 40
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1048575                  ; 3 uses
  %i.ak = icmp samesign ult i32 %i.aj, 1048574
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !177

bb.d:                                             ; preds = %bb.c
  %i.al = add nuw nsw i32 %i.aj, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 40
  %i.ao = and i64 %i.ag, -1152920405095219201
  %i.ap = or i64 %i.an, %i.ao                     ; 2 uses
  store i64 %i.ap, ptr %i.af, align 8, !noalias !174
  br label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEdeEv.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = icmp eq i32 %i.aj, 1048574
  br i1 %i.aq, label %bb.f, label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEdeEv.exit, !prof !139

bb.f:                                             ; preds = %bb.e
  %i.ar = or i64 %i.ag, 1152920405095219200
  store i64 %i.ar, ptr %i.af, align 8, !noalias !174
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !174
  %.pre = load i64, ptr %i.af, align 8
  br label %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEdeEv.exit

_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEdeEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.as = phi i64 [ %i.ap, %bb.d ], [ %i.ag, %bb.e ], [ %.pre, %bb.f ] ; 3 uses
  %i.at = and i64 %i.as, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.at, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit, label %bb.g, !prof !139

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEdeEv.exit
  %i.au = add i64 %i.as, 1152920405095219200
  %i.av = and i64 %i.au, 1152920405095219200      ; 2 uses
  %i.aw = and i64 %i.as, -1152920405095219201
  %i.ax = or disjoint i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.af, align 8
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %bb.h, label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit, !prof !139

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit: ; preds = %_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEdeEv.exit, %bb.g, %bb.h
  br i1 %i.ab, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.aa, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.t, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit ] ; 2 uses
  %i.bb = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !113
  %i.be = icmp ult i64 %i.bd, %i.ad               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = xor i64 %i.bb, -1
  %i.bh = add nsw i64 %.016.i.i, %i.bg
  %.sroa.011.1.i.i = select i1 %i.be, ptr %i.bf, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.be, i64 %i.bh, i64 %i.bb ; 2 uses
  %i.bi = icmp sgt i64 %.1.i.i, 0
  br i1 %i.bi, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !145

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.t, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev.exit ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.v
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.bj = load i64, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !113
  %.not = icmp ult i64 %i.ad, %i.bj
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmEbT_S8_RKT0_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.11.045, i64 16 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !166, !noalias !178 ; 2 uses
  %i.bm = ptrtoint ptr %.sroa.20.046 to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo
  %i.bq = tail call ptr @_ZNSt6vectorISt4pairImN4cvc58internal12NodeTemplateILb1EEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr %i.bp), !noalias !178 ; 3 uses
  %i.br = icmp eq ptr %.sroa.11.045, null         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.11.045, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !166, !noalias !178 ; 2 uses
  %i.bu = icmp eq ptr %i.bq, %i.bt
  br i1 %i.bu, label %.lr.ph.i.preheader.i, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEE8legalizeEv.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %i.bv = load ptr, ptr %.sroa.11.045, align 8, !tbaa !55, !noalias !178 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEE8legalizeEv.exit.i, label %.lr.ph.i12

.lr.ph.i.i:                                       ; preds = %.lr.ph.i12
  %i.bx = load ptr, ptr %i.bz, align 8, !tbaa !55, !noalias !178 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEE8legalizeEv.exit.i, label %.lr.ph.i12, !llvm.loop !168

.lr.ph.i12:                                       ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %i.bz = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.bv, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !166, !noalias !178 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !166, !noalias !178
  %i.ce = icmp eq ptr %i.cb, %i.cd
  br i1 %i.ce, label %.lr.ph.i.i, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEE8legalizeEv.exit.i, !llvm.loop !168

_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEE8legalizeEv.exit.i: ; preds = %.lr.ph.i12, %.lr.ph.i.i, %.lr.ph.i.preheader.i, %bb.j
  %.sroa.9.0 = phi ptr [ %i.bq, %bb.j ], [ %i.bq, %.lr.ph.i.preheader.i ], [ %i.cb, %.lr.ph.i.i ], [ %i.cb, %.lr.ph.i12 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.11.045, %bb.j ], [ null, %.lr.ph.i.preheader.i ], [ %i.bz, %.lr.ph.i12 ], [ null, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.shrunk = phi i1 [ %i.br, %bb.j ], [ true, %.lr.ph.i.preheader.i ], [ %i.br, %.lr.ph.i12 ], [ true, %.lr.ph.i.i ] ; 2 uses
  %i.cf = load ptr, ptr %i.bk, align 8, !tbaa !166, !noalias !178
  %i.cg = icmp eq ptr %i.cf, %i.bt
  br i1 %i.cg, label %bb.k, label %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEEppEv.exit

bb.k:                                             ; preds = %_ZN4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE8IteratorIS6_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS6_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPSA_ImS5_ESt6vectorISJ_SaISJ_EEEEE8legalizeEv.exit.i
  %i.ch = load i64, ptr %i.ac, align 8, !tbaa !45, !noalias !178
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.11.045, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !58, !noalias !178
  %i.ck = urem i64 %i.cj, %i.ch                   ; 2 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !44, !noalias !178
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60, !noalias !178
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.cn, %bb.k ], [ %i.co, %bb.l ] ; 2 uses
  %i.co = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !55, !noalias !178 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.co, %.sroa.11.045
end_hunk_0
