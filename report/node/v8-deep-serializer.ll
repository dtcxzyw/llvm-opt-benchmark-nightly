inline.NumInlined: 446
inline.NumDeleted: 256
begin_hunk_0_@_ZN12v8_inspector16V8DeepSerializer16serializeV8ValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE:bb.a
  br i1 %i.ff, label %_ZN12v8_inspector8String16D2Ev.exit6.i54, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i4.i53

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i4.i53: ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i52
  %i.fg = load i64, ptr %i.fe, align 8, !noalias !27
  %i.fh = shl i64 %i.fg, 1
  %i.fi = add i64 %i.fh, 2
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fi) #10, !noalias !27
  br label %_ZN12v8_inspector8String16D2Ev.exit6.i54

_ZN12v8_inspector8String16D2Ev.exit6.i54:         ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i52, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i4.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #9, !noalias !27
  %i.fj = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #9, !noalias !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #9, !noalias !30
  call void @_ZN2v88TryCatchC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41) %25, ptr noundef %i.fj) #9, !noalias !30
  %i.fk = call ptr @_ZNK2v84Date11ToISOStringEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9, !noalias !30
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #9, !noalias !30
  call void @_ZN12v8_inspector16toProtocolStringEPN2v87IsolateENS0_5LocalINS0_6StringEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %26, ptr noundef %i.fj, ptr %i.fk) #9, !noalias !30
  %i.fl = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11, !noalias !33 ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 4, ptr %i.fm, align 8, !noalias !33
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12v8_inspector8protocol11StringValueE, i64 16), ptr %i.fl, align 8, !noalias !33
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 3 uses
  store ptr %i.fo, ptr %i.fn, align 8, !noalias !33
  %i.fp = load ptr, ptr %26, align 8, !noalias !33 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !noalias !33 ; 8 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.fr, 1    ; 3 uses
  %i.fs = icmp ugt i64 %i.fr, 7
  br i1 %i.fs, label %bb.aq, label %._crit_edge.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit6.i54
  %i.ft = icmp ugt i64 %i.fr, 4611686018427387903
  br i1 %i.ft, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #12, !noalias !33
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.fu = icmp eq i64 %i.fr, 4611686018427387903
  br i1 %i.fu, label %bb.at, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i.i, !prof !19

bb.at:                                            ; preds = %bb.as
  call void @_ZSt17__throw_bad_allocv() #12, !noalias !33
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.fv = add nuw nsw i64 %.idx.i.i.i.i.i.i, 2
  %i.fw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #11, !noalias !33 ; 2 uses
  store ptr %i.fw, ptr %i.fn, align 8, !noalias !33
  store i64 %i.fr, ptr %i.fo, align 8, !noalias !33
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i.i, %_ZN12v8_inspector8String16D2Ev.exit6.i54
  %i.fx = phi ptr [ %i.fw, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i.i ], [ %i.fo, %_ZN12v8_inspector8String16D2Ev.exit6.i54 ] ; 3 uses
  switch i64 %i.fr, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i.i
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.fy = load i16, ptr %i.fp, align 2, !noalias !33
  store i16 %i.fy, ptr %i.fx, align 2, !noalias !33
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i.i

bb.av:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fx, ptr align 2 %i.fp, i64 %.idx.i.i.i.i.i.i, i1 false), !noalias !33
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %bb.av, %bb.au, %._crit_edge.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i64 %i.fr, ptr %i.fz, align 8, !noalias !33
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx.i.i.i.i.i.i
  store i16 0, ptr %i.ga, align 2, !noalias !33
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.gc = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !33
  store i64 %i.gd, ptr %i.gb, align 8, !noalias !33
  %i.ge = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.fp, %i.ge
  br i1 %i.gf, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i.i
  %i.gg = icmp samesign ult i64 %i.fr, 8
  call void @llvm.assume(i1 %i.gg)
  br label %_ZN12v8_inspector12_GLOBAL__N_118DescriptionForDateEN2v85LocalINS1_7ContextEEENS2_INS1_4DateEEE.exit.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i.i
  %i.gh = load i64, ptr %i.ge, align 8, !noalias !30
  %i.gi = shl i64 %i.gh, 1
  %i.gj = add i64 %i.gi, 2
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.gj) #10, !noalias !30
  br label %_ZN12v8_inspector12_GLOBAL__N_118DescriptionForDateEN2v85LocalINS1_7ContextEEENS2_INS1_4DateEEE.exit.i

_ZN12v8_inspector12_GLOBAL__N_118DescriptionForDateEN2v85LocalINS1_7ContextEEENS2_INS1_4DateEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #9, !noalias !30
  call void @_ZN2v88TryCatchD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %25) #9, !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #9, !noalias !30
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #9, !noalias !27
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull @.str.1) #9, !noalias !27
  %i.gk = ptrtoint ptr %i.fl to i64
  store i64 %i.gk, ptr %30, align 8, !noalias !27
  call void @_ZN12v8_inspector8protocol15DictionaryValue8setValueERKNS_8String16ESt10unique_ptrINS0_5ValueESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull %30) #9, !noalias !27
  %i.gl = load ptr, ptr %30, align 8, !noalias !27 ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i55, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i57, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i56

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i56: ; preds = %_ZN12v8_inspector12_GLOBAL__N_118DescriptionForDateEN2v85LocalINS1_7ContextEEENS2_INS1_4DateEEE.exit.i
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !27
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !27
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(12) %i.gl) #9, !noalias !27, !inline_history !36
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i57

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i57: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i56, %_ZN12v8_inspector12_GLOBAL__N_118DescriptionForDateEN2v85LocalINS1_7ContextEEENS2_INS1_4DateEEE.exit.i
  %i.gp = load ptr, ptr %29, align 8, !noalias !27 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZN12v8_inspector12_GLOBAL__N_113SerializeDateEN2v85LocalINS1_4DateEEENS2_INS1_7ContextEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i7.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i7.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i57
  %i.gs = load i64, ptr %i.gq, align 8, !noalias !27
  %i.gt = shl i64 %i.gs, 1
  %i.gu = add i64 %i.gt, 2
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gu) #10, !noalias !27
  br label %_ZN12v8_inspector12_GLOBAL__N_113SerializeDateEN2v85LocalINS1_4DateEEENS2_INS1_7ContextEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit

_ZN12v8_inspector12_GLOBAL__N_113SerializeDateEN2v85LocalINS1_4DateEEENS2_INS1_7ContextEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i57, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #9, !noalias !27
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %bb.cn

bb.aw:                                            ; preds = %bb.ao
  %i.gv = tail call noundef zeroext i1 @_ZNK2v85Value5IsMapEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9
  br i1 %i.gv, label %bb.ax, label %bb.br

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9, !noalias !37
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull @.str) #9, !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9, !noalias !37
  %i.gw = load ptr, ptr @_ZN12v8_inspector8protocol7Runtime19DeepSerializedValue8TypeEnum3MapE, align 8, !noalias !37
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef %i.gw) #9, !noalias !37
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14) #9, !noalias !37
  %i.gx = load ptr, ptr %14, align 8, !noalias !37 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZN12v8_inspector8String16D2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %bb.ax
  %i.ha = load i64, ptr %i.gy, align 8, !noalias !37
  %i.hb = shl i64 %i.ha, 1
  %i.hc = add i64 %i.hb, 2
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hc) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit.i61

_ZN12v8_inspector8String16D2Ev.exit.i61:          ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9, !noalias !37
  %i.hd = load ptr, ptr %13, align 8, !noalias !37 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZN12v8_inspector8String16D2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i39.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i39.i: ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i61
  %i.hg = load i64, ptr %i.he, align 8, !noalias !37
  %i.hh = shl i64 %i.hg, 1
  %i.hi = add i64 %i.hh, 2
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hi) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit41.i

_ZN12v8_inspector8String16D2Ev.exit41.i:          ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i61, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9, !noalias !37
  %i.hj = icmp sgt i32 %3, 0
  br i1 %i.hj, label %bb.ay, label %bb.bq

bb.ay:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit41.i
  %i.hk = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11, !noalias !40 ; 8 uses
  call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.hk) #9, !noalias !40
  %i.hl = call ptr @_ZNK2v83Map7AsArrayEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9 ; 3 uses
  %i.hm = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.hl) #9 ; 3 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = load ptr, ptr %i.ho, align 8            ; 9 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64               ; 4 uses
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = ashr exact i64 %i.hu, 3
  %i.hw = icmp ult i64 %i.hv, %i.hn
  br i1 %i.hw, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i, label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.ay
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hk, i64 24 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8            ; 3 uses
  %i.hz = ptrtoint ptr %i.hy to i64               ; 3 uses
  %i.ia = sub i64 %i.hz, %i.ht
  %i.ib = shl nuw nsw i64 %i.hn, 3
  %i.ic = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #11 ; 9 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.hr, %i.hy
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i
  %65 = add i64 %i.hz, -8
  %i.id = sub i64 %65, %i.ht                      ; 2 uses
  %i.ie = lshr i64 %i.id, 3
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.id, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader287, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ig = add i64 %i.hz, -8
  %i.ih = sub i64 %i.ig, %i.ht
  %i.ii = and i64 %i.ih, -8
  %i.ij = add i64 %i.ii, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ic, i64 %i.ij
  %scevgep283 = getelementptr i8, ptr %i.hr, i64 %i.ij
  %bound0 = icmp ult ptr %i.ic, %scevgep283
  %bound1 = icmp ult ptr %i.hr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader287, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.if, 4611686018427387900     ; 3 uses
  %i.ik = shl i64 %n.vec, 3                       ; 2 uses
  %i.il = getelementptr i8, ptr %i.ic, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.hr, i64 %i.ik
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.in = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ic, i64 %i.in ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.hr, i64 %i.in ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.io = getelementptr i8, ptr %next.gep284, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep284, align 8, !alias.scope !48, !noalias !43
  %wide.load285 = load <2 x i64>, ptr %i.io, align 8, !alias.scope !48, !noalias !43
  %i.ip = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !51, !noalias !48
  store <2 x i64> %wide.load285, ptr %i.ip, align 8, !alias.scope !51, !noalias !48
  %i.iq = getelementptr i8, ptr %next.gep284, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep284, align 8, !alias.scope !48, !noalias !43
  store <2 x ptr> splat (ptr null), ptr %i.iq, align 8, !alias.scope !48, !noalias !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.if, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader287

.lr.ph.i.i.i.i.i.i.preheader287:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ic, %vector.memcheck ], [ %i.ic, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.il, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.hr, %vector.memcheck ], [ %i.hr, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.im, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader287, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader287 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader287 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.is = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !46, !noalias !43
  store i64 %i.is, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !43, !noalias !46
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !46, !noalias !43
  %i.it = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i71 = icmp eq ptr %i.it, %i.hy
  br i1 %.not.i.i.i.i.i.i71, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !57

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.pre.i.i.i = load ptr, ptr %i.ho, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i
  %i.iv = phi ptr [ %.pre.i.i.i, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i ], [ %i.hr, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i ] ; 3 uses
  %.not.i8.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i8.i.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i
  %i.iw = load ptr, ptr %i.hp, align 8
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.iz) #10
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i: ; preds = %bb.az, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i
  store ptr %i.ic, ptr %i.ho, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia
  store ptr %i.ja, ptr %i.hx, align 8
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.hn
  store ptr %i.jb, ptr %i.hp, align 8
  br label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i

_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, %bb.ay
  %.not114.not.i = icmp eq i32 %i.hm, 0
  br i1 %.not114.not.i, label %.critedge38.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i
  %i.jc = add nsw i32 %3, -1                      ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  br label %bb.bb

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit71.i
  %i.ji = add i32 %.0115.i, 2                     ; 2 uses
  %.not.i = icmp ult i32 %i.ji, %i.hm
  br i1 %.not.i, label %bb.bb, label %.critedge38.i, !llvm.loop !58

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i
  %.0115.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ji, %bb.ba ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9, !noalias !37
  store ptr null, ptr %15, align 8, !noalias !37
  %i.jj = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hl, ptr %2, i32 noundef %.0115.i) #9 ; 4 uses
  %.not112.i = icmp eq ptr %i.jj, null
  br i1 %.not112.i, label %bb.bc, label %bb.bd, !prof !19

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.jk = or disjoint i32 %.0115.i, 1
  %i.jl = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hl, ptr %2, i32 noundef %i.jk) #9 ; 2 uses
  %.not113.i = icmp eq ptr %i.jl, null
  br i1 %.not113.i, label %bb.be, label %bb.bf, !prof !19

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.jm = load i64, ptr %i.jj, align 8            ; 2 uses
  %i.jn = and i64 %i.jm, 3
  %i.jo = icmp eq i64 %i.jn, 1
  br i1 %i.jo, label %_ZNK2v85Value13QuickIsStringEv.exit.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i

_ZNK2v85Value13QuickIsStringEv.exit.i:            ; preds = %bb.bf
  %i.jp = add nsw i64 %i.jm, -1
  %i.jq = inttoptr i64 %i.jp to ptr
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = add i64 %i.jr, 11
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = load i16, ptr %i.jt, align 2
  %i.jv = icmp ult i16 %i.ju, 128
  br i1 %i.jv, label %bb.bg, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i

bb.bg:                                            ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9, !noalias !37
  %i.jw = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #9
  call void @_ZN12v8_inspector16toProtocolStringEPN2v87IsolateENS0_5LocalINS0_6StringEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %16, ptr noundef %i.jw, ptr nonnull %i.jj) #9
  %i.jx = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11, !noalias !59 ; 7 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i32 4, ptr %i.jy, align 8, !noalias !59
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12v8_inspector8protocol11StringValueE, i64 16), ptr %i.jx, align 8, !noalias !59
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 32 ; 3 uses
  store ptr %i.ka, ptr %i.jz, align 8, !noalias !59
  %i.kb = load ptr, ptr %16, align 8, !noalias !62 ; 4 uses
  %i.kc = load i64, ptr %i.jf, align 8, !noalias !62 ; 8 uses
  %.idx.i.i.i.i.i67 = shl nuw nsw i64 %i.kc, 1    ; 3 uses
  %i.kd = icmp ugt i64 %i.kc, 7
  br i1 %i.kd, label %bb.bh, label %._crit_edge.i.i.i.i.i.i68

bb.bh:                                            ; preds = %bb.bg
  %i.ke = icmp ugt i64 %i.kc, 4611686018427387903
  br i1 %i.ke, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #12, !noalias !59
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.kf = icmp eq i64 %i.kc, 4611686018427387903
  br i1 %i.kf, label %bb.bk, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i70, !prof !19

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt17__throw_bad_allocv() #12, !noalias !59
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i70: ; preds = %bb.bj
  %i.kg = add nuw nsw i64 %.idx.i.i.i.i.i67, 2
  %i.kh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #11, !noalias !59 ; 2 uses
  store ptr %i.kh, ptr %i.jz, align 8, !noalias !59
  store i64 %i.kc, ptr %i.ka, align 8, !noalias !59
  br label %._crit_edge.i.i.i.i.i.i68

._crit_edge.i.i.i.i.i.i68:                        ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i70, %bb.bg
  %i.ki = phi ptr [ %i.kh, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i70 ], [ %i.ka, %bb.bg ] ; 3 uses
  switch i64 %i.kc, label %bb.bm [
    i64 1, label %bb.bl
    i64 0, label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i69
  ]

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i.i.i68
  %i.kj = load i16, ptr %i.kb, align 2, !noalias !59
  store i16 %i.kj, ptr %i.ki, align 2, !noalias !59
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i69

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i.i.i68
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ki, ptr align 2 %i.kb, i64 %.idx.i.i.i.i.i67, i1 false), !noalias !59
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i69

end_hunk_0
begin_hunk_1_@_ZN12v8_inspector16V8DeepSerializer16serializeV8ValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE:bb.a
_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.cj
  %i.sr = load i64, ptr %i.sp, align 8
  %i.ss = shl i64 %i.sr, 1
  %i.st = add i64 %i.ss, 2
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.st) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit129

_ZN12v8_inspector8String16D2Ev.exit129:           ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #9
  %i.su = load ptr, ptr %61, align 8              ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %_ZN12v8_inspector8String16D2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130: ; preds = %_ZN12v8_inspector8String16D2Ev.exit129
  %i.sx = load i64, ptr %i.sv, align 8
  %i.sy = shl i64 %i.sx, 1
  %i.sz = add i64 %i.sy, 2
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sz) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit132

_ZN12v8_inspector8String16D2Ev.exit132:           ; preds = %_ZN12v8_inspector8String16D2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #9
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  br label %bb.cn

bb.ck:                                            ; preds = %bb.ci
  %i.ta = tail call noundef zeroext i1 @_ZNK2v85Value17IsGeneratorObjectEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9
  br i1 %i.ta, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #9
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull @.str) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #9
  %i.tb = load ptr, ptr @_ZN12v8_inspector8protocol7Runtime19DeepSerializedValue8TypeEnum9GeneratorE, align 8
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %64, ptr noundef %i.tb) #9
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull align 8 dereferenceable(40) %64) #9
  %i.tc = load ptr, ptr %64, align 8              ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZN12v8_inspector8String16D2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i133: ; preds = %bb.cl
  %i.tf = load i64, ptr %i.td, align 8
  %i.tg = shl i64 %i.tf, 1
  %i.th = add i64 %i.tg, 2
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.th) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit135

_ZN12v8_inspector8String16D2Ev.exit135:           ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #9
  %i.ti = load ptr, ptr %63, align 8              ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.tk = icmp eq ptr %i.ti, %i.tj
  br i1 %i.tk, label %_ZN12v8_inspector8String16D2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i136

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i136: ; preds = %_ZN12v8_inspector8String16D2Ev.exit135
  %i.tl = load i64, ptr %i.tj, align 8
  %i.tm = shl i64 %i.tl, 1
  %i.tn = add i64 %i.tm, 2
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tn) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit138

_ZN12v8_inspector8String16D2Ev.exit138:           ; preds = %_ZN12v8_inspector8String16D2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #9
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  tail call fastcc void @_ZN12v8_inspector12_GLOBAL__N_115SerializeObjectEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %1, ptr %2, i32 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(96) %6)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZN12v8_inspector8String16D2Ev.exit138, %_ZN12v8_inspector8String16D2Ev.exit132, %_ZN12v8_inspector8String16D2Ev.exit126, %_ZN12v8_inspector8String16D2Ev.exit120, %_ZN12v8_inspector8String16D2Ev.exit114, %_ZN12v8_inspector8String16D2Ev.exit108, %_ZN12v8_inspector8String16D2Ev.exit102, %_ZN12v8_inspector8String16D2Ev.exit96, %_ZN12v8_inspector8String16D2Ev.exit90, %_ZN12v8_inspector12_GLOBAL__N_112SerializeSetEN2v85LocalINS1_3SetEEENS2_INS1_7ContextEEEiNS2_INS1_6ObjectEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, %_ZN12v8_inspector12_GLOBAL__N_112SerializeMapEN2v85LocalINS1_3MapEEENS2_INS1_7ContextEEEiNS2_INS1_6ObjectEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, %_ZN12v8_inspector12_GLOBAL__N_113SerializeDateEN2v85LocalINS1_4DateEEENS2_INS1_7ContextEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, %_ZN12v8_inspector12_GLOBAL__N_115SerializeRegexpEN2v85LocalINS1_6RegExpEEENS2_INS1_7ContextEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, %_ZN12v8_inspector12_GLOBAL__N_114SerializeArrayEN2v85LocalINS1_5ArrayEEENS2_INS1_7ContextEEEiNS2_INS1_6ObjectEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit
  ret void
}

declare noundef zeroext i1 @_ZNK2v85Value7IsArrayEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZNK2v85Value8IsRegExpEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value6IsDateEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value5IsMapEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value5IsSetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value9IsWeakMapEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value9IsWeakSetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value13IsNativeErrorEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value7IsProxyEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value9IsPromiseEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value12IsTypedArrayEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value13IsArrayBufferEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value17IsGeneratorObjectEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12v8_inspector12_GLOBAL__N_115SerializeObjectEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, ptr %2, i32 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(96) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.42", align 8 ; 9 uses
  %8 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr.50", align 8 ; 5 uses
  %10 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %11 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %12 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %13 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %14 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %15 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %16 = alloca %"class.std::unique_ptr.27", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull @.str) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.a = load ptr, ptr @_ZN12v8_inspector8protocol7Runtime19DeepSerializedValue8TypeEnum6ObjectE, align 8
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef %i.a) #9
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14) #9
  %i.b = load ptr, ptr %14, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.h = load ptr, ptr %13, align 8               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN12v8_inspector8String16D2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12: ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  %i.k = load i64, ptr %i.i, align 8
  %i.l = shl i64 %i.k, 1
  %i.m = add i64 %i.l, 2
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit14

_ZN12v8_inspector8String16D2Ev.exit14:            ; preds = %_ZN12v8_inspector8String16D2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.b, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit14
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.o = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11, !noalias !78 ; 10 uses
  call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #9, !noalias !78
  %i.p = call ptr @_ZN2v86Object19GetOwnPropertyNamesENS_5LocalINS_7ContextEEENS_14PropertyFilterENS_17KeyConversionModeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, i32 noundef 18, i32 noundef 0) #9, !noalias !75 ; 3 uses
  %.not81.i = icmp eq ptr %i.p, null
  br i1 %.not81.i, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.p) #9 ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.s, align 8              ; 9 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 4 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ult i64 %i.z, %i.r
  br i1 %i.aa, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i, label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.ae = sub i64 %i.ad, %i.x
  %i.af = shl nuw nsw i64 %i.r, 3
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #11 ; 9 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.v, %i.ac
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i
  %17 = add i64 %i.ad, -8
  %i.ah = sub i64 %17, %i.x                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ak = add i64 %i.ad, -8
  %i.al = sub i64 %i.ak, %i.x
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.an
  %scevgep76 = getelementptr i8, ptr %i.v, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %scevgep76
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.v, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.as = getelementptr i8, ptr %next.gep77, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep77, align 8, !alias.scope !86, !noalias !81
  %wide.load78 = load <2 x i64>, ptr %i.as, align 8, !alias.scope !86, !noalias !81
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !89, !noalias !86
  store <2 x i64> %wide.load78, ptr %i.at, align 8, !alias.scope !89, !noalias !86
  %i.au = getelementptr i8, ptr %next.gep77, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep77, align 8, !alias.scope !86, !noalias !81
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !alias.scope !86, !noalias !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader83

.lr.ph.i.i.i.i.i.i.preheader83:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader83, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader83 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader83 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !81, !noalias !84
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ac
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !92

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.pre.i.i.i = load ptr, ptr %i.s, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i
  %i.az = phi ptr [ %.pre.i.i.i, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i ], [ %i.v, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i ] ; 3 uses
  %.not.i8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i8.i.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i
  %i.ba = load ptr, ptr %i.t, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #10
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i
  store ptr %i.ag, ptr %i.s, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store ptr %i.be, ptr %i.ab, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.r
  store ptr %i.bf, ptr %i.t, align 8
  br label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i

_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, %bb.d
  %.not84.not.i = icmp eq i32 %i.q, 0
  br i1 %.not84.not.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bj = add nsw i32 %3, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i, %.lr.ph.i
  %.085.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ei, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9, !noalias !75
  store ptr null, ptr %7, align 8, !noalias !75
  %i.bm = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr %2, i32 noundef %.085.i) #9 ; 5 uses
  %.not82.i = icmp eq ptr %i.bm, null
  br i1 %.not82.i, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = and i64 %i.bn, 3
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %_ZNK2v85Value13QuickIsStringEv.exit.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i, !prof !93

_ZNK2v85Value13QuickIsStringEv.exit.i:            ; preds = %bb.h
  %i.bq = add nsw i64 %i.bn, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = add i64 %i.bs, 11
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = icmp ult i16 %i.bv, 128
  br i1 %i.bw, label %bb.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i, !prof !94

_ZNK2v85Value13QuickIsStringEv.exit.thread.i:     ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i, %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #12
  unreachable

bb.i:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i
  %i.bx = call i16 @_ZN2v86Object20HasRealNamedPropertyENS_5LocalINS_7ContextEEENS1_INS_4NameEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, ptr nonnull %i.bm) #9
  %i.by = and i16 %i.bx, 257
  %or.cond.i = icmp eq i16 %i.by, 257
  br i1 %or.cond.i, label %bb.j, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9, !noalias !75
  %i.bz = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #9
  call void @_ZN12v8_inspector16toProtocolStringEPN2v87IsolateENS0_5LocalINS0_6StringEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %8, ptr noundef %i.bz, ptr nonnull %i.bm) #9
  %i.ca = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11, !noalias !95 ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 4, ptr %i.cb, align 8, !noalias !95
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12v8_inspector8protocol11StringValueE, i64 16), ptr %i.ca, align 8, !noalias !95
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 3 uses
  store ptr %i.cd, ptr %i.cc, align 8, !noalias !95
  %i.ce = load ptr, ptr %8, align 8, !noalias !98 ; 4 uses
  %i.cf = load i64, ptr %i.bg, align 8, !noalias !98 ; 8 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.cf, 1      ; 3 uses
  %i.cg = icmp ugt i64 %i.cf, 7
  br i1 %i.cg, label %bb.k, label %._crit_edge.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp ugt i64 %i.cf, 4611686018427387903
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #12, !noalias !95
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ci = icmp eq i64 %i.cf, 4611686018427387903
  br i1 %i.ci, label %bb.n, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !19

bb.n:                                             ; preds = %bb.m
  call void @_ZSt17__throw_bad_allocv() #12, !noalias !95
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.cj = add nuw nsw i64 %.idx.i.i.i.i.i, 2
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #11, !noalias !95 ; 2 uses
  store ptr %i.ck, ptr %i.cc, align 8, !noalias !95
  store i64 %i.cf, ptr %i.cd, align 8, !noalias !95
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.j
  %i.cl = phi ptr [ %i.ck, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.cd, %bb.j ] ; 3 uses
  switch i64 %i.cf, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cm = load i16, ptr %i.ce, align 2, !noalias !95
  store i16 %i.cm, ptr %i.cl, align 2, !noalias !95
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cl, ptr align 2 %i.ce, i64 %.idx.i.i.i.i.i, i1 false), !noalias !95
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 %i.cf, ptr %i.cn, align 8, !noalias !95
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i.i.i.i.i
  store i16 0, ptr %i.co, align 2, !noalias !95
end_hunk_1
begin_hunk_2_@_ZN12v8_inspector12_GLOBAL__N_115SerializeObjectEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE:bb.a
  %i.df = load i32, ptr %0, align 8, !alias.scope !75
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.s, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt1.i

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i
  %i.dh = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11, !noalias !101 ; 4 uses
  call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.dh) #9, !noalias !101
  %i.di = ptrtoint ptr %i.ca to i64
  store i64 %i.di, ptr %10, align 8, !noalias !75
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull %10) #9
  %i.dj = load ptr, ptr %10, align 8, !noalias !75 ; 3 uses
  %.not.i26.i = icmp eq ptr %i.dj, null
  br i1 %.not.i26.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i: ; preds = %bb.s
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(12) %i.dj) #9, !inline_history !104
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i, %bb.s
  %i.dn = load ptr, ptr %7, align 8, !noalias !75
  store ptr null, ptr %7, align 8, !noalias !75
  store ptr %i.dn, ptr %11, align 8, !noalias !75
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull %11) #9
  %i.do = load ptr, ptr %11, align 8, !noalias !75 ; 3 uses
  %.not.i27.i = icmp eq ptr %i.do, null
  br i1 %.not.i27.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(12) %i.do) #9, !inline_history !104
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i
  store ptr %i.dh, ptr %12, align 8, !noalias !75
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull %12) #9
  %i.ds = load ptr, ptr %12, align 8, !noalias !75 ; 3 uses
  %.not.i30.i = icmp eq ptr %i.ds, null
  br i1 %.not.i30.i, label %bb.t, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(12) %i.ds) #9, !inline_history !104
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i
  %i.dw = load ptr, ptr %i.bk, align 8, !alias.scope !75 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bl
  br i1 %i.dx, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.dy = load i64, ptr %i.bl, align 8, !alias.scope !75
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #10
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt1.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i
  %i.ea = load ptr, ptr %7, align 8, !noalias !75 ; 3 uses
  %.not.i34.jt1.i = icmp eq ptr %i.ea, null
  br i1 %.not.i34.jt1.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt1.i

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %i.eb = load ptr, ptr %7, align 8, !noalias !75 ; 3 uses
  %.not.i34.jt6.i = icmp eq ptr %i.eb, null
  br i1 %.not.i34.jt6.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt6.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt1.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt1.i
  %i.ec = load ptr, ptr %i.ea, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(96) %i.ea) #9, !inline_history !105
  br label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt6.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i
  %i.ef = load ptr, ptr %i.eb, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(96) %i.eb) #9, !inline_history !105
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt6.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9, !noalias !75
  %i.ei = add nuw i32 %.085.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ei, %i.q
  br i1 %exitcond.not.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit, label %bb.f, !llvm.loop !106

_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.jt6.i, %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ej = load i32, ptr %0, align 8
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.u, label %_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i

_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.jt1.i, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.jt1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9, !noalias !75
  %i.el = load ptr, ptr %i.ca, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(12) %i.ca) #9, !inline_history !104
  %i.eo = load ptr, ptr %i.o, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #9, !inline_history !107
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.er = load i32, ptr %0, align 8
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %bb.u, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.thread

bb.u:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread, %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit
  %.sroa.0.166 = phi ptr [ null, %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread ], [ %i.o, %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull @.str.1) #9
  store ptr %.sroa.0.166, ptr %16, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue8setValueERKNS_8String16ESt10unique_ptrINS0_5ValueESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull %16) #9
  %i.et = load ptr, ptr %16, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.et, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i: ; preds = %bb.u
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(12) %i.et) #9, !inline_history !108
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.u, %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i
  %i.ex = load ptr, ptr %15, align 8              ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit
  %i.fa = load i64, ptr %i.ey, align 8
  %i.fb = shl i64 %i.fa, 1
  %i.fc = add i64 %i.fb, 2
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fc) #10
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16
  %i.fh = load i64, ptr %i.ff, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #10
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i: ; preds = %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit
  %i.fj = load ptr, ptr %i.o, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #9, !inline_history !109
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN12v8_inspector8String16D2Ev.exit14
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread, %_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12v8_inspector12_GLOBAL__N_119SerializeArrayValueEN2v85LocalINS1_5ArrayEEENS2_INS1_7ContextEEEiNS2_INS1_6ObjectEEERNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISD_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, ptr %2, i32 noundef range(i32 1, -2147483648) %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.42", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.50", align 8 ; 5 uses
  %9 = alloca %"class.std::unique_ptr.27", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11, !noalias !110 ; 8 uses
  tail call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #9, !noalias !110
  %i.b = tail call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9 ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 9 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ult i64 %i.k, %i.c
  br i1 %i.l, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.p = sub i64 %i.o, %i.i
  %i.q = shl nuw nsw i64 %i.c, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #11 ; 9 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.n
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i
  %10 = add i64 %i.o, -8
  %i.s = sub i64 %10, %i.i                        ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.v = add i64 %i.o, -8
  %i.w = sub i64 %i.v, %i.i
  %i.x = and i64 %i.w, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.y
  %scevgep55 = getelementptr i8, ptr %i.g, i64 %i.y
  %bound0 = icmp ult ptr %i.r, %scevgep55
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.g, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.g, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ad = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep56, align 8, !alias.scope !118, !noalias !113
  %wide.load57 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !118, !noalias !113
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !121, !noalias !118
  store <2 x i64> %wide.load57, ptr %i.ae, align 8, !alias.scope !121, !noalias !118
  %i.af = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !alias.scope !118, !noalias !113
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !alias.scope !118, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.preheader60:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !116, !noalias !113
  store i64 %i.ah, ptr %.012.i.i.i.i.i, align 8, !alias.scope !113, !noalias !116
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !116, !noalias !113
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !124

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i
  %i.ak = phi ptr [ %.pre.i.i, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i ], [ %i.g, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.not.i8.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i
  %i.al = load ptr, ptr %i.e, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #10
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i
  store ptr %i.r, ptr %i.d, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store ptr %i.ap, ptr %i.m, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.c
  store ptr %i.aq, ptr %i.e, align 8
  br label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit

_ZN12v8_inspector8protocol9ListValue7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i
  %.not39.not = icmp eq i32 %i.b, 0
  br i1 %.not39.not, label %.critedge21, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit
  %i.ar = add nsw i32 %3, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit
  %.040 = phi i32 [ 0, %.lr.ph ], [ %i.bs, %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.au = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, i32 noundef %.040) #9 ; 2 uses
  %.not38 = icmp eq ptr %i.au, null
  br i1 %.not38, label %bb.d, label %bb.e, !prof !19

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store ptr null, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @_ZN12v8_inspector11ValueMirror6createEN2v85LocalINS1_7ContextEEENS2_INS1_5ValueEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.50") align 8 %8, ptr %2, ptr nonnull %i.au) #9
  %i.av = load ptr, ptr %8, align 8               ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr %2, i32 noundef %i.ar, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %7) #9
  %i.az = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i: ; preds = %bb.e
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.az) #9, !inline_history !125
  br label %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.bd = load i32, ptr %0, align 8
  %i.be = icmp eq i32 %i.bd, 1
  %i.bf = load ptr, ptr %7, align 8               ; 4 uses
  br i1 %i.be, label %.critedge, label %.critedge19

.critedge:                                        ; preds = %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit
  store ptr null, ptr %7, align 8
  store ptr %i.bf, ptr %9, align 8
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull %9) #9
  %i.bg = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i22 = icmp eq ptr %i.bg, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i: ; preds = %.critedge
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #9, !inline_history !108
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %.critedge, %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i
  %i.bk = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.at
  br i1 %i.bl, label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit
  %i.bm = load i64, ptr %i.at, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #10
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit

_ZN8v8_crdtp16DispatchResponseD2Ev.exit:          ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bo = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i23 = icmp eq ptr %i.bo, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i: ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(96) %i.bo) #9, !inline_history !126
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.bs = add nuw i32 %.040, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %i.b
  br i1 %exitcond.not, label %.critedge21, label %bb.c, !llvm.loop !127

.critedge19:                                      ; preds = %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit
  %.not.i24 = icmp eq ptr %i.bf, null
  br i1 %.not.i24, label %_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i25

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i25: ; preds = %.critedge19
  %i.bt = load ptr, ptr %i.bf, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(96) %i.bf) #9, !inline_history !126
  br label %_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i

.critedge21:                                      ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit, %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit
  %i.bw = load ptr, ptr %6, align 8               ; 3 uses
  store ptr %i.a, ptr %6, align 8
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %.thread, label %_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i.i.i.i: ; preds = %.critedge21
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
end_hunk_2
