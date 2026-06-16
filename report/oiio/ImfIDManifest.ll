inline.NumInlined: 2191
inline.NumDeleted: 816
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_:bb.a
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ea = load i64, ptr %i.dm, align 8, !tbaa !19
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !18
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !14
  %i.ed = load i64, ptr %i.v, align 8, !tbaa !19
  store i64 %i.ed, ptr %i.dm, align 8, !tbaa !19
  %.not.i137 = icmp eq ptr %i.dl, null
  br i1 %.not.i137, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dl, ptr %6, align 8, !tbaa !18
  store i64 %i.ea, ptr %i.v, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %6, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ai, %bb.aj
  %i.ee = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dl, %bb.ai ], [ %i.v, %bb.aj ], [ %i.do, %bb.ae ]
  store i64 0, ptr %i.w, align 8, !tbaa !14
  store i8 0, ptr %i.ee, align 1, !tbaa !19
  %i.ef = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.v
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.eh = load i64, ptr %i.v, align 8, !tbaa !19
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.ej = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.t
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.el = load i64, ptr %i.t, align 8, !tbaa !19
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.en = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.r
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.ep = load i64, ptr %i.r, align 8, !tbaa !19
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.er = add nuw i64 %.080505, 1                 ; 2 uses
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !10  ; 2 uses
  %i.et = load ptr, ptr %5, align 8, !tbaa !13    ; 3 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = ashr exact i64 %i.ew, 5                 ; 3 uses
  %i.ey = icmp ult i64 %i.er, %i.ex
  br i1 %i.ey, label %bb.i, label %._crit_edge, !llvm.loop !32

bb.ak:                                            ; preds = %.noexc10.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

.loopexit414:                                     ; preds = %.noexc10.i.i130
  %lpad.loopexit416 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

.loopexit.split-lp415:                            ; preds = %bb.t
  %lpad.loopexit.split-lp417 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

.loopexit419:                                     ; preds = %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit421 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp420:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp422 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp420, %.loopexit419
  %lpad.phi423 = phi { ptr, i32 } [ %lpad.loopexit421, %.loopexit419 ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ] ; 2 uses
  %i.fa = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.t
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.al
  %i.fc = load i64, ptr %i.t, align 8, !tbaa !19
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.al, %.loopexit414, %.loopexit.split-lp415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %.pn117 = phi { ptr, i32 } [ %lpad.phi423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %lpad.loopexit.split-lp417, %.loopexit.split-lp415 ], [ %lpad.loopexit416, %.loopexit414 ], [ %lpad.phi423, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.fe = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.r
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.fg = load i64, ptr %i.r, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.ak
  %.pn117.pn = phi { ptr, i32 } [ %i.ez, %bb.ak ], [ %.pn117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit298

bb.am:                                            ; preds = %.noexc126, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.lcssa447761) #34
          to label %.noexc154 unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit296.thread ; 5 uses

.noexc154:                                        ; preds = %bb.am
  %i.fj = getelementptr i8, ptr %i.fi, i64 %.lcssa447761 ; 2 uses
  store i8 0, ptr %i.fi, align 1, !tbaa !19
  br i1 %i.ac, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.an

bb.an:                                            ; preds = %.noexc154
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fk, i8 0, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.an, %.noexc154, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0353.0381 = phi ptr [ %i.z, %bb.an ], [ %i.z, %.noexc154 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.11358.0371 = phi ptr [ %i.aa, %bb.an ], [ %i.aa, %.noexc154 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.11.0 = phi ptr [ %i.fj, %bb.an ], [ %i.fj, %.noexc154 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0347.0 = phi ptr [ %i.fi, %bb.an ], [ %i.fi, %.noexc154 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !7   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 3 uses
  %i.fn = icmp ult ptr %2, %i.fm
  br i1 %i.fn, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.fo = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fo, ptr noundef nonnull @.str.15)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.fo, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.er unwind label %bb.as

bb.aq:                                            ; preds = %bb.g, %bb.f
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit298

_ZNSt6vectorIcSaIcEED2Ev.exit296.thread:          ; preds = %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ar:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fo) #32
  br label %.body

bb.as:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.ft = load i32, ptr %i.fl, align 1            ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph521, label %._crit_edge522

.lr.ph521:                                        ; preds = %bb.at
  %i.fv = trunc i64 %.lcssa447761 to i32          ; 2 uses
  br label %bb.au

._crit_edge522:                                   ; preds = %._crit_edge513, %bb.at
  %.lcssa515 = phi ptr [ %i.fm, %bb.at ], [ %i.fz, %._crit_edge513 ] ; 3 uses
  store ptr %.lcssa515, ptr %i.e, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.lcssa515, i64 4 ; 2 uses
  %i.fx = icmp ult ptr %2, %i.fw
  br i1 %i.fx, label %bb.be, label %bb.bi

bb.au:                                            ; preds = %.lr.ph521, %._crit_edge513
  %.086519 = phi i32 [ 0, %.lr.ph521 ], [ %i.ha, %._crit_edge513 ]
  %.087518 = phi i32 [ 0, %.lr.ph521 ], [ %.pre-phi, %._crit_edge513 ]
  %i.fy = phi ptr [ %i.fm, %.lr.ph521 ], [ %i.fz, %._crit_edge513 ] ; 8 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = icmp ult ptr %2, %i.fz
  br i1 %i.ga, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  store ptr %i.fy, ptr %i.e, align 8
  %i.gb = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gb) #32
  br label %.body

bb.ax:                                            ; preds = %.invoke
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.au
  %i.ge = load i16, ptr %i.fy, align 1
  %i.gf = zext i16 %i.ge to i32                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gk = load i8, ptr %i.gh, align 1, !tbaa !19
  %.sroa.6.0.insert.ext.i167 = zext i8 %i.gk to i32
  %.sroa.6.0.insert.shift.i168 = shl nuw i32 %.sroa.6.0.insert.ext.i167, 24 ; 3 uses
  %.sroa.5.0.insert.ext.i169 = zext i8 %i.gi to i32
  %.sroa.5.0.insert.shift.i170 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i169, 16 ; 2 uses
  %.sroa.5.0.insert.insert.i171 = or disjoint i32 %.sroa.5.0.insert.shift.i170, %i.gf
  %.sroa.0.0.insert.insert.i176 = or disjoint i32 %.sroa.5.0.insert.insert.i171, %.sroa.6.0.insert.shift.i168 ; 2 uses
  %i.gl = load i16, ptr %i.gj, align 1
  %i.gm = zext i16 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 6
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 7
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !19
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !19
  %.sroa.6.0.insert.ext.i178 = zext i8 %i.gq to i32
  %.sroa.6.0.insert.shift.i179 = shl nuw i32 %.sroa.6.0.insert.ext.i178, 24 ; 2 uses
  %.sroa.5.0.insert.ext.i180 = zext i8 %i.gp to i32
  %.sroa.5.0.insert.shift.i181 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i180, 16
  %.sroa.5.0.insert.insert.i182 = or disjoint i32 %.sroa.5.0.insert.shift.i181, %i.gm
  %.sroa.0.0.insert.insert.i187 = or disjoint i32 %.sroa.5.0.insert.insert.i182, %.sroa.6.0.insert.shift.i179 ; 3 uses
  %i.gr = icmp slt i32 %.sroa.6.0.insert.shift.i168, 0
  %i.gs = icmp slt i32 %.sroa.6.0.insert.shift.i179, 0
  %or.cond = select i1 %i.gr, i1 true, i1 %i.gs
  %i.gt = icmp sgt i32 %.sroa.0.0.insert.insert.i176, %.sroa.0.0.insert.insert.i187
  %or.cond125 = select i1 %or.cond, i1 true, i1 %i.gt
  br i1 %or.cond125, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not107 = icmp slt i32 %.sroa.0.0.insert.insert.i176, %i.fv
  %.not108 = icmp samesign ult i32 %.sroa.0.0.insert.insert.i187, %i.fv
  %or.cond396 = select i1 %.not107, i1 %.not108, i1 false
  br i1 %or.cond396, label %.lr.ph512.preheader, label %bb.ba

.lr.ph512.preheader:                              ; preds = %bb.az
  %i.gu = or disjoint i32 %.sroa.6.0.insert.shift.i168, %.sroa.5.0.insert.shift.i170
  %i.gv = or disjoint i32 %i.gu, %i.gf
  %i.gw = zext nneg i32 %i.gv to i64
  br label %.lr.ph512

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store ptr %i.fz, ptr %i.e, align 8
  %i.gx = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gx, ptr noundef nonnull @.str.16)
          to label %.invoke unwind label %bb.bb

.invoke:                                          ; preds = %bb.av, %bb.ba
  %i.gy = phi ptr [ %i.gx, %bb.ba ], [ %i.gb, %bb.av ]
  invoke void @__cxa_throw(ptr nonnull %i.gy, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.cont unwind label %bb.ax

.cont:                                            ; preds = %.invoke
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gx) #32
  br label %.body

._crit_edge513:                                   ; preds = %bb.bd
  %i.ha = add nuw nsw i32 %.086519, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ha, %i.ft
  br i1 %exitcond.not, label %._crit_edge522, label %bb.au, !llvm.loop !34

.lr.ph512:                                        ; preds = %.lr.ph512.preheader, %bb.bd
  %indvars.iv = phi i64 [ %i.gw, %.lr.ph512.preheader ], [ %indvars.iv.next, %bb.bd ] ; 3 uses
  %.188510 = phi i32 [ %.087518, %.lr.ph512.preheader ], [ %.pre-phi, %bb.bd ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0347.0, i64 %indvars.iv ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !19
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph512
  %i.he = sext i32 %.188510 to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0353.0381, i64 %i.he
  %i.hg = trunc nuw i64 %indvars.iv to i32
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !3
  store i8 1, ptr %i.hb, align 1, !tbaa !19
  %i.hh = add nsw i32 %.188510, 1
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph512, %bb.bc
  %.pre-phi = phi i32 [ %i.hh, %bb.bc ], [ %.188510, %.lr.ph512 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %11 = trunc nuw i64 %indvars.iv.next to i32
  %.not109.not = icmp slt i32 %.sroa.0.0.insert.insert.i187, %11
  br i1 %.not109.not, label %._crit_edge513, label %.lr.ph512, !llvm.loop !35

bb.be:                                            ; preds = %._crit_edge522
  %i.hi = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.hi, ptr noundef nonnull @.str.15)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.er unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hi) #32
  br label %.body

bb.bh:                                            ; preds = %bb.bj, %bb.bf
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %._crit_edge522
  %i.hl = load i32, ptr %.lcssa515, align 1       ; 3 uses
  store ptr %i.fw, ptr %i.e, align 8, !tbaa !7
  %i.hm = load ptr, ptr %0, align 8, !tbaa !36    ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ho, %i.hm
  br i1 %.not.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bi, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i ], [ %i.hm, %bb.bi ] ; 2 uses
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.05.i.i.i.i) #32
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i199 = icmp eq ptr %i.hp, %i.ho
  br i1 %.not.i.i.i.i199, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !39
  %.pre = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit: ; preds = %bb.bi, %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.hq = phi ptr [ %i.hm, %bb.bi ], [ %.pre, %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.hr = sext i32 %i.hl to i64                   ; 4 uses
  %i.hs = ptrtoint ptr %i.hm to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 208               ; 3 uses
  %i.hw = icmp ult i64 %i.hv, %i.hr
  br i1 %i.hw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit
  %i.hx = sub nuw nsw i64 %i.hr, %i.hv
  invoke void @_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.hx)
          to label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit unwind label %bb.bh

bb.bk:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit
  %i.hy = icmp ugt i64 %i.hv, %i.hr
  br i1 %i.hy, label %bb.bl, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit

bb.bl:                                            ; preds = %bb.bk
  %i.hz = getelementptr inbounds nuw [208 x i8], ptr %i.hq, i64 %i.hr ; 3 uses
  %.not.i.i200 = icmp eq ptr %i.hm, %i.hz
  br i1 %.not.i.i200, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i201

.lr.ph.i.i.i.i201:                                ; preds = %bb.bl, %.lr.ph.i.i.i.i201
  %.05.i.i.i.i202 = phi ptr [ %i.ia, %.lr.ph.i.i.i.i201 ], [ %i.hz, %bb.bl ] ; 2 uses
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.05.i.i.i.i202) #32
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i202, i64 208 ; 2 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.ia, %i.hm
  br i1 %.not.i.i.i.i203, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i204, label %.lr.ph.i.i.i.i201, !llvm.loop !40

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i204: ; preds = %.lr.ph.i.i.i.i201
  store ptr %i.hz, ptr %i.hn, align 8, !tbaa !39
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit: ; preds = %bb.bj, %bb.bk, %bb.bl, %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i204
  %i.ib = icmp sgt i32 %i.hl, 0
  br i1 %i.ib, label %.lr.ph564, label %._crit_edge565

.lr.ph564:                                        ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.hl to i64
  %.pre629 = load ptr, ptr %i.e, align 8, !tbaa !7
  br label %bb.bp

._crit_edge565:                                   ; preds = %._crit_edge562, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0347.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge565
  %i.ig = ptrtoint ptr %.sroa.11.0 to i64
  %i.ih = ptrtoint ptr %.sroa.0347.0 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0347.0, i64 noundef %i.ii) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge565, %bb.bm
  %.not.i.i.i206 = icmp eq ptr %.sroa.0353.0381, null
  br i1 %.not.i.i.i206, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.ij = ptrtoint ptr %.sroa.11358.0371 to i64
  %i.ik = ptrtoint ptr %.sroa.0353.0381 to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.0381, i64 noundef %i.il) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.bn
  %i.im = load ptr, ptr %5, align 8, !tbaa !13    ; 3 uses
  %i.in = load ptr, ptr %i.j, align 8, !tbaa !10  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.im, %i.in
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.it, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.im, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.io = load ptr, ptr %.05.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !19
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.it, %i.in
  br i1 %.not.i.i.i207, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.iu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.im, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !42
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.bp:                                            ; preds = %.lr.ph564, %._crit_edge562
  %i.ja = phi ptr [ %.pre629, %.lr.ph564 ], [ %i.oz, %._crit_edge562 ] ; 5 uses
  %indvars.iv625 = phi i64 [ 0, %.lr.ph564 ], [ %indvars.iv.next626, %._crit_edge562 ] ; 2 uses
  %i.jb = load ptr, ptr %0, align 8, !tbaa !36
  %i.jc = getelementptr inbounds nuw [208 x i8], ptr %i.jb, i64 %indvars.iv625 ; 14 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 3 uses
  %i.je = icmp ugt ptr %i.jd, %2
  br i1 %i.je, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.jf = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.jf, ptr noundef nonnull @.str.36)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @__cxa_throw(ptr nonnull %i.jf, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.noexc212 unwind label %.loopexit.split-lp404

.noexc212:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jf) #32
  br label %.body

bb.bt:                                            ; preds = %bb.bp
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 1 ; 2 uses
  store ptr %i.jh, ptr %i.e, align 8, !tbaa !7
  %i.ji = load i8, ptr %i.ja, align 1, !tbaa !19
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 2 uses
  store ptr %i.jj, ptr %i.e, align 8, !tbaa !7
  %i.jk = load i8, ptr %i.jh, align 1, !tbaa !19
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 3 ; 2 uses
  store ptr %i.jl, ptr %i.e, align 8, !tbaa !7
  %i.jm = load i8, ptr %i.jj, align 1, !tbaa !19
  store ptr %i.jd, ptr %i.e, align 8, !tbaa !7
  %i.jn = load i8, ptr %i.jl, align 1, !tbaa !19
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.jn to i32
  %.sroa.6.0.insert.shift.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i, 24 ; 2 uses
  %.sroa.5.0.insert.ext.i.i = zext i8 %i.jm to i32
end_hunk_0
