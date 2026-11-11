Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Probabilities?download=true
inline.NumInlined: 1816
inline.NumDeleted: 778
begin_hunk_0_@_ZN13GroupProbElem14get_all_valuesERSt6vectorIP14SingleProbElemSaIS2_EE:bb.a
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIP14SingleProbElemSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
  unreachable

_ZNKSt6vectorIP14SingleProbElemSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !90
  store ptr %i.y, ptr %i.x, align 8, !tbaa !90
  %i.z = icmp sgt i64 %i.o, 0
  br i1 %i.z, label %bb.f, label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP14SingleProbElemSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP14SingleProbElemSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.w, ptr %1, align 8, !tbaa !166
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !164
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !165
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ac = phi ptr [ %i.g, %bb.c ], [ %i.ab, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ad = phi ptr [ %i.k, %bb.c ], [ %i.aa, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ae = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.05) #26 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %._crit_edge, label %bb.b, !llvm.loop !4
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13GroupProbElem12dump_defaultERSo(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !84, !range !85, !noundef !41
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.g, i8 40, i8 91             ; 2 uses
  %i.i = select i1 %i.g, i8 41, i8 93             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.h, ptr %i.d, align 1, !tbaa !65
  %i.j = load ptr, ptr %1, align 8, !tbaa !19
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !76
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %i.h) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !63
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.s, i64 noundef %i.u) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 44, ptr %i.c, align 1, !tbaa !65
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !76
  %.not.i15 = icmp eq i64 %i.ab, 0
  br i1 %.not.i15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef signext 44) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN13GroupProbElem14get_all_valuesERSt6vectorIP14SingleProbElemSaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ] ; 7 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ] ; 3 uses
  %i.ai = phi ptr [ %i.bb, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ] ; 3 uses
  %i.aj = phi ptr [ %.sroa.10.0, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ] ; 3 uses
  %.sroa.02.05.i = phi ptr [ %i.bc, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i ], [ %i.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !90
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %.sroa.0.1 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.h, label %_ZNKSt6vectorIP14SingleProbElemSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIP14SingleProbElemSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #27
          to label %.noexc18 unwind label %.loopexit ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIP14SingleProbElemSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !90
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !90
  %i.az = icmp sgt i64 %i.ao, 0
  br i1 %i.az, label %bb.i, label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc18
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %.sroa.0.1, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.i, %.noexc18
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ao) #25
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au ; 2 uses
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0.2 = phi ptr [ %i.aw, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0.1, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %i.ax, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aj, %bb.f ]
  %.sroa.15.2 = phi ptr [ %i.ba, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.15.1, %bb.f ] ; 2 uses
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ai, %bb.f ]
  %.sroa.10.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.bc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.05.i) #26 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ag
  br i1 %i.bd, label %_ZN13GroupProbElem14get_all_valuesERSt6vectorIP14SingleProbElemSaIS2_EE.exit, label %.lr.ph.i, !llvm.loop !4

_ZN13GroupProbElem14get_all_valuesERSt6vectorIP14SingleProbElemSaIS2_EE.exit: ; preds = %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  %.sroa.0.3 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %.sroa.0.2, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i ] ; 8 uses
  %.sroa.10.1 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %.sroa.10.0, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i ] ; 2 uses
  %.sroa.15.3 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %.sroa.15.2, %_ZNSt6vectorIP14SingleProbElemSaIS1_EE9push_backERKS1_.exit.i ] ; 5 uses
  %i.be = ptrtoint ptr %.sroa.10.1 to i64
  %i.bf = ptrtoint ptr %.sroa.0.3 to i64          ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, -1                   ; 2 uses
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %_ZN13GroupProbElem14get_all_valuesERSt6vectorIP14SingleProbElemSaIS2_EE.exit
  %i.bj = getelementptr inbounds i8, ptr %.sroa.10.1, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(52) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.q unwind label %.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZN13GroupProbElem14get_all_valuesERSt6vectorIP14SingleProbElemSaIS2_EE.exit, %bb.n
  %.050 = phi i64 [ %i.cb, %bb.n ], [ 0, %_ZN13GroupProbElem14get_all_valuesERSt6vectorIP14SingleProbElemSaIS2_EE.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3, i64 %.050
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !90 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.k unwind label %.thread

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 44, ptr %i.b, align 1, !tbaa !65
  %i.bt = load ptr, ptr %1, align 8, !tbaa !19
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %1, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !76
  %.not.i19 = icmp eq i64 %i.by, 0
  br i1 %.not.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.n unwind label %.thread    ; 0 uses

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 44)
          to label %bb.n unwind label %.thread    ; 0 uses

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cb = add nuw i64 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.bi
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !167

.thread:                                          ; preds = %bb.m, %bb.l, %.lr.ph
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit:                                        ; preds = %_ZNKSt6vectorIP14SingleProbElemSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.h, %bb.r, %bb.s
  %.sroa.0.0.ph.ph = phi ptr [ %.sroa.0.1, %bb.h ], [ %.sroa.0.3, %._crit_edge ], [ %.sroa.0.3, %bb.s ], [ %.sroa.0.3, %bb.r ]
  %.sroa.15.0.ph.ph = phi ptr [ %.sroa.15.1, %bb.h ], [ %.sroa.15.3, %._crit_edge ], [ %.sroa.15.3, %bb.s ], [ %.sroa.15.3, %bb.r ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.0.0.ph.ph, %.loopexit.split-lp ] ; 3 uses
  %.sroa.15.0.ph = phi ptr [ %.sroa.15.1, %.loopexit ], [ %.sroa.15.0.ph.ph, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP14SingleProbElemSaIS1_EED2Ev.exit, label %._crit_edge55

._crit_edge55:                                    ; preds = %bb.o
  %.pre = ptrtoint ptr %.sroa.0.0.ph to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge55, %.thread
  %.pre-phi = phi i64 [ %.pre, %._crit_edge55 ], [ %i.bf, %.thread ]
  %lpad.phi43 = phi { ptr, i32 } [ %lpad.phi, %._crit_edge55 ], [ %lpad.thr_comm, %.thread ]
  %.sroa.15.042.a = phi ptr [ %.sroa.15.0.ph, %._crit_edge55 ], [ %.sroa.15.3, %.thread ]
  %.sroa.0.041 = phi ptr [ %.sroa.0.0.ph, %._crit_edge55 ], [ %.sroa.0.3, %.thread ]
  %i.cc = ptrtoint ptr %.sroa.15.042.a to i64
  %i.cd = sub i64 %i.cc, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.041, i64 noundef %i.cd) #25
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EED2Ev.exit

_ZNSt6vectorIP14SingleProbElemSaIS1_EED2Ev.exit:  ; preds = %bb.o, %bb.p
  %lpad.phi44 = phi { ptr, i32 } [ %lpad.phi, %bb.o ], [ %lpad.phi43, %bb.p ]
  resume { ptr, i32 } %lpad.phi44

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.i, ptr %i.a, align 1, !tbaa !65
  %i.ce = load ptr, ptr %1, align 8, !tbaa !19
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !76
  %.not.i24 = icmp eq i64 %i.cj, 0
  br i1 %.not.i24, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.t unwind label %.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %bb.q
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %i.i)
          to label %bb.t unwind label %.loopexit.split-lp ; 0 uses

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i29 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIP14SingleProbElemSaIS1_EED2Ev.exit30, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = ptrtoint ptr %.sroa.15.3 to i64
  %i.cn = sub i64 %i.cm, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.cn) #25
  br label %_ZNSt6vectorIP14SingleProbElemSaIS1_EED2Ev.exit30

_ZNSt6vectorIP14SingleProbElemSaIS1_EED2Ev.exit30: ; preds = %bb.t, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13GroupProbElem8dump_valERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !84, !range !85, !noundef !41
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.g, i8 40, i8 91             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.h, ptr %i.d, align 1, !tbaa !65
  %i.i = load ptr, ptr %1, align 8, !tbaa !19
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !76
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %i.h) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.o, %bb.b ], [ %1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !63
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.r, i64 noundef %i.t) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 44, ptr %i.c, align 1, !tbaa !65
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !76
  %.not.i9 = icmp eq i64 %i.aa, 0
  br i1 %.not.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 44) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !58
  %.not = icmp eq i64 %i.ag, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11
  %.sroa.0.0.lcssa = phi ptr [ %i.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11 ], [ %i.bi, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ]
  %i.ah = select i1 %i.g, i8 41, i8 93            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(52) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ah, ptr %i.b, align 1, !tbaa !65
  %i.an = load ptr, ptr %1, align 8, !tbaa !19
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !76
  %.not.i12 = icmp eq i64 %i.as, 0
  br i1 %.not.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

bb.g:                                             ; preds = %._crit_edge
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  %.021 = phi i64 [ %i.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11 ]
  %.sroa.0.020 = phi ptr [ %i.bi, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !49 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(52) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 44, ptr %i.a, align 1, !tbaa !65
  %i.ba = load ptr, ptr %1, align 8, !tbaa !19
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !76
  %.not.i15 = icmp eq i64 %i.bf, 0
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.i:                                             ; preds = %.lr.ph
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 44) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.020) #26 ; 2 uses
  %i.bj = add nuw i64 %.021, 1                    ; 2 uses
  %i.bk = load i64, ptr %i.af, align 8, !tbaa !58
  %i.bl = add i64 %i.bk, -1
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !168
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13Probabilities10initializeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN13Probabilities20set_single_name_mapsEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  tail call void @_ZN13Probabilities23initialize_single_probsEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  tail call void @_ZN13Probabilities26set_default_statement_probEv(ptr noundef nonnull align 8 dereferenceable(288) %0), !inline_history !169
  tail call void @_ZN13Probabilities26set_default_unary_ops_probEv(ptr noundef nonnull align 8 dereferenceable(288) %0), !inline_history !169
  tail call void @_ZN13Probabilities27set_default_binary_ops_probEv(ptr noundef nonnull align 8 dereferenceable(288) %0), !inline_history !169
  tail call void @_ZN13Probabilities29set_default_simple_types_probEv(ptr noundef nonnull align 8 dereferenceable(288) %0), !inline_history !169
  tail call void @_ZN13Probabilities30set_default_safe_ops_size_probEv(ptr noundef nonnull align 8 dereferenceable(288) %0), !inline_history !169
  tail call void @_ZN15StatementAssign20InitProbabilityTableEv(), !inline_history !169
  tail call void @_ZN10Expression21InitProbabilityTablesEv(), !inline_history !169
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN13Probabilities15DestroyInstanceEv() local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN13Probabilities9instance_E, align 8, !tbaa !47 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
