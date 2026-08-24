Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/explicit_seed_seq_test?download=true
inline.NumInlined: 2080
inline.NumDeleted: 878
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK7testing8internal22ElementsAreMatcherImplIRA4_KmE15MatchAndExplainES4_PNS_19MatchResultListenerE:bb.a
  %.not64 = icmp eq i64 %.038.lcssa, %i.eo
  br i1 %.not64, label %bb.ak, label %bb.y

bb.x:                                             ; preds = %bb.aa
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal11NativeArrayImED2Ev.exit149

._crit_edge.thread:                               ; preds = %bb.w
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !460 ; 2 uses
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !457 ; 2 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %.not64274 = icmp eq i64 %i.eu, 96
  br i1 %.not64274, label %.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread, %.critedge
  %.038.lcssa277 = phi i64 [ 4, %._crit_edge.thread ], [ %.038.lcssa, %.critedge ] ; 3 uses
  %i.ev = icmp ne i64 %.038.lcssa277, 0
  %or.cond = and i1 %i.c, %i.ev
  br i1 %or.cond, label %bb.z, label %_ZN7testing8internal11NativeArrayImED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.not.i90 = icmp eq ptr %i.ew, null
  br i1 %.not.i90, label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.96, i64 noundef 10)
          to label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit unwind label %bb.x ; 0 uses

_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !585
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc94 unwind label %bb.ai

.noexc94:                                         ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.ey = load ptr, ptr %5, align 8, !tbaa !47, !noalias !585
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i64 noundef %.038.lcssa277)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i92 unwind label %bb.ac, !noalias !585 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i92: ; preds = %.noexc94
  %i.fb = icmp eq i64 %.038.lcssa277, 1           ; 2 uses
  %i.fc = select i1 %i.fb, ptr @.str.90, ptr @.str.91
  %i.fd = load ptr, ptr %5, align 8, !tbaa !47, !noalias !585
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = select i1 %i.fb, i64 8, i64 9
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull %i.fc, i64 noundef %i.ff)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.ad, !noalias !585 ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i92
  invoke void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.fh = load ptr, ptr %5, align 8, !tbaa !47, !noalias !585 ; 3 uses
  %.not.i.i.i93 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i93, label %bb.af, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.ab
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(128) %i.fh) #21, !inline_history !557
  br label %bb.af

bb.ac:                                            ; preds = %.noexc94
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i92
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.fm, %bb.ad ], [ %i.fl, %bb.ac ]
  %i.fn = load ptr, ptr %5, align 8, !tbaa !47, !noalias !585 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.ae
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !9
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(128) %i.fn) #21, !inline_history !557
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !585
  br label %.body95

bb.af:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !585
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.not.i97 = icmp eq ptr %i.fr, null
  br i1 %.not.i97, label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc98 unwind label %bb.aj

.noexc98:                                         ; preds = %bb.ag
  %i.fs = load ptr, ptr %4, align 8, !tbaa !43
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !71
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef %i.fs, i64 noundef %i.fu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ah ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc98
  %i.fw = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZN7testinglsERSoRKNS_7MessageE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !27
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #22
  br label %_ZN7testinglsERSoRKNS_7MessageE.exit.i

bb.ah:                                            ; preds = %.noexc98
  %i.gb = landingpad { ptr, i32 }
          cleanup
  %i.gc = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ah
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !27
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body99

_ZN7testinglsERSoRKNS_7MessageE.exit.i:           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit: ; preds = %_ZN7testinglsERSoRKNS_7MessageE.exit.i, %bb.af
  %i.gh = load ptr, ptr %12, align 8, !tbaa !47   ; 3 uses
  %.not.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !9
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %i.gh) #21, !inline_history !69
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %_ZN7testing8internal11NativeArrayImED2Ev.exit

bb.ai:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aj:                                            ; preds = %bb.ag
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body99

.body99:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.aj
  %eh.lpad-body100 = phi { ptr, i32 } [ %i.gm, %bb.aj ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ] ; 2 uses
  %i.gn = load ptr, ptr %12, align 8, !tbaa !47   ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i101, label %.body95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %.body99
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #21, !inline_history !69
  br label %.body95

.body95:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, %.body99, %bb.ai, %_ZN7testing7MessageD2Ev.exit6.i
  %.pn72 = phi { ptr, i32 } [ %.pn.i, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.gl, %bb.ai ], [ %eh.lpad-body100, %.body99 ], [ %eh.lpad-body100, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %_ZN7testing8internal11NativeArrayImED2Ev.exit149

bb.ak:                                            ; preds = %.critedge
  br i1 %.not59.not, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %i.c, label %.preheader, label %_ZN7testing8internal11NativeArrayImED2Ev.exit

.preheader:                                       ; preds = %bb.al
  %i.gr = shl i64 %storemerge205, 3
  %scevgep = getelementptr nuw i8, ptr %1, i64 %i.gr
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.not.i104 = icmp eq ptr %i.gs, null
  br i1 %.not.i104, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.am

bb.am:                                            ; preds = %.preheader
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.81, i64 noundef 15)
          to label %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %.noexc124, %bb.aw, %bb.av, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.ap, %bb.ao, %bb.am
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal11NativeArrayImED2Ev.exit149

_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit: ; preds = %bb.am
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %.not.i106 = icmp eq ptr %.pr, null
  br i1 %.not.i106, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %storemerge205)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %bb.an ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.ao
  %.pr174 = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.not.i108 = icmp eq ptr %.pr174, null
  br i1 %.not.i108, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr174, ptr noundef nonnull @.str.97, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit unwind label %bb.an ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit: ; preds = %.preheader, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %scevgep)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.not.i110 = icmp eq ptr %i.gx, null
  br i1 %.not.i110, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = load ptr, ptr %13, align 8, !tbaa !43
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef %i.gy, i64 noundef %i.ha)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.ar
  %.pr176 = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.not.i112 = icmp eq ptr %.pr176, null
  br i1 %.not.i112, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114, label %bb.as

bb.as:                                            ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr176, ptr noundef nonnull @.str.98, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114 unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114: ; preds = %bb.aq, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.as
  %i.hd = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !27
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.hi = load ptr, ptr %i.d, align 8, !tbaa !457
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %storemerge205 ; 2 uses
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !473
  %i.hn = icmp ne ptr %i.hm, null
  %i.ho = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.hn)
          to label %.noexc119 unwind label %bb.an

.noexc119:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  br i1 %i.ho, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.noexc119
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef 252)
          to label %.noexc120 unwind label %bb.an

.noexc120:                                        ; preds = %bb.at
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i118 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i118: ; preds = %.noexc120
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.av

bb.au:                                            ; preds = %.noexc120
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN7testing8internal11NativeArrayImED2Ev.exit149

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i118, %.noexc119
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !473
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !484
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef %i.hk, i1 noundef zeroext true)
          to label %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit unwind label %bb.an, !inline_history !562

_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit: ; preds = %bb.av
  %i.hu = load ptr, ptr %9, align 8, !tbaa !564
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %storemerge205 ; 2 uses
  %i.hw = load ptr, ptr %i.a, align 8, !tbaa !152 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !71
  %i.hz = icmp eq i64 %i.hy, 0
  %i.ia = icmp eq ptr %i.hw, null
  %or.cond.not.i = or i1 %i.ia, %i.hz
  br i1 %or.cond.not.i, label %_ZN7testing8internal11NativeArrayImED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.68, i64 noundef 2)
          to label %.noexc124 unwind label %bb.an ; 0 uses

.noexc124:                                        ; preds = %bb.aw
  %i.ic = load ptr, ptr %i.hv, align 8, !tbaa !43
  %i.id = load i64, ptr %i.hx, align 8, !tbaa !71
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef %i.ic, i64 noundef %i.id)
          to label %_ZN7testing8internal11NativeArrayImED2Ev.exit unwind label %bb.an ; 0 uses

bb.ax:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.ay:                                            ; preds = %bb.as, %bb.ar
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ay
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !27
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.ax
  %.pn68 = phi { ptr, i32 } [ %i.if, %bb.ax ], [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %i.ig, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZN7testing8internal11NativeArrayImED2Ev.exit149

.thread:                                          ; preds = %._crit_edge.thread, %bb.ak
  %i.im = phi ptr [ %i.ej, %bb.ak ], [ %i.eq, %._crit_edge.thread ]
  %i.in = phi ptr [ %i.ek, %bb.ak ], [ %i.er, %._crit_edge.thread ]
  %.not66211 = icmp ne ptr %i.im, %i.in
  %or.cond295.not = and i1 %.not66211, %i.c
  br i1 %or.cond295.not, label %.lr.ph214.preheader, label %_ZN7testing8internal11NativeArrayImED2Ev.exit

.lr.ph214.preheader:                              ; preds = %.thread
  %.pre = load ptr, ptr %9, align 8, !tbaa !564
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142
  %.0213 = phi i1 [ %.1, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142 ], [ false, %.lr.ph214.preheader ] ; 2 uses
  %storemerge65212 = phi i64 [ %i.ja, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142 ], [ 0, %.lr.ph214.preheader ] ; 3 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %storemerge65212 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !71
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142, label %bb.az

bb.az:                                            ; preds = %.lr.ph214
  %.pr178.pre223 = load ptr, ptr %i.a, align 8, !tbaa !152 ; 3 uses
  br i1 %.0213, label %bb.ba, label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.ba:                                            ; preds = %bb.az
  %.not.i129 = icmp eq ptr %.pr178.pre223, null
  br i1 %.not.i129, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit142, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr178.pre223, ptr noundef nonnull @.str.99, i64 noundef 6)
          to label %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge unwind label %bb.bc ; 0 uses

._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.bb
  %.pr178.pre = load ptr, ptr %i.a, align 8, !tbaa !152
  br label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.bc:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal11NativeArrayImED2Ev.exit149

_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge, %bb.az
  %.pr178 = phi ptr [ %.pr178.pre, %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge ], [ %.pr178.pre223, %bb.az ] ; 2 uses
  %.not.i131 = icmp eq ptr %.pr178, null
end_hunk_0
