Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/PartialExpander?download=true
inline.NumInlined: 280
inline.NumDeleted: 152
begin_hunk_0_@_ZN15PartialExpander21init_partial_expanderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i8 %i.v, ptr %i.w, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.x = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i) #20 ; 2 uses
  %i.y = icmp eq ptr %i.x, getelementptr inbounds nuw (i8, ptr @_ZN15PartialExpander8expands_E, i64 8)
  br i1 %i.y, label %_ZN15PartialExpander12copy_expandsERSt3mapI14eStatementTypebSt4lessIS1_ESaISt4pairIKS1_bEEERKS8_.exit, label %.lr.ph.i, !llvm.loop !1

_ZN15PartialExpander12copy_expandsERSt3mapI14eStatementTypebSt4lessIS1_ESaISt4pairIKS1_bEEERKS8_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15PartialExpander13parse_optionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.c = sext i8 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.a
  %.014 = phi i64 [ 0, %bb.a ], [ %.115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ] ; 8 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !35   ; 5 uses
  %i.f = icmp ult i64 %.014, %i.e
  br i1 %i.f, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.h = sub nuw i64 %i.e, %.014
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.014
  %i.j = call ptr @memchr(ptr noundef %i.i, i32 noundef %i.c, i64 noundef %i.h) #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l
  %.0.i.i = select i1 %.not.i.i, i64 -1, i64 %i.m
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit: ; preds = %bb.b, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.1.i.i = phi i64 [ %.0.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ -1, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.n = icmp ugt i64 %.014, %i.e
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i64 noundef %.014, i64 noundef %i.e) #19, !noalias !66
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit
  %i.o = sub i64 %.1.i.i, %.014
  store ptr %i.b, ptr %2, align 8, !tbaa !67, !alias.scope !66
  %i.p = load ptr, ptr %0, align 8, !tbaa !36, !noalias !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.014 ; 2 uses
  %i.r = sub nuw i64 %i.e, %.014
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.r) ; 8 uses
  %i.s = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.s, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.t = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.t, label %.noexc10.i.i, label %bb.e

.noexc10.i.i:                                     ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw i64 %spec.select.i.i.i, 1        ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !68

.noexc11.i.i:                                     ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.w = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #22 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !36, !alias.scope !66
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !26, !alias.scope !66
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.x = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.q, align 1, !tbaa !26
  store i8 %i.y, ptr %i.x, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.q, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !35, !alias.scope !66
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select.i.i.i
  store i8 0, ptr %i.z, align 1, !tbaa !26
  %i.aa = invoke noundef zeroext i1 @_ZN15PartialExpander10set_expandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.aa, label %bb.j, label %bb.l

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.b
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !26
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ab

bb.j:                                             ; preds = %bb.h
  %i.ag = icmp eq i64 %.1.i.i, -1
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nuw i64 %.1.i.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.k
  %cond = phi i1 [ false, %bb.h ], [ true, %bb.k ], [ false, %bb.j ]
  %i.ai = phi i1 [ false, %bb.h ], [ false, %bb.k ], [ true, %bb.j ]
  %.115 = phi i64 [ %.1.i.i, %bb.h ], [ %i.ah, %bb.k ], [ -1, %bb.j ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.l
  %i.al = load i64, ptr %i.b, align 8, !tbaa !26
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %cond, label %bb.b, label %bb.m, !llvm.loop !65

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %i.ai
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15PartialExpander12copy_expandsERSt3mapI14eStatementTypebSt4lessIS1_ESaISt4pairIKS1_bEEERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.07 = phi ptr [ %i.k, %.lr.ph ], [ %i.c, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  store i32 %i.g, ptr %i.a, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 36
  %i.i = load i8, ptr %i.h, align 4, !tbaa !23, !range !24, !noundef !25
  %i.j = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i8 %i.i, ptr %i.j, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.k = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07) #20 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15PartialExpander10set_expandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35   ; 12 uses
  %cond = icmp eq i64 %i.n, 0
  br i1 %cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 10)
  %i.o = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %i.o, ptr nonnull @.str.3, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %.not = icmp eq i64 %i.n, 10
  %or.cond = and i1 %.not, %.not.i
  br i1 %or.cond, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i15

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 0, ptr %i.l, align 4, !tbaa !28
  %i.p = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  store i8 1, ptr %i.p, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i15:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %.sroa.speculated.i14 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 5)
  %bcmp82 = tail call i32 @bcmp(ptr %i.o, ptr nonnull @.str.4, i64 %.sroa.speculated.i14)
  %.not.i16 = icmp eq i32 %bcmp82, 0
  %.not8 = icmp eq i64 %i.n, 5
  %or.cond88 = and i1 %.not8, %.not.i16
  br i1 %or.cond88, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i24

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 1, ptr %i.k, align 4, !tbaa !28
  %i.q = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  store i8 1, ptr %i.q, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i24:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i15
  %.sroa.speculated.i23 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 3) ; 2 uses
  %1 = load ptr, ptr %0, align 8, !tbaa !36
  %bcmp83 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.5, i64 %.sroa.speculated.i23)
  %.not.i25 = icmp eq i32 %bcmp83, 0
  %.not9 = icmp eq i64 %i.n, 3
  %or.cond89 = and i1 %.not9, %.not.i25
  br i1 %or.cond89, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i33

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 2, ptr %i.j, align 4, !tbaa !28
  %i.r = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  store i8 1, ptr %i.r, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i33:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i24
  %.sroa.speculated.i32 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 7)
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %bcmp84 = tail call i32 @bcmp(ptr %2, ptr nonnull @.str.6, i64 %.sroa.speculated.i32)
  %.not.i34 = icmp eq i32 %bcmp84, 0
  %.not10 = icmp eq i64 %i.n, 7
  %or.cond90 = and i1 %.not10, %.not.i34
  br i1 %or.cond90, label %bb.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i42

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 3, ptr %i.i, align 4, !tbaa !28
  %i.s = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  store i8 1, ptr %i.s, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i42:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i33
  %.sroa.speculated.i41 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 6) ; 2 uses
  %3 = load ptr, ptr %0, align 8, !tbaa !36       ; 2 uses
  %bcmp85 = tail call i32 @bcmp(ptr %3, ptr nonnull @.str.7, i64 %.sroa.speculated.i41)
  %.not.i43 = icmp eq i32 %bcmp85, 0
  %.not11 = icmp eq i64 %i.n, 6                   ; 2 uses
  %or.cond91 = and i1 %.not11, %.not.i43
  br i1 %or.cond91, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i51

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 4, ptr %i.h, align 4, !tbaa !28
  %i.t = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  store i8 1, ptr %i.t, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i51:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i42
  %bcmp86 = tail call i32 @bcmp(ptr %3, ptr nonnull @.str.8, i64 %.sroa.speculated.i41)
  %.not.i52 = icmp eq i32 %bcmp86, 0
  %or.cond92 = and i1 %.not11, %.not.i52
  br i1 %or.cond92, label %bb.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i60

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 5, ptr %i.g, align 4, !tbaa !28
  %i.u = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  store i8 1, ptr %i.u, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i60:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i51
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %bcmp87 = tail call i32 @bcmp(ptr %4, ptr nonnull @.str.9, i64 %.sroa.speculated.i23)
  %.not.i61 = icmp eq i32 %bcmp87, 0
  %.not.i61.a = icmp eq i64 %i.n, 3
  %or.cond93 = and i1 %.not.i61.a, %.not.i61
  br i1 %or.cond93, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !28
  %i.v = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i8 1, ptr %i.v, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 1, ptr %i.b, align 4, !tbaa !28
  %i.w = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  store i8 1, ptr %i.w, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 2, ptr %i.c, align 4, !tbaa !28
  %i.x = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  store i8 1, ptr %i.x, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 3, ptr %i.d, align 4, !tbaa !28
  %i.y = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  store i8 1, ptr %i.y, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 4, ptr %i.e, align 4, !tbaa !28
  %i.z = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  store i8 1, ptr %i.z, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 5, ptr %i.f, align 4, !tbaa !28
  %i.aa = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  store i8 1, ptr %i.aa, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %i.ab = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) @MAX_STATEMENT_TYPE)
  store i8 1, ptr %i.ab, align 1, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i60, %bb.b, %bb.d, %bb.f, %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i1 [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i60 ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.d ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15PartialExpander15set_stmt_expandE14eStatementTypeb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !28
  %i.b = zext i1 %1 to i8
  %i.c = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i8 %i.b, ptr %i.c, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15PartialExpander19restore_init_valuesEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN15PartialExpander15expands_backup_E, i64 24), align 8, !tbaa !18 ; 2 uses
  %i.c = icmp eq ptr %i.b, getelementptr inbounds nuw (i8, ptr @_ZN15PartialExpander15expands_backup_E, i64 8)
  br i1 %i.c, label %_ZN15PartialExpander12copy_expandsERSt3mapI14eStatementTypebSt4lessIS1_ESaISt4pairIKS1_bEEERKS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.03.07.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  store i32 %i.e, ptr %i.a, align 4, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !23, !range !24, !noundef !25
  %i.h = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i8 %i.g, ptr %i.h, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.i = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i) #20 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN15PartialExpander15expands_backup_E, i64 8)
  br i1 %i.j, label %_ZN15PartialExpander12copy_expandsERSt3mapI14eStatementTypebSt4lessIS1_ESaISt4pairIKS1_bEEERKS8_.exit, label %.lr.ph.i, !llvm.loop !1

_ZN15PartialExpander12copy_expandsERSt3mapI14eStatementTypebSt4lessIS1_ESaISt4pairIKS1_bEEERKS8_.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15PartialExpander19direct_expand_checkE14eStatementType(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !28
  %i.b = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29, !range !24, !noundef !25
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15PartialExpander12expand_checkE14eStatementType(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %0, ptr %i.b, align 4, !tbaa !28
  %i.d = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) @MAX_STATEMENT_TYPE)
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29, !range !24, !noundef !25 ; 2 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 4, ptr %i.c, align 4, !tbaa !28
  %i.l = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29, !range !24, !noundef !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ 1, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i8 [ %i.n, %bb.e ], [ %i.h, %bb.b ]
  %i.o = trunc nuw i8 %.0 to i1
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 10, ptr %i.a, align 4, !tbaa !28
  %i.p = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapI14eStatementTypebSt4lessIS0_ESaISt4pairIKS0_bEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN15PartialExpander8expands_E, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i8 0, ptr %i.p, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.03 = phi i1 [ true, %bb.a ], [ true, %bb.g ], [ false, %bb.f ]
  ret i1 %.03
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN15PartialExpanderC2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN15PartialExpanderD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI14eStatementTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  tail call void @_ZNSt8_Rb_treeI14eStatementTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeI14eStatementTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
end_hunk_0
