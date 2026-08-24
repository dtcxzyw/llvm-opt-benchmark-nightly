Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/layout_test?download=true
inline.NumInlined: 13331
inline.NumDeleted: 3786
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK7testing8internal22ElementsAreMatcherImplIRKSt5arrayImLm2EEE15MatchAndExplainES5_PNS_19MatchResultListenerE:bb.a
  %.not67 = icmp eq i64 %.042.lcssa, %i.eo
  br i1 %.not67, label %bb.ak, label %bb.x

._crit_edge.thread:                               ; preds = %bb.w
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !223 ; 2 uses
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !206 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %.not67263 = icmp eq i64 %i.et, 48
  br i1 %.not67263, label %.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread, %.critedge
  %.042.lcssa266 = phi i64 [ 2, %._crit_edge.thread ], [ %.042.lcssa, %.critedge ] ; 3 uses
  %i.eu = icmp ne i64 %.042.lcssa266, 0
  %or.cond = and i1 %i.c, %i.eu
  br i1 %or.cond, label %bb.y, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

bb.y:                                             ; preds = %bb.x
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i92 = icmp eq ptr %i.ev, null
  br i1 %.not.i92, label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.210, i64 noundef 10)
          to label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit unwind label %bb.ah ; 0 uses

_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !381
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc96 unwind label %bb.ai

.noexc96:                                         ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.ex = load ptr, ptr %5, align 8, !tbaa !39, !noalias !381
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i64 noundef %.042.lcssa266)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i94 unwind label %bb.ab, !noalias !381 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i94: ; preds = %.noexc96
  %i.fa = icmp eq i64 %.042.lcssa266, 1           ; 2 uses
  %i.fb = select i1 %i.fa, ptr @.str.204, ptr @.str.205
  %i.fc = load ptr, ptr %5, align 8, !tbaa !39, !noalias !381
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = select i1 %i.fa, i64 8, i64 9
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull %i.fb, i64 noundef %i.fe)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.ac, !noalias !381 ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i94
  invoke void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.fg = load ptr, ptr %5, align 8, !tbaa !39, !noalias !381 ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i95, label %bb.ae, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.aa
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(128) %i.fg) #23, !inline_history !362
  br label %bb.ae

bb.ab:                                            ; preds = %.noexc96
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i94
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %i.fl, %bb.ac ], [ %i.fk, %bb.ab ]
  %i.fm = load ptr, ptr %5, align 8, !tbaa !39, !noalias !381 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.ad
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #23, !inline_history !362
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !381
  br label %.body97

bb.ae:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !381
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i99 = icmp eq ptr %i.fq, null
  br i1 %.not.i99, label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc100 unwind label %bb.aj

.noexc100:                                        ; preds = %bb.af
  %i.fr = load ptr, ptr %4, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !52
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef %i.fr, i64 noundef %i.ft)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ag ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc100
  %i.fv = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZN7testinglsERSoRKNS_7MessageE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !42
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #25
  br label %_ZN7testinglsERSoRKNS_7MessageE.exit.i

bb.ag:                                            ; preds = %.noexc100
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ag
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !42
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body101

_ZN7testinglsERSoRKNS_7MessageE.exit.i:           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit: ; preds = %_ZN7testinglsERSoRKNS_7MessageE.exit.i, %bb.ae
  %i.gg = load ptr, ptr %12, align 8, !tbaa !39   ; 3 uses
  %.not.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !9
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #23, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

bb.ah:                                            ; preds = %bb.z
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.ai:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body97

bb.aj:                                            ; preds = %bb.af
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body101

.body101:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.aj
  %eh.lpad-body102 = phi { ptr, i32 } [ %i.gm, %bb.aj ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ] ; 2 uses
  %i.gn = load ptr, ptr %12, align 8, !tbaa !39   ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i103, label %.body97, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %.body101
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #23, !inline_history !41
  br label %.body97

.body97:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %.body101, %bb.ai, %_ZN7testing7MessageD2Ev.exit6.i
  %.pn75 = phi { ptr, i32 } [ %.pn.i, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.gl, %bb.ai ], [ %eh.lpad-body102, %.body101 ], [ %eh.lpad-body102, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body89

bb.ak:                                            ; preds = %.critedge
  br i1 %.not62.not, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %i.c, label %.preheader, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

.preheader:                                       ; preds = %bb.al
  %i.gr = shl i64 %storemerge194, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.gr
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i106 = icmp eq ptr %i.gs, null
  br i1 %.not.i106, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.am

bb.am:                                            ; preds = %.preheader
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.211, i64 noundef 15)
          to label %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit unwind label %bb.aw ; 0 uses

_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit: ; preds = %bb.am
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i108 = icmp eq ptr %.pr, null
  br i1 %.not.i108, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %storemerge194)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %bb.aw ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.an
  %.pr163 = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i110 = icmp eq ptr %.pr163, null
  br i1 %.not.i110, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr163, ptr noundef nonnull @.str.212, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit unwind label %bb.aw ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit: ; preds = %.preheader, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %scevgep)
          to label %bb.ap unwind label %bb.ax

bb.ap:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i112 = icmp eq ptr %i.gw, null
  br i1 %.not.i112, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gx = load ptr, ptr %13, align 8, !tbaa !35
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !52
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gx, i64 noundef %i.gz)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.aq
  %.pr165 = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i114 = icmp eq ptr %.pr165, null
  br i1 %.not.i114, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116, label %bb.ar

bb.ar:                                            ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr165, ptr noundef nonnull @.str.213, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116 unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116: ; preds = %bb.ap, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.ar
  %i.hc = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !42
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.hh = load ptr, ptr %i.d, align 8, !tbaa !206
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %storemerge194 ; 2 uses
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !220
  %i.hm = icmp ne ptr %i.hl, null
  %i.hn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.hm)
          to label %.noexc121 unwind label %bb.aw

.noexc121:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  br i1 %i.hn, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.192, i32 noundef 252)
          to label %.noexc122 unwind label %bb.aw

.noexc122:                                        ; preds = %bb.as
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.193, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i120 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i120: ; preds = %.noexc122
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.au

bb.at:                                            ; preds = %.noexc122
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body89

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i120, %.noexc121
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !220
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !245
  invoke void %i.hs(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef %i.hj, i1 noundef zeroext true)
          to label %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit unwind label %bb.aw, !inline_history !271

_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit: ; preds = %bb.au
  %i.ht = load ptr, ptr %9, align 8, !tbaa !273
  %i.hu = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %storemerge194 ; 2 uses
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !52
  %i.hy = icmp eq i64 %i.hx, 0
  %i.hz = icmp eq ptr %i.hv, null
  %or.cond.not.i = or i1 %i.hz, %i.hy
  br i1 %or.cond.not.i, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %bb.av

bb.av:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull @.str.217, i64 noundef 2)
          to label %.noexc126 unwind label %bb.aw ; 0 uses

.noexc126:                                        ; preds = %bb.av
  %i.ib = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !52
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef %i.ib, i64 noundef %i.ic)
          to label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %.noexc126, %bb.av, %bb.au, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.ao, %bb.an, %bb.am
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.ax:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.ay:                                            ; preds = %bb.ar, %bb.aq
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.ay
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !42
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.ax
  %.pn71 = phi { ptr, i32 } [ %i.if, %bb.ax ], [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %i.ig, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.body89

.thread:                                          ; preds = %._crit_edge.thread, %bb.ak
  %i.im = phi ptr [ %i.ej, %bb.ak ], [ %i.ep, %._crit_edge.thread ]
  %i.in = phi ptr [ %i.ek, %bb.ak ], [ %i.eq, %._crit_edge.thread ]
  %.not69200 = icmp ne ptr %i.im, %i.in
  %or.cond284.not = and i1 %.not69200, %i.c
  br i1 %or.cond284.not, label %.lr.ph203.preheader, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

.lr.ph203.preheader:                              ; preds = %.thread
  %.pre = load ptr, ptr %9, align 8, !tbaa !273
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144
  %.0202 = phi i1 [ %.1, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144 ], [ false, %.lr.ph203.preheader ] ; 2 uses
  %storemerge68201 = phi i64 [ %i.ja, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144 ], [ 0, %.lr.ph203.preheader ] ; 3 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %storemerge68201 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !52
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144, label %bb.az

bb.az:                                            ; preds = %.lr.ph203
  %.pr167.pre212 = load ptr, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  br i1 %.0202, label %bb.ba, label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.ba:                                            ; preds = %bb.az
  %.not.i131 = icmp eq ptr %.pr167.pre212, null
  br i1 %.not.i131, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr167.pre212, ptr noundef nonnull @.str.214, i64 noundef 6)
          to label %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge unwind label %bb.bc ; 0 uses

._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.bb
  %.pr167.pre = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.bc:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body89

_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge, %bb.az
  %.pr167 = phi ptr [ %.pr167.pre, %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge ], [ %.pr167.pre212, %bb.az ] ; 2 uses
  %.not.i133 = icmp eq ptr %.pr167, null
end_hunk_0
begin_hunk_1_@_ZNK7testing8internal22ElementsAreMatcherImplIRKSt5arrayImLm3EEE15MatchAndExplainES5_PNS_19MatchResultListenerE:bb.a
  %.not67 = icmp eq i64 %.042.lcssa, %i.eo
  br i1 %.not67, label %bb.ak, label %bb.x

._crit_edge.thread:                               ; preds = %bb.w
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !223 ; 2 uses
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !206 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %.not67263 = icmp eq i64 %i.et, 72
  br i1 %.not67263, label %.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread, %.critedge
  %.042.lcssa266 = phi i64 [ 3, %._crit_edge.thread ], [ %.042.lcssa, %.critedge ] ; 3 uses
  %i.eu = icmp ne i64 %.042.lcssa266, 0
  %or.cond = and i1 %i.c, %i.eu
  br i1 %or.cond, label %bb.y, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

bb.y:                                             ; preds = %bb.x
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i92 = icmp eq ptr %i.ev, null
  br i1 %.not.i92, label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.210, i64 noundef 10)
          to label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit unwind label %bb.ah ; 0 uses

_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !471
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc96 unwind label %bb.ai

.noexc96:                                         ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.ex = load ptr, ptr %5, align 8, !tbaa !39, !noalias !471
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i64 noundef %.042.lcssa266)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i94 unwind label %bb.ab, !noalias !471 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i94: ; preds = %.noexc96
  %i.fa = icmp eq i64 %.042.lcssa266, 1           ; 2 uses
  %i.fb = select i1 %i.fa, ptr @.str.204, ptr @.str.205
  %i.fc = load ptr, ptr %5, align 8, !tbaa !39, !noalias !471
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = select i1 %i.fa, i64 8, i64 9
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull %i.fb, i64 noundef %i.fe)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.ac, !noalias !471 ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i94
  invoke void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.fg = load ptr, ptr %5, align 8, !tbaa !39, !noalias !471 ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i95, label %bb.ae, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.aa
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(128) %i.fg) #23, !inline_history !453
  br label %bb.ae

bb.ab:                                            ; preds = %.noexc96
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i94
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %i.fl, %bb.ac ], [ %i.fk, %bb.ab ]
  %i.fm = load ptr, ptr %5, align 8, !tbaa !39, !noalias !471 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.ad
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #23, !inline_history !453
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !471
  br label %.body97

bb.ae:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !471
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i99 = icmp eq ptr %i.fq, null
  br i1 %.not.i99, label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc100 unwind label %bb.aj

.noexc100:                                        ; preds = %bb.af
  %i.fr = load ptr, ptr %4, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !52
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef %i.fr, i64 noundef %i.ft)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ag ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc100
  %i.fv = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZN7testinglsERSoRKNS_7MessageE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !42
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #25
  br label %_ZN7testinglsERSoRKNS_7MessageE.exit.i

bb.ag:                                            ; preds = %.noexc100
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ag
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !42
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body101

_ZN7testinglsERSoRKNS_7MessageE.exit.i:           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit: ; preds = %_ZN7testinglsERSoRKNS_7MessageE.exit.i, %bb.ae
  %i.gg = load ptr, ptr %12, align 8, !tbaa !39   ; 3 uses
  %.not.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !9
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #23, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

bb.ah:                                            ; preds = %bb.z
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.ai:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body97

bb.aj:                                            ; preds = %bb.af
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body101

.body101:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.aj
  %eh.lpad-body102 = phi { ptr, i32 } [ %i.gm, %bb.aj ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ] ; 2 uses
  %i.gn = load ptr, ptr %12, align 8, !tbaa !39   ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i103, label %.body97, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %.body101
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #23, !inline_history !41
  br label %.body97

.body97:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %.body101, %bb.ai, %_ZN7testing7MessageD2Ev.exit6.i
  %.pn75 = phi { ptr, i32 } [ %.pn.i, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.gl, %bb.ai ], [ %eh.lpad-body102, %.body101 ], [ %eh.lpad-body102, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body89

bb.ak:                                            ; preds = %.critedge
  br i1 %.not62.not, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %i.c, label %.preheader, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

.preheader:                                       ; preds = %bb.al
  %i.gr = shl i64 %storemerge194, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.gr
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i106 = icmp eq ptr %i.gs, null
  br i1 %.not.i106, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.am

bb.am:                                            ; preds = %.preheader
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.211, i64 noundef 15)
          to label %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit unwind label %bb.aw ; 0 uses

_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit: ; preds = %bb.am
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i108 = icmp eq ptr %.pr, null
  br i1 %.not.i108, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %storemerge194)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %bb.aw ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.an
  %.pr163 = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i110 = icmp eq ptr %.pr163, null
  br i1 %.not.i110, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr163, ptr noundef nonnull @.str.212, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit unwind label %bb.aw ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit: ; preds = %.preheader, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %scevgep)
          to label %bb.ap unwind label %bb.ax

bb.ap:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i112 = icmp eq ptr %i.gw, null
  br i1 %.not.i112, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gx = load ptr, ptr %13, align 8, !tbaa !35
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !52
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gx, i64 noundef %i.gz)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.aq
  %.pr165 = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %.not.i114 = icmp eq ptr %.pr165, null
  br i1 %.not.i114, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116, label %bb.ar

bb.ar:                                            ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr165, ptr noundef nonnull @.str.213, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116 unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116: ; preds = %bb.ap, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.ar
  %i.hc = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !42
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.hh = load ptr, ptr %i.d, align 8, !tbaa !206
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %storemerge194 ; 2 uses
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !220
  %i.hm = icmp ne ptr %i.hl, null
  %i.hn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.hm)
          to label %.noexc121 unwind label %bb.aw

.noexc121:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  br i1 %i.hn, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.192, i32 noundef 252)
          to label %.noexc122 unwind label %bb.aw

.noexc122:                                        ; preds = %bb.as
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.193, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i120 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i120: ; preds = %.noexc122
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.au

bb.at:                                            ; preds = %.noexc122
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body89

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i120, %.noexc121
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !220
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !245
  invoke void %i.hs(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef %i.hj, i1 noundef zeroext true)
          to label %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit unwind label %bb.aw, !inline_history !271

_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit: ; preds = %bb.au
  %i.ht = load ptr, ptr %9, align 8, !tbaa !273
  %i.hu = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %storemerge194 ; 2 uses
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !52
  %i.hy = icmp eq i64 %i.hx, 0
  %i.hz = icmp eq ptr %i.hv, null
  %or.cond.not.i = or i1 %i.hz, %i.hy
  br i1 %or.cond.not.i, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %bb.av

bb.av:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull @.str.217, i64 noundef 2)
          to label %.noexc126 unwind label %bb.aw ; 0 uses

.noexc126:                                        ; preds = %bb.av
  %i.ib = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !52
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef %i.ib, i64 noundef %i.ic)
          to label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %.noexc126, %bb.av, %bb.au, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.ao, %bb.an, %bb.am
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.ax:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.ay:                                            ; preds = %bb.ar, %bb.aq
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.ay
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !42
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.ax
  %.pn71 = phi { ptr, i32 } [ %i.if, %bb.ax ], [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %i.ig, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.body89

.thread:                                          ; preds = %._crit_edge.thread, %bb.ak
  %i.im = phi ptr [ %i.ej, %bb.ak ], [ %i.ep, %._crit_edge.thread ]
  %i.in = phi ptr [ %i.ek, %bb.ak ], [ %i.eq, %._crit_edge.thread ]
  %.not69200 = icmp ne ptr %i.im, %i.in
  %or.cond284.not = and i1 %.not69200, %i.c
  br i1 %or.cond284.not, label %.lr.ph203.preheader, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

.lr.ph203.preheader:                              ; preds = %.thread
  %.pre = load ptr, ptr %9, align 8, !tbaa !273
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144
  %.0202 = phi i1 [ %.1, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144 ], [ false, %.lr.ph203.preheader ] ; 2 uses
  %storemerge68201 = phi i64 [ %i.ja, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144 ], [ 0, %.lr.ph203.preheader ] ; 3 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %storemerge68201 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !52
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144, label %bb.az

bb.az:                                            ; preds = %.lr.ph203
  %.pr167.pre212 = load ptr, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  br i1 %.0202, label %bb.ba, label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.ba:                                            ; preds = %bb.az
  %.not.i131 = icmp eq ptr %.pr167.pre212, null
  br i1 %.not.i131, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit144, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr167.pre212, ptr noundef nonnull @.str.214, i64 noundef 6)
          to label %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge unwind label %bb.bc ; 0 uses

._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.bb
  %.pr167.pre = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.bc:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body89

_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge, %bb.az
  %.pr167 = phi ptr [ %.pr167.pre, %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge ], [ %.pr167.pre212, %bb.az ] ; 2 uses
  %.not.i133 = icmp eq ptr %.pr167, null
end_hunk_1
