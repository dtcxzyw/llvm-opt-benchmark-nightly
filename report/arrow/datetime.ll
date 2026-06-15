inline.NumInlined: 2498
inline.NumDeleted: 992
begin_hunk_0_@_ZNK14arrow_vendored4date9time_zone13get_info_implENSt6chrono10time_pointINS0_7local_tENS2_8durationIlSt5ratioILl1ELl1EEEEEE:bb.a
  %i.fj = load i64, ptr %.sroa.02.0.lcssa.i.i128, align 8, !tbaa !75, !noalias !155
  store i64 %i.fj, ptr %8, align 8, !tbaa !75, !alias.scope !155
  %i.fk = icmp eq ptr %i.fd, %i.fb
  br i1 %i.fk, label %.invoke.i66, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = load i64, ptr %i.fd, align 8, !tbaa !75, !noalias !155
  br label %.invoke.i66

bb.ah:                                            ; preds = %.invoke.i66
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %i.fe, align 8, !tbaa !30, !alias.scope !155 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.ff
  br i1 %i.fo, label %.body73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70

bb.ai:                                            ; preds = %bb.ae
  store i64 -1096193779200, ptr %8, align 8, !tbaa !75, !alias.scope !155
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i128, i64 32 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fb
  br i1 %i.fq, label %.invoke.i66, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !75, !noalias !155
  br label %.invoke.i66

.invoke.i66:                                      ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af
  %.sroa.042.0.sink.i67 = phi i64 [ 971890876800, %bb.af ], [ %i.fl, %bb.ag ], [ %i.fr, %bb.aj ], [ 971890876800, %bb.ai ]
  %.sink.i68 = phi i64 [ -8, %bb.af ], [ -8, %bb.ag ], [ 8, %bb.aj ], [ 8, %bb.ai ]
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.042.0.sink.i67, ptr %i.fs, align 8, !tbaa !75, !alias.scope !155
  %i.ft = getelementptr inbounds i8, ptr %i.fd, i64 %.sink.i68
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !81, !noalias !155 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !75
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !75, !alias.scope !155
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !84, !range !87, !noundef !88
  %spec.select.i69 = zext nneg i8 %i.fy to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %spec.select.i69, ptr %i.fz, align 8, !tbaa !75, !alias.scope !155
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %i.ga)
          to label %_ZNK14arrow_vendored4date9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_6detail10transitionESt6vectorIS5_SaIS5_EEEE.exit75 unwind label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70: ; preds = %bb.ah
  %i.gb = load i64, ptr %i.ff, align 8, !tbaa !31, !alias.scope !155
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.gc) #28
  br label %.body73

_ZNK14arrow_vendored4date9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_6detail10transitionESt6vectorIS5_SaIS5_EEEE.exit75: ; preds = %.invoke.i66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %8, i64 16, i1 false)
  %i.gd = load <2 x i64>, ptr %i.fv, align 8, !tbaa !75
  store <2 x i64> %i.gd, ptr %i.o, align 8, !tbaa !75
  %i.ge = load ptr, ptr %i.p, align 8, !tbaa !30  ; 6 uses
  %i.gf = icmp eq ptr %i.ge, %i.q
  %i.gg = load ptr, ptr %i.fe, align 8, !tbaa !30 ; 6 uses
  %i.gh = icmp eq ptr %i.gg, %i.ff                ; 2 uses
  br i1 %i.gf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNK14arrow_vendored4date9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_6detail10transitionESt6vectorIS5_SaIS5_EEEE.exit75
  br i1 %i.gh, label %bb.ak, label %.thread.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76: ; preds = %_ZNK14arrow_vendored4date9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_6detail10transitionESt6vectorIS5_SaIS5_EEEE.exit75
  br i1 %i.gh, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i77

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %i.gi = load i64, ptr %i.fg, align 8, !tbaa !39 ; 3 uses
  %i.gj = icmp ult i64 %i.gi, 16
  call void @llvm.assume(i1 %i.gj)
  %.not21.i.i79 = icmp eq ptr %8, %i.m
  br i1 %.not21.i.i79, label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit84, label %bb.al, !prof !40

bb.al:                                            ; preds = %bb.ak
  switch i64 %i.gi, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i80
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.gk = load i8, ptr %i.gg, align 1, !tbaa !31
  store i8 %i.gk, ptr %i.ge, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i80

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr align 1 %i.gg, i64 %i.gi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i80: ; preds = %bb.an, %bb.am, %bb.al
  %i.gl = load i64, ptr %i.fg, align 8, !tbaa !39 ; 2 uses
  store i64 %i.gl, ptr %i.r, align 8, !tbaa !39
  %i.gm = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gl
  store i8 0, ptr %i.gn, align 1, !tbaa !31
  %.pre.i.i81 = load ptr, ptr %i.fe, align 8, !tbaa !30
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit84

.thread.i.i83:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  store ptr %i.gg, ptr %i.p, align 8, !tbaa !30
  %i.go = load <2 x i64>, ptr %i.fg, align 8, !tbaa !31
  store <2 x i64> %i.go, ptr %i.r, align 8, !tbaa !31
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76
  %i.gp = load i64, ptr %i.q, align 8, !tbaa !31
  store ptr %i.gg, ptr %i.p, align 8, !tbaa !30
  %i.gq = load <2 x i64>, ptr %i.fg, align 8, !tbaa !31
  store <2 x i64> %i.gq, ptr %i.r, align 8, !tbaa !31
  %.not.i.i78 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i78, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i77
  store ptr %i.ge, ptr %i.fe, align 8, !tbaa !30
  store i64 %i.gp, ptr %i.ff, align 8, !tbaa !31
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit84

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i77, %.thread.i.i83
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !30
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit84

_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit84:  ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i80, %bb.ao, %bb.ap
  %i.gr = phi ptr [ %i.ge, %bb.ao ], [ %i.ff, %bb.ap ], [ %i.gg, %bb.ak ], [ %.pre.i.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i80 ]
  store i64 0, ptr %i.fg, align 8, !tbaa !39
  store i8 0, ptr %i.gr, align 1, !tbaa !31
  %i.gs = load ptr, ptr %i.fe, align 8, !tbaa !30 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.ff
  br i1 %i.gt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit84
  %i.gu = load i64, ptr %i.ff, align 8, !tbaa !31
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i86: ; preds = %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.gw = load i64, ptr %i.o, align 8, !tbaa !75
  %i.gx = sub nsw i64 %2, %i.gw
  %.sroa.0.0.copyload.i2.i91 = load i64, ptr %i.m, align 8, !tbaa !75
  %i.gy = icmp slt i64 %i.gx, %.sroa.0.0.copyload.i2.i91
  br i1 %i.gy, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i86
  store i32 1, ptr %0, align 8, !tbaa !141
  br label %.critedge2

.body73:                                          ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i86
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  store ptr %i.ha, ptr %i.gz, align 8, !tbaa !38
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.ha, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %.not21.i.i95 = icmp eq ptr %9, %i.m
  br i1 %.not21.i.i95, label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit100, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96, !prof !40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92
  %i.hc = load ptr, ptr %i.p, align 8, !tbaa !30
  store i64 0, ptr %i.r, align 8, !tbaa !39
  store i8 0, ptr %i.hc, align 1, !tbaa !31
  %.pre.i.i97 = load ptr, ptr %i.gz, align 8, !tbaa !30
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit100

_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit100: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96
  %i.hd = phi ptr [ %.pre.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96 ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92 ]
  store i64 0, ptr %i.hb, align 8, !tbaa !39
  store i8 0, ptr %i.hd, align 1, !tbaa !31
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !30 ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.ha
  br i1 %i.hf, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit100
  %i.hg = load i64, ptr %i.ha, align 8, !tbaa !31
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #28
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit103

_ZN14arrow_vendored4date8sys_infoD2Ev.exit103:    ; preds = %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.critedge2

.critedge2:                                       ; preds = %bb.ad, %_ZN14arrow_vendored4date8sys_infoD2Ev.exit103, %bb.aq, %bb.ac, %_ZN14arrow_vendored4date8sys_infoD2Ev.exit63
  ret void

bb.ar:                                            ; preds = %.body31, %.body73, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.fm, %.body73 ], [ %i.av, %.body ], [ %i.dd, %.body31 ]
  call void @_ZN14arrow_vendored4date10local_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #30
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN14arrow_vendored4date8sys_infoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !38
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !30
  %i.k = load i64, ptr %i.e, align 8, !tbaa !31
  store i64 %i.k, ptr %i.c, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !39
  store ptr %i.e, ptr %i.b, align 8, !tbaa !30
  store i64 0, ptr %i.m, align 8, !tbaa !39
  store i8 0, ptr %i.e, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75
  store i64 %i.q, ptr %i.o, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !75
  store i64 %i.t, ptr %i.r, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  switch i64 %i.z, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !31
  store i8 %i.ab, ptr %i.e, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !39  ; 2 uses
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ac
  store i8 0, ptr %i.ad, align 1, !tbaa !31
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !30
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  store ptr %i.v, ptr %i.b, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !39
  store i64 %i.af, ptr %i.m, align 8, !tbaa !39
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !31
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !31
  store ptr %i.w, ptr %i.u, align 8, !tbaa !30
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit

_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit:    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g
  %i.ah = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.w, %bb.g ], [ %i.v, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !39
  store i8 0, ptr %i.ah, align 1, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !75
  store <2 x i64> %i.ak, ptr %i.p, align 8, !tbaa !75
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !30  ; 6 uses
  %i.am = icmp eq ptr %i.al, %i.w
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !30  ; 5 uses
  %i.ao = icmp eq ptr %i.an, %i.c                 ; 2 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit
  br i1 %i.ao, label %bb.h, label %.thread.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5: ; preds = %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit
  br i1 %i.ao, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !39  ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  switch i64 %i.ap, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !31
  store i8 %i.ar, ptr %i.al, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9: ; preds = %bb.j, %bb.i, %bb.h
  %i.as = load i64, ptr %i.n, align 8, !tbaa !39  ; 2 uses
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !39
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !31
  %.pre.i.i10 = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit13

.thread.i.i12:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  store ptr %i.an, ptr %i.u, align 8, !tbaa !30
  %i.av = load <2 x i64>, ptr %i.n, align 8, !tbaa !31
  store <2 x i64> %i.av, ptr %i.ai, align 8, !tbaa !31
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5
  %i.aw = load i64, ptr %i.w, align 8, !tbaa !31
  store ptr %i.an, ptr %i.u, align 8, !tbaa !30
  %i.ax = load <2 x i64>, ptr %i.n, align 8, !tbaa !31
  store <2 x i64> %i.ax, ptr %i.ai, align 8, !tbaa !31
  %.not.i.i7 = icmp eq ptr %i.al, null
  br i1 %.not.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6
  store ptr %i.al, ptr %i.a, align 8, !tbaa !30
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !31
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit13

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6, %.thread.i.i12
  store ptr %i.c, ptr %i.a, align 8, !tbaa !30
  br label %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit13

_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit13:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9, %bb.k, %bb.l
  %3 = phi ptr [ %i.al, %bb.k ], [ %i.c, %bb.l ], [ %.pre.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9 ]
  store i64 0, ptr %i.n, align 8, !tbaa !39
  store i8 0, ptr %3, align 1, !tbaa !31
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.c
  br i1 %i.az, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit13
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !31
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit

_ZN14arrow_vendored4date8sys_infoD2Ev.exit:       ; preds = %_ZN14arrow_vendored4date8sys_infoaSEOS1_.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date10local_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit

_ZN14arrow_vendored4date8sys_infoD2Ev.exit:       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN14arrow_vendored4date8sys_infoD2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit3

_ZN14arrow_vendored4date8sys_infoD2Ev.exit3:      ; preds = %_ZN14arrow_vendored4date8sys_infoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsERSoRKNS0_9time_zoneE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon.95, align 8             ; 5 uses
  %3 = alloca %class.anon.26, align 8             ; 4 uses
  %4 = alloca %"class.arrow_vendored::date::hh_mm_ss", align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %1, ptr %3, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %3, ptr %2, align 8, !tbaa !134
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.g, align 8, !tbaa !134
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK14arrow_vendored4date9time_zone4initEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_8__invokeEv", ptr %i.h, align 8, !tbaa !134
  %i.i = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i:              ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZNK14arrow_vendored4date9time_zone4initEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.i) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.g, align 8, !tbaa !134
  store ptr null, ptr %i.h, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.j

_ZNK14arrow_vendored4date9time_zone4initEv.exit:  ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  store ptr null, ptr %i.g, align 8, !tbaa !134
  store ptr null, ptr %i.h, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.k = load ptr, ptr %1, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.k, i64 noundef %i.m) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !31
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !158
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK14arrow_vendored4date9time_zone4initEv.exit
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date9time_zone4initEv.exit
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 21) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !75 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 43, ptr %i.c, align 1, !tbaa !31
  %i.ad = load ptr, ptr %0, align 8, !tbaa !61
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !158
  %.not.i22 = icmp eq i64 %i.ai, 0
  br i1 %.not.i22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24

bb.i:                                             ; preds = %bb.g
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 43) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !81
  %.sroa.0.0.copyload.i25.pre = load i64, ptr %.pre, align 8, !tbaa !75, !noalias !159
  br label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.sroa.0.0.copyload.i25 = phi i64 [ %.sroa.0.0.copyload.i25.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24 ], [ %i.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i25, i1 true) ; 3 uses
  %i.al = udiv i64 %spec.select.i.i.i, 3600       ; 3 uses
  store i64 %i.al, ptr %4, align 8, !alias.scope !159
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = udiv i64 %spec.select.i.i.i, 60
  %.neg.i.i.i = mul nsw i64 %i.al, -60
  %i.ao = add nsw i64 %.neg.i.i.i, %i.an          ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !alias.scope !159
  %.neg.i7.i.i = mul nsw i64 %i.al, -3600
  %i.ap = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.ao, -60
  %i.aq = add i64 %i.ap, %.neg.i8.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !alias.scope !159
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.as, align 8, !alias.scope !159
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i25, 63
  %i.au = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.au, ptr %i.at, align 8, !tbaa !162, !alias.scope !159
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !84, !range !87, !noundef !88
  %i.az = trunc nuw i8 %i.ay to i1
  %.str.2..str.3 = select i1 %i.az, ptr @.str.2, ptr @.str.3
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.str.2..str.3, i64 noundef 10) ; 0 uses
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !39
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bd, i64 noundef %i.bf) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !31
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !158
end_hunk_0
