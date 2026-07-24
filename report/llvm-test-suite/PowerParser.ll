inline.NumInlined: 5334
inline.NumDeleted: 1210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2PP11PowerParser12list_vars_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_RNS1_18basic_stringstreamIcS4_S5_EE:bb.a
  switch i64 %i.ek, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i94
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !33
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !33
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i94
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.ei, i64 %i.ek, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i94
  %i.eq = load i64, ptr %i.h, align 8, !tbaa !124 ; 2 uses
  store i64 %i.eq, ptr %i.cn, align 8, !tbaa !32
  %i.er = load ptr, ptr %10, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 0, ptr %i.es, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  %i.et = load i64, ptr %i.co, align 8, !tbaa !32 ; 3 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread295, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.q
  %i.ev = load i64, ptr %i.cn, align 8, !tbaa !32
  %i.ew = icmp eq i64 %i.ev, %i.et
  %.pre476 = load ptr, ptr %10, align 8, !tbaa !27 ; 3 uses
  br i1 %i.ew, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ex = load ptr, ptr %3, align 8, !tbaa !27
  %bcmp.i.i97 = call i32 @bcmp(ptr %.pre476, ptr %i.ex, i64 %i.et)
  %.not297 = icmp eq i32 %bcmp.i.i97, 0
  br i1 %.not297, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread295, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.r:                                             ; preds = %bb.f
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ak
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.r
  %i.fb = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.db

bb.s:                                             ; preds = %bb.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.as
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.s
  %i.fg = load i64, ptr %i.as, align 8, !tbaa !33
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.db

bb.t:                                             ; preds = %bb.l
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.bg
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.t
  %i.fl = load i64, ptr %i.bg, align 8, !tbaa !33
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.db

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.v:                                             ; preds = %.noexc.i95
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread295: ; preds = %bb.q, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0288.0453, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0288.0453, i64 96 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0288.0453, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !323
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !321
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = lshr i64 %i.fw, 5                       ; 2 uses
  %i.fy = trunc i64 %i.fx to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0288.0453, i64 168
  store ptr %i.cp, ptr %11, align 8, !tbaa !123, !alias.scope !811
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !27, !noalias !811 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0288.0453, i64 176
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !32, !noalias !811 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29, !noalias !811
  store i64 %i.gc, ptr %i.g, align 8, !tbaa !124, !noalias !811
  %i.gd = icmp ugt i64 %i.gc, 15
  br i1 %i.gd, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread295
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc107 unwind label %bb.ac ; 2 uses

.noexc107:                                        ; preds = %.noexc.i.i
  store ptr %i.ge, ptr %11, align 8, !tbaa !27, !alias.scope !811
  %i.gf = load i64, ptr %i.g, align 8, !tbaa !124, !noalias !811
  store i64 %i.gf, ptr %i.cp, align 8, !tbaa !33, !alias.scope !811
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc107, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread295
  %i.gg = phi ptr [ %i.ge, %.noexc107 ], [ %i.cp, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread295 ] ; 2 uses
  switch i64 %i.gc, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.gh = load i8, ptr %i.ga, align 1, !tbaa !33
  store i8 %i.gh, ptr %i.gg, align 1, !tbaa !33
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.ga, i64 %i.gc, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i
  %i.gi = load i64, ptr %i.g, align 8, !tbaa !124, !noalias !811 ; 2 uses
  store i64 %i.gi, ptr %i.cq, align 8, !tbaa !32, !alias.scope !811
  %i.gj = load ptr, ptr %11, align 8, !tbaa !27, !alias.scope !811
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  store i8 0, ptr %i.gk, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29, !noalias !811
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0288.0453, i64 120
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !814 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = icmp slt i32 %i.gm, 0
  br i1 %i.go, label %bb.z, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.242) #30
          to label %.noexc108 unwind label %.loopexit.split-lp300

.noexc108:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.y
  %.not.i.i.i.i = icmp eq i32 %i.gm, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.aa

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %.loopexit298

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gp = shl nuw nsw i64 %i.gn, 2                ; 3 uses
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #31
          to label %.noexc109 unwind label %.loopexit299 ; 5 uses

.noexc109:                                        ; preds = %bb.aa
  store ptr %i.gq, ptr %12, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gn
  store ptr %i.gr, ptr %i.cr, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gq, i8 0, i64 %i.gp, i1 false), !tbaa !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gp
  br label %.loopexit298

.loopexit298:                                     ; preds = %.noexc109, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.gt = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.gq, %.noexc109 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.gs, %.noexc109 ]
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cs, align 8, !tbaa !8
  %i.gu = icmp sgt i32 %i.fy, 0
  br i1 %i.gu, label %.lr.ph450, label %._crit_edge451

.lr.ph450:                                        ; preds = %.loopexit298
  %.not457 = icmp eq i32 %i.fy, 1
  %i.gv = add nsw i32 %i.gm, -1
  %i.gw = sext i32 %i.gv to i64
  %wide.trip.count470 = and i64 %i.fx, 2147483647
  %wide.trip.count = zext nneg i32 %i.gm to i64
  br label %bb.ad

._crit_edge451.loopexit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %.pre474 = load ptr, ptr %12, align 8, !tbaa !12
  br label %._crit_edge451

._crit_edge451:                                   ; preds = %._crit_edge451.loopexit, %.loopexit298
  %i.gx = phi ptr [ %.pre474, %._crit_edge451.loopexit ], [ %i.gt, %.loopexit298 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge451
  %i.gy = load ptr, ptr %i.cr, align 8, !tbaa !17
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hb) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge451, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.hc = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.cp
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.he = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %.pre475 = load ptr, ptr %10, align 8, !tbaa !27
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.ac:                                            ; preds = %.noexc.i.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

.loopexit299:                                     ; preds = %bb.aa
  %lpad.loopexit301 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit173

.loopexit.split-lp300:                            ; preds = %bb.z
  %lpad.loopexit.split-lp302 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit173

bb.ad:                                            ; preds = %.lr.ph450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %indvars.iv467 = phi i64 [ 0, %.lr.ph450 ], [ %indvars.iv.next468, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store ptr %i.ct, ptr %13, align 8, !tbaa !123
  %i.hh = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %i.hi = load i64, ptr %i.cn, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 %i.hi, ptr %i.f, align 8, !tbaa !124
  %i.hj = icmp ugt i64 %i.hi, 15
  br i1 %i.hj, label %.noexc.i114, label %._crit_edge.i.i113

.noexc.i114:                                      ; preds = %bb.ad
  %i.hk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc115 unwind label %bb.an ; 2 uses

.noexc115:                                        ; preds = %.noexc.i114
  store ptr %i.hk, ptr %13, align 8, !tbaa !27
  %i.hl = load i64, ptr %i.f, align 8, !tbaa !124
  store i64 %i.hl, ptr %i.ct, align 8, !tbaa !33
  br label %._crit_edge.i.i113

._crit_edge.i.i113:                               ; preds = %.noexc115, %bb.ad
  %i.hm = phi ptr [ %i.hk, %.noexc115 ], [ %i.ct, %bb.ad ] ; 2 uses
  switch i64 %i.hi, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i113
  %i.hn = load i8, ptr %i.hh, align 1, !tbaa !33
  store i8 %i.hn, ptr %i.hm, align 1, !tbaa !33
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.hh, i64 %i.hi, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i113
  %i.ho = load i64, ptr %i.f, align 8, !tbaa !124 ; 2 uses
  store i64 %i.ho, ptr %i.cu, align 8, !tbaa !32
  %i.hp = load ptr, ptr %13, align 8, !tbaa !27
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  store i8 0, ptr %i.hq, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br i1 %.not457, label %bb.bd, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hr = trunc nuw nsw i64 %indvars.iv467 to i32
  invoke void @_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(136) %i.fp, i32 noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cv) #29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.cv, align 8, !tbaa !132
  store ptr null, ptr %i.cw, align 8, !tbaa !440
  store i8 0, ptr %i.cx, align 8, !tbaa !441
  store i8 0, ptr %i.cy, align 1, !tbaa !442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 32, i1 false)
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.hs = load i64, ptr %i.dc, align 8
  %i.ht = getelementptr inbounds i8, ptr %14, i64 %i.hs
  store ptr %i.db, ptr %i.ht, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  %i.hu = load ptr, ptr %14, align 8, !tbaa !132
  %i.hv = getelementptr i8, ptr %i.hu, i64 -24
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds i8, ptr %14, i64 %i.hw
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.hx, ptr noundef null)
          to label %.noexc.i117 unwind label %bb.al

.noexc.i117:                                      ; preds = %bb.ai
  store ptr %i.df, ptr %i.de, align 8, !tbaa !132
  %i.hy = load i64, ptr %i.dh, align 8
  %i.hz = getelementptr inbounds i8, ptr %i.de, i64 %i.hy
  store ptr %i.dg, ptr %i.hz, align 8, !tbaa !132
  %i.ia = load ptr, ptr %i.de, align 8, !tbaa !132
  %i.ib = getelementptr i8, ptr %i.ia, i64 -24
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = getelementptr inbounds i8, ptr %i.de, i64 %i.ic
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.id, ptr noundef null)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc.i117
  %i.ie = landingpad { ptr, i32 }
          cleanup
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.if = load i64, ptr %i.dc, align 8
  %i.ig = getelementptr inbounds i8, ptr %14, i64 %i.if
  store ptr %i.db, ptr %i.ig, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  br label %.body.i

bb.ak:                                            ; preds = %.noexc.i117
  store ptr %i.di, ptr %14, align 8, !tbaa !132
  %i.ih = load i64, ptr %i.dk, align 8
  %i.ii = getelementptr inbounds i8, ptr %14, i64 %i.ih
  store ptr %i.dj, ptr %i.ii, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %14, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.cv, align 8, !tbaa !132
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.de, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dm, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) #29
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dl, align 8, !tbaa !132
  store i32 24, ptr %i.do, align 8, !tbaa !422
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !123
  store i64 0, ptr %i.dr, align 8, !tbaa !32
  store i8 0, ptr %i.dq, align 8, !tbaa !33
  %i.ij = load ptr, ptr %14, align 8, !tbaa !132
  %i.ik = getelementptr i8, ptr %i.ij, i64 -24
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = getelementptr inbounds i8, ptr %14, i64 %i.il
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.im, ptr noundef nonnull %i.dl)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.am:                                            ; preds = %bb.ak
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.dl) #29
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.ip = load i64, ptr %i.dc, align 8
  %i.iq = getelementptr inbounds i8, ptr %14, i64 %i.ip
  store ptr %i.db, ptr %i.iq, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %bb.al, %bb.aj
  %.pn.pn.i = phi { ptr, i32 } [ %i.io, %bb.am ], [ %i.in, %bb.al ], [ %i.ie, %bb.aj ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cv) #29
  br label %.body

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.ak
  %i.ir = load ptr, ptr %10, align 8, !tbaa !27
  %i.is = load i64, ptr %i.cn, align 8, !tbaa !32
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.ir, i64 noundef %i.is)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ap

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.it, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %.not.i.i.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %.lr.ph

end_hunk_0
