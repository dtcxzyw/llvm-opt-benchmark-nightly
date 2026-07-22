inline.NumInlined: 2332
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc136.i unwind label %bb.ab, !inline_history !558

.noexc136.i:                                      ; preds = %bb.u
  br i1 %i.eo, label %bb.v, label %_ZN5arrow4util12ArrowLogBaselsIA25_cEERS1_RKT_.exit.i

bb.v:                                             ; preds = %.noexc136.i
  %i.ep = load ptr, ptr %20, align 8, !tbaa !23, !noalias !542
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.er(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc137.i unwind label %bb.ab, !inline_history !558

.noexc137.i:                                      ; preds = %bb.v
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull @.str.68, i64 noundef 24)
          to label %_ZN5arrow4util12ArrowLogBaselsIA25_cEERS1_RKT_.exit.i unwind label %bb.ab ; 0 uses

_ZN5arrow4util12ArrowLogBaselsIA25_cEERS1_RKT_.exit.i: ; preds = %.noexc137.i, %.noexc136.i
  %i.eu = load ptr, ptr %20, align 8, !tbaa !23, !noalias !542
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef zeroext i1 %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc139.i unwind label %bb.ab, !inline_history !255

.noexc139.i:                                      ; preds = %_ZN5arrow4util12ArrowLogBaselsIA25_cEERS1_RKT_.exit.i
  br i1 %i.ex, label %bb.w, label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit.i

bb.w:                                             ; preds = %.noexc139.i
  %i.ey = load ptr, ptr %20, align 8, !tbaa !23, !noalias !542
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc140.i unwind label %bb.ab, !inline_history !255

.noexc140.i:                                      ; preds = %bb.w
  %i.fc = load ptr, ptr %.sroa.0197.0266.ptr.i, align 8, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0197.0266.ptr.i, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !16
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef %i.fc, i64 noundef %i.fe)
          to label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit.i unwind label %bb.ab ; 0 uses

_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit.i: ; preds = %.noexc140.i, %.noexc139.i
  %i.fg = load ptr, ptr %20, align 8, !tbaa !23, !noalias !542
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke noundef zeroext i1 %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc142.i unwind label %bb.ab, !inline_history !559

.noexc142.i:                                      ; preds = %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit.i
  br i1 %i.fj, label %bb.x, label %_ZN5arrow4util12ArrowLogBaselsIA4_cEERS1_RKT_.exit.i

bb.x:                                             ; preds = %.noexc142.i
  %i.fk = load ptr, ptr %20, align 8, !tbaa !23, !noalias !542
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc143.i unwind label %bb.ab, !inline_history !559

.noexc143.i:                                      ; preds = %bb.x
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull @.str.69, i64 noundef 3)
          to label %_ZN5arrow4util12ArrowLogBaselsIA4_cEERS1_RKT_.exit.i unwind label %bb.ab ; 0 uses

_ZN5arrow4util12ArrowLogBaselsIA4_cEERS1_RKT_.exit.i: ; preds = %.noexc143.i, %.noexc142.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #35, !noalias !542
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %_ZN5arrow4util12ArrowLogBaselsIA4_cEERS1_RKT_.exit.i
  %i.fp = load ptr, ptr %20, align 8, !tbaa !23, !noalias !542
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc145.i unwind label %bb.ad, !inline_history !255

.noexc145.i:                                      ; preds = %bb.y
  br i1 %i.fs, label %bb.z, label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit148.i

bb.z:                                             ; preds = %.noexc145.i
  %i.ft = load ptr, ptr %20, align 8, !tbaa !23, !noalias !542
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc146.i unwind label %bb.ad, !inline_history !255

.noexc146.i:                                      ; preds = %bb.z
  %i.fx = load ptr, ptr %21, align 8, !tbaa !13, !noalias !542
  %i.fy = load i64, ptr %i.cz, align 8, !tbaa !16, !noalias !542
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef %i.fx, i64 noundef %i.fy)
          to label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit148.i unwind label %bb.ad ; 0 uses

_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit148.i: ; preds = %.noexc146.i, %.noexc145.i
  %i.ga = load ptr, ptr %21, align 8, !tbaa !13, !noalias !542 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.da
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i: ; preds = %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit148.i
  %i.gc = load i64, ptr %i.da, align 8, !tbaa !15, !noalias !542
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i: ; preds = %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit148.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35, !noalias !542
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %20) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35, !noalias !542
  br label %bb.bb

bb.aa:                                            ; preds = %bb.t
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ab:                                            ; preds = %.noexc143.i, %bb.x, %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit.i, %.noexc140.i, %bb.w, %_ZN5arrow4util12ArrowLogBaselsIA25_cEERS1_RKT_.exit.i, %.noexc137.i, %bb.v, %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN5arrow4util12ArrowLogBaselsIA4_cEERS1_RKT_.exit.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i

bb.ad:                                            ; preds = %.noexc146.i, %bb.z, %bb.y
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %21, align 8, !tbaa !13, !noalias !542 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.da
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i: ; preds = %bb.ad
  %i.gk = load i64, ptr %i.da, align 8, !tbaa !15, !noalias !542
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i, %bb.ac
  %.pn64.i = phi { ptr, i32 } [ %i.gg, %bb.ac ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i ], [ %i.gh, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35, !noalias !542
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i, %bb.ab
  %.pn64.pn.i = phi { ptr, i32 } [ %.pn64.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i ], [ %i.gf, %bb.ab ]
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %20) #35
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %.pn64.pn.pn.i = phi { ptr, i32 } [ %.pn64.pn.i, %bb.ae ], [ %i.ge, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35, !noalias !542
  br label %bb.bk

bb.ag:                                            ; preds = %_ZN5arrow8internal15GetEnvVarNativeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #35, !noalias !542
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  store ptr %i.dc, ptr %22, align 8, !tbaa !7, !alias.scope !569, !noalias !542
  %i.gm = load ptr, ptr %i.db, align 8, !tbaa !13, !noalias !570 ; 3 uses
  %i.gn = icmp eq ptr %i.gm, %i.dd
  br i1 %i.gn, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.go = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !noalias !570 ; 3 uses
  %i.gp = icmp ult i64 %i.go, 16
  call void @llvm.assume(i1 %i.gp)
  %i.gq = add nuw nsw i64 %i.go, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dc, ptr noundef nonnull align 8 dereferenceable(1) %i.dd, i64 %i.gq, i1 false), !noalias !542
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  store ptr %i.gm, ptr %22, align 8, !tbaa !13, !alias.scope !569, !noalias !542
  %i.gr = load i64, ptr %i.dd, align 8, !tbaa !15, !noalias !570
  store i64 %i.gr, ptr %i.dc, align 8, !tbaa !15, !alias.scope !569, !noalias !542
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !noalias !570
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.ah
  %i.gs = phi ptr [ %i.dc, %bb.ah ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.gt = phi i64 [ %i.go, %bb.ah ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 9 uses
  store i64 %i.gt, ptr %i.de, align 8, !tbaa !16, !alias.scope !569, !noalias !542
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !13, !noalias !570
  store i64 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !noalias !570
  store i8 0, ptr %i.dd, align 8, !tbaa !15, !noalias !570
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0197.0266.ptr.i, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0197.0266.ptr.i, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !16
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load ptr, ptr %i.dj, align 8, !tbaa !550, !alias.scope !542 ; 8 uses
  %i.ha = load ptr, ptr %i.dk, align 8, !tbaa !552, !alias.scope !542
  %.not.i156.i = icmp eq ptr %i.gz, %i.ha
  br i1 %.not.i156.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 5 uses
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !7
  %i.hc = load ptr, ptr %22, align 8, !tbaa !13, !noalias !542 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35, !noalias !542
  store i64 %i.gt, ptr %i.e, align 8, !tbaa !11, !noalias !542
  %i.hd = icmp ugt i64 %i.gt, 15
  br i1 %i.hd, label %.noexc.i.i159.i, label %._crit_edge.i.i.i157.i

.noexc.i.i159.i:                                  ; preds = %bb.al
  %i.he = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %._crit_edge.i.i.i157.thread.i unwind label %bb.ap ; 2 uses

._crit_edge.i.i.i157.thread.i:                    ; preds = %.noexc.i.i159.i
  store ptr %i.he, ptr %i.gz, align 8, !tbaa !13
  %i.hf = load i64, ptr %i.e, align 8, !tbaa !11, !noalias !542
  store i64 %i.hf, ptr %i.hb, align 8, !tbaa !15
  br label %bb.an

._crit_edge.i.i.i157.i:                           ; preds = %bb.al
  %cond.i = icmp eq i64 %i.gt, 1
  br i1 %cond.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i.i157.i
  %i.hg = load i8, ptr %i.hc, align 1, !tbaa !15
  store i8 %i.hg, ptr %i.hb, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i158.i

bb.an:                                            ; preds = %._crit_edge.i.i.i157.i, %._crit_edge.i.i.i157.thread.i
  %i.hh = phi ptr [ %i.he, %._crit_edge.i.i.i157.thread.i ], [ %i.hb, %._crit_edge.i.i.i157.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr align 1 %i.hc, i64 %i.gt, i1 false)
  %.pre287 = load i64, ptr %i.e, align 8, !tbaa !11, !noalias !542
  %.pre288 = load ptr, ptr %i.gz, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i158.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i158.i: ; preds = %bb.an, %bb.am
  %32 = phi ptr [ %.pre288, %bb.an ], [ %i.hb, %bb.am ]
  %i.hi = phi i64 [ %.pre287, %bb.an ], [ 1, %bb.am ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !16
  %i.hk = getelementptr inbounds nuw i8, ptr %32, i64 %i.hi
  store i8 0, ptr %i.hk, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35, !noalias !542
  %i.hl = load ptr, ptr %i.dj, align 8, !tbaa !550, !alias.scope !542
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store ptr %i.hm, ptr %i.dj, align 8, !tbaa !550, !alias.scope !542
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162.i

bb.ao:                                            ; preds = %bb.ak
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.noexc.i.i159.i
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35, !noalias !542
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #35, !noalias !542
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !542
  store i8 47, ptr %i.d, align 1, !tbaa !15, !noalias !574
  store ptr %i.df, ptr %24, align 8, !tbaa !7, !alias.scope !575, !noalias !542
  store i64 0, ptr %i.dg, align 8, !tbaa !16, !alias.scope !575, !noalias !542
  store i8 0, ptr %i.df, align 8, !tbaa !15, !alias.scope !575, !noalias !542
  %i.ho = add i64 %i.gt, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %i.ho)
          to label %bb.ar unwind label %.loopexit.i

bb.ar:                                            ; preds = %bb.aq
  %i.hp = load i64, ptr %i.dg, align 8, !tbaa !16, !alias.scope !575, !noalias !542
  %i.hq = sub i64 4611686018427387903, %i.hp
  %i.hr = icmp ult i64 %i.hq, %i.gt
  br i1 %i.hr, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.ar
  %i.hs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %i.gs, i64 noundef %i.gt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %.loopexit.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ht = load i64, ptr %i.dg, align 8, !tbaa !16, !alias.scope !575, !noalias !542
  %i.hu = icmp eq i64 %i.ht, 4611686018427387903
  br i1 %i.hu, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #36
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.hv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.at unwind label %.loopexit.i ; 0 uses

.loopexit.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, %bb.aq
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp.i:                             ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.hw = load ptr, ptr %24, align 8, !tbaa !13, !alias.scope !575, !noalias !542 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.df
  br i1 %i.hx, label %.body164.i, label %.body164.i.sink.split

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !542
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.hy = load i64, ptr %i.gw, align 8, !tbaa !16, !noalias !578 ; 2 uses
  %i.hz = load i64, ptr %i.dg, align 8, !tbaa !16, !noalias !581
  %i.ia = sub i64 4611686018427387903, %i.hz
  %i.ib = icmp ult i64 %i.ia, %i.hy
  br i1 %i.ib, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #36
          to label %.noexc167.i unwind label %.loopexit.split-lp233.i

.noexc167.i:                                      ; preds = %bb.au
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.at
  %i.ic = load ptr, ptr %i.gv, align 8, !tbaa !13, !noalias !578
  %i.id = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %i.ic, i64 noundef %i.hy)
          to label %.noexc168.i unwind label %.loopexit232.i ; 6 uses

.noexc168.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  store ptr %i.dh, ptr %23, align 8, !tbaa !7, !alias.scope !578, !noalias !542
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !13 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 5 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i

bb.av:                                            ; preds = %.noexc168.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !16 ; 3 uses
  %i.ij = icmp ult i64 %i.ii, 16
  call void @llvm.assume(i1 %i.ij)
  %i.ik = add nuw nsw i64 %i.ii, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 8 dereferenceable(1) %i.if, i64 %i.ik, i1 false)
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i: ; preds = %.noexc168.i
  store ptr %i.ie, ptr %23, align 8, !tbaa !13, !alias.scope !578, !noalias !542
  %i.il = load i64, ptr %i.if, align 8, !tbaa !15
  store i64 %i.il, ptr %i.dh, align 8, !tbaa !15, !alias.scope !578, !noalias !542
  %.phi.trans.insert.i.i34 = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.pre.i.i35 = load i64, ptr %.phi.trans.insert.i.i34, align 8, !tbaa !16
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i, %bb.av
  %i.im = phi i64 [ %i.ii, %bb.av ], [ %.pre.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %i.im, ptr %i.di, align 8, !tbaa !16, !alias.scope !578, !noalias !542
  store ptr %i.if, ptr %i.id, align 8, !tbaa !13
  store i64 0, ptr %i.in, align 8, !tbaa !16
  store i8 0, ptr %i.if, align 8, !tbaa !15
  %i.io = load ptr, ptr %i.dj, align 8, !tbaa !550, !alias.scope !542 ; 7 uses
  %i.ip = load ptr, ptr %i.dk, align 8, !tbaa !552, !alias.scope !542
  %.not.i.i169.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i.i169.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 3 uses
  store ptr %i.iq, ptr %i.io, align 8, !tbaa !7
  %i.ir = load ptr, ptr %23, align 8, !tbaa !13, !noalias !542 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.dh
  br i1 %i.is, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170.i

bb.ay:                                            ; preds = %bb.ax
  %i.it = load i64, ptr %i.di, align 8, !tbaa !16, !noalias !542 ; 3 uses
  %i.iu = icmp ult i64 %i.it, 16
  call void @llvm.assume(i1 %i.iu)
  %i.iv = add nuw nsw i64 %i.it, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iq, ptr noundef nonnull align 8 dereferenceable(1) %i.dh, i64 %i.iv, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170.i: ; preds = %bb.ax
  store ptr %i.ir, ptr %i.io, align 8, !tbaa !13
  %i.iw = load i64, ptr %i.dh, align 8, !tbaa !15, !noalias !542
  store i64 %i.iw, ptr %i.iq, align 8, !tbaa !15
  %.pre272.i = load i64, ptr %i.di, align 8, !tbaa !16, !noalias !542
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170.i, %bb.ay
  %i.ix = phi i64 [ %.pre272.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170.i ], [ %i.it, %bb.ay ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !16
  store ptr %i.dh, ptr %23, align 8, !tbaa !13, !noalias !542
  store i64 0, ptr %i.di, align 8, !tbaa !16, !noalias !542
  store i8 0, ptr %i.dh, align 8, !tbaa !15, !noalias !542
  %i.iz = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  store ptr %i.iz, ptr %i.dj, align 8, !tbaa !550, !alias.scope !542
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i

bb.az:                                            ; preds = %bb.aw
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.io, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.ba

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.az
  %.pre273.i = load ptr, ptr %23, align 8, !tbaa !13, !noalias !542 ; 2 uses
  %i.ja = icmp eq ptr %.pre273.i, %i.dh
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  %i.jb = load i64, ptr %i.dh, align 8, !tbaa !15, !noalias !542
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %.pre273.i, i64 noundef %i.jc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i
  %i.jd = load ptr, ptr %24, align 8, !tbaa !13, !noalias !542 ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.df
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i
  %i.jf = load i64, ptr %i.df, align 8, !tbaa !15, !noalias !542
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35, !noalias !542
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35, !noalias !542
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162.i

.loopexit232.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %lpad.loopexit234.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i

.loopexit.split-lp233.i:                          ; preds = %bb.au
  %lpad.loopexit.split-lp235.i = landingpad { ptr, i32 }
end_hunk_0
