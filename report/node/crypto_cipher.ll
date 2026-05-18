inline.NumInlined: 2561
inline.NumDeleted: 999
begin_hunk_0_@_ZN4node6crypto15PublicKeyCipher6CipherILNS1_9OperationE0EXadL_ZN7ncrypto6Cipher7recoverERKNS4_13EVPKeyPointerERKNS5_12CipherParamsENS4_6BufferIKvEEEEEEvRKN2v820FunctionCallbackInfoINSF_5ValueEEE:bb.a

bb.am:                                            ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit32, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.d, %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8            ; 8 uses
  %.not.i.i.i42 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i42, label %_ZNSt12__shared_ptrIN4node6crypto13KeyObjectData4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 4 uses
  %i.gl = load atomic i64, ptr %i.gk acquire, align 8 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 4294967297
  %i.gn = trunc i64 %i.gl to i32                  ; 2 uses
  br i1 %i.gm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gk, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 0, ptr %i.go, align 4
  %i.gp = load ptr, ptr %i.gj, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #26, !inline_history !34
  %i.gs = load ptr, ptr %i.gj, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #26, !inline_history !34
  br label %_ZNSt12__shared_ptrIN4node6crypto13KeyObjectData4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.gv = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gw = add nsw i32 %i.gn, -1
  store i32 %i.gw, ptr %i.gk, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.gx = atomicrmw volatile add ptr %i.gk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i = phi i32 [ %i.gn, %bb.as ], [ %i.gx, %bb.at ]
  %i.gy = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.gy, label %bb.au, label %_ZNSt12__shared_ptrIN4node6crypto13KeyObjectData4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !5

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #26
  br label %_ZNSt12__shared_ptrIN4node6crypto13KeyObjectData4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN4node6crypto13KeyObjectData4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aq, %bb.ao
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8            ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i1.i, label %_ZN4node6crypto13KeyObjectDataD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN4node6crypto13KeyObjectData4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.hb, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4
  %i.hg = load ptr, ptr %i.ha, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #26, !inline_history !35
  %i.hj = load ptr, ptr %i.ha, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #26, !inline_history !35
  br label %_ZN4node6crypto13KeyObjectDataD2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.hm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2.i = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i2.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.az:                                            ; preds = %bb.ax
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i4.i = phi i32 [ %i.he, %bb.ay ], [ %i.ho, %bb.az ]
  %i.hp = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.hp, label %bb.ba, label %_ZN4node6crypto13KeyObjectDataD2Ev.exit, !prof !5

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #26
  br label %_ZN4node6crypto13KeyObjectDataD2Ev.exit

_ZN4node6crypto13KeyObjectDataD2Ev.exit:          ; preds = %_ZNSt12__shared_ptrIN4node6crypto13KeyObjectData4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN7ncrypto20MarkPopErrorOnReturnD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
bb.a:
  %1 = alloca %"class.node::Utf8Value", align 8   ; 5 uses
  %2 = alloca [6 x %"class.v8::MaybeLocal.581"], align 16 ; 10 uses
  %3 = alloca %"class.ncrypto::Cipher", align 8   ; 14 uses
  %4 = alloca %"class.ncrypto::CipherCtxPointer", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #26
  %i.g = icmp ult i32 %i.f, 40
  br i1 %i.g, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !5

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 47
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, 327
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, !prof !28

bb.c:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.q = add i64 %i.k, 271
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit

_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit: ; preds = %bb.a, %bb.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.t, %bb.c ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 216 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2896
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 200
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @_ZN2v818DictionaryTemplate3NewEPNS_7IsolateENS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE(ptr noundef %i.aa, ptr nonnull @_ZZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEEE5names, i64 6) #26 ; 2 uses
  %i.ac = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2896 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4node11Environment30set_cipherinfo_detail_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit, label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11IsolateData30set_cipherinfo_detail_templateEN2v85LocalINS1_18DictionaryTemplateEEEE20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

_ZN4node11Environment30set_cipherinfo_detail_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4648
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr @_ZN2v812api_internal10EternalizeEPNS_7IsolateEPNS_5ValueE(ptr noundef %i.ah, ptr noundef %i.ab) #26
  store ptr %i.ai, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN4node11Environment30set_cipherinfo_detail_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit, %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  %.sroa.0108.0 = phi ptr [ %i.ab, %_ZN4node11Environment30set_cipherinfo_detail_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit ], [ %i.x, %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 200 ; 8 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 648
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.as = insertelement <6 x i64> poison, i64 %i.am, i64 0
  %i.at = shufflevector <6 x i64> %i.as, <6 x i64> poison, <6 x i32> zeroinitializer
  store <6 x i64> %i.at, ptr %2, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %.not.i71 = icmp sgt i32 %i.aw, 0               ; 2 uses
  br i1 %.not.i71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = add i64 %i.ba, 648
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit72

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit72

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit72: ; preds = %bb.g, %bb.h
  %.sroa.0117.0 = phi ptr [ %i.be, %bb.h ], [ %i.bc, %bb.g ]
  %i.bf = load i64, ptr %.sroa.0117.0, align 8    ; 2 uses
  %i.bg = and i64 %i.bf, 3
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %_ZNK2v85Value13QuickIsStringEv.exit, label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit72
  %i.bi = add nsw i64 %i.bf, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, 11
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = icmp ult i16 %i.bn, 128
  br i1 %i.bo, label %.critedge58, label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZNK2v85Value13QuickIsStringEv.exit.thread:       ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit72, %_ZNK2v85Value13QuickIsStringEv.exit
  br i1 %.not.i71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.thread
  %i.bp = load ptr, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = add i64 %i.bs, 648
  %i.bu = inttoptr i64 %i.bt to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70

bb.j:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70: ; preds = %bb.i, %bb.j
  %.sroa.0116.0 = phi ptr [ %i.bw, %bb.j ], [ %i.bu, %bb.i ]
  %i.bx = tail call noundef zeroext i1 @_ZNK2v85Value7IsInt32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0116.0) #26
  br i1 %i.bx, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70..critedge58_crit_edge, label %bb.k, !prof !31

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70..critedge58_crit_edge: ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70
  %.pre = load i64, ptr %i.au, align 8
  %.pre233 = trunc i64 %.pre to i32
  br label %.critedge58

bb.k:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

.critedge58:                                      ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70..critedge58_crit_edge, %_ZNK2v85Value13QuickIsStringEv.exit
  %.pre-phi = phi i32 [ %.pre233, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70..critedge58_crit_edge ], [ %i.aw, %_ZNK2v85Value13QuickIsStringEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.not.i4.i = icmp sgt i32 %.pre-phi, 0          ; 3 uses
  br i1 %.not.i4.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge58
  %i.by = load ptr, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = add i64 %i.cb, 648
  %i.cd = inttoptr i64 %i.cc to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5.i

bb.m:                                             ; preds = %.critedge58
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5.i: ; preds = %bb.m, %bb.l
  %.sroa.05.0.i = phi ptr [ %i.cf, %bb.m ], [ %i.cd, %bb.l ]
  %i.cg = load i64, ptr %.sroa.05.0.i, align 8    ; 2 uses
  %i.ch = and i64 %i.cg, 3
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %_ZNK2v85Value13QuickIsStringEv.exit.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i

_ZNK2v85Value13QuickIsStringEv.exit.i:            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5.i
  %i.cj = add nsw i64 %i.cg, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = icmp ult i16 %i.co, 128
  br i1 %i.cp, label %bb.n, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i

bb.n:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.cq = load ptr, ptr %i.aj, align 8
  br i1 %.not.i4.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = load ptr, ptr %0, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = add i64 %i.cu, 648
  %i.cw = inttoptr i64 %i.cv to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit3.i

bb.p:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit3.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit3.i: ; preds = %bb.p, %bb.o
  %.sroa.04.0.i = phi ptr [ %i.cy, %bb.p ], [ %i.cw, %bb.o ]
  call void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.cq, ptr %.sroa.04.0.i) #26
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call ptr @_ZN7ncrypto6Cipher8FromNameEPKc(ptr noundef %i.da) #26
  %i.dc = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.dd = icmp ne ptr %i.dc, null
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = icmp ne ptr %i.dc, %i.de
  %i.dg = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %i.dg, label %bb.q, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit.i

bb.q:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit3.i
  call void @free(ptr noundef nonnull %i.dc) #26
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit.i

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit.i:  ; preds = %bb.q, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %"_ZZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEEENK3$_0clEv.exit"

_ZNK2v85Value13QuickIsStringEv.exit.thread.i:     ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5.i
  br i1 %.not.i4.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.thread.i
  %i.dh = load ptr, ptr %0, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = add i64 %i.dk, 648
  %i.dm = inttoptr i64 %i.dl to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i

bb.s:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.thread.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i: ; preds = %bb.s, %bb.r
  %.sroa.03.0.i = phi ptr [ %i.do, %bb.s ], [ %i.dm, %bb.r ]
  %i.dp = tail call noundef i32 @_ZNK2v85Int325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.03.0.i) #26
  %i.dq = tail call ptr @_ZN7ncrypto6Cipher7FromNidEi(i32 noundef %i.dp) #26
  br label %"_ZZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEEENK3$_0clEv.exit"

"_ZZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEEENK3$_0clEv.exit": ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit.i, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i
  %.sroa.01.0.i = phi ptr [ %i.db, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit.i ], [ %i.dq, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i ] ; 2 uses
  store ptr %.sroa.01.0.i, ptr %3, align 8
  %.not232 = icmp eq ptr %.sroa.01.0.i, null
  br i1 %.not232, label %bb.bq, label %bb.t

bb.t:                                             ; preds = %"_ZZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEEENK3$_0clEv.exit"
  %i.dr = call noundef i32 @_ZNK7ncrypto6Cipher11getIvLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.ds = sext i32 %i.dr to i64                   ; 4 uses
  %i.dt = call noundef i32 @_ZNK7ncrypto6Cipher12getKeyLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 2 uses
  %i.du = load i64, ptr %i.au, align 8
  %i.dv = trunc i64 %i.du to i32
  %.not.i67 = icmp sgt i32 %i.dv, 1
  br i1 %.not.i67, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = load ptr, ptr %0, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = add i64 %i.dz, 648
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68

bb.v:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
end_hunk_0
begin_hunk_1_@_ZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  store ptr %i.hf, ptr %5, align 8
  store i64 %i.ha, ptr %i.gy, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.at
  %i.hg = phi ptr [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.gy, %bb.at ] ; 3 uses
  switch i64 %i.ha, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i
  %i.hh = load i8, ptr %i.gx, align 1
  store i8 %i.hh, ptr %i.hg, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.az:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr nonnull align 1 %i.gx, i64 %i.ha, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.ay, %bb.az
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.ha, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ha
  store i8 0, ptr %i.hj, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4node7ToLowerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.hk = load ptr, ptr %5, align 8               ; 6 uses
  %i.hl = icmp eq ptr %i.hk, %i.gy
  %i.hm = load ptr, ptr %6, align 8               ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn                ; 2 uses
  br i1 %i.hl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  br i1 %i.ho, label %bb.ba, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  br i1 %i.ho, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8            ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 16
  call void @llvm.assume(i1 %i.hr)
  switch i64 %i.hq, label %bb.bc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.hs = load i8, ptr %i.hm, align 1
  store i8 %i.hs, ptr %i.hk, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hk, ptr align 1 %i.hm, i64 %i.hq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ht = load i64, ptr %i.hp, align 8            ; 2 uses
  store i64 %i.ht, ptr %i.hi, align 8
  %i.hu = load ptr, ptr %5, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ht
  store i8 0, ptr %i.hv, align 1
  %.pre.i = load ptr, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.hm, ptr %5, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hx = load <2 x i64>, ptr %i.hw, align 8
  store <2 x i64> %i.hx, ptr %i.hi, align 8
  br label %bb.be

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hy = load i64, ptr %i.gy, align 8
  store ptr %i.hm, ptr %5, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ia = load <2 x i64>, ptr %i.hz, align 8
  store <2 x i64> %i.ia, ptr %i.hi, align 8
  %.not.i75 = icmp eq ptr %i.hk, null
  br i1 %.not.i75, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hk, ptr %6, align 8
  store i64 %i.hy, ptr %i.hn, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hn, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bd, %bb.be
  %i.ib = phi ptr [ %i.hk, %bb.bd ], [ %i.hn, %bb.be ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ic, align 8
  store i8 0, ptr %i.ib, align 1
  %i.id = load ptr, ptr %6, align 8               ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ig = load i64, ptr %i.ie, align 8
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3008
  %i.ij = call { i64, ptr } @_ZNK7ncrypto6Cipher12getModeLabelEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 2 uses
  %i.ik = extractvalue { i64, ptr } %i.ij, 0      ; 2 uses
  %i.il = extractvalue { i64, ptr } %i.ij, 1
  %i.im = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.io = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #26
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i76 = phi ptr [ %i.io, %bb.bf ], [ %i.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ip = icmp ugt i64 %i.ik, 536870887
  br i1 %i.ip, label %bb.bh, label %bb.bi, !prof !5

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4node21ThrowErrStringTooLongEPN2v87IsolateE(ptr noundef %.0.i76) #26
  br label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit

bb.bi:                                            ; preds = %bb.bg
  %i.iq = trunc nuw nsw i64 %i.ik to i32
  %i.ir = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %.0.i76, ptr noundef %i.il, i32 noundef 0, i32 noundef %i.iq) #26
  br label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit

_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit: ; preds = %bb.bh, %bb.bi
  %i.is = phi ptr [ null, %bb.bh ], [ %i.ir, %bb.bi ] ; 2 uses
  store ptr %i.is, ptr %2, align 16
  %i.it = load ptr, ptr %5, align 8
  %i.iu = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.iv = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit
  %i.ix = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit
  %.0.i78 = phi ptr [ %i.ix, %bb.bj ], [ %i.iv, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit ] ; 2 uses
  %i.iy = icmp ugt i64 %i.iu, 536870887
  br i1 %i.iy, label %bb.bl, label %bb.bm, !prof !5

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN4node21ThrowErrStringTooLongEPN2v87IsolateE(ptr noundef %.0.i78) #26
  br label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit80

bb.bm:                                            ; preds = %bb.bk
  %i.iz = trunc nuw nsw i64 %i.iu to i32
  %i.ja = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %.0.i78, ptr noundef %i.it, i32 noundef 0, i32 noundef %i.iz) #26
  br label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit80

_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit80: ; preds = %bb.bl, %bb.bm
  %i.jb = phi ptr [ null, %bb.bl ], [ %i.ja, %bb.bm ] ; 2 uses
  store ptr %i.jb, ptr %i.an, align 8
  %i.jc = load ptr, ptr %i.aj, align 8
  %i.jd = call noundef i32 @_ZNK7ncrypto6Cipher6getNidEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.je = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.jc, i32 noundef %i.jd) #26 ; 2 uses
  %i.jf = ptrtoint ptr %i.je to i64
  store i64 %i.jf, ptr %i.ao, align 16
  %i.jg = load ptr, ptr %i.aj, align 8
  %i.jh = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.jg, i32 noundef %.354) #26 ; 2 uses
  %i.ji = ptrtoint ptr %i.jh to i64
  store i64 %i.ji, ptr %i.ap, align 8
  %i.jj = call noundef zeroext i1 @_ZNK7ncrypto6Cipher12isStreamModeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br i1 %i.jj, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit80
  %i.jk = load ptr, ptr %i.aj, align 8
  %i.jl = call noundef i32 @_ZNK7ncrypto6Cipher12getBlockSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.jm = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.jk, i32 noundef %i.jl) #26
  %i.jn = ptrtoint ptr %i.jm to i64
  store i64 %i.jn, ptr %i.aq, align 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit80
  %.not56 = icmp eq i64 %.3, 0
  br i1 %.not56, label %.critedge.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jo = load ptr, ptr %i.aj, align 8
  %i.jp = trunc i64 %.3 to i32
  %i.jq = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.jo, i32 noundef %i.jp) #26
  %i.jr = ptrtoint ptr %i.jq to i64
  store i64 %i.jr, ptr %i.ar, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.bp, %bb.bo
  %7 = load <2 x ptr>, ptr %i.aq, align 16
  %8 = insertelement <6 x ptr> poison, ptr %i.is, i64 0
  %9 = insertelement <6 x ptr> %8, ptr %i.jb, i64 1
  %10 = insertelement <6 x ptr> %9, ptr %i.je, i64 2
  %11 = insertelement <6 x ptr> %10, ptr %i.jh, i64 3
  %12 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <6 x ptr> %11, <6 x ptr> %12, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %.fr = freeze <6 x ptr> %13
  %14 = icmp eq <6 x ptr> %.fr, splat (ptr null)
  %15 = bitcast <6 x i1> %14 to i6
  %.not262 = icmp eq i6 %15, 0
  br i1 %.not262, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread

_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit: ; preds = %.critedge.i
  %i.js = load ptr, ptr %i.ii, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 192
  %.sroa.0.0.copyload.i.i.i81 = load ptr, ptr %i.jt, align 8 ; 2 uses
  %i.ju = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0108.0, ptr %.sroa.0.0.copyload.i.i.i81, ptr nonnull %2, i64 6) #26 ; 2 uses
  %i.jv = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #26
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = add i64 %i.jw, 664
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = call i16 @_ZN2v86Object14SetPrototypeV2ENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ju, ptr %.sroa.0.0.copyload.i.i.i81, ptr %i.jy) #26
  %i.ka = trunc i16 %i.jz to i1
  br i1 %i.ka, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit
  %i.kb = load ptr, ptr %0, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load i64, ptr %i.ju, align 8
  store i64 %i.kd, ptr %i.kc, align 8
  br label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread

_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread: ; preds = %.critedge.i, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit
  %i.ke = load ptr, ptr %5, align 8               ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.gy
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread
  %i.kg = load i64, ptr %i.gy, align 8
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bq

bb.bq:                                            ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %"_ZZN4node6crypto12_GLOBAL__N_113GetCipherInfoERKN2v820FunctionCallbackInfoINS2_5ValueEEEENK3$_0clEv.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare noundef ptr @_ZN2v87Isolate10GetCurrentEv() local_unnamed_addr #5

declare ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef, double noundef) local_unnamed_addr #5

declare i16 @_ZN2v86Object17DefineOwnPropertyENS_5LocalINS_7ContextEEENS1_INS_4NameEEENS1_INS_5ValueEEENS_17PropertyAttributeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, ptr, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto10CipherBase26RegisterExternalReferencesEPNS_25ExternalReferenceRegistryE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 28 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 43 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 28 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 ptrtoint (ptr @_ZN4node6crypto10CipherBase3NewERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #27
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node6crypto10CipherBase3NewERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #29
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q ; 2 uses
  store ptr %i.w, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit

_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit: ; preds = %bb.b, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i
  %i.x = phi ptr [ %.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.g, %bb.b ], [ %i.v, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i.i14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit
  store i64 ptrtoint (ptr @_ZN4node6crypto10CipherBase6UpdateERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.y, align 8
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.b, align 8
  %.pre118 = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit21

bb.h:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit
  %i.ab = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 6 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i15

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #27
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i15: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i.i16, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i17 = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i17)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #28 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node6crypto10CipherBase6UpdateERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.an, align 8
  %i.ao = icmp sgt i64 %i.ae, 0
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i18

bb.j:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i18

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i18: ; preds = %bb.j, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i19 = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i.i.i.i19, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i20, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #29
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i20

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i20: ; preds = %bb.k, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i18
  store ptr %i.am, ptr %i.a, align 8
  store ptr %i.ap, ptr %i.b, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit21

_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit21: ; preds = %bb.g, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i20
  %i.ar = phi ptr [ %.pre118, %bb.g ], [ %i.aq, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i20 ] ; 2 uses
  %i.as = phi ptr [ %i.aa, %bb.g ], [ %i.ap, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i20 ] ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit21
  store i64 ptrtoint (ptr @_ZN4node6crypto10CipherBase5FinalERKN2v820FunctionCallbackInfoINS2_5ValueEEE to i64), ptr %i.as, align 8
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.b, align 8
  %.pre119 = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit29

bb.m:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit21
  %i.av = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i23
end_hunk_1
