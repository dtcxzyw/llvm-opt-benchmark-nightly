inline.NumInlined: 10181
inline.NumDeleted: 4747
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv4gapi4s11nrsERNS1_8IIStreamERNS_4GArgE:bb.a
  store <2 x i64> %i.io, ptr %i.in, align 8
  store i64 51539607552, ptr %1, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !351 ; 3 uses
  store ptr %i.im, ptr %i.ip, align 8, !tbaa !351
  %.not.i.i.i.i.i.i141 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i.i141, label %_ZN2cv4GArgD2Ev.exit146, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i142

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i142: ; preds = %bb.ak
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !10
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.iq) #28, !inline_history !363
  br label %_ZN2cv4GArgD2Ev.exit146

_ZN2cv4GArgD2Ev.exit146:                          ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i142, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.ax

bb.al:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  %i.iu = load ptr, ptr %0, align 8, !tbaa !10
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 80
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = call noundef nonnull align 8 dereferenceable(8) ptr %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %16), !inline_history !105 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !10
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 80
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = call noundef nonnull align 8 dereferenceable(8) ptr %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %i.iy), !inline_history !105 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jc, align 8, !tbaa !10
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 80
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = call noundef nonnull align 8 dereferenceable(8) ptr %i.jg(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull align 8 dereferenceable(8) %i.jd), !inline_history !105 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !10
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 80
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %i.ji), !inline_history !105 ; 0 uses
  %i.jn = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_7Scalar_IdEEEE, i64 16), ptr %i.jn, align 8, !tbaa !10
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load <2 x double>, ptr %16, align 16, !tbaa !29, !noalias !380
  store <2 x double> %i.jp, ptr %i.jo, align 8, !tbaa !29
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jr = load <2 x double>, ptr %i.jd, align 16, !tbaa !29, !noalias !380
  store <2 x double> %i.jr, ptr %i.jq, align 8, !tbaa !29
  store i64 55834574848, ptr %1, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !351 ; 3 uses
  store ptr %i.jn, ptr %i.js, align 8, !tbaa !351
  %.not.i.i.i.i.i.i147 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i147, label %_ZN2cv4GArgD2Ev.exit152, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i148

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i148: ; preds = %bb.al
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !10
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.jt) #28, !inline_history !363
  br label %_ZN2cv4GArgD2Ev.exit152

_ZN2cv4GArgD2Ev.exit152:                          ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i148, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.ax

bb.am:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #28
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv4gapi4s11nrsERNS1_8IIStreamERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.an unwind label %bb.aq     ; 0 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %.noexc153 unwind label %bb.ar

.noexc153:                                        ; preds = %bb.an
  %i.jy = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #31
          to label %bb.ap unwind label %bb.ao     ; 3 uses

bb.ao:                                            ; preds = %.noexc153
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.body

bb.ap:                                            ; preds = %.noexc153
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_3MatEEE, i64 16), ptr %i.jy, align 8, !tbaa !10
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ka, ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  store i64 60129542144, ptr %1, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !351 ; 3 uses
  store ptr %i.jy, ptr %i.kb, align 8, !tbaa !351
  %.not.i.i.i.i.i.i154 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i.i.i.i154, label %_ZN2cv4GArgD2Ev.exit159, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i155

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i155: ; preds = %bb.ap
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !10
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kc) #28, !inline_history !363
  br label %_ZN2cv4GArgD2Ev.exit159

_ZN2cv4GArgD2Ev.exit159:                          ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i155, %bb.ap
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.ax

bb.aq:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.an
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.ao, %bb.aq
  %.pn55 = phi { ptr, i32 } [ %i.kg, %bb.aq ], [ %i.kh, %bb.ar ], [ %i.jz, %bb.ao ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.ay

bb.as:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv4gapi4s11nrsERNS1_8IIStreamERNS_3MatE, ptr noundef nonnull @.str.3, i32 noundef 593) #29
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.as
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.aw:                                            ; preds = %bb.at
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kk = load ptr, ptr %18, align 8, !tbaa !46   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.aw
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !50
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.av
  %.pn59 = phi { ptr, i32 } [ %i.ki, %bb.av ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.kj, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.ay

bb.ax:                                            ; preds = %_ZN2cv4GArgD2Ev.exit77, %_ZN2cv4GArgD2Ev.exit83, %_ZN2cv4GArgD2Ev.exit89, %_ZN2cv4GArgD2Ev.exit95, %_ZN2cv4GArgD2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZN2cv4GArgD2Ev.exit119, %_ZN2cv4GArgD2Ev.exit125, %_ZN2cv4GArgD2Ev.exit131, %_ZN2cv4GArgD2Ev.exit138, %_ZN2cv4GArgD2Ev.exit146, %_ZN2cv4GArgD2Ev.exit152, %_ZN2cv4GArgD2Ev.exit159, %_ZN2cv5gimpl6RcDescD2Ev.exit
  ret ptr %0

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZN2cv5gimpl6RcDescD2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %_ZN2cv5gimpl6RcDescD2Ev.exit65 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn55, %.body ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn61.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv4gapi4s11nrsERNS1_8IIStreamERNS_5gimpl6RcDescE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !383 ; 0 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67
  store i32 %i.k, ptr %i.f, align 4, !tbaa !329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4GArgC2IRNS_5gimpl6RcDescETnNSt9enable_ifIXntsr6detail7is_gargIT_EE5valueEiE4typeELi0EEEOS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::gimpl::RcDesc", align 8 ; 9 uses
  store i32 1, ptr %0, align 8, !tbaa !339
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !350
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN2cv6detail9WrapValueINS_5gimpl6RcDescEvE4wrapERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::gimpl::RcDesc") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.c = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31
          to label %.noexc unwind label %bb.e     ; 5 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_5gimpl6RcDescEEE, i64 16), ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %5 = load i64, ptr %4, align 8, !tbaa !361      ; 2 uses
  store i64 %5, ptr %i.e, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @constinit.24, i64 %5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !365
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void %i.g(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #32
  unreachable

bb.c:                                             ; preds = %.noexc
  store ptr %i.c, ptr %i.b, align 8, !tbaa !351
  %i.l = load i64, ptr %4, align 8, !tbaa !361
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @constinit, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !365
  invoke void %i.n(ptr noundef nonnull %i.i)
          to label %_ZN2cv5gimpl6RcDescD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #32
  unreachable

_ZN2cv5gimpl6RcDescD2Ev.exit:                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !361
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @constinit, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !365
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void %i.u(ptr noundef nonnull %i.v)
          to label %_ZN2cv5gimpl6RcDescD2Ev.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

_ZN2cv5gimpl6RcDescD2Ev.exit3:                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4GArgC2IRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXntsr6detail7is_gargIT_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  store i32 0, ptr %0, align 8, !tbaa !339
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 7, ptr %i.b, align 4, !tbaa !350
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !75, !alias.scope !384
  %i.d = load ptr, ptr %1, align 8, !tbaa !46, !noalias !384 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !76, !noalias !384 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !384
  store i64 %i.f, ptr %i.a, align 8, !tbaa !55, !noalias !384
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !46, !alias.scope !384
  %i.i = load i64, ptr %i.a, align 8, !tbaa !55, !noalias !384
  store i64 %i.i, ptr %i.c, align 8, !tbaa !50, !alias.scope !384
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN2cv6detail9WrapValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4wrapERKS7_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !50
  store i8 %i.k, ptr %i.j, align 1, !tbaa !50
  br label %_ZN2cv6detail9WrapValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4wrapERKS7_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN2cv6detail9WrapValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4wrapERKS7_.exit

_ZN2cv6detail9WrapValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4wrapERKS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !55, !noalias !384 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !76, !alias.scope !384
  %i.n = load ptr, ptr %2, align 8, !tbaa !46, !alias.scope !384
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !384
  %i.p = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %.noexc unwind label %bb.e     ; 5 uses

.noexc:                                           ; preds = %_ZN2cv6detail9WrapValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4wrapERKS7_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !75
  %i.s = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.u = load i64, ptr %i.m, align 8, !tbaa !76   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc
  store ptr %i.s, ptr %i.q, align 8, !tbaa !46
  %i.x = load i64, ptr %i.c, align 8, !tbaa !50
  store i64 %i.x, ptr %i.r, align 8, !tbaa !50
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.y = phi i64 [ %i.u, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !76
  store ptr %i.p, ptr %i.z, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.e:                                             ; preds = %_ZN2cv6detail9WrapValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4wrapERKS7_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !50
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv4gapi4s11nlsERNS1_8IOStreamERKNS_7GKernelE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !387
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !389
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 2
  %i.r = trunc i64 %i.q to i32
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.r), !inline_history !390 ; 0 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !365  ; 2 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !365  ; 2 uses
  %.not11.i = icmp eq ptr %i.w, %i.x
  br i1 %.not11.i, label %_ZN2cv4gapi4s11nlsINS_6GShapeEEERNS1_8IOStreamES5_RKSt6vectorIT_SaIS7_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.08.012.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.w, %bb.a ] ; 2 uses
  %i.y = load i32, ptr %.sroa.08.012.i, align 4, !tbaa !329
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.y), !inline_history !391 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i, label %_ZN2cv4gapi4s11nlsINS_6GShapeEEERNS1_8IOStreamES5_RKSt6vectorIT_SaIS7_EE.exit, label %.lr.ph.i

_ZN2cv4gapi4s11nlsINS_6GShapeEEERNS1_8IOStreamES5_RKSt6vectorIT_SaIS7_EE.exit: ; preds = %.lr.ph.i, %bb.a
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv4gapi4s11nrsERNS1_8IIStreamERNS_7GKernelE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS3_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_:bb.a
  store ptr %i.k, ptr %i.a, align 8, !tbaa !165
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !883
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !167  ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !853

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZN2cv8GMatDescC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 4
  br i1 %i.u, label %bb.f, label %_ZN2cv8GMatDescC2ERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.o, align 4, !tbaa !67
  store i32 %i.v, ptr %i.k, align 4, !tbaa !67
  br label %_ZN2cv8GMatDescC2ERKS0_.exit

_ZN2cv8GMatDescC2ERKS0_.exit:                     ; preds = %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS4_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS5_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS6_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS7_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !884
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6dtor_hIS2_E4helpEPNSt15aligned_storageILm48ELm8EE4typeE(ptr noundef %0) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6dtor_hIS3_E4helpEPNSt15aligned_storageILm48ELm8EE4typeE(ptr noundef %0) #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !883
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6dtor_hIS4_E4helpEPNSt15aligned_storageILm48ELm8EE4typeE(ptr noundef %0) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6dtor_hIS5_E4helpEPNSt15aligned_storageILm48ELm8EE4typeE(ptr noundef %0) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6dtor_hIS6_E4helpEPNSt15aligned_storageILm48ELm8EE4typeE(ptr noundef %0) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6dtor_hIS7_E4helpEPNSt15aligned_storageILm48ELm8EE4typeE(ptr noundef %0) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv5gimpl4DataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !588    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv5gimpl4DataESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
  unreachable

_ZNKSt6vectorIN2cv5gimpl4DataESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 112                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 82351536043346212)
  %i.l = select i1 %i.j, i64 82351536043346212, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 112                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN2cv5gimpl4DataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %_ZNSt16allocator_traitsISaIN2cv5gimpl4DataEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN2cv5gimpl4DataEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN2cv5gimpl4DataESaIS2_EE12_M_check_lenEmPKc.exit
  %i.r = tail call noundef ptr @_ZNSt6vectorIN2cv5gimpl4DataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.t = tail call noundef ptr @_ZNSt6vectorIN2cv5gimpl4DataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN2cv5gimpl4DataESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsISaIN2cv5gimpl4DataEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !604
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.x) #30
  br label %_ZNSt12_Vector_baseIN2cv5gimpl4DataESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv5gimpl4DataESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt16allocator_traitsISaIN2cv5gimpl4DataEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !588
  store ptr %i.t, ptr %i.a, align 8, !tbaa !585
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %i.l
  store ptr %i.y, ptr %i.u, align 8, !tbaa !604
  ret void

bb.d:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv5gimpl4DataESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #29
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.z

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #32
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN2cv5gimpl4DataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14.i.i = icmp eq ptr %0, %1
  br i1 %.not14.i.i, label %_ZSt12__relocate_aIPN2cv5gimpl4DataES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN2cv5gimpl4DataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i
  %.016.i.i = phi ptr [ %i.ae, %_ZSt19__relocate_object_aIN2cv5gimpl4DataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 7 uses
  %.0915.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aIN2cv5gimpl4DataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %4 = load i64, ptr %.0915.i.i, align 8, !alias.scope !888, !noalias !885
  store i64 %4, ptr %.016.i.i, align 8, !alias.scope !885, !noalias !888
  %i.a = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %.0915.i.i, i64 8 ; 2 uses
  %6 = load i64, ptr %5, align 8, !tbaa !438, !alias.scope !888, !noalias !885 ; 2 uses
  store i64 %6, ptr %i.a, align 8, !tbaa !438, !alias.scope !885, !noalias !888
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @constinit.23, i64 %6
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !365, !noalias !890
  %i.d = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.0915.i.i, i64 16 ; 2 uses
  invoke void %i.c(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #32
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %.0915.i.i, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !361, !alias.scope !888, !noalias !885 ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !361, !alias.scope !885, !noalias !888
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @constinit.24, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !365, !noalias !890
  %i.m = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %.0915.i.i, i64 72 ; 2 uses
  invoke void %i.l(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n)
          to label %_ZN2cv5gimpl4DataC2EOS1_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #32
  unreachable

_ZN2cv5gimpl4DataC2EOS1_.exit.i.i.i:              ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %.0915.i.i, i64 104
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !888, !noalias !885
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !885, !noalias !888
  %i.t = load i64, ptr %i.i, align 8, !tbaa !361, !alias.scope !888, !noalias !885
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @constinit, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !365, !noalias !890
  invoke void %i.v(ptr noundef nonnull %i.n)
          to label %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_ZN2cv5gimpl4DataC2EOS1_.exit.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i.i.i.i: ; preds = %_ZN2cv5gimpl4DataC2EOS1_.exit.i.i.i
  %i.y = load i64, ptr %5, align 8, !tbaa !438, !alias.scope !888, !noalias !885
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @constinit.22, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !365, !noalias !890
  invoke void %i.aa(ptr noundef nonnull %i.e)
          to label %_ZSt19__relocate_object_aIN2cv5gimpl4DataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

_ZSt19__relocate_object_aIN2cv5gimpl4DataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i: ; preds = %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0915.i.i, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN2cv5gimpl4DataES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !891

_ZSt12__relocate_aIPN2cv5gimpl4DataES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN2cv5gimpl4DataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.ae, %_ZSt19__relocate_object_aIN2cv5gimpl4DataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6mctr_hIS2_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6mctr_hIS3_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 17, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !167
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !883
  store ptr %i.f, ptr %i.d, align 8, !tbaa !883
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6mctr_hIS4_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6mctr_hIS5_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6mctr_hIS6_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6mctr_hIS7_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !884
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEE6mctr_hIS2_E4helpEPNSt15aligned_storageILm32ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEE6mctr_hIS8_E4helpEPNSt15aligned_storageILm32ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !448
  store ptr %i.c, ptr %i.a, align 8, !tbaa !448
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN2cv6detail9VectorRefEEEC2EOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !875
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !143
  store ptr %i.g, ptr %i.f, align 8, !tbaa !143
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv6detail9VectorRefEEEC2EOS5_.exit

_ZNSt8functionIFvRN2cv6detail9VectorRefEEEC2EOS5_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEE6mctr_hISC_E4helpEPNSt15aligned_storageILm32ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !450
  store ptr %i.c, ptr %i.a, align 8, !tbaa !450
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2EOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !875
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !143
  store ptr %i.g, ptr %i.f, align 8, !tbaa !143
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2EOS5_.exit

_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2EOS5_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK3ade7details8Metadata8containsERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeImSt4pairIKmN2cv5gimpl10ConstValueEESt10_Select1stIS5_ESt4lessImESaIS5_EE22_M_emplace_hint_uniqueIJRmRKS4_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(272) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, cv::gimpl::ConstValue>, std::_Select1st<std::pair<const unsigned long, cv::gimpl::ConstValue>>, std::less<unsigned long>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %0, ptr %4, align 8, !tbaa !892
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #31 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !55
  store i64 %i.c, ptr %i.b, align 8, !tbaa !594
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke void @_ZN2cv7GRunArgC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(272) %3)
          to label %bb.f unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 312) #30
  invoke void @__cxa_rethrow() #29
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #32
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.k, align 8, !tbaa !894
  %i.l = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmN2cv5gimpl10ConstValueEESt10_Select1stIS5_ESt4lessImESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp ne ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.p
  br i1 %or.cond.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = load i64, ptr %i.b, align 8, !tbaa !55
  %i.s = load i64, ptr %i.q, align 8, !tbaa !55
  %i.t = icmp ult i64 %i.r, %i.s
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.u = phi i1 [ %i.t, %bb.i ], [ true, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #28
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIiSaIiEE17_M_default_appendEm:bb.a

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #29
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !67
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !67
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !165
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !162
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !883
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv4GArgESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !416    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !864
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv4GArgEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv4GArgEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !413
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #29
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv4GArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x i64>, ptr %.0911.i.i.i, align 8, !alias.scope !1301, !noalias !1298
  store <2 x i64> %i.y, ptr %.012.i.i.i, align 8, !alias.scope !1298, !noalias !1301
  store ptr null, ptr %i.x, align 8, !tbaa !351, !alias.scope !1301, !noalias !1298
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv4GArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1303

_ZNSt6vectorIN2cv4GArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv4GArgESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ab = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #30
  br label %_ZNSt12_Vector_baseIN2cv4GArgESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN2cv4GArgESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !416
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !413
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !864
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv4GArgEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv4GArgESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !422    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !849
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv5gimpl6RcDescEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv5gimpl6RcDescEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 48                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !419
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv5gimpl6RcDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #29
  unreachable

_ZNKSt6vectorIN2cv5gimpl6RcDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 192153584101141162) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 48
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not12.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not12.i.i.i, label %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv5gimpl6RcDescESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN2cv5gimpl6RcDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN2cv5gimpl6RcDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv5gimpl6RcDescESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0913.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN2cv5gimpl6RcDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv5gimpl6RcDescESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %2 = load i64, ptr %.0913.i.i.i, align 8, !alias.scope !1307, !noalias !1304
  store i64 %2, ptr %.014.i.i.i, align 8, !alias.scope !1304, !noalias !1307
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  %4 = load i64, ptr %3, align 8, !tbaa !361, !alias.scope !1307, !noalias !1304 ; 2 uses
  store i64 %4, ptr %i.x, align 8, !tbaa !361, !alias.scope !1304, !noalias !1307
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @constinit.24, i64 %4
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !365, !noalias !1309
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16 ; 2 uses
  invoke void %i.z(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab)
          to label %_ZN2cv5gimpl6RcDescC2EOS1_.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #32
  unreachable

_ZN2cv5gimpl6RcDescC2EOS1_.exit.i.i.i.i:          ; preds = %.lr.ph.i.i.i
  %i.ae = load i64, ptr %3, align 8, !tbaa !361, !alias.scope !1307, !noalias !1304
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @constinit, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !365, !noalias !1309
  invoke void %i.ag(ptr noundef nonnull %i.ab)
          to label %_ZSt19__relocate_object_aIN2cv5gimpl6RcDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_ZN2cv5gimpl6RcDescC2EOS1_.exit.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #32
  unreachable

_ZSt19__relocate_object_aIN2cv5gimpl6RcDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN2cv5gimpl6RcDescC2EOS1_.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1310

_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN2cv5gimpl6RcDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN2cv5gimpl6RcDescESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv5gimpl6RcDescESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !849
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #30
  br label %_ZNSt12_Vector_baseIN2cv5gimpl6RcDescESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv5gimpl6RcDescESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.u, ptr %0, align 8, !tbaa !422
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %1
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !419
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !849
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv5gimpl6RcDescEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv5gimpl6RcDescESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv4gapi4s11n6detail5put_vINS_4util7variantIJNS4_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEES7_JS8_S9_SA_SB_EEERNS1_8IOStreamESE_RKT_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !438
  %.not.i = icmp eq i64 %i.b, 1
  br i1 %.not.i, label %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !10
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.c

_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.e), !inline_history !1311 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !400
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.k), !inline_history !1311 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %i.q), !inline_history !1312 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef %i.w), !inline_history !1312 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !401, !range !97, !noundef !98
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i1 noundef zeroext %i.ad), !inline_history !1311 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !162
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !165
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 2
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.aq), !inline_history !1313 ; 0 uses
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !167 ; 2 uses
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !167 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not11.i.i, label %_ZN2cv4gapi4s11nlsERNS1_8IOStreamERKNS_8GMatDescE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, %.lr.ph.i.i
  %.sroa.08.012.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.av, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.08.012.i.i, align 4, !tbaa !67
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.ax), !inline_history !1313 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i, label %_ZN2cv4gapi4s11nlsERNS1_8IOStreamERKNS_8GMatDescE.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.a
  %i.bd = add i64 %2, -1
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv4gapi4s11n6detail5put_vINS_4util7variantIJNS4_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEES8_JS9_SA_SB_EEERNS1_8IOStreamESE_RKT_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.bd)
  br label %_ZN2cv4gapi4s11nlsERNS1_8IOStreamERKNS_8GMatDescE.exit

_ZN2cv4gapi4s11nlsERNS1_8IOStreamERKNS_8GMatDescE.exit: ; preds = %.lr.ph.i.i, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, %bb.f
  %i.bf = phi ptr [ %i.be, %bb.f ], [ %i.ah, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ], [ %i.ah, %.lr.ph.i.i ]
  ret ptr %i.bf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv4gapi4s11n6detail5put_vINS_4util7variantIJNS4_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEES8_JS9_SA_SB_EEERNS1_8IOStreamESE_RKT_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %5 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  switch i64 %2, label %bb.n [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !438
  %.not.i = icmp eq i64 %i.a, 2
  br i1 %.not.i, label %_ZN2cv4util3getINS_11GScalarDescEJNS0_9monostateENS_8GMatDescES2_NS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %5, align 8, !tbaa !10
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.m, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.d, %bb.i ], [ %i.f, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !438
  %.not.i.i = icmp eq i64 %i.c, 3
  br i1 %.not.i.i, label %_ZN2cv4util3getINS_11GScalarDescEJNS0_9monostateENS_8GMatDescES2_NS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %4, align 8, !tbaa !10
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume

bb.j:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !438
end_hunk_2
