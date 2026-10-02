Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.15?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
begin_hunk_0_@_RNvMs_NtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_typeNtB4_9ErrorType10named_attr:bb.a
bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 @36) #19
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ag
  unreachable

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtCsgSMwPvzVUxY_11proc_macro24SpanE6unwrapCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.af
  %i.bc = extractvalue { i32, i32 } %i.az, 1
  %i.bd = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_(ptr align 8 %3, ptr nonnull @28, i64 29, i32 %i.bc)
          to label %bb.ah unwind label %bb.ad

bb.ah:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtCsgSMwPvzVUxY_11proc_macro24SpanE6unwrapCs2SM5xCHwwDm_13logos_codegen.exit
  %i.be = invoke i32 @_RNvMs_NtCs2SM5xCHwwDm_13logos_codegen4leafNtB4_8Callback4span(ptr nonnull align 8 %i.f)
          to label %bb.ai unwind label %bb.ad

bb.ai:                                            ; preds = %bb.ah
  %i.bf = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr align 8 %i.bd, ptr nonnull @29, i64 26, i32 %i.be)
          to label %bb.aj unwind label %bb.ad     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2SM5xCHwwDm_13logos_codegen4leaf8CallbackEBF_(ptr nonnull align 8 %i.f)
          to label %bb.p unwind label %.thread25

bb.ak:                                            ; preds = %bb.s
  %lpad.thr_comm.split-lp24 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.l) #20
          to label %.thread19 unwind label %bb.r

bb.al:                                            ; preds = %bb.t
  %i.bg = invoke align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB3_6Parser3errReEB5_(ptr align 8 %3, ptr nonnull @30, i64 24, i32 %i.ap)
          to label %bb.p unwind label %bb.g       ; 0 uses

bb.am:                                            ; preds = %bb.p
  br i1 %.sroa.0.1, label %bb.an, label %.invoke

.invoke28:                                        ; preds = %bb.p, %bb.y
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested11NestedValueEBH_(ptr nonnull align 8 %i.s)
          to label %.invoke unwind label %bb.e

.invoke:                                          ; preds = %.invoke28, %bb.am, %bb.an, %bb.y
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.m)
          to label %bb.z unwind label %.split.thread

bb.an:                                            ; preds = %bb.am
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.bh)
          to label %.invoke unwind label %bb.e

bb.ao:                                            ; preds = %.thread19
  br i1 %.sroa.0.0, label %bb.aq, label %bb.d

bb.ap:                                            ; preds = %.thread19
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested11NestedValueEBH_(ptr nonnull align 8 %i.s) #20
          to label %bb.d unwind label %bb.r

bb.aq:                                            ; preds = %bb.ao
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.bi) #20
          to label %bb.d unwind label %bb.r

bb.ar:                                            ; preds = %.split.thread, %bb.as, %bb.b
  %.pn1214 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn1215, %bb.as ], [ %.pn10, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro25IdentEBD_(ptr align 8 %1) #20
          to label %bb.at unwind label %bb.r

bb.as:                                            ; preds = %.split, %bb.b
  %.pn1215 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %.pn10, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested11NestedValueEBH_(ptr align 8 %2) #20
          to label %bb.ar unwind label %bb.r

bb.at:                                            ; preds = %bb.ar
  resume { ptr, i32 } %.pn1214
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_typeNtB4_9ErrorType3new(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -3, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvMs_NtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_typeNtB4_9ErrorType4span(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @_RNvXNtCshx33xqnyVJN_3syn7spannedNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB2_7Spanned4spanCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0)
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs2SM5xCHwwDm_13logos_codegen(i64 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen(i64 %0, i64 %1, i1 zeroext false) #17
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 %0, i64 %1) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util10get_states(ptr sret([32 x i8]) align 8 %0, ptr align 16 %1, i32 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [64 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  call void @_RNvMNtNtNtCsG258MDvU3F_3std11collections4hash3setINtB2_7HashSetNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDE3newCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([48 x i8]) align 8 %i.k) #17
  %i.l = invoke zeroext i1 @_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDE6insertCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.k, i32 %2)
          to label %bb.c unwind label %.split.thread ; 0 uses

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.06.2, label %bb.y, label %bb.x

.split.thread:                                    ; preds = %bb.a, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.m = invoke { ptr, i64 } @_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen(i64 4, i64 4, i1 zeroext false) #17
          to label %.noexc unwind label %.split.thread

.noexc:                                           ; preds = %bb.c
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxANtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDj1_E10new_uninitCs2SM5xCHwwDm_13logos_codegen.exit

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 4, i64 4) #21
          to label %.noexc10 unwind label %.split.thread

.noexc10:                                         ; preds = %bb.d
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxANtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDj1_E10new_uninitCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %.noexc
  store i32 %2, ptr %i.n, align 4
  store i64 1, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %i.q, align 8
  br label %.loopexit32

.loopexit32:                                      ; preds = %bb.l, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxANtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDj1_E10new_uninitCs2SM5xCHwwDm_13logos_codegen.exit
  %i.r = invoke { i32, i32 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDE3popBK_(ptr nonnull align 8 %i.j)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit ; 2 uses

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.r, %bb.v
  %.sroa.06.2 = phi i1 [ false, %bb.r ], [ false, %bb.v ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %i.t, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp28, %bb.r ], [ %lpad.thr_comm27, %bb.v ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit33, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp34, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEEB1e_(ptr nonnull align 8 %i.j) #20
          to label %bb.b unwind label %bb.w

.loopexit:                                        ; preds = %.backedge, %bb.m, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc21, %_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14next_eoi_stateCs2SM5xCHwwDm_13logos_codegen.exit.i, %.noexc18, %.noexc17, %.noexc16, %_RNvMs0_NtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB5_11ByteClasses3eoiCs2SM5xCHwwDm_13logos_codegen.exit.i, %.noexc13, %.noexc12, %.noexc11, %bb.f, %bb.j, %.loopexit32
  %lpad.loopexit33 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h, %bb.g, %bb.p, %bb.i
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.loopexit32
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = trunc i32 %i.s to i1                     ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = extractvalue { i32, i32 } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = invoke i24 @_RNvMs5_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_14RangeInclusivehE3newCs8UJyeeIGyGC_12regex_syntax(i8 0, i8 -1) #17
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %bb.f
  invoke void @_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0EB2L_(ptr nonnull sret([24 x i8]) align 8 %i.b, i24 %i.v, ptr align 16 %1, i32 %i.u) #17
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11
  store i32 %i.u, ptr %i.a, align 4, !noalias !11
  %i.w = invoke ptr @_RNvMs4_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE12byte_classesB9_(ptr align 16 %1)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %.noexc12
  %i.x = getelementptr i8, ptr %i.w, i64 255
  %.val.i.i = load i8, ptr %i.x, align 1, !noalias !11
  %i.y = zext i8 %.val.i.i to i64
  %i.z = add nuw nsw i64 %i.y, 2
  %i.aa = invoke { i64, i64 } @_RNvMs9_NtCskKLDkoKarTP_4core3numj11checked_subCs2SM5xCHwwDm_13logos_codegen(i64 %i.z, i64 1) #17
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc14:                                         ; preds = %.noexc13
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %_RNvMs0_NtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB5_11ByteClasses3eoiCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc14
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 @16) #19
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_RNvMs0_NtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB5_11ByteClasses3eoiCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %.noexc14
  %i.ad = extractvalue { i64, i64 } %i.aa, 1
  %i.ae = invoke i32 @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 %i.ad)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %_RNvMs0_NtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB5_11ByteClasses3eoiCs2SM5xCHwwDm_13logos_codegen.exit.i
  %i.af = invoke i64 @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB2_4Unit8as_usize(i32 %i.ae)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %.noexc16
  %i.ag = invoke i64 @_RNvMs1r_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_7StateID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %i.a) #17
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %.noexc17
  %i.ah = add i64 %i.ag, %i.af                    ; 3 uses
  %i.ai = invoke { ptr, i64 } @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE5transB9_(ptr align 16 %1)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc19:                                         ; preds = %.noexc18
  %i.aj = extractvalue { ptr, i64 } %i.ai, 1      ; 2 uses
  %i.ak = icmp ult i64 %i.ah, %i.aj
  br i1 %i.ak, label %_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14next_eoi_stateCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc19
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.ah, i64 %i.aj, ptr nonnull align 8 @49) #19
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.h
  unreachable

_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14next_eoi_stateCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %.noexc19
  %i.al = extractvalue { ptr, i64 } %i.ai, 0
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ah
  %i.an = load i32, ptr %i.am, align 4, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11
  %i.ao = invoke { i32, i32 } @_RINvNtNtNtCskKLDkoKarTP_4core4iter7sources4once4onceNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDECs2SM5xCHwwDm_13logos_codegen(i32 %i.an)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc21:                                         ; preds = %_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14next_eoi_stateCs2SM5xCHwwDm_13logos_codegen.exit.i
  %i.ap = extractvalue { i32, i32 } %i.ao, 0
  %i.aq = extractvalue { i32, i32 } %i.ao, 1
  invoke void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusivehENCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0ENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources4once4OnceNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEEB1B_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.b, i32 %i.ap, i32 %i.aq) #17
          to label %bb.j unwind label %.loopexit.split-lp.loopexit

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  invoke void @_RNvXsj_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([64 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtBQ_3map3MapINtNtNtB8_3ops5range14RangeInclusivehENCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0EINtNtNtB6_7sources4once4OnceNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEENtB2_12IntoIterator9into_iterB2g_(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.k
  %i.ar = invoke { i32, i32 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusivehENCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0EINtNtNtB8_7sources4once4OnceNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator4nextB1Z_(ptr nonnull align 8 %i.g)
          to label %bb.l unwind label %.loopexit  ; 2 uses

bb.l:                                             ; preds = %.backedge
  %i.as = extractvalue { i32, i32 } %i.ar, 0
  %i.at = extractvalue { i32, i32 } %i.ar, 1      ; 2 uses
  %i.au = trunc i32 %i.as to i1
  br i1 %i.au, label %bb.m, label %.loopexit32

bb.m:                                             ; preds = %bb.l
  %i.av = invoke zeroext i1 @_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDE6insertCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.k, i32 %i.at)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  br i1 %i.av, label %bb.o, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.n, %bb.o
  br label %.backedge

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDE4pushBL_(ptr nonnull align 8 %i.j, i32 %i.at)
          to label %.backedge.backedge unwind label %.loopexit

bb.p:                                             ; preds = %bb.i
  invoke void @_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecBY_EECs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.aw = invoke { ptr, i64 } @_RNvXs9_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutBL_(ptr nonnull align 8 %i.f)
          to label %bb.s unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.t
  %lpad.thr_comm.split-lp28 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  invoke void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateID13sort_unstableCs2SM5xCHwwDm_13logos_codegen(ptr align 4 %i.ax, i64 %i.ay)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEEB1e_(ptr nonnull align 8 %i.j)
  ret void

bb.v:                                             ; preds = %bb.s, %bb.q
  %lpad.thr_comm27 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEEB1e_(ptr nonnull align 8 %i.f) #20
          to label %.loopexit.split-lp unwind label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v, %.loopexit.split-lp
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.b
  %.pn.pn23 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn.pn24, %bb.y ]
  resume { ptr, i32 } %.pn.pn23

bb.y:                                             ; preds = %.split.thread, %bb.b
  %.pn.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.k) #20
          to label %bb.x unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util12iter_matches(ptr sret([32 x i8]) align 8 %0, i32 %1, ptr align 16 %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata3dfa7specialNtB2_7Special14is_match_stateCs2SM5xCHwwDm_13logos_codegen(ptr align 16 %2, i32 %1) #17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE17match_pattern_lenB9_(ptr align 16 %2, i32 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  tail call void @_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdNCNvNtNtB1y_5graph8dfa_util12iter_matches0EB1y_(ptr sret([32 x i8]) align 8 %0, i64 0, i64 %.sroa.0.0, ptr align 16 %2, i32 %1) #17
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_typeNtB2_9ErrorTypeNtNtCskKLDkoKarTP_4core7default7Default7default(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.b) #20
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_group(ptr nonnull align 8 %i.b, i8 0, ptr nonnull align 8 %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -3, ptr %i.d, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtB4_9try_trait3Try11from_outputB14_() unnamed_addr #4 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtB4_9try_trait3Try6branchB14_(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  %.3 = select i1 %i.a, i64 %1, i64 undef
  %i.b = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.3, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterINtNtB8_6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEENCNvMNtNtB2g_9generator4forkNtB34_9Generator15impl_fork_tables_0ENtB2_12IntoIterator9into_iterB2g_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph11ComparisonsNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2SM5xCHwwDm_13logos_codegen5graph11ComparisonsEEB1j_(ptr nonnull align 8 %i.a) #20
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2SM5xCHwwDm_13logos_codegen5graph11ComparisonsEEB1j_(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDE3popBK_

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtBQ_3map3MapINtNtNtB8_3ops5range14RangeInclusivehENCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0EINtNtNtB6_7sources4once4OnceNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEENtB2_12IntoIterator9into_iterB2g_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusivehENCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0EINtNtNtB8_7sources4once4OnceNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator4nextB1Z_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDE4pushBL_(ptr align 8, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsj_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr sret([64 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecBY_EECs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs9_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutBL_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateID13sort_unstableCs2SM5xCHwwDm_13logos_codegen(ptr align 4, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEEB1e_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEECs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdNCNvNtNtB1y_5graph8dfa_util12iter_matches0EB1y_(ptr sret([32 x i8]) align 8, i64, i64, ptr align 16, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i24 @_RNvMs5_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_14RangeInclusivehE3newCs8UJyeeIGyGC_12regex_syntax(i8, i8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0EB2L_(ptr sret([24 x i8]) align 8, i24, ptr align 16, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RINvNtNtNtCskKLDkoKarTP_4core4iter7sources4once4onceNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDECs2SM5xCHwwDm_13logos_codegen(i32) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusivehENCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0ENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources4once4OnceNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEEB1B_(ptr sret([32 x i8]) align 8, ptr align 8, i32, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice3raw14from_raw_partsNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDEBV_(ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr sret([32 x i8]) align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs36YJ3mR2EUy_5quote9___private10push_group(ptr align 8, i8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs2SM5xCHwwDm_13logos_codegen(ptr align 8, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2SM5xCHwwDm_13logos_codegen5graph11ComparisonsEEB1j_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdjEEEB1k_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtBa_6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintB1f_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCshx33xqnyVJN_3syn5parseNtB5_11ParseBuffer10lookahead1(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RINvMNtCshx33xqnyVJN_3syn9lookaheadNtB3_10Lookahead14peekNvNtB5_3lit6LitStrEB5_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RINvMNtCshx33xqnyVJN_3syn9lookaheadNtB3_10Lookahead14peekNvNtB5_3lit10LitByteStrECs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCshx33xqnyVJN_3syn9lookaheadNtB2_10Lookahead15error(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs9_NtCshx33xqnyVJN_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_3lit10LitByteStrECs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCshx33xqnyVJN_3syn3lit10LitByteStrNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition7LiteralNtNtCshx33xqnyVJN_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1K_EE13from_residualBQ_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs9_NtCshx33xqnyVJN_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_3lit6LitStrEB8_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCshx33xqnyVJN_3syn3lit6LitStrNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn9lookahead10Lookahead1EBF_(ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #12

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEE4nextCs36YJ3mR2EUy_5quote(ptr sret([32 x i8]) align 8, ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitbEE4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr, ptr, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuEENtNtNtNtBU_4iter6traits7collect12IntoIterator9into_iterB1v_(ptr sret([64 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBR_9ByteClassEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr sret([64 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr sret([64 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr sret([64 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTAbj100_jEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_EE9next_implKb0_EBZ_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEE9next_implKb0_EB1Y_(ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #16

; Function Attrs: inlinehint nounwind nonlazybind uwtable
declare hidden void @_RNvNvNtCskKLDkoKarTP_4core4hint21unreachable_unchecked18precondition_checkCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare ptr @_RNvMs4_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE12byte_classesB9_(ptr align 16) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE5transB9_(ptr align 16) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata3dfa7specialNtB2_7Special14is_match_stateCs2SM5xCHwwDm_13logos_codegen(ptr align 4, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB2_4Unit8as_usize(i32) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE17match_pattern_lenB9_(ptr align 16, i32) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { inlinehint }
attributes #18 = { noinline }
attributes #19 = { noinline noreturn }
attributes #20 = { cold }
attributes #21 = { noreturn }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"address", !"read_provenance"}
!5 = !{}
!9 = distinct !{!9, i1 false, !"_RNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children"}
!10 = distinct !{!10, !9, !"_RNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children: argument 0"}
!11 = !{!10}
end_hunk_1
