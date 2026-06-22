inline.NumInlined: 5068
inline.NumDeleted: 1851
begin_hunk_0_@_ZN4node6sqlite11SQLTagStore5ClearERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #30
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  tail call void @_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %i.u)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite11SQLTagStore14CapacityGetterERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #30
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136
  %i.x = load i64, ptr %i.w, align 8
  %i.y = uitofp i64 %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.aa, double noundef %i.y) #30
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite11SQLTagStore14DatabaseGetterERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = icmp eq i16 %i.k, 1040
  %i.m = add i16 %i.k, -1057
  %i.n = icmp ult i16 %i.m, 1002
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v86Object16GetInternalFieldEi.exit

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %i.e, 47
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call noundef ptr @_ZN2v88internal9Internals17GetCurrentIsolateEv() #30 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 560
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZN2v86Object16GetInternalFieldEi.exit.thread, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.s) #30
  br label %_ZN2v86Object16GetInternalFieldEi.exit.thread

_ZN2v86Object16GetInternalFieldEi.exit.thread:    ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.w, %bb.b ] ; 3 uses
  %i.ab = ptrtoint ptr %.0.i.i to i64
  %i.ac = add i64 %i.ab, 8
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.v, align 8
  store i64 %i.r, ptr %.0.i.i, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v86Object16GetInternalFieldEi.exit:           ; preds = %bb.a
  %i.ae = tail call ptr @_ZN2v86Object20SlowGetInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef 2) #30 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit, !prof !151

bb.d:                                             ; preds = %_ZN2v86Object16GetInternalFieldEi.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = add i64 %i.ai, 648
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v86Object16GetInternalFieldEi.exit, %_ZN2v86Object16GetInternalFieldEi.exit.thread, %bb.d
  %storemerge.in = phi ptr [ %i.ak, %bb.d ], [ %.0.i.i, %_ZN2v86Object16GetInternalFieldEi.exit.thread ], [ %i.ae, %_ZN2v86Object16GetInternalFieldEi.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.al, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite11SQLTagStore10SizeGetterERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #30
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 104
  %i.x = load i64, ptr %i.w, align 8
  %i.y = uitofp i64 %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.aa, double noundef %i.y) #30
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite11SQLTagStore16PrepareStatementERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.node::BaseObjectPtrImpl.538") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.v8::Local.425", align 8     ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.node::Utf8Value", align 8   ; 6 uses
  %5 = alloca %"class.node::BaseObjectPtrImpl.538", align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %"class.node::BaseObjectPtrImpl.538", align 8 ; 8 uses
  %7 = alloca %"class.node::BaseObjectPtrImpl.480", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = icmp eq i16 %i.m, 1040
  %i.o = add i16 %i.m, -1057
  %i.p = icmp ult i16 %i.o, 1002
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.r = add i64 %i.g, 39
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr
  br label %_ZN4node10BaseObject12FromJSObjectINS_6sqlite11SQLTagStoreEEEPT_N2v85LocalINS6_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i32 noundef 1) #30
  br label %_ZN4node10BaseObject12FromJSObjectINS_6sqlite11SQLTagStoreEEEPT_N2v85LocalINS6_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectINS_6sqlite11SQLTagStoreEEEPT_N2v85LocalINS6_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %.not = icmp eq ptr %.0.i.i.i, null
  %i.w = load ptr, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.y) #30 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.z) #30 ; 0 uses
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 47
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, 271
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = inttoptr i64 %i.ah to ptr               ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8            ; 11 uses
  br i1 %.not, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i51

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %_ZN4node10BaseObject12FromJSObjectINS_6sqlite11SQLTagStoreEEEPT_N2v85LocalINS6_5ValueEEE.exit
  %i.al = tail call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.ak, i64 56, ptr nonnull @.str.133)
  %i.am = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr %i.al) #30 ; 0 uses
  store ptr null, ptr %0, align 8
  br label %bb.ax

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i51: ; preds = %_ZN4node10BaseObject12FromJSObjectINS_6sqlite11SQLTagStoreEEEPT_N2v85LocalINS6_5ValueEEE.exit
  %i.an = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ak) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %.critedge, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit50

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit50: ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i51
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = tail call noundef zeroext i1 @_ZNK2v85Value7IsArrayEv(ptr noundef nonnull align 1 dereferenceable(1) %i.as) #30
  br i1 %i.at, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i51, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit50
  %i.au = tail call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef nonnull %i.ak, i64 62, ptr nonnull @.str.134)
  %i.av = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr %i.au) #30 ; 0 uses
  store ptr null, ptr %0, align 8
  br label %bb.ax

bb.d:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit50
  %i.aw = load i64, ptr %i.ao, align 8
  %i.ax = trunc i64 %i.aw to i32
  %.not.i = icmp sgt i32 %i.ax, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %1, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = add i64 %i.bb, 648
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.f:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.d, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.e, %bb.f
  %.sroa.087.0 = phi ptr [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 2 uses
  %i.bf = tail call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.087.0) #30 ; 2 uses
  %i.bg = load i64, ptr %i.ao, align 8
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.bj, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.bk, align 8
  store i8 0, ptr %i.bj, align 8
  %.not41117.not = icmp eq i32 %i.bf, 0
  br i1 %.not41117.not, label %.critedge46, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit
  %.039118 = phi i32 [ 0, %.lr.ph ], [ %i.df, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit ] ; 3 uses
  %i.bn = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.087.0, ptr %i.an, i32 noundef %.039118) #30 ; 3 uses
  %.not116 = icmp eq ptr %i.bn, null
  br i1 %.not116, label %.critedge44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 3
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %_ZNK2v85Value13QuickIsStringEv.exit, label %.critedge44

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %bb.h
  %i.br = add nsw i64 %i.bo, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = icmp ult i16 %i.bw, 128
  br i1 %i.bx, label %bb.i, label %.critedge44

.critedge44:                                      ; preds = %bb.h, %bb.g, %_ZNK2v85Value13QuickIsStringEv.exit
  %i.by = call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef nonnull %i.ak, i64 39, ptr nonnull @.str.135)
  %i.bz = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr %i.by) #30 ; 0 uses
  store ptr null, ptr %0, align 8
  br label %bb.aw

bb.i:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048) %4, ptr noundef nonnull %i.ak, ptr nonnull %i.bn) #30
  %i.ca = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.cb = load i64, ptr %4, align 8               ; 6 uses
  %i.cc = load i64, ptr %i.bk, align 8            ; 5 uses
  %i.cd = sub i64 9223372036854775807, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.242) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.i
  %i.cf = add i64 %i.cc, %i.cb                    ; 3 uses
  %i.cg = load ptr, ptr %3, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bj                ; 2 uses
  br i1 %i.ch, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ci = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cj = load i64, ptr %i.bj, align 8
  %i.ck = select i1 %i.ch, i64 15, i64 %i.cj
  %.not.i.i.i.i = icmp ugt i64 %i.cf, %i.ck
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cc ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.cb, 1
  br i1 %cond.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = load i8, ptr %i.ca, align 1
  store i8 %i.cm, ptr %i.cl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.ca, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cc, i64 noundef 0, ptr noundef %i.ca, i64 noundef %i.cb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  store i64 %i.cf, ptr %i.bk, align 8
  %i.cn = load ptr, ptr %3, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  store i8 0, ptr %i.co, align 1
  %i.cp = icmp ult i32 %.039118, %i.bi
  br i1 %i.cp, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.cq = load i64, ptr %i.bk, align 8            ; 5 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775807
  br i1 %i.cr, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.242) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.q
  %i.cs = add nsw i64 %i.cq, 1                    ; 3 uses
  %i.ct = load ptr, ptr %3, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bj                ; 2 uses
  br i1 %i.cu, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cv = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cw = load i64, ptr %i.bj, align 8
  %i.cx = select i1 %i.cu, i64 15, i64 %i.cw
  %.not.i.i.i55 = icmp ugt i64 %i.cs, %i.cx
  br i1 %.not.i.i.i55, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  store i8 63, ptr %i.cy, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cq, i64 noundef 0, ptr noundef nonnull @.str.136, i64 noundef 1)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.t, %bb.u
  store i64 %i.cs, ptr %i.bk, align 8
  %i.cz = load ptr, ptr %3, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cs
  store i8 0, ptr %i.da, align 1
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.db = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.dc = icmp ne ptr %i.db, null
  %i.dd = icmp ne ptr %i.db, %i.bm
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.w, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.db) #30
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.df = add nuw i32 %.039118, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %i.bf
  br i1 %exitcond.not, label %.critedge46, label %bb.g, !llvm.loop !152

.critedge46:                                      ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr null, ptr %5, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80 ; 2 uses
  %i.di = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N4node17BaseObjectPtrImplINS9_6sqlite13StatementSyncELb0EEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.not.i.i.i56.not = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i56.not, label %bb.af, label %bb.x

bb.x:                                             ; preds = %.critedge46
  %i.dj = call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N4node17BaseObjectPtrImplINS9_6sqlite13StatementSyncELb0EEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.dk = load ptr, ptr %i.dg, align 8            ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 4 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = icmp eq ptr %i.dk, %i.dm
  %i.dp = icmp eq ptr %i.dk, %i.dn
  %or.cond.i.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i.i, label %_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE3GetERKS5_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull %i.dm, ptr noundef %i.dn) #30
  %.pre.i = load ptr, ptr %i.dl, align 8
  br label %_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE3GetERKS5_.exit

_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE3GetERKS5_.exit: ; preds = %bb.x, %bb.y
  %i.dq = phi ptr [ %i.dm, %bb.x ], [ %.pre.i, %bb.y ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = load ptr, ptr %5, align 8               ; 4 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEaSERKS3_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE3GetERKS5_.exit
  %.not.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i, label %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dt) #30
  %.pr.i = load ptr, ptr %i.dr, align 8
  br label %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit.i

_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit.i: ; preds = %bb.aa, %bb.z
  %i.dv = phi ptr [ %i.ds, %bb.z ], [ %.pr.i, %bb.aa ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  store ptr %i.dv, ptr %5, align 8
  %i.dw = call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dv) #30
  %.not.i.i.i57 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i57, label %bb.ab, label %bb.ac, !prof !5

bb.ab:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEC1EPS2_E20error_and_abort_args_0) #30
  call void @abort() #31
  unreachable

bb.ac:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit.i
  call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dv) #30
  br label %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEaSERKS3_.exit

_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEaSERKS3_.exit: ; preds = %_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE3GetERKS5_.exit, %bb.ac
  %i.dx = phi ptr [ %i.dt, %_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE3GetERKS5_.exit ], [ %i.dv, %bb.ac ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ad, label %_ZNK4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EE12pointer_dataEv.exit.i.i

bb.ad:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEaSERKS3_.exit
  call void @_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE5EraseERKS5_(ptr noundef nonnull align 8 dereferenceable(88) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.eb = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i58, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.eb) #30
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ad
  store ptr null, ptr %5, align 8
  br label %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit

bb.af:                                            ; preds = %.critedge46
  %.pr = load ptr, ptr %5, align 8                ; 2 uses
  %i.ec = icmp eq ptr %.pr, null
  br i1 %i.ec, label %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit, label %_ZNK4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EE12pointer_dataEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EE12pointer_dataEv.exit.i.i: ; preds = %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEaSERKS3_.exit, %bb.af
  %i.ed = phi ptr [ %.pr, %bb.af ], [ %i.dx, %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEaSERKS3_.exit ] ; 3 uses
  %i.ee = call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ed) #30
  %.not.i.i60 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i60, label %bb.ag, label %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit, !prof !5

bb.ag:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EE12pointer_dataEv.exit.i.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEC1EPS2_E20error_and_abort_args_0) #30
  call void @abort() #31
  unreachable

_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit: ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EE12pointer_dataEv.exit.i.i
  call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ed) #30
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ed) #30
  br label %.thread113

_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit: ; preds = %bb.af, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store ptr null, ptr %i.c, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !28, !noundef !28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 192
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load ptr, ptr %3, align 8
  %i.em = load i64, ptr %i.bk, align 8
  %i.en = trunc i64 %i.em to i32
  %i.eo = call i32 @sqlite3_prepare_v2(ptr noundef %i.ek, ptr noundef %i.el, i32 noundef %i.en, ptr noundef nonnull %i.c, ptr noundef null) #30
  %.not42 = icmp eq i32 %i.eo, 0
  br i1 %.not42, label %bb.ak, label %.critedge48

.critedge48:                                      ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit
  %i.ep = load ptr, ptr %i.ef, align 8, !nonnull !28, !noundef !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 200 ; 2 uses
  %i.et = load i8, ptr %i.es, align 8, !range !26, !noundef !28
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.critedge48
  store i8 0, ptr %i.es, align 8
  br label %.thread142

bb.ai:                                            ; preds = %.critedge48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 192
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = call ptr @_ZN4node6sqlite17CreateSQLiteErrorEPN2v87IsolateEP7sqlite3(ptr noundef nonnull %i.ak, ptr noundef %i.ew) ; 2 uses
  %.not.i64 = icmp eq ptr %i.ex, null
  br i1 %.not.i64, label %.thread142, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr nonnull %i.ex) #30 ; 0 uses
  br label %.thread142

.thread142:                                       ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ez = load ptr, ptr %i.c, align 8
  %i.fa = call i32 @sqlite3_finalize(ptr noundef %i.ez) #30 ; 0 uses
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit71

bb.ak:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.fb = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.thread.i, label %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.i

_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.thread.i: ; preds = %bb.ak
  store ptr null, ptr %7, align 8
  br label %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EEC2IS2_Lb1EEERKNS0_IT_XT0_EEE.exit

_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.i: ; preds = %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8            ; 5 uses
  store ptr null, ptr %7, align 8
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EEC2IS2_Lb1EEERKNS0_IT_XT0_EEE.exit, label %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EE12pointer_dataEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EE12pointer_dataEv.exit.i.i: ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.i
  store ptr %i.fe, ptr %7, align 8
  %i.fg = call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fe) #30
  %.not.i.i65 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i65, label %bb.al, label %bb.am, !prof !5

bb.al:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EE12pointer_dataEv.exit.i.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EEC1EPS2_E20error_and_abort_args_0) #30
  call void @abort() #31
  unreachable

bb.am:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EE12pointer_dataEv.exit.i.i
  call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fe) #30
  br label %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EEC2IS2_Lb1EEERKNS0_IT_XT0_EEE.exit

_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EEC2IS2_Lb1EEERKNS0_IT_XT0_EEE.exit: ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.thread.i, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.i, %bb.am
  %i.fh = phi ptr [ null, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.thread.i ], [ null, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EE3getEv.exit.i ], [ %i.fe, %bb.am ]
  %i.fi = load ptr, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ai, ptr %i.a, align 8, !noalias !153
  store ptr %i.fi, ptr %i.b, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !153
  %i.fj = call ptr @_ZN4node6sqlite13StatementSync22GetConstructorTemplateEPNS_11EnvironmentE(ptr noundef nonnull %i.ai), !noalias !153
  %i.fk = call ptr @_ZN2v816FunctionTemplate16InstanceTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %i.fj) #30, !noalias !153
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ai, i64 3008
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !153
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 192
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.fn, align 8, !noalias !153
  %i.fo = call ptr @_ZN2v814ObjectTemplate11NewInstanceENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr %.sroa.0.0.copyload.i.i.i.i) #30, !noalias !153 ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  store i64 %i.fp, ptr %2, align 8, !noalias !153
  %.not.i66 = icmp eq ptr %i.fo, null
  br i1 %.not.i66, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EEC2IS2_Lb1EEERKNS0_IT_XT0_EEE.exit
  store ptr null, ptr %6, align 8, !alias.scope !153
  br label %_ZN4node6sqlite13StatementSync6CreateEPNS_11EnvironmentENS_17BaseObjectPtrImplINS0_12DatabaseSyncELb0EEEP12sqlite3_stmt.exit

bb.ao:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EEC2IS2_Lb1EEERKNS0_IT_XT0_EEE.exit
  call void @_ZN4node14MakeBaseObjectINS_6sqlite13StatementSyncEJRPNS_11EnvironmentERN2v85LocalINS6_6ObjectEEENS_17BaseObjectPtrImplINS1_12DatabaseSyncELb0EEERP12sqlite3_stmtEEENSB_IT_Lb0EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.node::BaseObjectPtrImpl.538") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre = load ptr, ptr %7, align 8
  br label %_ZN4node6sqlite13StatementSync6CreateEPNS_11EnvironmentENS_17BaseObjectPtrImplINS0_12DatabaseSyncELb0EEEP12sqlite3_stmt.exit

_ZN4node6sqlite13StatementSync6CreateEPNS_11EnvironmentENS_17BaseObjectPtrImplINS0_12DatabaseSyncELb0EEEP12sqlite3_stmt.exit: ; preds = %bb.an, %bb.ao
  %i.fq = phi ptr [ %i.fh, %bb.an ], [ %.pre, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i67 = icmp eq ptr %i.fq, null
  br i1 %.not.i67, label %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4node6sqlite13StatementSync6CreateEPNS_11EnvironmentENS_17BaseObjectPtrImplINS0_12DatabaseSyncELb0EEEP12sqlite3_stmt.exit
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fq) #30
  br label %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EED2Ev.exit

_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EED2Ev.exit: ; preds = %_ZN4node6sqlite13StatementSync6CreateEPNS_11EnvironmentENS_17BaseObjectPtrImplINS0_12DatabaseSyncELb0EEEP12sqlite3_stmt.exit, %bb.ap
  %i.fr = load ptr, ptr %6, align 8
  %.not115 = icmp eq ptr %i.fr, null              ; 2 uses
  br i1 %.not115, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EED2Ev.exit
  call void @_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPKc(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.137)
  %i.fs = load ptr, ptr %i.c, align 8
  %i.ft = call i32 @sqlite3_finalize(ptr noundef %i.fs) #30 ; 0 uses
  store ptr null, ptr %0, align 8
  br label %bb.as

bb.ar:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb0EED2Ev.exit
  call void @_ZN8LRUCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node17BaseObjectPtrImplINS6_6sqlite13StatementSyncELb0EEEE3PutERKS5_RKSA_(ptr noundef nonnull align 8 dereferenceable(88) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.fu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i68 = icmp eq ptr %i.fv, null
  br i1 %.not.i68, label %_ZN4node17BaseObjectPtrImplINS_6sqlite13StatementSyncELb0EED2Ev.exit69, label %bb.at

end_hunk_0
