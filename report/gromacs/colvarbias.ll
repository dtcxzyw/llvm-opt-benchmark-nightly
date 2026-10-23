Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias?download=true
inline.NumInlined: 2342
inline.NumDeleted: 638
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN10colvarbias4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store ptr %i.hi, ptr %8, align 8, !tbaa !101
  store i64 %i.hw, ptr %i.gn, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit166

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i160, %.thread.i165
  store ptr %i.gn, ptr %8, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit166: ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i162, %bb.aj, %bb.ak
  %i.hz = phi ptr [ %.pre.i163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i162 ], [ %i.hi, %bb.aj ], [ %i.gn, %bb.ak ], [ %i.hl, %bb.af ]
  store i64 0, ptr %i.go, align 8, !tbaa !103
  store i8 0, ptr %i.hz, align 1, !tbaa !102
  %i.ia = load ptr, ptr %8, align 8, !tbaa !101   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.gn
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit166
  %i.ic = load i64, ptr %i.gn, align 8, !tbaa !102
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ie = load ptr, ptr %0, align 8, !tbaa !50
  %i.if = getelementptr i8, ptr %i.ie, i64 -24
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = getelementptr inbounds i8, ptr %0, i64 %i.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ii, ptr %11, align 8, !tbaa !99
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ij, align 8, !tbaa !103
  store i8 0, ptr %i.ii, align 8, !tbaa !102
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.il = invoke noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIS5_SaIS5_EERKSC_NS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %i.ih, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 131078)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.in = load ptr, ptr %10, align 8, !tbaa !108  ; 3 uses
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !109 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.in, %i.io
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.al, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.iu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.in, %bb.al ] ; 3 uses
  %i.ip = load ptr, ptr %.05.i.i.i, align 8, !tbaa !101 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !102
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %i.iu, %i.io
  br i1 %.not.i.i.i171, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.al
  %i.iv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.in, %bb.al ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.iw = load ptr, ptr %i.ik, align 8, !tbaa !110
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.iz) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.am
  %i.ja = load ptr, ptr %11, align 8, !tbaa !101  ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ii
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.jc = load i64, ptr %i.ii, align 8, !tbaa !102
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %i.il, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175..loopexit_crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175..loopexit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %.pre = load ptr, ptr %9, align 8, !tbaa !108
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre385 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %.loopexit

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.je = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.jf = load ptr, ptr %i.bg, align 8, !tbaa !48
  %.not73 = icmp eq ptr %i.je, %i.jf
  br i1 %.not73, label %bb.at, label %.noexc.i177

.noexc.i177:                                      ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.jg, ptr %12, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 71, ptr %i.b, align 8, !tbaa !100
  %i.jh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc178 unwind label %bb.ar ; 3 uses

.noexc178:                                        ; preds = %.noexc.i177
  store ptr %i.jh, ptr %12, align 8, !tbaa !101
  %i.ji = load i64, ptr %i.b, align 8, !tbaa !100 ; 3 uses
  store i64 %i.ji, ptr %i.jg, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.jh, ptr noundef nonnull align 1 dereferenceable(71) @.str.12, i64 71, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ji, ptr %i.jj, align 8, !tbaa !103
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.ji
  store i8 0, ptr %i.jk, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.jl = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 4)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %.noexc178
  %i.jm = or i32 %i.jl, %.056
  %i.jn = load ptr, ptr %12, align 8, !tbaa !101  ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.jg
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.ao
  %i.jp = load i64, ptr %i.jg, align 8, !tbaa !102
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.at

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  %i.js = load ptr, ptr %11, align 8, !tbaa !101  ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.ii
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.ap
  %i.ju = load i64, ptr %i.ii, align 8, !tbaa !102
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.ax

bb.aq:                                            ; preds = %.lr.ph
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ar:                                            ; preds = %.noexc.i177
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.as:                                            ; preds = %.noexc178
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %12, align 8, !tbaa !101  ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.jg
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.as
  %i.kb = load i64, ptr %i.jg, align 8, !tbaa !102
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.ar
  %.pn74 = phi { ptr, i32 } [ %i.jx, %bb.ar ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %i.jy, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ax

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.an
  %.157 = phi i32 [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %.056, %bb.an ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !109 ; 2 uses
  %i.kf = load ptr, ptr %9, align 8, !tbaa !108   ; 3 uses
  %.not383 = icmp eq ptr %i.ke, %i.kf
  br i1 %.not383, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.at, %bb.au
  %i.kg = phi ptr [ %i.kl, %bb.au ], [ %i.kf, %bb.at ]
  %.0380 = phi i64 [ %i.kj, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [32 x i8], ptr %i.kg, i64 %.0380
  %i.ki = invoke noundef i32 @_ZN10colvarbias10add_colvarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.kh)
          to label %bb.au unwind label %bb.aq     ; 0 uses

bb.au:                                            ; preds = %.lr.ph
  %i.kj = add nuw i64 %.0380, 1                   ; 2 uses
  %i.kk = load ptr, ptr %i.kd, align 8, !tbaa !109 ; 2 uses
  %i.kl = load ptr, ptr %9, align 8, !tbaa !108   ; 3 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = ashr exact i64 %i.ko, 5
  %i.kq = icmp ult i64 %i.kj, %i.kp
  br i1 %i.kq, label %.lr.ph, label %.loopexit, !llvm.loop !282

.loopexit:                                        ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175..loopexit_crit_edge, %bb.at
  %29 = phi ptr [ %.pre385, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175..loopexit_crit_edge ], [ %i.ke, %bb.at ], [ %i.kk, %bb.au ] ; 2 uses
  %30 = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175..loopexit_crit_edge ], [ %i.kf, %bb.at ], [ %i.kl, %bb.au ] ; 3 uses
  %.258 = phi i32 [ %.056, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175..loopexit_crit_edge ], [ %.157, %bb.at ], [ %.157, %bb.au ] ; 2 uses
  %.not4.i.i.i189 = icmp eq ptr %30, %29
  br i1 %.not4.i.i.i189, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i197, label %.lr.ph.i.i.i190

.lr.ph.i.i.i190:                                  ; preds = %.loopexit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i193
  %.05.i.i.i191 = phi ptr [ %i.kw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i193 ], [ %30, %.loopexit ] ; 3 uses
  %i.kr = load ptr, ptr %.05.i.i.i191, align 8, !tbaa !101 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i191, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i192: ; preds = %.lr.ph.i.i.i190
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !102
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i193

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i193: ; preds = %.lr.ph.i.i.i190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i192
  %i.kw = getelementptr inbounds nuw i8, ptr %.05.i.i.i191, i64 32 ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.kw, %29
  br i1 %.not.i.i.i194, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i195, label %.lr.ph.i.i.i190, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i195: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i193
  %.pr.i196 = load ptr, ptr %9, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i197

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i197: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i195, %.loopexit
  %31 = phi ptr [ %.pr.i196, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i195 ], [ %30, %.loopexit ] ; 3 uses
  %.not.i.i1.i198 = icmp eq ptr %31, null
  br i1 %.not.i.i1.i198, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit201, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i197
  %i.kx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !110
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %31 to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %31, i64 noundef %i.lb) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit201

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit201: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i197, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.lc = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.ld = load ptr, ptr %i.bg, align 8, !tbaa !48
  %.not76 = icmp eq ptr %i.lc, %i.ld
  br i1 %.not76, label %.noexc.i203, label %bb.bj

.noexc.i203:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit201
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.le = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.le, ptr %13, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 42, ptr %i.a, align 8, !tbaa !100
  %i.lf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc204 unwind label %bb.ay ; 3 uses

.noexc204:                                        ; preds = %.noexc.i203
  store ptr %i.lf, ptr %13, align 8, !tbaa !101
  %i.lg = load i64, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.lf, ptr noundef nonnull align 1 dereferenceable(42) @.str.13, i64 42, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.lg, ptr %i.lh, align 8, !tbaa !103
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg
  store i8 0, ptr %i.li, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.lj = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 4)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %.noexc204
  %i.lk = or i32 %i.lj, %.258
  %i.ll = load ptr, ptr %13, align 8, !tbaa !101  ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.le
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.aw
  %i.ln = load i64, ptr %i.le, align 8, !tbaa !102
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.bj

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %.pn92 = phi { ptr, i32 } [ %i.jw, %bb.aq ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %common.resume

bb.ay:                                            ; preds = %.noexc.i203
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.az:                                            ; preds = %.noexc204
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = load ptr, ptr %13, align 8, !tbaa !101  ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.le
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.az
  %i.lt = load i64, ptr %i.le, align 8, !tbaa !102
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209, %bb.ay
  %.pn77 = phi { ptr, i32 } [ %i.lp, %bb.ay ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209 ], [ %i.lq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %common.resume

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.lv = load ptr, ptr %i.ac, align 8, !tbaa !101, !noalias !313
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !103, !noalias !313 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.ly, ptr %15, align 8, !tbaa !99, !alias.scope !314
  %i.lz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 0, ptr %i.lz, align 8, !tbaa !103, !alias.scope !314
  store i8 0, ptr %i.ly, align 8, !tbaa !102, !alias.scope !314
  %i.ma = add i64 %i.lx, 21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.ma)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !103, !alias.scope !314
  %i.mc = add i64 %i.mb, -4611686018427387883
  %i.md = icmp ult i64 %i.mc, 21
  br i1 %i.md, label %.invoke.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i215: ; preds = %bb.bb
  %i.me = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.14, i64 noundef 21)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i216 unwind label %bb.bc ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i216: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i215
  %i.mf = load i64, ptr %i.lz, align 8, !tbaa !103, !alias.scope !314
  %i.mg = sub i64 4611686018427387903, %i.mf
  %i.mh = icmp ult i64 %i.mg, %i.lx
  br i1 %i.mh, label %.invoke.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i217

.invoke.i.i218:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i216, %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
          to label %.cont.i.i219 unwind label %bb.bc

.cont.i.i219:                                     ; preds = %.invoke.i.i218
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i216
  %i.mi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.lv, i64 noundef %i.lx)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit220 unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i217, %.invoke.i.i218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i215, %bb.ba
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mk = load ptr, ptr %15, align 8, !tbaa !101, !alias.scope !314 ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.ly
  br i1 %i.ml, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i212: ; preds = %bb.bc
  %i.mm = load i64, ptr %i.ly, align 8, !tbaa !102, !alias.scope !314
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #28
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit220: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i217
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.mo = load i64, ptr %i.lz, align 8, !tbaa !103, !noalias !315
  %i.mp = add i64 %i.mo, -4611686018427387901
  %i.mq = icmp ult i64 %i.mp, 3
  br i1 %i.mq, label %bb.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i221

bb.bd:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit220
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
          to label %.noexc225 unwind label %bb.bh

.noexc225:                                        ; preds = %bb.bd
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i221: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit220
  %i.mr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.15, i64 noundef 3)
          to label %.noexc226 unwind label %bb.bh ; 6 uses

.noexc226:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i221
  %i.ms = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.ms, ptr %14, align 8, !tbaa !99, !alias.scope !315
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !101 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 16 ; 5 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

bb.be:                                            ; preds = %.noexc226
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !103 ; 3 uses
  %i.my = icmp ult i64 %i.mx, 16
  call void @llvm.assume(i1 %i.my)
  %i.mz = add nuw nsw i64 %i.mx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ms, ptr noundef nonnull align 8 dereferenceable(1) %i.mu, i64 %i.mz, i1 false)
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %.noexc226
  store ptr %i.mt, ptr %14, align 8, !tbaa !101, !alias.scope !315
  %i.na = load i64, ptr %i.mu, align 8, !tbaa !102
  store i64 %i.na, ptr %i.ms, align 8, !tbaa !102, !alias.scope !315
  %.phi.trans.insert.i223 = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %.pre.i224 = load i64, ptr %.phi.trans.insert.i223, align 8, !tbaa !103
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %bb.be
  %i.nb = phi i64 [ %i.mx, %bb.be ], [ %.pre.i224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222 ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.nb, ptr %i.nd, align 8, !tbaa !103, !alias.scope !315
  store ptr %i.mu, ptr %i.mr, align 8, !tbaa !101
  store i64 0, ptr %i.nc, align 8, !tbaa !103
  store i8 0, ptr %i.mu, align 8, !tbaa !102
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 10)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ne = load ptr, ptr %14, align 8, !tbaa !101  ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.ms
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.bg
  %i.ng = load i64, ptr %i.ms, align 8, !tbaa !102
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  %i.ni = load ptr, ptr %15, align 8, !tbaa !101  ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.ly
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.nk = load i64, ptr %i.ly, align 8, !tbaa !102
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.bj

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i221, %bb.bd
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.bi:                                            ; preds = %bb.bf
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.no = load ptr, ptr %14, align 8, !tbaa !101  ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.ms
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.bi
  %i.nq = load i64, ptr %i.ms, align 8, !tbaa !102
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.bh
  %.pn = phi { ptr, i32 } [ %i.nm, %bb.bh ], [ %i.nn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.nn, %bb.bi ]
  %i.ns = load ptr, ptr %15, align 8, !tbaa !101  ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.ly
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.nu = load i64, ptr %i.ly, align 8, !tbaa !102
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %common.resume

bb.bj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %.460 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %.258, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit201 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ]
  %i.nw = load ptr, ptr %0, align 8, !tbaa !50
  %i.nx = getelementptr i8, ptr %i.nw, i64 -32
  %i.ny = load i64, ptr %i.nx, align 8
  %i.nz = getelementptr inbounds i8, ptr %0, i64 %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !95
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 64
  store i8 1, ptr %i.oc, align 8, !tbaa !111
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.oe = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.of = load ptr, ptr %i.bg, align 8, !tbaa !48
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = ashr exact i64 %i.oi, 3                 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !112 ; 3 uses
  %i.om = load ptr, ptr %i.od, align 8, !tbaa !53 ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = sdiv exact i64 %i.op, 168               ; 3 uses
  %i.or = icmp ugt i64 %i.oj, %i.oq
  br i1 %i.or, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.os = sub nuw nsw i64 %i.oj, %i.oq
  call void @_ZNSt6vectorI11colvarvalueSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.od, i64 noundef %i.os)
  br label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.bl:                                            ; preds = %bb.bj
  %i.ot = icmp ult i64 %i.oj, %i.oq
  br i1 %i.ot, label %bb.bm, label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ou = getelementptr inbounds nuw [168 x i8], ptr %i.om, i64 %i.oj ; 3 uses
  %.not.i.i = icmp eq ptr %i.ol, %i.ou
  br i1 %.not.i.i, label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.ou, ptr noundef %i.ol)
          to label %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i unwind label %bb.bo

_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.bn
  store ptr %i.ou, ptr %i.ok, align 8, !tbaa !112
  br label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  call void @__clang_call_terminate(ptr %i.ow) #30
  unreachable

_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit: ; preds = %bb.bk, %bb.bl, %bb.bm, %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.ox = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.oy = load ptr, ptr %i.bg, align 8, !tbaa !48 ; 2 uses
  %.not384 = icmp eq ptr %i.ox, %i.oy
  br i1 %.not384, label %._crit_edge, label %.lr.ph382

.lr.ph382:                                        ; preds = %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph382, %bb.bp
  %i.pb = phi ptr [ %i.oy, %.lr.ph382 ], [ %i.pu, %bb.bp ]
  %.1381 = phi i64 [ 0, %.lr.ph382 ], [ %i.ps, %bb.bp ] ; 7 uses
  %i.pc = load ptr, ptr %i.od, align 8, !tbaa !53
  %i.pd = getelementptr inbounds nuw [168 x i8], ptr %i.pc, i64 %.1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %.1381
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !52
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 672
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !68
  store i32 %i.ph, ptr %i.c, align 4, !tbaa !69
  call void @_ZN11colvarvalue4typeERKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(168) %i.pd, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.pi = load ptr, ptr %i.oz, align 8, !tbaa !53
  %i.pj = getelementptr inbounds nuw [168 x i8], ptr %i.pi, i64 %.1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.pk = load ptr, ptr %i.od, align 8, !tbaa !53
  %i.pl = getelementptr inbounds nuw [168 x i8], ptr %i.pk, i64 %.1381
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !68
  store i32 %i.pm, ptr %i.d, align 4, !tbaa !69
  call void @_ZN11colvarvalue4typeERKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(168) %i.pj, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.pn = load ptr, ptr %i.pa, align 8, !tbaa !53
  %i.po = getelementptr inbounds nuw [168 x i8], ptr %i.pn, i64 %.1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.pp = load ptr, ptr %i.od, align 8, !tbaa !53
  %i.pq = getelementptr inbounds nuw [168 x i8], ptr %i.pp, i64 %.1381
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !68
  store i32 %i.pr, ptr %i.e, align 4, !tbaa !69
  call void @_ZN11colvarvalue4typeERKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(168) %i.po, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.ps = add nuw i64 %.1381, 1                   ; 2 uses
  %i.pt = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.pu = load ptr, ptr %i.bg, align 8, !tbaa !48 ; 2 uses
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = ashr exact i64 %i.px, 3
  %i.pz = icmp ult i64 %i.ps, %i.py
  br i1 %i.pz, label %bb.bp, label %._crit_edge, !llvm.loop !289

._crit_edge:                                      ; preds = %bb.bp, %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit
  %i.qa = call noundef ptr @_ZN12colvarmodule4mainEv()
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.qc, ptr noundef nonnull align 8 dereferenceable(32) %i.qb)
  %i.qd = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 -32
  %i.qf = load i64, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds i8, ptr %0, i64 %i.qf ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qd, i64 -24
  %i.qi = load i64, ptr %i.qh, align 8
  %i.qj = getelementptr inbounds i8, ptr %0, i64 %i.qi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 48
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !95
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 65
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !97, !range !91, !noundef !92
  store i8 %i.qn, ptr %i.f, align 1, !tbaa !113
  %i.qo = call noundef zeroext i1 @_ZN10colvardeps18get_keyval_featureEP11colvarparseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKciRKbNS0_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(120) %i.qg, ptr noundef nonnull %i.qj, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.qp = load ptr, ptr %0, align 8, !tbaa !50
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 120
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = call noundef i32 %i.qr(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.qt = or i32 %i.qs, %.460                     ; 2 uses
  %i.qu = load ptr, ptr %0, align 8, !tbaa !50
  %i.qv = getelementptr i8, ptr %i.qu, i64 -24
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = getelementptr inbounds i8, ptr %0, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.qz = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRbRKbNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %i.qx, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %i.qy, ptr noundef nonnull align 1 dereferenceable(1) %i.qy, i32 noundef 131078) ; 0 uses
  %i.ra = load ptr, ptr %0, align 8, !tbaa !50
  %i.rb = getelementptr i8, ptr %i.ra, i64 -24
  %i.rc = load i64, ptr %i.rb, align 8
  %i.rd = getelementptr inbounds i8, ptr %0, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.rf = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRmRKmNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %i.rd, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.re, ptr noundef nonnull align 8 dereferenceable(8) %i.re, i32 noundef 131078) ; 0 uses
  %i.rg = load i64, ptr %i.re, align 8, !tbaa !114
  %i.rh = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.ri = getelementptr i8, ptr %i.rh, i64 -32
  %i.rj = load i64, ptr %i.ri, align 8            ; 2 uses
  %i.rk = getelementptr inbounds i8, ptr %0, i64 %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !124
  %i.rn = sext i32 %i.rm to i64
  %i.ro = urem i64 %i.rg, %i.rn
  %.not79 = icmp eq i64 %i.ro, 0
  br i1 %.not79, label %bb.cx, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.rp = load ptr, ptr %i.ac, align 8, !tbaa !101, !noalias !316
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !103, !noalias !316 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  store ptr %i.rs, ptr %21, align 8, !tbaa !99, !alias.scope !317
  %i.rt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store i64 0, ptr %i.rt, align 8, !tbaa !103, !alias.scope !317
  store i8 0, ptr %i.rs, align 8, !tbaa !102, !alias.scope !317
  %i.ru = add i64 %i.rr, 15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.ru)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !103, !alias.scope !317
  %i.rw = add i64 %i.rv, -4611686018427387889
  %i.rx = icmp ult i64 %i.rw, 15
  br i1 %i.rx, label %.invoke.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i243: ; preds = %bb.br
  %i.ry = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.19, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i244 unwind label %bb.bs ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i244: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i243
  %i.rz = load i64, ptr %i.rt, align 8, !tbaa !103, !alias.scope !317
  %i.sa = sub i64 4611686018427387903, %i.rz
  %i.sb = icmp ult i64 %i.sa, %i.rr
  br i1 %i.sb, label %.invoke.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i245

.invoke.i.i246:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i244, %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
          to label %.cont.i.i247 unwind label %bb.bs

.cont.i.i247:                                     ; preds = %.invoke.i.i246
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i244
  %i.sc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.rp, i64 noundef %i.rr)
end_hunk_0
begin_hunk_1_@_ZN10colvardeps23do_feature_side_effectsEi:bb.a

; Function Attrs: uwtable
define noundef i32 @_ZTv0_n56_N10colvarbias17init_dependenciesEv(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -56
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef i32 @_ZN10colvarbias17init_dependenciesEv(ptr noundef nonnull align 8 dereferenceable(312) %i.d) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN13colvarbias_tiD1Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN13colvarbias_tiD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZTT13colvarbias_ti) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN10colvarbiasD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT13colvarbias_ti, i64 32)) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 752
  tail call void @_ZN10colvardepsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN11colvarparseD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.c) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN13colvarbias_tiD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN13colvarbias_tiD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZTT13colvarbias_ti) #27, !inline_history !169
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN10colvarbiasD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT13colvarbias_ti, i64 32)) #27, !inline_history !169
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 752
  tail call void @_ZN10colvardepsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.b) #27, !inline_history !169
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN11colvarparseD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.c) #27, !inline_history !169
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 872) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN13colvarbias_ti4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::vector", align 8       ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !50
  %i.g = getelementptr i8, ptr %i.f, i64 -32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = tail call noundef zeroext i1 @_ZN11colvarparse10key_lookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPS5_Pm(ptr noundef nonnull align 8 dereferenceable(320) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.126, ptr noundef nonnull %i.j, ptr noundef null) ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -40
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 -32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 385
  %i.v = load i8, ptr %i.u, align 1, !tbaa !97, !range !91, !noundef !92
  store i8 %i.v, ptr %i.d, align 1, !tbaa !113
  %i.w = call noundef zeroext i1 @_ZN10colvardeps18get_keyval_featureEP11colvarparseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKciRKbNS0_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.127, i32 noundef 12, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.x = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 -32
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 417
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !97, !range !91, !noundef !92
  store i8 %i.ah, ptr %i.e, align 1, !tbaa !113
  %i.ai = call noundef zeroext i1 @_ZN10colvardeps18get_keyval_featureEP11colvarparseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKciRKbNS0_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(120) %i.aa, ptr noundef nonnull %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.128, i32 noundef 13, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.aj = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -40
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 417
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !97, !range !91, !noundef !92
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = call noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.am, i32 noundef 12, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.at = phi ptr [ %.pre, %bb.b ], [ %i.aj, %bb.a ] ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %i.bd, 8
  %i.bf = getelementptr i8, ptr %i.at, i64 -40
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !95 ; 2 uses
  br i1 %i.be, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 417
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !97, !range !91, !noundef !92
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.noexc.i, label %._crit_edge

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.bn, ptr %2, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 151, ptr %i.c, align 8, !tbaa !100
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bo, ptr %2, align 8, !tbaa !101
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !100 ; 3 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(151) %i.bo, ptr noundef nonnull align 1 dereferenceable(151) @.str.129, i64 151, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.bs = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.noexc
  %i.bt = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bn
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.bv = load i64, ptr %i.bn, align 8, !tbaa !102
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.v

bb.f:                                             ; preds = %.noexc.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.g:                                             ; preds = %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bn
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.g
  %i.cb = load i64, ptr %i.bn, align 8, !tbaa !102
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.f
  %.pn29 = phi { ptr, i32 } [ %i.bx, %bb.f ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.by, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.w

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 353
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !97, !range !91, !noundef !92
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.h, label %bb.q

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.cg = call noundef ptr @_ZN12colvarmodule4mainEv()
  call void @_ZNK12colvarmodule21time_dependent_biasesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(632) %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !109 ; 7 uses
  %i.cj = load ptr, ptr %3, align 8, !tbaa !108   ; 9 uses
  %.not = icmp eq ptr %i.ci, %i.cj
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.cl, %i.ck
  %i.cn = icmp ugt i64 %i.cm, 32
  %.pre66 = load ptr, ptr %0, align 8, !tbaa !50
  %.phi.trans.insert67 = getelementptr i8, ptr %.pre66, i64 -24
  %.pre68 = load i64, ptr %.phi.trans.insert67, align 8 ; 2 uses
  br i1 %i.cn, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds i8, ptr %0, i64 %.pre68 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !103 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !103
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.k, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cv = icmp eq i64 %i.cr, 0
  br i1 %i.cv, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.k
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !101
  %i.cx = load ptr, ptr %i.cj, align 8, !tbaa !101
  %bcmp.i.i = call i32 @bcmp(ptr %i.cx, ptr %i.cw, i64 %i.cr)
  %.not58 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not58, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.i, %bb.j, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %.pre68 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !47 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !48 ; 3 uses
  %.not2660 = icmp eq ptr %i.db, %i.dc
  br i1 %.not2660, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3
  br label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.dh = add nuw i64 %.061, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %i.dg
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, label %.lr.ph, !llvm.loop !401

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.061 = phi i64 [ %i.dh, %bb.l ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.di = shl i64 %.061, 32
  %i.dj = ashr exact i64 %i.di, 29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 368
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !95
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 321
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !97, !range !91, !noundef !92
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.l, label %.noexc.i36

.noexc.i36:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.dr, ptr %4, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 131, ptr %i.b, align 8, !tbaa !100
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc37 unwind label %bb.n   ; 3 uses

.noexc37:                                         ; preds = %.noexc.i36
  store ptr %i.ds, ptr %4, align 8, !tbaa !101
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !100 ; 3 uses
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(131) %i.ds, ptr noundef nonnull align 1 dereferenceable(131) @.str.130, i64 131, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !103
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.dw = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 4)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.noexc37
  %i.dx = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dr
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.m
  %i.dz = load i64, ptr %i.dr, align 8, !tbaa !102
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pre69 = load ptr, ptr %3, align 8, !tbaa !108
  %.pre70 = load ptr, ptr %i.ch, align 8, !tbaa !109
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57

bb.n:                                             ; preds = %.noexc.i36
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.o:                                             ; preds = %.noexc37
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.dr
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.o
  %i.ef = load i64, ptr %i.dr, align 8, !tbaa !102
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.n
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.n ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.ec, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.w

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57: ; preds = %bb.l, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.k, %bb.h, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %6 = phi ptr [ %i.ci, %bb.k ], [ %i.ci, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.ci, %bb.h ], [ %.pre70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.ci, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.ci, %bb.l ] ; 2 uses
  %7 = phi ptr [ %i.cj, %bb.k ], [ %i.cj, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.cj, %bb.h ], [ %.pre69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.cj, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.cj, %bb.l ] ; 3 uses
  %.223 = phi i32 [ undef, %bb.k ], [ undef, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ undef, %bb.h ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ undef, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ undef, %bb.l ]
  %cond = phi i1 [ true, %bb.k ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %bb.h ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ true, %bb.l ]
  %.not4.i.i.i = icmp eq ptr %7, %6
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.em, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %7, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57 ] ; 3 uses
  %i.eh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !101 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !102
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.em, %6
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57
  %8 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %7, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %8, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !110
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %8 to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.er) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %cond, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %._crit_edge
  %i.es = call noundef i32 @_ZN13colvarbias_ti10init_gridsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) ; 0 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !50
  %i.eu = getelementptr i8, ptr %i.et, i64 -40
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds i8, ptr %0, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !95 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 417
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !97, !range !91, !noundef !92
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %.noexc.i46, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 385
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !97, !range !91, !noundef !92
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %.noexc.i46, label %bb.v

.noexc.i46:                                       ; preds = %bb.r, %bb.q
  %i.ff = call noundef ptr @_ZN12colvarmodule4mainEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.fg, ptr %5, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 37, ptr %i.a, align 8, !tbaa !100
  %i.fh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.t   ; 3 uses

.noexc47:                                         ; preds = %.noexc.i46
  store ptr %i.fh, ptr %5, align 8, !tbaa !101
  %i.fi = load i64, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.fh, ptr noundef nonnull align 1 dereferenceable(37) @.str.131, i64 37, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !103
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  store i8 0, ptr %i.fk, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.fl = invoke noundef i32 @_ZN12colvarmodule12cite_featureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(632) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.s:                                             ; preds = %.noexc47
  %i.fm = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fg
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.s
  %i.fo = load i64, ptr %i.fg, align 8, !tbaa !102
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.v

bb.t:                                             ; preds = %.noexc.i46
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.u:                                             ; preds = %.noexc47
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fg
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.u
  %i.fu = load i64, ptr %i.fg, align 8, !tbaa !102
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.t
  %.pn27 = phi { ptr, i32 } [ %i.fq, %bb.t ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.fr, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.324 = phi i32 [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.223, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ 0, %bb.r ]
  ret i32 %.324

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  resume { ptr, i32 } %.pn29.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN13colvarbias_ti10init_gridsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::shared_ptr.49", align 16 ; 4 uses
  %3 = alloca %"class.std::shared_ptr.103", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 353
  %i.j = load i8, ptr %i.i, align 1, !tbaa !97, !range !91, !noundef !92
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !172
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.o = getelementptr i8, ptr %i.c, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !152 ; 4 uses
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !145 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 4 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 3 uses
  %i.ag = icmp ugt i64 %i.y, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = sub nuw nsw i64 %i.y, %i.af
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ah)
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !152
  %.pre40 = load ptr, ptr %i.n, align 8, !tbaa !145
  %.pre41 = ptrtoint ptr %.pre40 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp ult i64 %i.y, %i.af
  br i1 %i.ai, label %bb.f, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.aj
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !152
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre41, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ %i.ad, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ak = phi ptr [ %.pre, %bb.d ], [ %i.aa, %bb.e ], [ %i.aa, %bb.f ], [ %i.aj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %.pre-phi
  %i.an = ashr exact i64 %i.am, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 -1, ptr %i.b, align 4, !tbaa !132
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !50
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !112 ; 3 uses
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 168               ; 3 uses
  %i.bi = icmp ugt i64 %i.ba, %i.bh
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bj = sub nuw nsw i64 %i.ba, %i.bh
  call void @_ZNSt6vectorI11colvarvalueSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.bj)
  br label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bk = icmp ult i64 %i.ba, %i.bh
  br i1 %i.bk, label %bb.i, label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw [168 x i8], ptr %i.bd, i64 %i.ba ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.bc, %i.bl
  br i1 %.not.i.i19, label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.bl, ptr noundef %i.bc)
          to label %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i unwind label %bb.k

_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !112
  br label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #30
  unreachable

_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !50
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 152
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %.not39 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not39, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bx = call noalias noundef nonnull dereferenceable(704) ptr @_Znwm(i64 noundef 704) #31 ; 3 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !50
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.cc, ptr %1, align 8, !tbaa !99
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !101 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !103 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !100
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ch, ptr %1, align 8, !tbaa !101
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !102
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %._crit_edge
  %i.cj = phi ptr [ %i.ch, %.noexc ], [ %i.cc, %._crit_edge ] ; 2 uses
  switch i64 %i.cf, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !102
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !102
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %bb.n

.lr.ph:                                           ; preds = %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit, %.lr.ph
  %i.cl = phi ptr [ %i.df, %.lr.ph ], [ %i.bv, %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit ]
  %.01538 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit ] ; 5 uses
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.cn = getelementptr inbounds nuw [168 x i8], ptr %i.cm, i64 %.01538
  %i.co = shl i64 %.01538, 32
end_hunk_1
