Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testString?download=true
inline.NumInlined: 2886
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZL15testMethod_findv:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.293, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.invoke unwind label %bb.h ; 0 uses

bb.as:                                            ; preds = %bb.ao
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.at ], [ %i.ej, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bk

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN2cm6StringC2IRA2_KcvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(2) @.str.34)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.el = invoke noundef i64 @_ZNK2cm6String4findIS0_EENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %.not18 = icmp eq i64 %i.el, 3
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.not18, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.294, i64 noundef 62)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.invoke unwind label %bb.h ; 0 uses

bb.az:                                            ; preds = %bb.av
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn16 = phi { ptr, i32 } [ %i.eo, %bb.ba ], [ %i.en, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.bk

bb.bc:                                            ; preds = %bb.ax
  %i.ep = call noundef i64 @_ZNK2cm6String4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.295, i64 noundef 1, i64 noundef 2)
  %i.eq = icmp eq i64 %i.ep, 3
  br i1 %i.eq, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.296, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.invoke unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.invoke: ; preds = %bb.bd, %bb.ay, %bb.ar, %bb.an, %bb.al, %bb.ai, %bb.ae, %bb.ab
  %i.es = phi i32 [ 915, %bb.ay ], [ 914, %bb.ar ], [ 913, %bb.an ], [ 912, %bb.al ], [ 911, %bb.ai ], [ 910, %bb.ae ], [ 909, %bb.ab ], [ 916, %bb.bd ]
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.es)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.invoke
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i8 noundef signext 10)
          to label %.critedge unwind label %bb.h  ; 0 uses

.critedge:                                        ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit55, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit93, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.bc
  %.18 = phi i1 [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit93 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit76 ], [ false, %.invoke ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit55 ], [ true, %bb.bc ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i113 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i113, label %_ZN2cm6StringD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %.critedge
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.ex, align 8, !tbaa !28
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !30
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !31
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #22, !inline_history !33
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !31
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #22, !inline_history !33
  br label %_ZN2cm6StringD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i = phi i32 [ %i.fa, %bb.bh ], [ %i.fk, %bb.bi ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fl, label %bb.bj, label %_ZN2cm6StringD2Ev.exit, !prof !35

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #22
  br label %_ZN2cm6StringD2Ev.exit

_ZN2cm6StringD2Ev.exit:                           ; preds = %.critedge, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %.18

bb.bk:                                            ; preds = %bb.bb, %bb.au, %bb.aj, %bb.af, %bb.r, %bb.h
  %.pn19 = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %.pn16, %bb.bb ], [ %.pn, %bb.au ], [ %i.ea, %bb.aj ], [ %i.ds, %bb.af ], [ %i.cb, %bb.r ]
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL16testMethod_rfindv() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.cm::String", align 8        ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.cm::String", align 8        ; 7 uses
  %9 = alloca %"class.cm::String", align 8        ; 7 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.297, i64 noundef 19) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !9, !alias.scope !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.282, i64 6, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.g, align 8, !tbaa !18, !alias.scope !146
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.h, align 2, !tbaa !17, !alias.scope !146
  invoke void @_ZN2cm6StringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7PrivateE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZN2cm6StringC2IRA7_KcvEEOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.f, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #24
  br label %_ZN2cm6StringC2IRA7_KcvEEOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

common.resume:                                    ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %.pn19, %bb.be ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %common.resume

_ZN2cm6StringC2IRA7_KcvEEOT_.exit:                ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44   ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2cm6StringC2IRA7_KcvEEOT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 9 uses
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.013.i.i.i.in = phi i64 [ %.013.i.i.i, %bb.e ], [ %i.s, %bb.d ]
  %.013.i.i.i = add i64 %.013.i.i.i.in, -1        ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.013.i.i.i
  %lhsc.i = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %lhsc.i, 97
  br i1 %i.w, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.not6.i.i.i = icmp eq i64 %.013.i.i.i, 0
  br i1 %.not6.i.i.i, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, !llvm.loop !149

_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.x = icmp eq i64 %.013.i.i.i, 3
  br i1 %i.x, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread

_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread: ; preds = %bb.e, %_ZN2cm6StringC2IRA7_KcvEEOT_.exit, %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.298, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 924)
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !17
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.i ; 0 uses

bb.h:                                             ; preds = %bb.f
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.critedge

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke, %.invoke, %_ZNK2cm6String5rfindEPKcmm.exit.thread, %bb.ar, %bb.ak, %bb.ag, %bb.ae, %bb.ab, %bb.x, %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread, %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread, %bb.l, %bb.k, %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread, %bb.h, %bb.g, %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23: ; preds = %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %10 = icmp ne i64 %i.s, 1                       ; 4 uses
  %.sroa.speculated.i.i.i = zext i1 %10 to i64    ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.speculated.i.i.i
  %lhsc.i25 = load i8, ptr %i.aj, align 1
  %i.ak = icmp eq i8 %lhsc.i25, 97
  br i1 %i.ak, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28, label %11

11:                                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23
  br i1 %10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23.1, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23.1: ; preds = %11
  %lhsc.i25.1 = load i8, ptr %i.u, align 1
  %i.al = icmp eq i8 %lhsc.i25.1, 97
  br i1 %i.al, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread

_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23
  %.013.i.i.i24.lcssa = phi i64 [ %.sroa.speculated.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23.1 ]
  %12 = icmp eq i64 %.013.i.i.i24.lcssa, 0
  br i1 %12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, label %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread

_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread: ; preds = %11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i23.1, %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.299, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 925)
          to label %bb.j unwind label %bb.i       ; 4 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !17
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !46
  %.not.i31 = icmp eq i64 %i.at, 0
  br i1 %.not.i31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35 unwind label %bb.i ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38: ; preds = %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28, %bb.m
  %.013.i.i.i39.in = phi i64 [ %.013.i.i.i39, %bb.m ], [ %i.s, %_ZNK2cm6String5rfindIRA2_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28 ]
  %.013.i.i.i39 = add i64 %.013.i.i.i39.in, -1    ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 %.013.i.i.i39
  %lhsc = load i8, ptr %i.aw, align 1
  %i.ax = icmp eq i8 %lhsc, 97
  br i1 %i.ax, label %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38
  %.not6.i.i.i40 = icmp eq i64 %.013.i.i.i39, 0
  br i1 %.not6.i.i.i40, label %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, !llvm.loop !149

_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38
  %i.ay = icmp eq i64 %.013.i.i.i39, 3
  br i1 %i.ay, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51, label %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread

_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread: ; preds = %bb.m, %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.300, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 928)
          to label %bb.n unwind label %bb.q       ; 4 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !17
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !46
  %.not.i44 = icmp eq i64 %i.bg, 0
  br i1 %.not.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48 unwind label %bb.q ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.critedge

bb.q:                                             ; preds = %bb.t, %bb.s, %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56.thread, %bb.p, %bb.o, %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51: ; preds = %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %13 = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.speculated.i.i.i
  %lhsc117 = load i8, ptr %13, align 1
  %14 = icmp eq i8 %lhsc117, 97
  br i1 %14, label %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56, label %15

15:                                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51
  br i1 %10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51.1, label %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51.1: ; preds = %15
  %lhsc117.1 = load i8, ptr %i.u, align 1
  %i.bk = icmp eq i8 %lhsc117.1, 97
  br i1 %i.bk, label %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56, label %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56.thread

_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51
  %.013.i.i.i52.lcssa = phi i64 [ %.sroa.speculated.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51.1 ]
  %16 = icmp eq i64 %.013.i.i.i52.lcssa, 0
  br i1 %16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i66, label %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56.thread

_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56.thread: ; preds = %15, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51.1, %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.301, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56.thread
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 929)
          to label %bb.r unwind label %bb.q       ; 4 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !17
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !46
  %.not.i59 = icmp eq i64 %i.bs, 0
  br i1 %.not.i59, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63 unwind label %bb.q ; 0 uses

bb.t:                                             ; preds = %bb.r
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i66: ; preds = %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56, %bb.u
  %.013.i.i.i67.in = phi i64 [ %.013.i.i.i67, %bb.u ], [ %i.s, %_ZNK2cm6String5rfindIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit56 ]
  %.013.i.i.i67 = add i64 %.013.i.i.i67.in, -1    ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 %.013.i.i.i67
  %lhsc.i68 = load i8, ptr %i.bv, align 1
  %i.bw = icmp eq i8 %lhsc.i68, 97
  br i1 %i.bw, label %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i66
  %.not6.i.i.i69 = icmp eq i64 %.013.i.i.i67, 0
  br i1 %.not6.i.i.i69, label %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i66, !llvm.loop !149

_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i66
  %.not = icmp eq i64 %.013.i.i.i67, 3
  br i1 %.not, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76, label %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread

_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread: ; preds = %bb.u, %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.302, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76: ; preds = %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit
  %17 = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.speculated.i.i.i
  %lhsc.i78 = load i8, ptr %17, align 1
  %18 = icmp eq i8 %lhsc.i78, 97
  br i1 %18, label %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81, label %19

19:                                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76
  br i1 %10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76.1, label %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76.1: ; preds = %19
  %lhsc.i78.1 = load i8, ptr %i.u, align 1
  %i.by = icmp eq i8 %lhsc.i78.1, 97
  br i1 %i.by, label %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81, label %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread

_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76
  %.013.i.i.i77.lcssa = phi i64 [ %.sroa.speculated.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76.1 ]
  %.not9 = icmp eq i64 %.013.i.i.i77.lcssa, 0
  br i1 %.not9, label %bb.v, label %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread

_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread: ; preds = %19, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i76.1, %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.303, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.v:                                             ; preds = %_ZNK2cm6String5rfindIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ca = call noundef i64 @_ZNK2cm6String5rfindINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS9_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef -1)
  %.not10 = icmp eq i64 %i.ca, 3
  %i.cb = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !17
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not10, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.304, i64 noundef 61)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.y:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.be

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ci = call noundef i64 @_ZNK2cm6String5rfindINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS9_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1)
  %.not11 = icmp eq i64 %i.ci, 0
  %i.cj = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.aa
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !17
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.not11, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.305, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.ac:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.be

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i64 1, ptr %6, align 8, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.265, ptr %i.cq, align 8, !tbaa !55
  %i.cr = call noundef i64 @_ZNK2cm6String5rfindISt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS7_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef -1)
  %.not12 = icmp eq i64 %i.cr, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.not12, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.306, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 1, ptr %7, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.265, ptr %i.ct, align 8, !tbaa !55
  %i.cu = call noundef i64 @_ZNK2cm6String5rfindISt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS7_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 1)
  %.not13 = icmp eq i64 %i.cu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.not13, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.307, i64 noundef 72)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN2cm6StringC2IRA2_KcvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(2) @.str.34)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cw = invoke noundef i64 @_ZNK2cm6String5rfindIS0_EENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %.not15 = icmp eq i64 %i.cw, 3
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.not15, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.308, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.al:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.am ], [ %i.cy, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.be

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN2cm6StringC2IRA2_KcvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(2) @.str.34)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.da = invoke noundef i64 @_ZNK2cm6String5rfindIS0_EENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %.not18 = icmp eq i64 %i.da, 0
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.not18, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.309, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.as:                                            ; preds = %bb.ao
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn16 = phi { ptr, i32 } [ %i.dd, %bb.at ], [ %i.dc, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.be

bb.av:                                            ; preds = %bb.aq
  %i.de = load i64, ptr %i.r, align 8, !tbaa !44  ; 2 uses
  %.not.i.i = icmp ult i64 %i.de, 2
  br i1 %.not.i.i, label %_ZNK2cm6String5rfindEPKcmm.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.df = icmp ne i64 %i.de, 2
  %.sroa.speculated.i.i = zext i1 %i.df to i64
  %i.dg = load ptr, ptr %i.t, align 8
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.ax, %bb.aw
  %.013.i.i = phi i64 [ %i.dm, %bb.ax ], [ %.sroa.speculated.i.i, %bb.aw ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.013.i.i
  %i.di = load i16, ptr %i.dh, align 1
  %i.dj = icmp ne i16 %i.di, 25185
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZNK2cm6String5rfindEPKcmm.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.dm = add nsw i64 %.013.i.i, -1
  %.not6.i.i = icmp eq i64 %.013.i.i, 0
  br i1 %.not6.i.i, label %_ZNK2cm6String5rfindEPKcmm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, !llvm.loop !149

_ZNK2cm6String5rfindEPKcmm.exit:                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.dn = icmp eq i64 %.013.i.i, 0
  br i1 %i.dn, label %.critedge, label %_ZNK2cm6String5rfindEPKcmm.exit.thread

_ZNK2cm6String5rfindEPKcmm.exit.thread:           ; preds = %bb.ax, %bb.av, %_ZNK2cm6String5rfindEPKcmm.exit
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.310, i64 noundef 56)
end_hunk_0
begin_hunk_1_@_ZL28testMethod_find_first_not_ofv:bb.a
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.du = invoke noundef i64 @_ZNK2cm6String17find_first_not_ofIS0_EENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 2)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  %.not18 = icmp eq i64 %i.du, 2
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.not18, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.340, i64 noundef 76)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101.invoke unwind label %bb.h ; 0 uses

bb.ay:                                            ; preds = %bb.au
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn16 = phi { ptr, i32 } [ %i.dx, %bb.az ], [ %i.dw, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.bj

bb.bb:                                            ; preds = %bb.aw
  %i.dy = load i64, ptr %i.s, align 8, !tbaa !44  ; 2 uses
  %i.dz = icmp ugt i64 %i.dy, 1
  br i1 %i.dz, label %.lr.ph.i.i, label %_ZNK2cm6String17find_first_not_ofEPKcmm.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.bb
  %i.ea = load ptr, ptr %i.u, align 8
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.bc, %.lr.ph.i.i
  %.0710.i.i = phi i64 [ %i.ed, %bb.bc ], [ 1, %.lr.ph.i.i ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.0710.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !17
  switch i8 %i.ec, label %_ZNK2cm6String17find_first_not_ofEPKcmm.exit [
    i8 99, label %bb.bc
    i8 98, label %bb.bc
    i8 95, label %bb.bc
  ]

bb.bc:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ed = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ed, %i.dy
  br i1 %exitcond.not.i.i, label %_ZNK2cm6String17find_first_not_ofEPKcmm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !156

_ZNK2cm6String17find_first_not_ofEPKcmm.exit:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ee = icmp eq i64 %.0710.i.i, 3
  br i1 %i.ee, label %.critedge, label %_ZNK2cm6String17find_first_not_ofEPKcmm.exit.thread

_ZNK2cm6String17find_first_not_ofEPKcmm.exit.thread: ; preds = %bb.bc, %bb.bb, %_ZNK2cm6String17find_first_not_ofEPKcmm.exit
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.342, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101.invoke unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101.invoke: ; preds = %_ZNK2cm6String17find_first_not_ofEPKcmm.exit.thread, %bb.ax, %bb.aq, %bb.am, %bb.ak, %bb.ah, %bb.ad, %_ZNK2cm6String17find_first_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit82.thread
  %i.eg = phi i32 [ 984, %bb.ax ], [ 983, %bb.aq ], [ 982, %bb.am ], [ 981, %bb.ak ], [ 980, %bb.ah ], [ 979, %bb.ad ], [ 978, %_ZNK2cm6String17find_first_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit82.thread ], [ 985, %_ZNK2cm6String17find_first_not_ofEPKcmm.exit.thread ]
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.eg)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101.invoke
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i8 noundef signext 10)
          to label %.critedge unwind label %bb.h  ; 0 uses

.critedge:                                        ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit74, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNK2cm6String17find_first_not_ofEPKcmm.exit
  %.18 = phi i1 [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit74 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62 ], [ false, %.invoke ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit48 ], [ true, %_ZNK2cm6String17find_first_not_ofEPKcmm.exit ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i102 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i102, label %_ZN2cm6StringD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.el, align 8, !tbaa !28
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !30
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #22, !inline_history !33
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !31
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #22, !inline_history !33
  br label %_ZN2cm6StringD2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i = phi i32 [ %i.eo, %bb.bg ], [ %i.ey, %bb.bh ]
  %i.ez = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ez, label %bb.bi, label %_ZN2cm6StringD2Ev.exit, !prof !35

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #22
  br label %_ZN2cm6StringD2Ev.exit

_ZN2cm6StringD2Ev.exit:                           ; preds = %.critedge, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %.18

bb.bj:                                            ; preds = %bb.ba, %bb.at, %bb.ai, %bb.ae, %bb.r, %bb.h
  %.pn19 = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %.pn16, %bb.ba ], [ %.pn, %bb.at ], [ %i.dj, %bb.ai ], [ %i.db, %bb.ae ], [ %i.bo, %bb.r ]
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL23testMethod_find_last_ofv() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.cm::String", align 8        ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.cm::String", align 8        ; 7 uses
  %9 = alloca %"class.cm::String", align 8        ; 7 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.343, i64 noundef 26) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !9, !alias.scope !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.282, i64 6, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.g, align 8, !tbaa !18, !alias.scope !157
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.h, align 2, !tbaa !17, !alias.scope !157
  invoke void @_ZN2cm6StringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7PrivateE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZN2cm6StringC2IRA7_KcvEEOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.f, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #24
  br label %_ZN2cm6StringC2IRA7_KcvEEOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

common.resume:                                    ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %.pn19, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %common.resume

_ZN2cm6StringC2IRA7_KcvEEOT_.exit:                ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44   ; 5 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2cm6StringC2IRA7_KcvEEOT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 9 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %bb.d
  %.1.i.i.i.in = phi i64 [ %i.s, %bb.d ], [ %.1.i.i.i, %bb.e ]
  %.1.i.i.i = add i64 %.1.i.i.i.in, -1            ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.1.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17
  switch i8 %i.w, label %bb.e [
    i8 97, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
    i8 95, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  ]

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !160

_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.x = icmp eq i64 %.1.i.i.i, 3
  br i1 %i.x, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread

_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread: ; preds = %bb.e, %_ZN2cm6StringC2IRA7_KcvEEOT_.exit, %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.344, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 993)
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !17
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %.not.i21 = icmp eq i64 %i.af, 0
  br i1 %.not.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.i ; 0 uses

bb.h:                                             ; preds = %bb.f
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.critedge

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke, %.invoke, %bb.aw, %bb.ar, %bb.ak, %bb.ag, %bb.ae, %bb.ab, %bb.x, %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread, %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread, %bb.l, %bb.k, %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29.thread, %bb.h, %bb.g, %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24: ; preds = %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %10 = icmp ne i64 %i.s, 1                       ; 4 uses
  %spec.select.i.i.i = zext i1 %10 to i64         ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  switch i8 %i.ak, label %11 [
    i8 97, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29
    i8 95, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29
  ]

11:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24
  br i1 %10, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24.1, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24.1: ; preds = %11
  %i.al = load i8, ptr %i.u, align 1, !tbaa !17
  switch i8 %i.al, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29.thread [
    i8 97, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29
    i8 95, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29
  ]

_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24
  %.1.i.i.i25.lcssa = phi i64 [ %spec.select.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24 ], [ %spec.select.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24.1 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24.1 ]
  %12 = icmp eq i64 %.1.i.i.i25.lcssa, 0
  br i1 %12, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i39, label %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29.thread

_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29.thread: ; preds = %11, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i24.1, %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.345, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29.thread
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 994)
          to label %bb.j unwind label %bb.i       ; 4 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !17
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !46
  %.not.i32 = icmp eq i64 %i.at, 0
  br i1 %.not.i32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36 unwind label %bb.i ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.critedge

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i39: ; preds = %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29, %bb.m
  %.1.i.i.i40.in = phi i64 [ %.1.i.i.i40, %bb.m ], [ %i.s, %_ZNK2cm6String12find_last_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit29 ]
  %.1.i.i.i40 = add i64 %.1.i.i.i40.in, -1        ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 %.1.i.i.i40
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  switch i8 %i.ax, label %bb.m [
    i8 97, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
    i8 95, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  ]

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i39
  %.not17.i.i.i42 = icmp eq i64 %.1.i.i.i40, 0
  br i1 %.not17.i.i.i42, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i39, !llvm.loop !160

_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i39, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i39
  %i.ay = icmp eq i64 %.1.i.i.i40, 3
  br i1 %i.ay, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread

_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread: ; preds = %bb.m, %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.346, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 997)
          to label %bb.n unwind label %bb.q       ; 4 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !17
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !46
  %.not.i45 = icmp eq i64 %i.bg, 0
  br i1 %.not.i45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49 unwind label %bb.q ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.critedge

bb.q:                                             ; preds = %bb.t, %bb.s, %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread, %bb.p, %bb.o, %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53: ; preds = %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %13 = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select.i.i.i
  %14 = load i8, ptr %13, align 1, !tbaa !17
  switch i8 %14, label %15 [
    i8 97, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57
    i8 95, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57
  ]

15:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53
  br i1 %10, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53.1, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53.1: ; preds = %15
  %i.bk = load i8, ptr %i.u, align 1, !tbaa !17
  switch i8 %i.bk, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread [
    i8 97, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57
    i8 95, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57
  ]

_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53
  %.1.i.i.i54.lcssa = phi i64 [ %spec.select.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53 ], [ %spec.select.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53.1 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53.1 ]
  %16 = icmp eq i64 %.1.i.i.i54.lcssa, 0
  br i1 %16, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67, label %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread

_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread: ; preds = %15, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i53.1, %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.347, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 998)
          to label %bb.r unwind label %bb.q       ; 4 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !17
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !46
  %.not.i60 = icmp eq i64 %i.bs, 0
  br i1 %.not.i60, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 unwind label %bb.q ; 0 uses

bb.t:                                             ; preds = %bb.r
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67: ; preds = %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57, %bb.u
  %.1.i.i.i68.in = phi i64 [ %.1.i.i.i68, %bb.u ], [ %i.s, %_ZNK2cm6String12find_last_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57 ]
  %.1.i.i.i68 = add i64 %.1.i.i.i68.in, -1        ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 %.1.i.i.i68
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %memchr.char0cmp.not.i = icmp eq i8 %i.bw, 97
  br i1 %memchr.char0cmp.not.i, label %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67
  %.not17.i.i.i69 = icmp eq i64 %.1.i.i.i68, 0
  br i1 %.not17.i.i.i69, label %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67, !llvm.loop !160

_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67
  %.not = icmp eq i64 %.1.i.i.i68, 3
  br i1 %.not, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76, label %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread

_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread: ; preds = %bb.u, %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.348, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76: ; preds = %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit
  %17 = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select.i.i.i
  %18 = load i8, ptr %17, align 1, !tbaa !17
  %memchr.char0cmp.not.i78 = icmp eq i8 %18, 97
  br i1 %memchr.char0cmp.not.i78, label %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81, label %19

19:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76
  br i1 %10, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76.1, label %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76.1: ; preds = %19
  %i.by = load i8, ptr %i.u, align 1, !tbaa !17
  %memchr.char0cmp.not.i78.1 = icmp eq i8 %i.by, 97
  br i1 %memchr.char0cmp.not.i78.1, label %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81, label %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread

_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76
  %.1.i.i.i77.lcssa = phi i64 [ %spec.select.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76.1 ]
  %.not9 = icmp eq i64 %.1.i.i.i77.lcssa, 0
  br i1 %.not9, label %bb.v, label %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread

_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread: ; preds = %19, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i76.1, %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.349, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.v:                                             ; preds = %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.312, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ca = call noundef i64 @_ZNK2cm6String12find_last_ofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS9_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef -1)
  %.not10 = icmp eq i64 %i.ca, 3
  %i.cb = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !17
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not10, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.350, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.y:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.bd

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.312, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ci = call noundef i64 @_ZNK2cm6String12find_last_ofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS9_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1)
  %.not11 = icmp eq i64 %i.ci, 0
  %i.cj = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.aa
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !17
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.not11, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.351, i64 noundef 72)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.ac:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bd

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i64 1, ptr %6, align 8, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.321, ptr %i.cq, align 8, !tbaa !55
  %i.cr = call noundef i64 @_ZNK2cm6String12find_last_ofISt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS7_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef -1)
  %.not12 = icmp eq i64 %i.cr, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.not12, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.352, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 1, ptr %7, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.321, ptr %i.ct, align 8, !tbaa !55
  %i.cu = call noundef i64 @_ZNK2cm6String12find_last_ofISt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS7_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 2)
  %.not13 = icmp eq i64 %i.cu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.not13, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.353, i64 noundef 80)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN2cm6StringC2IRA3_KcvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(3) @.str.132)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cw = invoke noundef i64 @_ZNK2cm6String12find_last_ofIS0_EENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %.not15 = icmp eq i64 %i.cw, 4
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.not15, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.354, i64 noundef 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.al:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.am ], [ %i.cy, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bd

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN2cm6StringC2IRA3_KcvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(3) @.str.132)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.da = invoke noundef i64 @_ZNK2cm6String12find_last_ofIS0_EENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 2)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %.not18 = icmp eq i64 %i.da, 1
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.not18, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.355, i64 noundef 71)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

bb.as:                                            ; preds = %bb.ao
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn16 = phi { ptr, i32 } [ %i.dd, %bb.at ], [ %i.dc, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.bd

bb.av:                                            ; preds = %bb.aq
  %i.de = call noundef i64 @_ZNK2cm6String12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.326, i64 noundef 1, i64 noundef 2)
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.356, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke: ; preds = %bb.aw, %bb.ar, %bb.ak, %bb.ag, %bb.ae, %bb.ab, %bb.x, %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread, %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread
  %i.dh = phi i32 [ 1007, %bb.ar ], [ 1006, %bb.ak ], [ 1005, %bb.ag ], [ 1004, %bb.ae ], [ 1003, %bb.ab ], [ 1002, %bb.x ], [ 1001, %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit81.thread ], [ 1000, %_ZNK2cm6String12find_last_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread ], [ 1008, %bb.aw ]
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.dh)
          to label %.invoke unwind label %bb.i

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.invoke
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i8 noundef signext 10)
          to label %.critedge unwind label %bb.i  ; 0 uses

.critedge:                                        ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.av
  %.18 = phi i1 [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 ], [ false, %.invoke ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49 ], [ true, %bb.av ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i101 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i101, label %_ZN2cm6StringD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.dm, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !30
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #22, !inline_history !33
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #22, !inline_history !33
  br label %_ZN2cm6StringD2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i = phi i32 [ %i.dp, %bb.ba ], [ %i.dz, %bb.bb ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ea, label %bb.bc, label %_ZN2cm6StringD2Ev.exit, !prof !35

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #22
  br label %_ZN2cm6StringD2Ev.exit

_ZN2cm6StringD2Ev.exit:                           ; preds = %.critedge, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %.18

bb.bd:                                            ; preds = %bb.au, %bb.an, %bb.ac, %bb.y, %bb.q, %bb.i
  %.pn19 = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %.pn16, %bb.au ], [ %.pn, %bb.an ], [ %i.cp, %bb.ac ], [ %i.ch, %bb.y ], [ %i.bj, %bb.q ]
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL27testMethod_find_last_not_ofv() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.cm::String", align 8        ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.cm::String", align 8        ; 7 uses
  %9 = alloca %"class.cm::String", align 8        ; 7 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.357, i64 noundef 30) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !9, !alias.scope !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.282, i64 6, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.h, align 8, !tbaa !18, !alias.scope !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !17, !alias.scope !161
  invoke void @_ZN2cm6StringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7PrivateE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN2cm6StringC2IRA7_KcvEEOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #24
  br label %_ZN2cm6StringC2IRA7_KcvEEOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.g, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

common.resume:                                    ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %.pn19, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %common.resume

_ZN2cm6StringC2IRA7_KcvEEOT_.exit:                ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44   ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2cm6StringC2IRA7_KcvEEOT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 9 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %bb.d
  %.1.i.i.i.in = phi i64 [ %.1.i.i.i, %bb.e ], [ %i.t, %bb.d ]
  %.1.i.i.i = add i64 %.1.i.i.i.in, -1            ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.1.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  switch i8 %i.x, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit [
    i8 97, label %bb.e
    i8 95, label %bb.e
  ]

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !164

_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.y = icmp eq i64 %.1.i.i.i, 5
  br i1 %i.y, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread

_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread: ; preds = %bb.e, %_ZN2cm6StringC2IRA7_KcvEEOT_.exit, %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.358, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1016)
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !17
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.i ; 0 uses

bb.h:                                             ; preds = %bb.f
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.critedge

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke, %.invoke, %bb.az, %bb.au, %bb.an, %bb.aj, %bb.ah, %bb.ae, %bb.aa, %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.thread, %bb.x, %bb.w, %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread, %bb.l, %bb.k, %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread, %bb.h, %bb.g, %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23: ; preds = %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %10 = icmp ne i64 %i.t, 1                       ; 4 uses
  %spec.select.i.i.i = zext i1 %10 to i64         ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  switch i8 %i.al, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28 [
    i8 97, label %11
    i8 95, label %11
  ]

11:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23
  br i1 %10, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23.1, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23.1: ; preds = %11
  %12 = load i8, ptr %i.v, align 1, !tbaa !17
  switch i8 %12, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28 [
    i8 97, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread
    i8 95, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread
  ]

_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23
  %.1.i.i.i24.lcssa = phi i64 [ %spec.select.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23.1 ]
  %.not169 = icmp eq i64 %.1.i.i.i24.lcssa, 0
  br i1 %.not169, label %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i38

_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread: ; preds = %11, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i23.1, %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.359, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28.thread
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1017)
          to label %bb.j unwind label %bb.i       ; 4 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !17
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !46
  %.not.i31 = icmp eq i64 %i.at, 0
  br i1 %.not.i31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35 unwind label %bb.i ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.critedge

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i38: ; preds = %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28, %bb.m
  %.1.i.i.i39.in = phi i64 [ %.1.i.i.i39, %bb.m ], [ %i.t, %_ZNK2cm6String16find_last_not_ofIRA3_KcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit28 ]
  %.1.i.i.i39 = add i64 %.1.i.i.i39.in, -1        ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %.1.i.i.i39
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  switch i8 %i.ax, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit [
    i8 97, label %bb.m
    i8 95, label %bb.m
  ]

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i38, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i38
  %.not15.i.i.i41 = icmp eq i64 %.1.i.i.i39, 0
  br i1 %.not15.i.i.i41, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i38, !llvm.loop !164

_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i38
  %i.ay = icmp eq i64 %.1.i.i.i39, 5
  br i1 %i.ay, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread

_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread: ; preds = %bb.m, %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.360, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1020)
          to label %bb.n unwind label %bb.q       ; 4 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !17
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !46
  %.not.i45 = icmp eq i64 %i.bg, 0
  br i1 %.not.i45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49 unwind label %bb.q ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.critedge

bb.q:                                             ; preds = %bb.t, %bb.s, %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread, %bb.p, %bb.o, %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52: ; preds = %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit
  %13 = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select.i.i.i
  %14 = load i8, ptr %13, align 1, !tbaa !17
  switch i8 %14, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57 [
    i8 97, label %15
    i8 95, label %15
  ]

15:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52
  br i1 %10, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52.1, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52.1: ; preds = %15
  %16 = load i8, ptr %i.v, align 1, !tbaa !17
  switch i8 %16, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57 [
    i8 97, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread
    i8 95, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread
  ]

_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52
  %.1.i.i.i53.lcssa = phi i64 [ %spec.select.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52.1 ]
  %.not170 = icmp eq i64 %.1.i.i.i53.lcssa, 0
  br i1 %.not170, label %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67

_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread: ; preds = %15, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i52.1, %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.361, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57.thread
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1021)
          to label %bb.r unwind label %bb.q       ; 4 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !17
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !46
  %.not.i60 = icmp eq i64 %i.br, 0
  br i1 %.not.i60, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 unwind label %bb.q ; 0 uses

bb.t:                                             ; preds = %bb.r
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.critedge

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67: ; preds = %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57, %bb.u
  %.1.i.i.i68.in = phi i64 [ %.1.i.i.i68, %bb.u ], [ %i.t, %_ZNK2cm6String16find_last_not_ofIRPKcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS6_m.exit57 ]
  %.1.i.i.i68 = add i64 %.1.i.i.i68.in, -1        ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 %.1.i.i.i68
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %memchr.char0cmp.not.i = icmp eq i8 %i.bv, 97
  br i1 %memchr.char0cmp.not.i, label %bb.u, label %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit

bb.u:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67
  %.not15.i.i.i70 = icmp eq i64 %.1.i.i.i68, 0
  br i1 %.not15.i.i.i70, label %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67, !llvm.loop !164

_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i67
  %.not = icmp eq i64 %.1.i.i.i68, 5
  br i1 %.not, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81, label %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread

_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread: ; preds = %bb.u, %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.362, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit.thread
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1023)
          to label %bb.v unwind label %bb.i       ; 4 uses

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !17
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !46
  %.not.i73 = icmp eq i64 %i.cd, 0
  br i1 %.not.i73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77 unwind label %bb.i ; 0 uses

bb.x:                                             ; preds = %bb.v
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81: ; preds = %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit
  %17 = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select.i.i.i
  %18 = load i8, ptr %17, align 1, !tbaa !17
  %memchr.char0cmp.not.i83 = icmp eq i8 %18, 97
  br i1 %memchr.char0cmp.not.i83, label %19, label %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.a

19:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81
  br i1 %10, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81.1, label %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81.1: ; preds = %19
  %20 = load i8, ptr %i.v, align 1, !tbaa !17
  %memchr.char0cmp.not.i83.1 = icmp eq i8 %20, 97
  br i1 %memchr.char0cmp.not.i83.1, label %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.thread, label %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.a

_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.a: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81
  %.1.i.i.i82.lcssa = phi i64 [ %spec.select.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81.1 ]
  %.not9.not = icmp eq i64 %.1.i.i.i82.lcssa, 0
  br i1 %.not9.not, label %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.thread, label %bb.y

_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.thread: ; preds = %19, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81.1, %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.a
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.363, i64 noundef 62)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.i ; 0 uses

bb.y:                                             ; preds = %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.312, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ch = call noundef i64 @_ZNK2cm6String16find_last_not_ofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS9_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef -1)
  %.not10 = icmp eq i64 %i.ch, 5
  %i.ci = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !17
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not10, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.364, i64 noundef 73)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.i ; 0 uses

bb.ab:                                            ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.bg

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.312, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cp = call noundef i64 @_ZNK2cm6String16find_last_not_ofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS9_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1)
  %.not11 = icmp eq i64 %i.cp, 1
  %i.cq = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ad
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !17
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.not11, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.365, i64 noundef 76)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.i ; 0 uses

bb.af:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bg

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i64 1, ptr %6, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.366, ptr %i.cx, align 8, !tbaa !55
  %i.cy = call noundef i64 @_ZNK2cm6String16find_last_not_ofISt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS7_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef -1)
  %.not12 = icmp eq i64 %i.cy, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.not12, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.367, i64 noundef 81)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.i ; 0 uses

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 1, ptr %7, align 8, !tbaa !44
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.366, ptr %i.da, align 8, !tbaa !55
  %i.db = call noundef i64 @_ZNK2cm6String16find_last_not_ofISt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS7_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 2)
  %.not13 = icmp eq i64 %i.db, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.not13, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.368, i64 noundef 84)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.i ; 0 uses

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN2cm6StringC2IRA3_KcvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(3) @.str.312)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dd = invoke noundef i64 @_ZNK2cm6String16find_last_not_ofIS0_EENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %.not15 = icmp eq i64 %i.dd, 5
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.not15, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.369, i64 noundef 72)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.i ; 0 uses

bb.ao:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.ap ], [ %i.df, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bg

bb.ar:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN2cm6StringC2IRA3_KcvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(3) @.str.312)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.dh = invoke noundef i64 @_ZNK2cm6String16find_last_not_ofIS0_EENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %.not18 = icmp eq i64 %i.dh, 1
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.not18, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.370, i64 noundef 75)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.i ; 0 uses

bb.av:                                            ; preds = %bb.ar
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cm6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn16 = phi { ptr, i32 } [ %i.dk, %bb.aw ], [ %i.dj, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.bg

bb.ay:                                            ; preds = %bb.at
  %i.dl = call noundef i64 @_ZNK2cm6String16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.366, i64 noundef 2, i64 noundef 2)
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.371, i64 noundef 67)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke: ; preds = %bb.az, %bb.au, %bb.an, %bb.aj, %bb.ah, %bb.ae, %bb.aa, %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.thread
  %i.do = phi i32 [ 1030, %bb.au ], [ 1029, %bb.an ], [ 1028, %bb.aj ], [ 1027, %bb.ah ], [ 1026, %bb.ae ], [ 1025, %bb.aa ], [ 1024, %_ZNK2cm6String16find_last_not_ofIcEENSt9enable_ifIXsr12AsStringViewIT_EE5valueEmE4typeEOS3_m.exit86.thread ], [ 1031, %bb.az ]
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.do)
          to label %.invoke unwind label %bb.i

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i8 noundef signext 10)
          to label %.critedge unwind label %bb.i  ; 0 uses

.critedge:                                        ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.ay
  %.18 = phi i1 [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 ], [ false, %.invoke ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49 ], [ true, %bb.ay ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i106 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i106, label %_ZN2cm6StringD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %.critedge
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
end_hunk_1
