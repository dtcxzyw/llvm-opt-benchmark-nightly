Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK8V3Number9displayedEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11VFormatAttr:bb.a
.body258:                                         ; preds = %.loopexit1009, %.loopexit.split-lp1010, %.loopexit1004, %.loopexit.split-lp1005, %.loopexit1002, %.loopexit.split-lp, %bb.h, %bb.aw, %bb.gq, %bb.hu, %bb.hk, %bb.hg, %bb.hc, %bb.gy, %bb.gs, %bb.dy, %bb.gi, %bb.ep, %bb.fe, %bb.fm, %bb.fz, %bb.dl, %bb.dm, %bb.bw, %bb.bx, %bb.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %bb.de, %bb.cu, %bb.cg, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, %bb.ap, %bb.y
  %.pn244 = phi { ptr, i32 } [ %i.aum, %bb.hk ], [ %i.hq, %bb.bm ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %.pn.pn, %bb.ap ], [ %i.rz, %bb.de ], [ %i.ks, %bb.cg ], [ %i.px, %bb.cu ], [ %i.js, %bb.bw ], [ %.pn233.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %i.tm, %bb.dx ], [ %i.sn, %bb.dl ], [ %i.anq, %bb.fz ], [ %i.arf, %bb.gs ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp1007, %.loopexit.split-lp1005 ], [ %.pn209.pn, %bb.y ], [ %i.jt, %bb.bx ], [ %i.so, %bb.dm ], [ %i.afk, %bb.fe ], [ %i.aps, %bb.gi ], [ %i.uk, %bb.dy ], [ %i.fc, %bb.aw ], [ %i.acd, %bb.ep ], [ %i.bb, %bb.h ], [ %i.akj, %bb.fm ], [ %i.ard, %bb.gq ], [ %i.awa, %bb.hu ], [ %i.atp, %bb.gy ], [ %i.atx, %bb.hc ], [ %i.aue, %bb.hg ], [ %lpad.loopexit, %.loopexit1002 ], [ %lpad.loopexit1006, %.loopexit1004 ], [ %lpad.loopexit1011, %.loopexit1009 ], [ %lpad.loopexit.split-lp1012, %.loopexit.split-lp1010 ]
  %i.bhq = load ptr, ptr %6, align 8, !tbaa !29   ; 2 uses
  %i.bhr = icmp eq ptr %i.bhq, %i.av
  br i1 %i.bhr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit822, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i820

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i820: ; preds = %.body258
  %i.bhs = load i64, ptr %i.av, align 8, !tbaa !23
  %i.bht = add i64 %i.bhs, 1
  call void @_ZdlPvm(ptr noundef %i.bhq, i64 noundef %i.bht) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit822

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit822: ; preds = %.body258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i820
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.jo

bb.jo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit822, %bb.f
  %.pn246 = phi { ptr, i32 } [ %i.at, %bb.f ], [ %.pn244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit822 ]
  %i.bhu = load ptr, ptr %5, align 8, !tbaa !29   ; 2 uses
  %i.bhv = icmp eq ptr %i.bhu, %i.t
  br i1 %i.bhv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i823

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i823: ; preds = %bb.jo
  %i.bhw = load i64, ptr %i.t, align 8, !tbaa !23
  %i.bhx = add i64 %i.bhw, 1
  call void @_ZdlPvm(ptr noundef %i.bhu, i64 noundef %i.bhx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825: ; preds = %bb.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i823
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn246
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK8V3Number5asciiB5cxx11Ebb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %i.d

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !23
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3NumberC2EP8FileLineijb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef null, i32 noundef %2, i1 noundef zeroext %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.g, align 8, !tbaa !37
  %i.h = load i8, ptr %i.b, align 4, !tbaa !42
  %i.i = add i8 %i.h, -1
  %spec.select.i.i = icmp ult i8 %i.i, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc6 unwind label %bb.f    ; 2 uses

.noexc6:                                          ; preds = %.noexc
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.118, i64 noundef 40)
          to label %.noexc7 unwind label %bb.f    ; 0 uses

.noexc7:                                          ; preds = %.noexc6
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %.noexc7
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.m) #32
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %.noexc8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.a, align 8, !tbaa !41
  %i.o = icmp slt i32 %i.n, 129
  %i.p = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.o, ptr %0, ptr %i.p
  store i32 %3, ptr %spec.select.i, align 4, !tbaa !44
  invoke void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %.noexc6, %.noexc8, %.noexc7, %.noexc, %bb.c, %bb.d, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) #30
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number6opNToIERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2426) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !42
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2427) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.76)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.k) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK8V3Number8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20   ; 5 uses
  %.not46 = icmp eq i64 %i.n, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.pre, i64 %i.n    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41
  %.fr47 = freeze i32 %i.q                        ; 17 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 17 uses
  %i.s = icmp slt i32 %.fr47, 129
  br i1 %i.s, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %.lr.ph, %_ZN8V3Number6setBitEic.exit.us.us.7
  %.044.us = phi i64 [ %i.fs, %_ZN8V3Number6setBitEic.exit.us.us.7 ], [ 0, %.lr.ph ] ; 3 uses
  %i.t = xor i64 %.044.us, -1
  %i.u = getelementptr i8, ptr %i.o, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !23    ; 2 uses
  %i.w = zext i8 %i.v to i64                      ; 7 uses
  %i.x = shl nuw i64 %.044.us, 3                  ; 8 uses
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %.not.i.us.us = icmp sgt i32 %.fr47, %i.y
  br i1 %.not.i.us.us, label %bb.f, label %_ZN8V3Number6setBitEic.exit.us.us

bb.f:                                             ; preds = %.split.us.us
  %i.z = and i32 %i.y, 24
  %i.aa = shl nuw nsw i32 1, %i.z                 ; 3 uses
  %i.ab = load i8, ptr %i.r, align 4, !tbaa !42
  %i.ac = add i8 %i.ab, -1
  %spec.select.i.i.i.us.us = icmp ult i8 %i.ac, 2
  br i1 %spec.select.i.i.i.us.us, label %_ZN12V3NumberData3numEv.exit.i.us.us, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.us.us:             ; preds = %bb.f
  %i.ad = sdiv i32 %i.y, 32
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ae ; 5 uses
  %i.ag = and i64 %i.w, 1
  %.not34.us.us = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  br i1 %.not34.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !44
  %i.aj = or i32 %i.ai, %i.aa
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !44
  %i.ak = xor i32 %i.aa, -1
  br label %_ZN8V3Number6setBitEic.exit.us.us.sink.split

bb.h:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us
  %i.al = xor i32 %i.aa, -1                       ; 2 uses
  %i.am = load i32, ptr %i.af, align 8, !tbaa !44
  %i.an = and i32 %i.am, %i.al
  store i32 %i.an, ptr %i.af, align 8, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.us.us.sink.split

_ZN8V3Number6setBitEic.exit.us.us.sink.split:     ; preds = %bb.g, %bb.h
  %.sink77 = phi i32 [ %i.al, %bb.h ], [ %i.ak, %bb.g ]
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !148
  %i.ap = and i32 %i.ao, %.sink77
  store i32 %i.ap, ptr %i.ah, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.us.us

_ZN8V3Number6setBitEic.exit.us.us:                ; preds = %_ZN8V3Number6setBitEic.exit.us.us.sink.split, %.split.us.us
  %i.aq = trunc i64 %i.x to i32
  %i.ar = or disjoint i32 %i.aq, 1                ; 3 uses
  %.not.i.us.us.1 = icmp sgt i32 %.fr47, %i.ar
  br i1 %.not.i.us.us.1, label %bb.i, label %_ZN8V3Number6setBitEic.exit.us.us.1

bb.i:                                             ; preds = %_ZN8V3Number6setBitEic.exit.us.us
  %i.as = and i32 %i.ar, 25
  %i.at = shl nuw nsw i32 1, %i.as                ; 3 uses
  %i.au = load i8, ptr %i.r, align 4, !tbaa !42
  %i.av = add i8 %i.au, -1
  %spec.select.i.i.i.us.us.1 = icmp ult i8 %i.av, 2
  br i1 %spec.select.i.i.i.us.us.1, label %_ZN12V3NumberData3numEv.exit.i.us.us.1, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.us.us.1:           ; preds = %bb.i
  %i.aw = sdiv i32 %i.ar, 32
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ax ; 5 uses
  %i.az = and i64 %i.w, 2
  %.not34.us.us.1 = icmp eq i64 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  br i1 %.not34.us.us.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.1
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !44
  %i.bc = or i32 %i.bb, %i.at
  store i32 %i.bc, ptr %i.ay, align 8, !tbaa !44
  %i.bd = xor i32 %i.at, -1
  br label %_ZN8V3Number6setBitEic.exit.us.us.1.sink.split

bb.k:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.1
  %i.be = xor i32 %i.at, -1                       ; 2 uses
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !44
  %i.bg = and i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.ay, align 8, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.us.us.1.sink.split

_ZN8V3Number6setBitEic.exit.us.us.1.sink.split:   ; preds = %bb.j, %bb.k
  %.sink79 = phi i32 [ %i.be, %bb.k ], [ %i.bd, %bb.j ]
  %i.bh = load i32, ptr %i.ba, align 4, !tbaa !148
  %i.bi = and i32 %i.bh, %.sink79
  store i32 %i.bi, ptr %i.ba, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.us.us.1

_ZN8V3Number6setBitEic.exit.us.us.1:              ; preds = %_ZN8V3Number6setBitEic.exit.us.us.1.sink.split, %_ZN8V3Number6setBitEic.exit.us.us
  %i.bj = trunc i64 %i.x to i32
  %i.bk = or disjoint i32 %i.bj, 2                ; 3 uses
  %.not.i.us.us.2 = icmp sgt i32 %.fr47, %i.bk
  br i1 %.not.i.us.us.2, label %bb.l, label %_ZN8V3Number6setBitEic.exit.us.us.2

bb.l:                                             ; preds = %_ZN8V3Number6setBitEic.exit.us.us.1
  %i.bl = and i32 %i.bk, 26
  %i.bm = shl nuw nsw i32 1, %i.bl                ; 3 uses
  %i.bn = load i8, ptr %i.r, align 4, !tbaa !42
  %i.bo = add i8 %i.bn, -1
  %spec.select.i.i.i.us.us.2 = icmp ult i8 %i.bo, 2
  br i1 %spec.select.i.i.i.us.us.2, label %_ZN12V3NumberData3numEv.exit.i.us.us.2, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.us.us.2:           ; preds = %bb.l
  %i.bp = sdiv i32 %i.bk, 32
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bq ; 5 uses
  %i.bs = and i64 %i.w, 4
  %.not34.us.us.2 = icmp eq i64 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  br i1 %.not34.us.us.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.2
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !44
  %i.bv = or i32 %i.bu, %i.bm
  store i32 %i.bv, ptr %i.br, align 8, !tbaa !44
  %i.bw = xor i32 %i.bm, -1
  br label %_ZN8V3Number6setBitEic.exit.us.us.2.sink.split

bb.n:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.2
  %i.bx = xor i32 %i.bm, -1                       ; 2 uses
  %i.by = load i32, ptr %i.br, align 8, !tbaa !44
  %i.bz = and i32 %i.by, %i.bx
  store i32 %i.bz, ptr %i.br, align 8, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.us.us.2.sink.split

_ZN8V3Number6setBitEic.exit.us.us.2.sink.split:   ; preds = %bb.m, %bb.n
  %.sink81 = phi i32 [ %i.bx, %bb.n ], [ %i.bw, %bb.m ]
  %i.ca = load i32, ptr %i.bt, align 4, !tbaa !148
  %i.cb = and i32 %i.ca, %.sink81
  store i32 %i.cb, ptr %i.bt, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.us.us.2

_ZN8V3Number6setBitEic.exit.us.us.2:              ; preds = %_ZN8V3Number6setBitEic.exit.us.us.2.sink.split, %_ZN8V3Number6setBitEic.exit.us.us.1
  %i.cc = trunc i64 %i.x to i32
  %i.cd = or disjoint i32 %i.cc, 3                ; 3 uses
  %.not.i.us.us.3 = icmp sgt i32 %.fr47, %i.cd
  br i1 %.not.i.us.us.3, label %bb.o, label %_ZN8V3Number6setBitEic.exit.us.us.3

bb.o:                                             ; preds = %_ZN8V3Number6setBitEic.exit.us.us.2
  %i.ce = and i32 %i.cd, 27
  %i.cf = shl nuw nsw i32 1, %i.ce                ; 3 uses
  %i.cg = load i8, ptr %i.r, align 4, !tbaa !42
  %i.ch = add i8 %i.cg, -1
  %spec.select.i.i.i.us.us.3 = icmp ult i8 %i.ch, 2
  br i1 %spec.select.i.i.i.us.us.3, label %_ZN12V3NumberData3numEv.exit.i.us.us.3, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.us.us.3:           ; preds = %bb.o
  %i.ci = sdiv i32 %i.cd, 32
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cj ; 5 uses
  %i.cl = and i64 %i.w, 8
  %.not34.us.us.3 = icmp eq i64 %i.cl, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  br i1 %.not34.us.us.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.3
  %i.cn = load i32, ptr %i.ck, align 8, !tbaa !44
  %i.co = or i32 %i.cn, %i.cf
  store i32 %i.co, ptr %i.ck, align 8, !tbaa !44
  %i.cp = xor i32 %i.cf, -1
  br label %_ZN8V3Number6setBitEic.exit.us.us.3.sink.split

bb.q:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.3
  %i.cq = xor i32 %i.cf, -1                       ; 2 uses
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !44
  %i.cs = and i32 %i.cr, %i.cq
  store i32 %i.cs, ptr %i.ck, align 8, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.us.us.3.sink.split

_ZN8V3Number6setBitEic.exit.us.us.3.sink.split:   ; preds = %bb.p, %bb.q
  %.sink83 = phi i32 [ %i.cq, %bb.q ], [ %i.cp, %bb.p ]
  %i.ct = load i32, ptr %i.cm, align 4, !tbaa !148
  %i.cu = and i32 %i.ct, %.sink83
  store i32 %i.cu, ptr %i.cm, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.us.us.3

_ZN8V3Number6setBitEic.exit.us.us.3:              ; preds = %_ZN8V3Number6setBitEic.exit.us.us.3.sink.split, %_ZN8V3Number6setBitEic.exit.us.us.2
  %i.cv = trunc i64 %i.x to i32
  %i.cw = or disjoint i32 %i.cv, 4                ; 3 uses
  %.not.i.us.us.4 = icmp sgt i32 %.fr47, %i.cw
  br i1 %.not.i.us.us.4, label %bb.r, label %_ZN8V3Number6setBitEic.exit.us.us.4

bb.r:                                             ; preds = %_ZN8V3Number6setBitEic.exit.us.us.3
  %i.cx = and i32 %i.cw, 28
  %i.cy = shl nuw nsw i32 1, %i.cx                ; 3 uses
  %i.cz = load i8, ptr %i.r, align 4, !tbaa !42
  %i.da = add i8 %i.cz, -1
  %spec.select.i.i.i.us.us.4 = icmp ult i8 %i.da, 2
  br i1 %spec.select.i.i.i.us.us.4, label %_ZN12V3NumberData3numEv.exit.i.us.us.4, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.us.us.4:           ; preds = %bb.r
  %i.db = sdiv i32 %i.cw, 32
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dc ; 5 uses
  %i.de = and i64 %i.w, 16
  %.not34.us.us.4 = icmp eq i64 %i.de, 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  br i1 %.not34.us.us.4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.4
  %i.dg = load i32, ptr %i.dd, align 8, !tbaa !44
  %i.dh = or i32 %i.dg, %i.cy
  store i32 %i.dh, ptr %i.dd, align 8, !tbaa !44
  %i.di = xor i32 %i.cy, -1
  br label %_ZN8V3Number6setBitEic.exit.us.us.4.sink.split

bb.t:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.4
  %i.dj = xor i32 %i.cy, -1                       ; 2 uses
  %i.dk = load i32, ptr %i.dd, align 8, !tbaa !44
  %i.dl = and i32 %i.dk, %i.dj
  store i32 %i.dl, ptr %i.dd, align 8, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.us.us.4.sink.split

_ZN8V3Number6setBitEic.exit.us.us.4.sink.split:   ; preds = %bb.s, %bb.t
  %.sink85 = phi i32 [ %i.dj, %bb.t ], [ %i.di, %bb.s ]
  %i.dm = load i32, ptr %i.df, align 4, !tbaa !148
  %i.dn = and i32 %i.dm, %.sink85
  store i32 %i.dn, ptr %i.df, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.us.us.4

_ZN8V3Number6setBitEic.exit.us.us.4:              ; preds = %_ZN8V3Number6setBitEic.exit.us.us.4.sink.split, %_ZN8V3Number6setBitEic.exit.us.us.3
  %i.do = trunc i64 %i.x to i32
  %i.dp = or disjoint i32 %i.do, 5                ; 3 uses
  %.not.i.us.us.5 = icmp sgt i32 %.fr47, %i.dp
  br i1 %.not.i.us.us.5, label %bb.u, label %_ZN8V3Number6setBitEic.exit.us.us.5

bb.u:                                             ; preds = %_ZN8V3Number6setBitEic.exit.us.us.4
  %i.dq = and i32 %i.dp, 29
  %i.dr = shl nuw nsw i32 1, %i.dq                ; 3 uses
  %i.ds = load i8, ptr %i.r, align 4, !tbaa !42
  %i.dt = add i8 %i.ds, -1
  %spec.select.i.i.i.us.us.5 = icmp ult i8 %i.dt, 2
  br i1 %spec.select.i.i.i.us.us.5, label %_ZN12V3NumberData3numEv.exit.i.us.us.5, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.us.us.5:           ; preds = %bb.u
  %i.du = sdiv i32 %i.dp, 32
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dv ; 5 uses
  %i.dx = and i64 %i.w, 32
  %.not34.us.us.5 = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  br i1 %.not34.us.us.5, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.5
  %i.dz = load i32, ptr %i.dw, align 8, !tbaa !44
  %i.ea = or i32 %i.dz, %i.dr
  store i32 %i.ea, ptr %i.dw, align 8, !tbaa !44
  %i.eb = xor i32 %i.dr, -1
  br label %_ZN8V3Number6setBitEic.exit.us.us.5.sink.split

bb.w:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.5
  %i.ec = xor i32 %i.dr, -1                       ; 2 uses
  %i.ed = load i32, ptr %i.dw, align 8, !tbaa !44
  %i.ee = and i32 %i.ed, %i.ec
  store i32 %i.ee, ptr %i.dw, align 8, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.us.us.5.sink.split

_ZN8V3Number6setBitEic.exit.us.us.5.sink.split:   ; preds = %bb.v, %bb.w
  %.sink87 = phi i32 [ %i.ec, %bb.w ], [ %i.eb, %bb.v ]
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !148
  %i.eg = and i32 %i.ef, %.sink87
  store i32 %i.eg, ptr %i.dy, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.us.us.5

_ZN8V3Number6setBitEic.exit.us.us.5:              ; preds = %_ZN8V3Number6setBitEic.exit.us.us.5.sink.split, %_ZN8V3Number6setBitEic.exit.us.us.4
  %i.eh = trunc i64 %i.x to i32
  %i.ei = or disjoint i32 %i.eh, 6                ; 3 uses
  %.not.i.us.us.6 = icmp sgt i32 %.fr47, %i.ei
  br i1 %.not.i.us.us.6, label %bb.x, label %_ZN8V3Number6setBitEic.exit.us.us.6

bb.x:                                             ; preds = %_ZN8V3Number6setBitEic.exit.us.us.5
  %i.ej = and i32 %i.ei, 30
  %i.ek = shl nuw nsw i32 1, %i.ej                ; 3 uses
  %i.el = load i8, ptr %i.r, align 4, !tbaa !42
  %i.em = add i8 %i.el, -1
  %spec.select.i.i.i.us.us.6 = icmp ult i8 %i.em, 2
  br i1 %spec.select.i.i.i.us.us.6, label %_ZN12V3NumberData3numEv.exit.i.us.us.6, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.us.us.6:           ; preds = %bb.x
  %i.en = sdiv i32 %i.ei, 32
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %0, i64 %i.eo ; 5 uses
  %i.eq = and i64 %i.w, 64
  %.not34.us.us.6 = icmp eq i64 %i.eq, 0
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  br i1 %.not34.us.us.6, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.6
  %i.es = load i32, ptr %i.ep, align 8, !tbaa !44
  %i.et = or i32 %i.es, %i.ek
  store i32 %i.et, ptr %i.ep, align 8, !tbaa !44
  %i.eu = xor i32 %i.ek, -1
  br label %_ZN8V3Number6setBitEic.exit.us.us.6.sink.split

bb.z:                                             ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.6
  %i.ev = xor i32 %i.ek, -1                       ; 2 uses
  %i.ew = load i32, ptr %i.ep, align 8, !tbaa !44
  %i.ex = and i32 %i.ew, %i.ev
  store i32 %i.ex, ptr %i.ep, align 8, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.us.us.6.sink.split

_ZN8V3Number6setBitEic.exit.us.us.6.sink.split:   ; preds = %bb.y, %bb.z
  %.sink89 = phi i32 [ %i.ev, %bb.z ], [ %i.eu, %bb.y ]
  %i.ey = load i32, ptr %i.er, align 4, !tbaa !148
  %i.ez = and i32 %i.ey, %.sink89
  store i32 %i.ez, ptr %i.er, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.us.us.6

_ZN8V3Number6setBitEic.exit.us.us.6:              ; preds = %_ZN8V3Number6setBitEic.exit.us.us.6.sink.split, %_ZN8V3Number6setBitEic.exit.us.us.5
  %i.fa = trunc i64 %i.x to i32
  %i.fb = or disjoint i32 %i.fa, 7                ; 3 uses
  %.not.i.us.us.7 = icmp sgt i32 %.fr47, %i.fb
  br i1 %.not.i.us.us.7, label %bb.aa, label %_ZN8V3Number6setBitEic.exit.us.us.7

bb.aa:                                            ; preds = %_ZN8V3Number6setBitEic.exit.us.us.6
  %i.fc = and i32 %i.fb, 31
  %i.fd = shl nuw i32 1, %i.fc                    ; 3 uses
  %i.fe = load i8, ptr %i.r, align 4, !tbaa !42
  %i.ff = add i8 %i.fe, -1
  %spec.select.i.i.i.us.us.7 = icmp ult i8 %i.ff, 2
  br i1 %spec.select.i.i.i.us.us.7, label %_ZN12V3NumberData3numEv.exit.i.us.us.7, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.us.us.7:           ; preds = %bb.aa
  %i.fg = sdiv i32 %i.fb, 32
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fh ; 5 uses
  %.not34.us.us.7 = icmp sgt i8 %i.v, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  br i1 %.not34.us.us.7, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.7
  %i.fk = load i32, ptr %i.fi, align 8, !tbaa !44
  %i.fl = or i32 %i.fk, %i.fd
  store i32 %i.fl, ptr %i.fi, align 8, !tbaa !44
  %i.fm = xor i32 %i.fd, -1
  br label %_ZN8V3Number6setBitEic.exit.us.us.7.sink.split

bb.ac:                                            ; preds = %_ZN12V3NumberData3numEv.exit.i.us.us.7
  %i.fn = xor i32 %i.fd, -1                       ; 2 uses
  %i.fo = load i32, ptr %i.fi, align 8, !tbaa !44
  %i.fp = and i32 %i.fo, %i.fn
  store i32 %i.fp, ptr %i.fi, align 8, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.us.us.7.sink.split

_ZN8V3Number6setBitEic.exit.us.us.7.sink.split:   ; preds = %bb.ab, %bb.ac
  %.sink91 = phi i32 [ %i.fn, %bb.ac ], [ %i.fm, %bb.ab ]
  %i.fq = load i32, ptr %i.fj, align 4, !tbaa !148
  %i.fr = and i32 %i.fq, %.sink91
  store i32 %i.fr, ptr %i.fj, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.us.us.7

_ZN8V3Number6setBitEic.exit.us.us.7:              ; preds = %_ZN8V3Number6setBitEic.exit.us.us.7.sink.split, %_ZN8V3Number6setBitEic.exit.us.us.6
  %i.fs = add nuw i64 %.044.us, 1                 ; 2 uses
  %exitcond50.not = icmp eq i64 %i.fs, %i.n
  br i1 %exitcond50.not, label %._crit_edge, label %.split.us.us, !llvm.loop !262

._crit_edge:                                      ; preds = %_ZN8V3Number6setBitEic.exit.7, %_ZN8V3Number6setBitEic.exit.us.us.7, %bb.e
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %.pre, %i.ft
  br i1 %i.fu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %._crit_edge
  %i.fv = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.fv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.fw = load i64, ptr %i.ft, align 8, !tbaa !23
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.fx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %0

.split:                                           ; preds = %.lr.ph, %_ZN8V3Number6setBitEic.exit.7
  %.044 = phi i64 [ %i.ms, %_ZN8V3Number6setBitEic.exit.7 ], [ 0, %.lr.ph ] ; 3 uses
  %i.fy = xor i64 %.044, -1
  %i.fz = getelementptr i8, ptr %i.o, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !23  ; 2 uses
  %i.gb = zext i8 %i.ga to i64                    ; 7 uses
  %i.gc = shl nuw i64 %.044, 3                    ; 8 uses
  %i.gd = trunc i64 %i.gc to i32                  ; 3 uses
  %.not.i = icmp sgt i32 %.fr47, %i.gd
  br i1 %.not.i, label %bb.ad, label %_ZN8V3Number6setBitEic.exit

bb.ad:                                            ; preds = %.split
  %i.ge = and i32 %i.gd, 24
  %i.gf = shl nuw nsw i32 1, %i.ge                ; 3 uses
  %i.gg = load i8, ptr %i.r, align 4, !tbaa !42
  %i.gh = add i8 %i.gg, -1
  %spec.select.i.i.i = icmp ult i8 %i.gh, 2
  br i1 %spec.select.i.i.i, label %_ZN12V3NumberData3numEv.exit.i, label %.split41.us, !prof !43

.split41.us:                                      ; preds = %bb.ad, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.aw, %bb.az, %bb.bc, %bb.f, %bb.i, %bb.l, %bb.o, %bb.r, %bb.u, %bb.x, %bb.aa
  %i.gi = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242)
          to label %.noexc19 unwind label %bb.bf  ; 0 uses

.noexc19:                                         ; preds = %.split41.us
  %i.gj = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %bb.ae, label %.noexc20, !prof !68

bb.ae:                                            ; preds = %.noexc19
  %i.gl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i, label %.noexc20, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gm = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %.noexc20

bb.ah:                                            ; preds = %bb.af
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %.body

.noexc20:                                         ; preds = %bb.ag, %bb.ae, %.noexc19
  %i.go = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.123, ptr nonnull @.str.124, i32 481, ptr null) ; 3 uses
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.118, i64 noundef 40)
          to label %.noexc21 unwind label %bb.bf  ; 0 uses

.noexc21:                                         ; preds = %.noexc20
  %i.gq = load i8, ptr %i.r, align 4, !tbaa !263  ; 3 uses
  %i.gr = icmp ult i8 %i.gq, 4
  br i1 %i.gr, label %switch.lookup, label %.noexc22

switch.lookup:                                    ; preds = %.noexc21
  %i.gs = zext nneg i8 %i.gq to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8V3Number6opNToIERKS_, i64 %i.gs
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.gt = zext nneg i8 %i.gq to i64
  %switch.gep110 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8V3Number6opNToIERKS_.1, i64 %i.gt
  %switch.load111 = load i8, ptr %switch.gep110, align 1
  %switch.ext = zext i8 %switch.load111 to i64
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull %switch.load, i64 noundef %switch.ext)
          to label %.noexc22 unwind label %bb.bf  ; 0 uses

.noexc22:                                         ; preds = %.noexc21, %switch.lookup
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.go) #32
          to label %.noexc23 unwind label %bb.bf

.noexc23:                                         ; preds = %.noexc22
  unreachable

_ZN12V3NumberData3numEv.exit.i:                   ; preds = %bb.ad
  %i.gv = load ptr, ptr %0, align 8
  %i.gw = sdiv i32 %i.gd, 32
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %i.gx ; 5 uses
  %i.gz = and i64 %i.gb, 1
  %.not34 = icmp eq i64 %i.gz, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  br i1 %.not34, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN12V3NumberData3numEv.exit.i
  %i.hb = xor i32 %i.gf, -1                       ; 2 uses
  %i.hc = load i32, ptr %i.gy, align 4, !tbaa !44
  %i.hd = and i32 %i.hc, %i.hb
  store i32 %i.hd, ptr %i.gy, align 4, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.sink.split

bb.aj:                                            ; preds = %_ZN12V3NumberData3numEv.exit.i
  %i.he = load i32, ptr %i.gy, align 4, !tbaa !44
  %i.hf = or i32 %i.he, %i.gf
  store i32 %i.hf, ptr %i.gy, align 4, !tbaa !44
  %i.hg = xor i32 %i.gf, -1
  br label %_ZN8V3Number6setBitEic.exit.sink.split

_ZN8V3Number6setBitEic.exit.sink.split:           ; preds = %bb.ai, %bb.aj
  %.sink93 = phi i32 [ %i.hg, %bb.aj ], [ %i.hb, %bb.ai ]
  %i.hh = load i32, ptr %i.ha, align 4, !tbaa !148
  %i.hi = and i32 %i.hh, %.sink93
  store i32 %i.hi, ptr %i.ha, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit

_ZN8V3Number6setBitEic.exit:                      ; preds = %_ZN8V3Number6setBitEic.exit.sink.split, %.split
  %i.hj = trunc i64 %i.gc to i32
  %i.hk = or disjoint i32 %i.hj, 1                ; 3 uses
  %.not.i.1 = icmp sgt i32 %.fr47, %i.hk
  br i1 %.not.i.1, label %bb.ak, label %_ZN8V3Number6setBitEic.exit.1

bb.ak:                                            ; preds = %_ZN8V3Number6setBitEic.exit
  %i.hl = and i32 %i.hk, 25
  %i.hm = shl nuw nsw i32 1, %i.hl                ; 3 uses
  %i.hn = load i8, ptr %i.r, align 4, !tbaa !42
  %i.ho = add i8 %i.hn, -1
  %spec.select.i.i.i.1 = icmp ult i8 %i.ho, 2
  br i1 %spec.select.i.i.i.1, label %_ZN12V3NumberData3numEv.exit.i.1, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.1:                 ; preds = %bb.ak
  %i.hp = load ptr, ptr %0, align 8
  %i.hq = sdiv i32 %i.hk, 32
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hr ; 5 uses
  %i.ht = and i64 %i.gb, 2
  %.not34.1 = icmp eq i64 %i.ht, 0
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  br i1 %.not34.1, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN12V3NumberData3numEv.exit.i.1
  %i.hv = load i32, ptr %i.hs, align 4, !tbaa !44
  %i.hw = or i32 %i.hv, %i.hm
  store i32 %i.hw, ptr %i.hs, align 4, !tbaa !44
  %i.hx = xor i32 %i.hm, -1
  br label %_ZN8V3Number6setBitEic.exit.1.sink.split

bb.am:                                            ; preds = %_ZN12V3NumberData3numEv.exit.i.1
  %i.hy = xor i32 %i.hm, -1                       ; 2 uses
  %i.hz = load i32, ptr %i.hs, align 4, !tbaa !44
  %i.ia = and i32 %i.hz, %i.hy
  store i32 %i.ia, ptr %i.hs, align 4, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.1.sink.split

_ZN8V3Number6setBitEic.exit.1.sink.split:         ; preds = %bb.al, %bb.am
  %.sink95 = phi i32 [ %i.hy, %bb.am ], [ %i.hx, %bb.al ]
  %i.ib = load i32, ptr %i.hu, align 4, !tbaa !148
  %i.ic = and i32 %i.ib, %.sink95
  store i32 %i.ic, ptr %i.hu, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.1

_ZN8V3Number6setBitEic.exit.1:                    ; preds = %_ZN8V3Number6setBitEic.exit.1.sink.split, %_ZN8V3Number6setBitEic.exit
  %i.id = trunc i64 %i.gc to i32
  %i.ie = or disjoint i32 %i.id, 2                ; 3 uses
  %.not.i.2 = icmp sgt i32 %.fr47, %i.ie
  br i1 %.not.i.2, label %bb.an, label %_ZN8V3Number6setBitEic.exit.2

bb.an:                                            ; preds = %_ZN8V3Number6setBitEic.exit.1
  %i.if = and i32 %i.ie, 26
  %i.ig = shl nuw nsw i32 1, %i.if                ; 3 uses
  %i.ih = load i8, ptr %i.r, align 4, !tbaa !42
  %i.ii = add i8 %i.ih, -1
  %spec.select.i.i.i.2 = icmp ult i8 %i.ii, 2
  br i1 %spec.select.i.i.i.2, label %_ZN12V3NumberData3numEv.exit.i.2, label %.split41.us, !prof !43

_ZN12V3NumberData3numEv.exit.i.2:                 ; preds = %bb.an
  %i.ij = load ptr, ptr %0, align 8
  %i.ik = sdiv i32 %i.ie, 32
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.il ; 5 uses
  %i.in = and i64 %i.gb, 4
  %.not34.2 = icmp eq i64 %i.in, 0
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  br i1 %.not34.2, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN12V3NumberData3numEv.exit.i.2
  %i.ip = load i32, ptr %i.im, align 4, !tbaa !44
  %i.iq = or i32 %i.ip, %i.ig
  store i32 %i.iq, ptr %i.im, align 4, !tbaa !44
  %i.ir = xor i32 %i.ig, -1
  br label %_ZN8V3Number6setBitEic.exit.2.sink.split

bb.ap:                                            ; preds = %_ZN12V3NumberData3numEv.exit.i.2
  %i.is = xor i32 %i.ig, -1                       ; 2 uses
  %i.it = load i32, ptr %i.im, align 4, !tbaa !44
  %i.iu = and i32 %i.it, %i.is
  store i32 %i.iu, ptr %i.im, align 4, !tbaa !44
  br label %_ZN8V3Number6setBitEic.exit.2.sink.split

_ZN8V3Number6setBitEic.exit.2.sink.split:         ; preds = %bb.ao, %bb.ap
  %.sink97 = phi i32 [ %i.is, %bb.ap ], [ %i.ir, %bb.ao ]
  %i.iv = load i32, ptr %i.io, align 4, !tbaa !148
  %i.iw = and i32 %i.iv, %.sink97
  store i32 %i.iw, ptr %i.io, align 4, !tbaa !148
  br label %_ZN8V3Number6setBitEic.exit.2

_ZN8V3Number6setBitEic.exit.2:                    ; preds = %_ZN8V3Number6setBitEic.exit.2.sink.split, %_ZN8V3Number6setBitEic.exit.1
  %i.ix = trunc i64 %i.gc to i32
  %i.iy = or disjoint i32 %i.ix, 3                ; 3 uses
  %.not.i.3 = icmp sgt i32 %.fr47, %i.iy
  br i1 %.not.i.3, label %bb.aq, label %_ZN8V3Number6setBitEic.exit.3

bb.aq:                                            ; preds = %_ZN8V3Number6setBitEic.exit.2
  %i.iz = and i32 %i.iy, 27
  %i.ja = shl nuw nsw i32 1, %i.iz                ; 3 uses
  %i.jb = load i8, ptr %i.r, align 4, !tbaa !42
end_hunk_0
