inline.NumInlined: 2916
inline.NumDeleted: 1223
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK7testing8internal22ElementsAreMatcherImplIRA3_KbE15MatchAndExplainES4_PNS_19MatchResultListenerE:bb.a

bb.x:                                             ; preds = %bb.aa
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal11NativeArrayIbED2Ev.exit149

._crit_edge:                                      ; preds = %bb.b, %bb.v, %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !478
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !475
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %.not64 = icmp eq i64 %i.ei, 72
  br i1 %.not64, label %bb.ak, label %bb.y

._crit_edge.thread:                               ; preds = %bb.w
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !478
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !475
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %.not64273 = icmp eq i64 %i.en, 72
  br i1 %.not64273, label %.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread, %._crit_edge
  br i1 %.not265, label %_ZN7testing8internal11NativeArrayIbED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %.not.i90 = icmp eq ptr %i.eo, null
  br i1 %.not.i90, label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull @.str.67, i64 noundef 10)
          to label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit unwind label %bb.x ; 0 uses

_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !584
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc94 unwind label %bb.ai

.noexc94:                                         ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.eq = load ptr, ptr %5, align 8, !tbaa !44, !noalias !584
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.er, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i92 unwind label %bb.ac, !noalias !584 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i92: ; preds = %.noexc94
  %i.et = load ptr, ptr %5, align 8, !tbaa !44, !noalias !584
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.62, i64 noundef 9)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.ad, !noalias !584 ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i92
  invoke void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.ew = load ptr, ptr %5, align 8, !tbaa !44, !noalias !584 ; 3 uses
  %.not.i.i.i93 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i93, label %bb.af, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.ab
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !9
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #20, !inline_history !562
  br label %bb.af

bb.ac:                                            ; preds = %.noexc94
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i92
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.fb, %bb.ad ], [ %i.fa, %bb.ac ]
  %i.fc = load ptr, ptr %5, align 8, !tbaa !44, !noalias !584 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.ae
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #20, !inline_history !562
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !584
  br label %.body95

bb.af:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !584
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %.not.i97 = icmp eq ptr %i.fg, null
  br i1 %.not.i97, label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc98 unwind label %bb.aj

.noexc98:                                         ; preds = %bb.ag
  %i.fh = load ptr, ptr %4, align 8, !tbaa !40
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !106
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ah ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc98
  %i.fl = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZN7testinglsERSoRKNS_7MessageE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !47
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #22
  br label %_ZN7testinglsERSoRKNS_7MessageE.exit.i

bb.ah:                                            ; preds = %.noexc98
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ah
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !47
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body99

_ZN7testinglsERSoRKNS_7MessageE.exit.i:           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit: ; preds = %_ZN7testinglsERSoRKNS_7MessageE.exit.i, %bb.af
  %i.fw = load ptr, ptr %12, align 8, !tbaa !44   ; 3 uses
  %.not.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(128) %i.fw) #20, !inline_history !46
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %_ZN7testing8internal11NativeArrayIbED2Ev.exit

bb.ai:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aj:                                            ; preds = %bb.ag
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body99

.body99:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.aj
  %eh.lpad-body100 = phi { ptr, i32 } [ %i.gb, %bb.aj ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ] ; 2 uses
  %i.gc = load ptr, ptr %12, align 8, !tbaa !44   ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i101, label %.body95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %.body99
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !9
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(128) %i.gc) #20, !inline_history !46
  br label %.body95

.body95:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, %.body99, %bb.ai, %_ZN7testing7MessageD2Ev.exit6.i
  %.pn72 = phi { ptr, i32 } [ %.pn.i, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.ga, %bb.ai ], [ %eh.lpad-body100, %.body99 ], [ %eh.lpad-body100, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %_ZN7testing8internal11NativeArrayIbED2Ev.exit149

bb.ak:                                            ; preds = %._crit_edge
  br i1 %.not59.not, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not265, label %_ZN7testing8internal11NativeArrayIbED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.al
  %scevgep = getelementptr nuw i8, ptr %1, i64 %.043.idx206
  %i.gg = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %.not.i104 = icmp eq ptr %i.gg, null
  br i1 %.not.i104, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.am

bb.am:                                            ; preds = %.preheader
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, ptr noundef nonnull @.str.68, i64 noundef 15)
          to label %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %.noexc124, %bb.aw, %bb.av, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.ap, %bb.ao, %bb.am
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal11NativeArrayIbED2Ev.exit149

_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit: ; preds = %bb.am
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not.i106 = icmp eq ptr %.pr, null
  br i1 %.not.i106, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %.043.idx206)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %bb.an ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.ao
  %.pr174 = load ptr, ptr %i.a, align 8, !tbaa !87 ; 2 uses
  %.not.i108 = icmp eq ptr %.pr174, null
  br i1 %.not.i108, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr174, ptr noundef nonnull @.str.69, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit unwind label %bb.an ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit: ; preds = %.preheader, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN7testing13PrintToStringIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 1 dereferenceable(1) %scevgep)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %.not.i110 = icmp eq ptr %i.gl, null
  br i1 %.not.i110, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gm = load ptr, ptr %13, align 8, !tbaa !40
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !106
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef %i.gm, i64 noundef %i.go)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.ar
  %.pr176 = load ptr, ptr %i.a, align 8, !tbaa !87 ; 2 uses
  %.not.i112 = icmp eq ptr %.pr176, null
  br i1 %.not.i112, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114, label %bb.as

bb.as:                                            ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr176, ptr noundef nonnull @.str.70, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114 unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114: ; preds = %bb.aq, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.as
  %i.gr = load ptr, ptr %13, align 8, !tbaa !40   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !47
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.gw = load ptr, ptr %i.c, align 8, !tbaa !475
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %.043.idx206 ; 2 uses
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !491
  %i.hb = icmp ne ptr %i.ha, null
  %i.hc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.hb)
          to label %.noexc119 unwind label %bb.an

.noexc119:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  br i1 %i.hc, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.noexc119
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 252)
          to label %.noexc120 unwind label %bb.an

.noexc120:                                        ; preds = %bb.at
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.29, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i118 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i118: ; preds = %.noexc120
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.av

bb.au:                                            ; preds = %.noexc120
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN7testing8internal11NativeArrayIbED2Ev.exit149

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i118, %.noexc119
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !491
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !502
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef %i.gy, i1 noundef zeroext true)
          to label %_ZNK7testing8internal11MatcherBaseIRKbE18DescribeNegationToEPSo.exit unwind label %bb.an, !inline_history !567

_ZNK7testing8internal11MatcherBaseIRKbE18DescribeNegationToEPSo.exit: ; preds = %bb.av
  %i.hi = load ptr, ptr %9, align 8, !tbaa !266
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %i.hi, i64 %.043.idx206 ; 2 uses
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !87  ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !106
  %i.hn = icmp eq i64 %i.hm, 0
  %i.ho = icmp eq ptr %i.hk, null
  %or.cond.not.i = or i1 %i.ho, %i.hn
  br i1 %or.cond.not.i, label %_ZN7testing8internal11NativeArrayIbED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKbE18DescribeNegationToEPSo.exit
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.34, i64 noundef 2)
          to label %.noexc124 unwind label %bb.an ; 0 uses

.noexc124:                                        ; preds = %bb.aw
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !40
  %i.hr = load i64, ptr %i.hl, align 8, !tbaa !106
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef %i.hq, i64 noundef %i.hr)
          to label %_ZN7testing8internal11NativeArrayIbED2Ev.exit unwind label %bb.an ; 0 uses

bb.ax:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.ay:                                            ; preds = %bb.as, %bb.ar
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %13, align 8, !tbaa !40   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ay
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !47
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.ax
  %.pn68 = phi { ptr, i32 } [ %i.ht, %bb.ax ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %i.hu, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %_ZN7testing8internal11NativeArrayIbED2Ev.exit149

.thread:                                          ; preds = %._crit_edge.thread, %bb.ak
  br i1 %.not265, label %_ZN7testing8internal11NativeArrayIbED2Ev.exit, label %.lr.ph214.preheader

.lr.ph214.preheader:                              ; preds = %.thread
  %.pre = load ptr, ptr %9, align 8, !tbaa !266
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142
  %.0213 = phi i1 [ %.1, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142 ], [ false, %.lr.ph214.preheader ] ; 2 uses
  %storemerge65212 = phi i64 [ %i.im, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142 ], [ 0, %.lr.ph214.preheader ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %storemerge65212 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !106
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142, label %bb.az

bb.az:                                            ; preds = %.lr.ph214
  %.pr178.pre223 = load ptr, ptr %i.a, align 8, !tbaa !87 ; 3 uses
  br i1 %.0213, label %bb.ba, label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.ba:                                            ; preds = %bb.az
  %.not.i129 = icmp eq ptr %.pr178.pre223, null
  br i1 %.not.i129, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr178.pre223, ptr noundef nonnull @.str.71, i64 noundef 6)
          to label %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge unwind label %bb.bc ; 0 uses

._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.bb
  %.pr178.pre = load ptr, ptr %i.a, align 8, !tbaa !87
  br label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.bc:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal11NativeArrayIbED2Ev.exit149

_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge, %bb.az
  %.pr178 = phi ptr [ %.pr178.pre, %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge ], [ %.pr178.pre223, %bb.az ] ; 2 uses
  %.not.i131 = icmp eq ptr %.pr178, null
  br i1 %.not.i131, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142, label %bb.bd

bb.bd:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr178, ptr noundef nonnull @.str.68, i64 noundef 15)
end_hunk_0
