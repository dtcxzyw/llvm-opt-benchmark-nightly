Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StringExtras?download=true
inline.NumInlined: 188
inline.NumDeleted: 83
begin_hunk_0_@_ZN4llvm14printLowerCaseENS_9StringRefERNS_11raw_ostreamE:bb.a
  %i.f = icmp ult i8 %i.e, 26
  %i.g = add nuw nsw i8 %i.d, 32
  %.0.i = select i1 %i.f, i8 %i.g, i8 %i.d        ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not.i = icmp ult ptr %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext %.0.i) #8 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.k, ptr %i.b, align 8, !tbaa !23
  store i8 %.0.i, ptr %i.h, align 1, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.010, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19printPercentEncodedENS_9StringRefERNS_11raw_ostreamE(ptr nofree readonly captures(address) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not26 = icmp samesign eq i64 %1, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEh.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEh.exit
  %.027 = phi ptr [ %0, %.lr.ph ], [ %i.as, %_ZN4llvm11raw_ostreamlsEh.exit ] ; 2 uses
  %i.d = load i8, ptr %.027, align 1, !tbaa !18   ; 6 uses
  %i.e = and i8 %i.d, -33
  %i.f = add i8 %i.e, -65
  %i.g = icmp ult i8 %i.f, 26
  %i.h = add i8 %i.d, -48
  %i.i = icmp ult i8 %i.h, 10
  %i.j = or i1 %i.i, %i.g
  br i1 %i.j, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.b
  %i.k = sext i8 %i.d to i32
  %i.l = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.k, i64 noundef 4) #8 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.l, null
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, ptrtoint (ptr @.str.5 to i64)
  %i.o = icmp ne i64 %i.n, -1
  %or.cond = and i1 %.not.i.i.i.i, %i.o
  br i1 %or.cond, label %.critedge, label %_ZNK4llvm9StringRef8containsEc.exit.thread

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not.i12 = icmp ult ptr %i.p, %i.q
  br i1 %.not.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext %i.d) #8 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEh.exit

bb.d:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.s, ptr %i.b, align 8, !tbaa !23
  store i8 %i.d, ptr %i.p, align 1, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEh.exit

_ZNK4llvm9StringRef8containsEc.exit.thread:       ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not.i13 = icmp ult ptr %i.t, %i.u
  br i1 %.not.i13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm9StringRef8containsEc.exit.thread
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 37) #8
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.f:                                             ; preds = %_ZNK4llvm9StringRef8containsEc.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.w, ptr %i.b, align 8, !tbaa !23
  store i8 37, ptr %i.t, align 1, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.e, %bb.f
  %.0.i14 = phi ptr [ %i.v, %bb.e ], [ %2, %bb.f ] ; 4 uses
  %i.x = zext i8 %i.d to i32                      ; 2 uses
  %i.y = lshr i32 %i.x, 4
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZN4llvm8hexdigitEjbE3LUT, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i14, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i14, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24
  %.not.i15 = icmp ult ptr %i.ad, %i.af
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i14, i8 noundef zeroext %i.ab) #8
  br label %_ZN4llvm11raw_ostreamlsEc.exit17

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !23
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEc.exit17

_ZN4llvm11raw_ostreamlsEc.exit17:                 ; preds = %bb.g, %bb.h
  %.0.i16 = phi ptr [ %i.ag, %bb.g ], [ %.0.i14, %bb.h ] ; 3 uses
  %i.ai = and i32 %i.x, 15
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZZN4llvm8hexdigitEjbE3LUT, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !18  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i16, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i16, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !24
  %.not.i18 = icmp ult ptr %i.an, %i.ap
  br i1 %.not.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit17
  %i.aq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i16, i8 noundef zeroext %i.al) #8 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEh.exit

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !23
  store i8 %i.al, ptr %i.an, align 1, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEh.exit

_ZN4llvm11raw_ostreamlsEh.exit:                   ; preds = %bb.j, %bb.i, %bb.d, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.c, align 8, !tbaa !28
  store i8 0, ptr %i.b, align 8, !tbaa !18
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23.thread"
  %.059 = phi i64 [ 0, %bb.b ], [ %i.aw, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23.thread" ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.059 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @tolower(i32 noundef %i.f) #9
  %i.h = trunc i32 %i.g to i8
  %i.i = load i64, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit"

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1) #8
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit"

"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 %i.h, ptr %i.r, align 1, !tbaa !18
  store i64 %i.j, ptr %i.c, align 8, !tbaa !28
  %i.s = load ptr, ptr %0, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.t, align 1, !tbaa !18
  %i.u = load i8, ptr %i.d, align 1, !tbaa !18    ; 6 uses
  %i.v = sext i8 %i.u to i32                      ; 6 uses
  %i.w = tail call noundef i32 @isupper(i32 noundef %i.v) #8, !inline_history !41
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21", label %bb.e

bb.e:                                             ; preds = %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit"
  %i.x = add nuw i64 %.059, 1                     ; 2 uses
  %i.y = icmp ult i64 %i.x, %2
  br i1 %i.y, label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit14", label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21"

"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit14": ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = sext i8 %i.aa to i32
  %i.ac = tail call noundef i32 @isupper(i32 noundef %i.ab) #8, !inline_history !41
  %.not55 = icmp eq i32 %i.ac, 0
  br i1 %.not55, label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21", label %bb.f

bb.f:                                             ; preds = %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit14"
  %i.ad = add nuw i64 %.059, 2                    ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit15", label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21"

"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit15": ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ah = sext i8 %i.ag to i32
  %i.ai = tail call noundef i32 @islower(i32 noundef %i.ah) #8, !inline_history !41
  %.not56 = icmp eq i32 %i.ai, 0
  br i1 %.not56, label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21", label %bb.g

bb.g:                                             ; preds = %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit15"
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !28  ; 4 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19: ; preds = %bb.g
  %i.an = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.g
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19 ]
  %i.aq = icmp ugt i64 %i.ak, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aj, i64 noundef 0, ptr noundef null, i64 noundef 1) #8
  %.pre.i18 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17, %bb.h
  %i.ar = phi ptr [ %.pre.i18, %bb.h ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 95, ptr %i.as, align 1, !tbaa !18
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !28
  %i.at = load ptr, ptr %0, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ak
  store i8 0, ptr %i.au, align 1, !tbaa !18
  %.pre = load i8, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %.pre60 = sext i8 %.pre to i32
  br label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21"

"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21": ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit15", %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit14", %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit"
  %.pre-phi = phi i32 [ %i.v, %bb.f ], [ %i.v, %bb.e ], [ %.pre60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20 ], [ %i.v, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit15" ], [ %i.v, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit14" ], [ %i.v, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit" ]
  %3 = phi i8 [ %i.u, %bb.f ], [ %i.u, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20 ], [ %i.u, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit15" ], [ %i.u, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit14" ], [ %i.u, %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit" ]
  %i.av = tail call noundef i32 @islower(i32 noundef %.pre-phi) #8, !inline_history !41
  %.not57 = icmp ne i32 %i.av, 0
  %4 = add i8 %3, -48
  %isdigit = icmp ult i8 %4, 10
  %or.cond = select i1 %.not57, i1 true, i1 %isdigit
  %i.aw = add nuw i64 %.059, 1                    ; 4 uses
  %i.ax = icmp ult i64 %i.aw, %2
  %or.cond68 = select i1 %or.cond, i1 %i.ax, i1 false
  br i1 %or.cond68, label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23", label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23.thread"

"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23": ; preds = %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21"
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18
  %i.ba = sext i8 %i.az to i32
  %i.bb = tail call noundef i32 @isupper(i32 noundef %i.ba) #8, !inline_history !41
  %.not58 = icmp eq i32 %i.bb, 0
  br i1 %.not58, label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23.thread", label %bb.i

bb.i:                                             ; preds = %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23"
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !28  ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.b
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27: ; preds = %bb.i
  %i.bg = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.i
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27
  %i.bi = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27 ]
  %i.bj = icmp ugt i64 %i.bd, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1) #8
  %.pre.i26 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25, %bb.j
  %i.bk = phi ptr [ %.pre.i26, %bb.j ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i8 95, ptr %i.bl, align 1, !tbaa !18
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !28
  %i.bm = load ptr, ptr %0, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd
  store i8 0, ptr %i.bn, align 1, !tbaa !18
  br label %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23.thread"

"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23.thread": ; preds = %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit21", %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23", %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28
  %exitcond.not = icmp eq i64 %i.aw, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !42

.loopexit:                                        ; preds = %"_ZZN4llvm27convertToSnakeFromCamelCaseB5cxx11ENS_9StringRefEENK3$_0clEmNS_12function_refIFbiEEE.exit23.thread", %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isupper(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @islower(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm27convertToCamelFromSnakeCaseB5cxx11ENS_9StringRefEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.c, align 8, !tbaa !28
  store i8 0, ptr %i.b, align 8, !tbaa !18
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #8
  %.pre = load i8, ptr %1, align 1, !tbaa !18     ; 5 uses
  br i1 %3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = sext i8 %.pre to i32
  %i.e = tail call i32 @islower(i32 noundef %i.d) #9
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i8 %.pre, -97
  %i.g = icmp ult i8 %i.f, 26
  %i.h = add nsw i8 %.pre, -32
  %.0.i = select i1 %i.g, i8 %i.h, i8 %.pre
  %i.i = load i64, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1) #8
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.e
  %i.q = phi ptr [ %.pre.i, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 %.0.i, ptr %i.r, align 1, !tbaa !18
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.s = load i64, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %i.t = add i64 %i.s, 1                          ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16: ; preds = %bb.f
  %i.w = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.f
  %i.x = load i64, ptr %i.b, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16 ]
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit17

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef 0, ptr noundef null, i64 noundef 1) #8
  %.pre.i15 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14, %bb.g
  %i.aa = phi ptr [ %.pre.i15, %bb.g ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store i8 %.pre, ptr %i.ab, align 1, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.sink = phi i64 [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit17 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  store i64 %.sink, ptr %i.c, align 8, !tbaa !28
  %i.ac = load ptr, ptr %0, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  %.not39 = icmp eq i64 %2, 1
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ae = add i64 %2, -1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.o
  %.038 = phi i64 [ 1, %.lr.ph ], [ %i.bm, %bb.o ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.038
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18  ; 2 uses
  %i.ah = icmp ne i8 %i.ag, 95
  %.not11 = icmp eq i64 %.038, %i.ae
  %or.cond = or i1 %.not11, %i.ah
  br i1 %or.cond, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = add nuw i64 %.038, 1                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18  ; 4 uses
  %i.al = sext i8 %i.ak to i32
  %i.am = tail call i32 @islower(i32 noundef %i.al) #9
  %.not12 = icmp eq i32 %i.am, 0
  br i1 %.not12, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add i8 %i.ak, -97
  %i.ao = icmp ult i8 %i.an, 26
  %i.ap = add nsw i8 %i.ak, -32
  %.0.i18 = select i1 %i.ao, i8 %i.ap, i8 %i.ak
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !28  ; 4 uses
  %i.ar = add i64 %i.aq, 1                        ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.b
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
end_hunk_0
