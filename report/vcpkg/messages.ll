Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/messages?download=true
inline.NumInlined: 1256
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_0v:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.he = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg15LocalizedStringESaIS1_EE11_M_allocateEm.exit.i.i84 unwind label %bb.az ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg15LocalizedStringESaIS1_EE11_M_allocateEm.exit.i.i84: ; preds = %bb.ay
  %i.hf = getelementptr inbounds nuw i8, ptr %30, i64 64
  store ptr %i.he, ptr %29, align 8, !tbaa !36
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !39
  %i.hi = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg15LocalizedStringEPS1_ET0_T_S6_S5_(ptr noundef nonnull %30, ptr noundef nonnull %i.hf, ptr noundef nonnull %i.he)
          to label %bb.bb unwind label %bb.az     ; 2 uses

bb.az:                                            ; preds = %_ZNSt12_Vector_baseIN5vcpkg15LocalizedStringESaIS1_EE11_M_allocateEm.exit.i.i84, %bb.ay
  %i.hj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.hk = load ptr, ptr %29, align 8, !tbaa !36   ; 3 uses
  %.not.i.i5.i82 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i5.i82, label %.body85, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hl = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !39
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #22
  br label %.body85

bb.bb:                                            ; preds = %_ZNSt12_Vector_baseIN5vcpkg15LocalizedStringESaIS1_EE11_M_allocateEm.exit.i.i84
  %i.hq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr %i.hi, ptr %i.hq, align 8, !tbaa !37
  %i.hr = load ptr, ptr %29, align 8, !tbaa !36   ; 2 uses
  %i.hs = ptrtoint ptr %i.hi to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = ashr exact i64 %i.hu, 5
  %i.hw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString20append_floating_listEiNS_4SpanIKS0_EE(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 2, ptr %i.hr, i64 %i.hv)
          to label %bb.bc unwind label %bb.bn     ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.hx = call noundef zeroext i1 @_ZN5vcpkgeqERKNS_15LocalizedStringES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %22) #21, !noalias !137
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.25) #21, !noalias !137
  %i.hy = load ptr, ptr %0, align 8, !noalias !137
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !noalias !137
  %i.ib = zext i1 %i.hx to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 1, ptr %i.ic, align 8, !tbaa !25, !alias.scope !137
  %i.id = getelementptr inbounds nuw i8, ptr %27, i64 9
  store i8 %i.ib, ptr %i.id, align 1, !tbaa !26, !alias.scope !137
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_EE, i64 16), ptr %27, align 8, !tbaa !28, !alias.scope !137
  %i.ie = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.hw, ptr %i.ie, align 8, !tbaa !30, !alias.scope !137
  %i.if = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.hy, ptr %i.if, align 8, !tbaa !31, !alias.scope !137
  %.sroa.2.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i64 %i.ia, ptr %.sroa.2.0..sroa_idx.i.i88, align 8, !tbaa !32, !alias.scope !137
  %i.ig = getelementptr inbounds nuw i8, ptr %27, i64 40
  store ptr %22, ptr %i.ig, align 8, !tbaa !30, !alias.scope !137
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(10) %27)
          to label %bb.bd unwind label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %27) #21
  %i.ih = load ptr, ptr %29, align 8, !tbaa !36   ; 3 uses
  %i.ii = load ptr, ptr %i.hq, align 8, !tbaa !37 ; 2 uses
  %.not4.i.i.i89 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not4.i.i.i89, label %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i97, label %.lr.ph.i.i.i90

.lr.ph.i.i.i90:                                   ; preds = %bb.bd, %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i93
  %.05.i.i.i91 = phi ptr [ %i.io, %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i93 ], [ %i.ih, %bb.bd ] ; 3 uses
  %i.ij = load ptr, ptr %.05.i.i.i91, align 8, !tbaa !33 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.05.i.i.i91, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i92: ; preds = %.lr.ph.i.i.i90
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !34
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #22
  br label %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i93

_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i93: ; preds = %.lr.ph.i.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i92
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i91, i64 32 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.io, %i.ii
  br i1 %.not.i.i.i94, label %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i95, label %.lr.ph.i.i.i90, !llvm.loop !0

_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i95: ; preds = %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i93
  %.pr.i96 = load ptr, ptr %29, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i97

_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i97: ; preds = %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i95, %bb.bd
  %i.ip = phi ptr [ %.pr.i96, %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i95 ], [ %i.ih, %bb.bd ] ; 3 uses
  %.not.i.i1.i98 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i1.i98, label %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit101, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i97
  %i.iq = load ptr, ptr %i.hh, align 8, !tbaa !39
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.it) #22
  br label %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit101

_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit101: ; preds = %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i97, %bb.be
  %i.iu = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !33 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZN5vcpkg15LocalizedStringD2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit101
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !34
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit104

_ZN5vcpkg15LocalizedStringD2Ev.exit104:           ; preds = %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102
  %i.ja = load ptr, ptr %30, align 8, !tbaa !33   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZN5vcpkg15LocalizedStringD2Ev.exit104.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102.1: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit104
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !34
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit104.1

_ZN5vcpkg15LocalizedStringD2Ev.exit104.1:         ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102.1
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.jf = load ptr, ptr %28, align 8, !tbaa !33   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZN5vcpkg15LocalizedStringD2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit104.1
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !34
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit107

_ZN5vcpkg15LocalizedStringD2Ev.exit107:           ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit104.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.br

bb.bf:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit72
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bh unwind label %bb.ca

bb.bg:                                            ; preds = %bb.am, %bb.al
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.pn22 = phi { ptr, i32 } [ %i.jl, %bb.bg ], [ %i.jk, %bb.bf ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.af
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.bh ], [ %i.eu, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.bz

bb.bj:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit73
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit129

bb.bk:                                            ; preds = %bb.aq
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.by

bb.bl:                                            ; preds = %bb.ar
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit116

bb.bm:                                            ; preds = %.noexc.i.i79
  %i.jp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.jq = load ptr, ptr %30, align 8, !tbaa !33   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108: ; preds = %bb.bm
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !34
  %31 = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %31) #22
  br label %.loopexit

bb.bn:                                            ; preds = %bb.bb
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bc
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %27) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn25 = phi { ptr, i32 } [ %i.jv, %bb.bo ], [ %i.ju, %bb.bn ]
  call void @_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #21
  br label %.body85

.body85:                                          ; preds = %bb.ba, %bb.az, %bb.bp
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.bp ], [ %i.hj, %bb.az ], [ %i.hj, %bb.ba ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !33 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZN5vcpkg15LocalizedStringD2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111: ; preds = %.body85
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !34
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit113

_ZN5vcpkg15LocalizedStringD2Ev.exit113:           ; preds = %.body85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111
  %i.kc = load ptr, ptr %30, align 8, !tbaa !33   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.1.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.1.a: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit113
  %32 = load i64, ptr %i.kd, align 8, !tbaa !34
  %i.kf = add i64 %32, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #22
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit113, %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.1.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108, %.thread
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108 ], [ %i.gi, %.thread ], [ %.pn25.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.1.a ], [ %i.jp, %bb.bm ], [ %.pn25.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit113 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.kg = load ptr, ptr %28, align 8, !tbaa !33   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZN5vcpkg15LocalizedStringD2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114: ; preds = %.loopexit
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !34
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit116

_ZN5vcpkg15LocalizedStringD2Ev.exit116:           ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114, %bb.bl
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.bl ], [ %.pn25.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114 ], [ %.pn25.pn.pn, %.loopexit ]
  %.14 = extractvalue { ptr, i32 } %.pn25.pn.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.kl = call ptr @__cxa_begin_catch(ptr %.14) #21 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit116
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bq, %_ZN5vcpkg15LocalizedStringD2Ev.exit107
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.km = getelementptr inbounds nuw i8, ptr %23, i64 58
  %i.kn = load i8, ptr %i.km, align 2, !tbaa !46, !range !47, !noundef !48
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %_ZN5Catch16AssertionHandlerD2Ev.exit117, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !49, !nonnull !48, !align !50 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !28
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 112
  %i.kt = load ptr, ptr %i.ks, align 8
  invoke void %i.kt(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit117 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #23
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit117:          ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.kw = load ptr, ptr %22, align 8, !tbaa !33   ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZN5vcpkg15LocalizedStringD2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit117
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !34
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit120

_ZN5vcpkg15LocalizedStringD2Ev.exit120:           ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.lb = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZN5vcpkg15LocalizedStringD2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit120
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !34
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit123

_ZN5vcpkg15LocalizedStringD2Ev.exit123:           ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.lg = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZN5vcpkg15LocalizedStringD2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit123
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !34
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit126

_ZN5vcpkg15LocalizedStringD2Ev.exit126:           ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.bv:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit116
  %i.ll = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bx unwind label %bb.ca

bb.bw:                                            ; preds = %bb.br, %bb.bq
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.pn26 = phi { ptr, i32 } [ %i.lm, %bb.bw ], [ %i.ll, %bb.bv ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %23) #21
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bk
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.bx ], [ %i.jn, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.ln = load ptr, ptr %22, align 8, !tbaa !33   ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZN5vcpkg15LocalizedStringD2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.by
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !34
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit129

_ZN5vcpkg15LocalizedStringD2Ev.exit129:           ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127, %bb.bj
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.jm, %bb.bj ], [ %.pn26.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127 ], [ %.pn26.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit129, %bb.bi, %bb.ae
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit129 ], [ %.pn22.pn, %bb.bi ], [ %.pn18.pn, %bb.ae ] ; 2 uses
  %i.ls = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZN5vcpkg15LocalizedStringD2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130: ; preds = %bb.bz
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !34
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit132

_ZN5vcpkg15LocalizedStringD2Ev.exit132:           ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130, %bb.g
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %.pn26.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130 ], [ %.pn26.pn.pn.pn, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.lx = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZN5vcpkg15LocalizedStringD2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit132
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !34
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit135

_ZN5vcpkg15LocalizedStringD2Ev.exit135:           ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn

bb.ca:                                            ; preds = %bb.bv, %bb.bf, %bb.ab
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  call void @__clang_call_terminate(ptr %i.md) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_2v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"struct.vcpkg::Optional", align 8  ; 13 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
end_hunk_0
