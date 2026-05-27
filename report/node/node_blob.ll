inline.NumInlined: 2860
inline.NumDeleted: 1354
begin_hunk_0_@_ZN4node4Blob13GetDataObjectERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fv = icmp ne ptr %i.fs, %i.fu
  %i.fw = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %i.fw, label %bb.ak, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.ak:                                            ; preds = %_ZN4node15BlobBindingData16StoredDataObjectD2Ev.exit
  call void @free(ptr noundef nonnull %i.fs) #27
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %_ZN4node15BlobBindingData16StoredDataObjectD2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node4Blob15RevokeObjectURLERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %1 = alloca %"class.node::Utf8Value", align 8   ; 6 uses
  %2 = alloca %"class.tl::expected", align 8      ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4Blob15RevokeObjectURLERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %i.g, 3
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %_ZNK2v85Value13QuickIsStringEv.exit, label %_ZNK2v85Value13QuickIsStringEv.exit.thread, !prof !37

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15
  %i.j = add nsw i64 %i.g, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i16, ptr %i.n, align 2
  %i.p = icmp ult i16 %i.o, 128
  br i1 %i.p, label %bb.c, label %_ZNK2v85Value13QuickIsStringEv.exit.thread, !prof !28

_ZNK2v85Value13QuickIsStringEv.exit.thread:       ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15, %_ZNK2v85Value13QuickIsStringEv.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4Blob15RevokeObjectURLERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args_0) #27
  tail call void @abort() #28
  unreachable

bb.c:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.s) #27 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN4node5Realm10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.t) #27
  %i.w = icmp ult i32 %i.v, 40
  br i1 %i.w, label %_ZN4node5Realm10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !5

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.t, align 8
  %i.y = add i64 %i.x, 47
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = add i64 %i.aa, 327
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4node5Realm10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, !prof !28

bb.e:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.ag = add i64 %i.aa, 319
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %_ZN4node5Realm10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit

_ZN4node5Realm10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit: ; preds = %bb.c, %bb.d, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.aj, %bb.e ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 752
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN4node5Realm14GetBindingDataINS_15BlobBindingDataEEEPT_v.exit, label %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.i.i: ; preds = %_ZN4node5Realm10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN4node5Realm14GetBindingDataINS_15BlobBindingDataEEEPT_v.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.i.i
  %i.aq = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ao) #27 ; 4 uses
  %.not.i.i.i16 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i16, label %bb.g, label %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_10BaseObjectELb1EEC1EPS1_E20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit.i: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i17 = icmp eq ptr %i.as, null
  br i1 %.not.i17, label %bb.h, label %_ZN4node5Realm14GetBindingDataINS_15BlobBindingDataEEEPT_v.exit, !prof !38

bb.h:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %_ZN4node5Realm14GetBindingDataINS_15BlobBindingDataEEEPT_v.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 24) #30
  br label %_ZN4node5Realm14GetBindingDataINS_15BlobBindingDataEEEPT_v.exit

_ZN4node5Realm14GetBindingDataINS_15BlobBindingDataEEEPT_v.exit: ; preds = %_ZN4node5Realm10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.i.i, %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit.i, %bb.h, %bb.i
  %.016.i = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ null, %_ZN4node5Realm10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit ], [ null, %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.i.i ], [ %i.as, %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 184
  %i.ax = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.ay = load i64, ptr %i.a, align 8
  %i.az = trunc i64 %i.ay to i32
  %.not.i = icmp sgt i32 %i.az, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4node5Realm14GetBindingDataINS_15BlobBindingDataEEEPT_v.exit
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.bd, 648
  %i.bf = inttoptr i64 %i.be to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.k:                                             ; preds = %_ZN4node5Realm14GetBindingDataINS_15BlobBindingDataEEEPT_v.exit
  %i.bg = load ptr, ptr %i.e, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.j, %bb.k
  %.sroa.041.0 = phi ptr [ %i.bg, %bb.k ], [ %i.bf, %bb.j ]
  call void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.ax, ptr %.sroa.041.0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load i64, ptr %1, align 8
  call void @_ZN3ada5parseINS_14url_aggregatorEEEN2tl8expectedIT_NS_6errorsEEESt17basic_string_viewIcSt11char_traitsIcEEPKS4_(ptr dead_on_unwind nonnull writable sret(%"class.tl::expected") align 8 %2, i64 %i.bj, ptr %i.bi, ptr noundef null) #27
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !26, !noundef !52
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.l, label %_ZN2tl6detail21expected_storage_baseIN3ada14url_aggregatorENS2_6errorsELb0ELb1EED2Ev.exit

bb.l:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bo = load i64, ptr %i.bn, align 8            ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = zext i32 %i.bq to i64                   ; 5 uses
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.m, label %_ZNK3ada14url_aggregator12get_pathnameEv.exit

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i64 noundef %i.br, i64 noundef %i.bo) #28
  unreachable

_ZNK3ada14url_aggregator12get_pathnameEv.exit:    ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %.not.i18 = icmp eq i32 %i.bu, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %.not5.i = icmp eq i32 %i.bw, -1
  %i.bx = trunc i64 %i.bo to i32
  %spec.select.i = select i1 %.not5.i, i32 %i.bx, i32 %i.bw
  %.0.i19 = select i1 %.not.i18, i32 %spec.select.i, i32 %i.bu
  %i.by = zext i32 %.0.i19 to i64
  %i.bz = sub nsw i64 %i.by, %i.br
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = sub nuw i64 %i.bo, %i.br
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.bz) ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.br ; 4 uses
  %.not68 = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not68, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit
  %i.ce = call ptr @memchr(ptr noundef %i.cd, i32 noundef 58, i64 noundef %.sroa.speculated.i.i) #27 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ce, null
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %.not = icmp eq i64 %i.ch, -1
  %.not13 = icmp eq i64 %i.ch, %.sroa.speculated.i.i
  %4 = or i1 %.not, %.not13
  %or.cond66 = select i1 %.not.i20, i1 true, i1 %4
  br i1 %or.cond66, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.ci = add nuw i64 %i.ch, 1                    ; 6 uses
  %i.cj = icmp ult i64 %i.ci, %.sroa.speculated.i.i
  br i1 %i.cj, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i23, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit26.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i23:     ; preds = %bb.n
  %i.ck = sub nuw i64 %.sroa.speculated.i.i, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.cm = call ptr @memchr(ptr noundef nonnull %i.cl, i32 noundef 58, i64 noundef %i.ck) #27 ; 2 uses
  %.not.i24 = icmp eq ptr %i.cm, null
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.cg
  %i.cp = icmp eq i64 %i.co, -1
  %or.cond67 = select i1 %.not.i24, i1 true, i1 %i.cp
  br i1 %or.cond67, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit26.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit26.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i23, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %.not69 = icmp ult i64 %i.ch, %.sroa.speculated.i.i
  br i1 %.not69, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit26.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i64 noundef %i.ci, i64 noundef %.sroa.speculated.i.i) #28
  unreachable

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit26.thread
  %i.cq = sub nuw i64 %.sroa.speculated.i.i, %i.ci ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.cs, ptr %3, align 8
  %i.ct = icmp ugt i64 %i.cq, 15
  br i1 %i.ct, label %bb.q, label %._crit_edge.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.cu = icmp slt i64 %i.cq, 0
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #28
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cv = add nuw i64 %i.cq, 1                    ; 2 uses
  %i.cw = icmp slt i64 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.t:                                             ; preds = %bb.s
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.s
  %i.cx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #29 ; 2 uses
  store ptr %i.cx, ptr %3, align 8
  store i64 %i.cq, ptr %i.cs, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.p
  %i.cy = phi ptr [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.cs, %bb.p ] ; 3 uses
  switch i64 %i.cq, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cz = load i8, ptr %i.cr, align 1
  store i8 %i.cz, ptr %i.cy, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull align 1 %i.cr, i64 %i.cq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.u, %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cq, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  store i8 0, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.016.i, i64 56 ; 3 uses
  %i.dd = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4node15BlobBindingData16StoredDataObjectEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.not.i30 = icmp eq ptr %i.dd, null
  br i1 %.not.i30, label %_ZN4node15BlobBindingData18revoke_data_objectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.de = call noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4node15BlobBindingData16StoredDataObjectEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  %i.df = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4node15BlobBindingData16StoredDataObjectEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.not4.i = icmp eq ptr %i.df, null
  br i1 %.not4.i, label %_ZN4node15BlobBindingData18revoke_data_objectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.x, !prof !29

bb.x:                                             ; preds = %bb.w
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node15BlobBindingData18revoke_data_objectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20error_and_abort_args) #27
  call void @abort() #28
  unreachable

_ZN4node15BlobBindingData18revoke_data_objectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %bb.w
  %i.dg = load ptr, ptr %3, align 8               ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cs
  br i1 %i.dh, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4node15BlobBindingData18revoke_data_objectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.di = load i64, ptr %i.cs, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #30
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZN4node15BlobBindingData18revoke_data_objectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre = load i8, ptr %i.bk, align 8, !range !26
  %i.dk = trunc nuw i8 %.pre to i1
  br i1 %i.dk, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZN2tl6detail21expected_storage_baseIN3ada14url_aggregatorENS2_6errorsELb0ELb1EED2Ev.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread: ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i23, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %2, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZN2tl6detail21expected_storage_baseIN3ada14url_aggregatorENS2_6errorsELb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread
  %i.dp = load i64, ptr %i.dn, align 8
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #30
  br label %_ZN2tl6detail21expected_storage_baseIN3ada14url_aggregatorENS2_6errorsELb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseIN3ada14url_aggregatorENS2_6errorsELb0ELb1EED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.dr = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.ds = icmp ne ptr %i.dr, null
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = icmp ne ptr %i.dr, %i.dt
  %i.dv = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %i.dv, label %bb.y, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.y:                                             ; preds = %_ZN2tl6detail21expected_storage_baseIN3ada14url_aggregatorENS2_6errorsELb0ELb1EED2Ev.exit
  call void @free(ptr noundef nonnull %i.dr) #27
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %_ZN2tl6detail21expected_storage_baseIN3ada14url_aggregatorENS2_6errorsELb0ELb1EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node12_GLOBAL__N_16ConcatERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
bb.a:
  %1 = alloca %"struct.node::ArrayIterationData", align 8 ; 5 uses
  %2 = alloca %"class.std::vector.448", align 8   ; 12 uses
  %3 = alloca %struct.View, align 16              ; 9 uses
  %4 = alloca %struct.View, align 16              ; 9 uses
  %5 = alloca %"class.std::shared_ptr.644", align 16 ; 8 uses
  %6 = alloca %"class.std::unique_ptr.647", align 8 ; 5 uses
  %7 = alloca %"class.std::shared_ptr.644", align 16 ; 3 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %.not.i33 = icmp sgt i32 %i.g, 0
  br i1 %.not.i33, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 648
  %i.m = inttoptr i64 %i.l to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit34

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit34

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit34: ; preds = %bb.b, %bb.c
  %.sroa.0101.0 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ]
  %i.p = tail call noundef zeroext i1 @_ZNK2v85Value7IsArrayEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0101.0) #27
  br i1 %i.p, label %bb.e, label %bb.d, !prof !29

bb.d:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit34
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_16ConcatERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

bb.e:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit34
  %i.q = load i64, ptr %i.e, align 8
  %i.r = trunc i64 %i.q to i32
  %.not.i = icmp sgt i32 %i.r, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 648
end_hunk_0
