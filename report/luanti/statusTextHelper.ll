Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/statusTextHelper?download=true
inline.NumInlined: 110
inline.NumDeleted: 61
begin_hunk_0_@_ZN16StatusTextHelperC2EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementE:bb.a
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.b
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !33
  %i.az = shl i64 %i.ay, 2
  %i.ba = add i64 %i.az, 4
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #14
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.bb = load ptr, ptr %0, align 8, !tbaa !13    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i19, label %_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit21, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !30
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !30
  %.not.i.i.i20 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i20, label %bb.q, label %_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit21

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bf) #13, !inline_history !0
  br label %_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit21

_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit21:   ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.p, %bb.q
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %class.EnrichedString, align 8      ; 10 uses
  %10 = alloca %"class.video::SColor", align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i32 -1, ptr %10, align 4, !tbaa !53
  call void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %9, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %10)
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc unwind label %bb.g, !inline_history !51

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %6, %bb.a ], [ %i.d, %bb.b ]
  %i.f = invoke noalias noundef nonnull dereferenceable(464) ptr @_Znwm(i64 noundef 464) #15
          to label %.noexc10 unwind label %bb.g   ; 7 uses

.noexc10:                                         ; preds = %.noexc
  invoke void @_ZN3gui10StaticTextC1ERK14EnrichedStringbPNS_15IGUIEnvironmentEPNS_11IGUIElementEiRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(464) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext %4, ptr noundef %0, ptr noundef %i.e, i32 noundef %7, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc10
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(308) %i.f, i1 noundef zeroext %5)
          to label %.noexc11 unwind label %bb.g, !inline_history !51

.noexc11:                                         ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit

bb.d:                                             ; preds = %.noexc11
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #13, !inline_history !52
  br label %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit

bb.e:                                             ; preds = %.noexc10
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 464) #14
  br label %.body

_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit: ; preds = %bb.d, %.noexc11
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #14
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i:  ; preds = %bb.f, %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit
  %i.ab = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN14EnrichedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.af = shl i64 %i.ae, 2
  %i.ag = add i64 %i.af, 4
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ag) #14
  br label %_ZN14EnrichedStringD2Ev.exit

_ZN14EnrichedStringD2Ev.exit:                     ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret ptr %i.f

bb.g:                                             ; preds = %bb.c, %.noexc, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.t, %bb.e ]
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16StatusTextHelperD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(68) dereferenceable(68) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(308) %i.a)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN7irr_ptrIN3gui14IGUIStaticTextEE5resetEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !30
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN7irr_ptrIN3gui14IGUIStaticTextEE5resetEPS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(12) %i.i) #13, !inline_history !54
  br label %_ZN7irr_ptrIN3gui14IGUIStaticTextEE5resetEPS1_.exit

_ZN7irr_ptrIN3gui14IGUIStaticTextEE5resetEPS1_.exit: ; preds = %bb.c, %bb.d, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %_ZN7irr_ptrIN3gui14IGUIStaticTextEE5resetEPS1_.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.a

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.a: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !33
  %i.u = shl i64 %i.t, 2
  %i.v = add i64 %i.u, 4
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #14
  %.pre = load ptr, ptr %0, align 8, !tbaa !13    ; 3 uses
  %.not.i.i1 = icmp eq ptr %.pre, null
  br i1 %.not.i.i1, label %_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.a
  %i.w = load ptr, ptr %.pre, align 8, !tbaa !28
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %.pre, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !30
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !30
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.z) #13, !inline_history !0
  br label %_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit

_ZN7irr_ptrIN3gui14IGUIStaticTextEED2Ev.exit:     ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.a, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16StatusTextHelper14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float 0.000000e+00, ptr %i.c, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16StatusTextHelper15clearStatusTextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) initializes((16, 24), (40, 44), (48, 52)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !32
  store i32 0, ptr %i.c, align 4, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !39
  %i.f = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(308) %i.f, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16StatusTextHelper10setVisibleEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(308) %i.a, i1 noundef zeroext %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK16StatusTextHelper9isVisibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(308) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16StatusTextHelper12setGameStyleEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(68) initializes((44, 48), (60, 62), (64, 68)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 1.500000e+00, ptr %i.a, align 4, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.b, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %i.c, align 1, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.d, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16StatusTextHelper16setMainMenuStyleEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(68) initializes((44, 48), (56, 62), (64, 68)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 3.000000e+00, ptr %i.a, align 4, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -603979776, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.c, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 1, ptr %i.d, align 1, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.e, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16StatusTextHelper6updateEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !38
  %i.h = fadd nsz float %1, %i.g                  ; 3 uses
  store float %i.h, ptr %i.f, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !40 ; 2 uses
  %i.k = fcmp nsz ult float %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN16StatusTextHelper15clearStatusTextEv.exit

_ZN16StatusTextHelper15clearStatusTextEv.exit:    ; preds = %bb.c
  store i64 0, ptr %i.c, align 8, !tbaa !18
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !32
  store i32 0, ptr %i.l, align 4, !tbaa !20
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float 0.000000e+00, ptr %i.m, align 8, !tbaa !39
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(308) %i.a, i1 noundef zeroext false), !inline_history !55
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = fdiv nsz float %i.h, %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.q, ptr %i.r, align 8, !tbaa !39
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(308) %i.a, ptr noundef %i.s)
  %i.w = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(308) %i.w, i1 noundef zeroext true)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 392
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(308) %i.aa, i32 noundef 2, i32 noundef %i.ac)
  tail call void @_ZN16StatusTextHelper14updatePositionEv(ptr noundef nonnull align 8 dereferenceable(68) %0)
  %i.ag = load float, ptr %i.r, align 8, !tbaa !39 ; 2 uses
  %i.ah = fneg nsz float %i.ag
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float %i.ag, float 1.000000e+00) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !41, !range !43, !noundef !44
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %i.ao = lshr i32 %i.an, 24
end_hunk_0
