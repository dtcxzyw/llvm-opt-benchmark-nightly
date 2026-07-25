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
  %i.gx = call i32 @llvm.umax.i32(i32 %i.gm, i32 1)
  %wide.trip.count470 = and i64 %i.fx, 2147483647
  %wide.trip.count = zext nneg i32 %i.gx to i64
  br label %bb.ad

._crit_edge451.loopexit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %.pre474 = load ptr, ptr %12, align 8, !tbaa !12
  br label %._crit_edge451

._crit_edge451:                                   ; preds = %._crit_edge451.loopexit, %.loopexit298
  %i.gy = phi ptr [ %.pre474, %._crit_edge451.loopexit ], [ %i.gt, %.loopexit298 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge451
  %i.gz = load ptr, ptr %i.cr, align 8, !tbaa !17
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hc) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge451, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.hd = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.cp
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.hf = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %.pre475 = load ptr, ptr %10, align 8, !tbaa !27
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.ac:                                            ; preds = %.noexc.i.i
  %i.hh = landingpad { ptr, i32 }
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
  %i.hi = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %i.hj = load i64, ptr %i.cn, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 %i.hj, ptr %i.f, align 8, !tbaa !124
  %i.hk = icmp ugt i64 %i.hj, 15
  br i1 %i.hk, label %.noexc.i114, label %._crit_edge.i.i113

.noexc.i114:                                      ; preds = %bb.ad
  %i.hl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc115 unwind label %bb.an ; 2 uses

.noexc115:                                        ; preds = %.noexc.i114
  store ptr %i.hl, ptr %13, align 8, !tbaa !27
  %i.hm = load i64, ptr %i.f, align 8, !tbaa !124
  store i64 %i.hm, ptr %i.ct, align 8, !tbaa !33
  br label %._crit_edge.i.i113

._crit_edge.i.i113:                               ; preds = %.noexc115, %bb.ad
  %i.hn = phi ptr [ %i.hl, %.noexc115 ], [ %i.ct, %bb.ad ] ; 2 uses
  switch i64 %i.hj, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i113
  %i.ho = load i8, ptr %i.hi, align 1, !tbaa !33
  store i8 %i.ho, ptr %i.hn, align 1, !tbaa !33
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hn, ptr align 1 %i.hi, i64 %i.hj, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i113
  %i.hp = load i64, ptr %i.f, align 8, !tbaa !124 ; 2 uses
  store i64 %i.hp, ptr %i.cu, align 8, !tbaa !32
  %i.hq = load ptr, ptr %13, align 8, !tbaa !27
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp
  store i8 0, ptr %i.hr, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br i1 %.not457, label %bb.bd, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hs = trunc nuw nsw i64 %indvars.iv467 to i32
  invoke void @_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(136) %i.fp, i32 noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %12)
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
  %i.ht = load i64, ptr %i.dc, align 8
  %i.hu = getelementptr inbounds i8, ptr %14, i64 %i.ht
  store ptr %i.db, ptr %i.hu, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  %i.hv = load ptr, ptr %14, align 8, !tbaa !132
  %i.hw = getelementptr i8, ptr %i.hv, i64 -24
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds i8, ptr %14, i64 %i.hx
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.hy, ptr noundef null)
          to label %.noexc.i117 unwind label %bb.al

.noexc.i117:                                      ; preds = %bb.ai
  store ptr %i.df, ptr %i.de, align 8, !tbaa !132
  %i.hz = load i64, ptr %i.dh, align 8
  %i.ia = getelementptr inbounds i8, ptr %i.de, i64 %i.hz
  store ptr %i.dg, ptr %i.ia, align 8, !tbaa !132
  %i.ib = load ptr, ptr %i.de, align 8, !tbaa !132
  %i.ic = getelementptr i8, ptr %i.ib, i64 -24
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds i8, ptr %i.de, i64 %i.id
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ie, ptr noundef null)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc.i117
  %i.if = landingpad { ptr, i32 }
          cleanup
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.ig = load i64, ptr %i.dc, align 8
  %i.ih = getelementptr inbounds i8, ptr %14, i64 %i.ig
  store ptr %i.db, ptr %i.ih, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  br label %.body.i

bb.ak:                                            ; preds = %.noexc.i117
  store ptr %i.di, ptr %14, align 8, !tbaa !132
  %i.ii = load i64, ptr %i.dk, align 8
  %i.ij = getelementptr inbounds i8, ptr %14, i64 %i.ii
  store ptr %i.dj, ptr %i.ij, align 8, !tbaa !132
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
  %i.ik = load ptr, ptr %14, align 8, !tbaa !132
  %i.il = getelementptr i8, ptr %i.ik, i64 -24
  %i.im = load i64, ptr %i.il, align 8
  %i.in = getelementptr inbounds i8, ptr %14, i64 %i.im
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.in, ptr noundef nonnull %i.dl)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.am:                                            ; preds = %bb.ak
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.dl) #29
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.iq = load i64, ptr %i.dc, align 8
  %i.ir = getelementptr inbounds i8, ptr %14, i64 %i.iq
  store ptr %i.db, ptr %i.ir, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %bb.al, %bb.aj
  %.pn.pn.i = phi { ptr, i32 } [ %i.ip, %bb.am ], [ %i.io, %bb.al ], [ %i.if, %bb.aj ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cv) #29
  br label %.body

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.ak
  %i.is = load ptr, ptr %10, align 8, !tbaa !27
  %i.it = load i64, ptr %i.cn, align 8, !tbaa !32
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.is, i64 noundef %i.it)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ap

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIbSaIbEE12emplace_backIJbEEERbDpOT_:bb.a
bb.g:                                             ; preds = %.thread, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1394, !noalias !1948
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !335
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  br label %_ZNSt5dequeIbSaIbEE4backEv.exit

_ZNSt5dequeIbSaIbEE4backEv.exit:                  ; preds = %bb.f, %bb.g
  %i.bb = phi ptr [ %i.ba, %bb.g ], [ %i.au, %bb.f ]
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -1
  ret ptr %i.bc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !334  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !337  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !332
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !1100

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !335
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !335
  br label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !1100

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !335
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !335
  br label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIbSaIbEE15_M_allocate_mapEm.exit, !prof !834

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt11_Deque_baseIbSaIbEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #31 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !1100

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIbSaIbEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIbSaIbEE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !335
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !335
  br label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !332
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #32
  store ptr %i.aq, ptr %0, align 8, !tbaa !332
  store i64 %i.am, ptr %i.k, align 8, !tbaa !337
  br label %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !1394
  %i.be = load ptr, ptr %.0, align 8, !tbaa !335  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1426
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !1427
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !1394
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !335 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !1426
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !1427
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #27

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!9, !10, i64 16}
!18 = distinct !{!18, !14, !16, !15}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIPN2PP3CmdESaIS2_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p2 _ZTSN2PP3CmdE", !22, i64 0}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!20, !21, i64 16}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN2PP3CmdE", !11, i64 0}
!26 = !{!20, !21, i64 8}
!27 = !{!28, !30, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !31, i64 8, !6, i64 16}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !11, i64 0}
!31 = !{!"long", !6, i64 0}
!32 = !{!28, !31, i64 8}
!33 = !{!6, !6, i64 0}
!34 = distinct !{null}
!35 = distinct !{!35, !14}
!36 = !{!37, !81, i64 984}
!37 = !{!"_ZTSN2PP11PowerParserE", !38, i64 0, !50, i64 512, !51, i64 520, !28, i64 528, !28, i64 560, !52, i64 592, !5, i64 672, !59, i64 680, !68, i64 728, !73, i64 776, !76, i64 824, !76, i64 904, !81, i64 984, !52, i64 992, !5, i64 1072, !82, i64 1080, !82, i64 1472, !82, i64 1864, !5, i64 2256, !28, i64 2264, !86, i64 2296, !93, i64 2376, !5, i64 2456, !52, i64 2464, !100, i64 2544, !5, i64 2624, !100, i64 2632, !107, i64 2712, !5, i64 2792}
!38 = !{!"_ZTSSt14basic_ofstreamIcSt11char_traitsIcEE", !39, i64 0, !40, i64 8}
!39 = !{!"_ZTSSo"}
!40 = !{!"_ZTSSt13basic_filebufIcSt11char_traitsIcEE", !41, i64 0, !6, i64 64, !44, i64 104, !47, i64 120, !48, i64 124, !48, i64 132, !48, i64 140, !30, i64 152, !31, i64 160, !46, i64 168, !46, i64 169, !46, i64 170, !6, i64 171, !30, i64 176, !30, i64 184, !46, i64 192, !49, i64 200, !30, i64 208, !31, i64 216, !30, i64 224, !30, i64 232}
!41 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !42, i64 56}
!42 = !{!"_ZTSSt6locale", !43, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!44 = !{!"_ZTSSt12__basic_fileIcE", !45, i64 0, !46, i64 8}
!45 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!46 = !{!"bool", !6, i64 0}
!47 = !{!"_ZTSSt13_Ios_Openmode", !6, i64 0}
!48 = !{!"_ZTS11__mbstate_t", !5, i64 0, !6, i64 4}
!49 = !{!"p1 _ZTSSt7codecvtIcc11__mbstate_tE", !11, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!51 = !{!"p1 _ZTSN2PP4CommE", !11, i64 0}
!52 = !{!"_ZTSSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !53, i64 0}
!53 = !{!"_ZTSSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !54, i64 0}
!54 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implE", !55, i64 0}
!55 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !56, i64 0, !31, i64 8, !57, i64 16, !57, i64 48}
!56 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!57 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !58, i64 0, !58, i64 8, !58, i64 16, !56, i64 24}
!58 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!59 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !60, i64 0}
!60 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !61, i64 0}
!61 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !62, i64 0, !64, i64 8}
!62 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !63, i64 0}
!63 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!64 = !{!"_ZTSSt15_Rb_tree_header", !65, i64 0, !31, i64 32}
!65 = !{!"_ZTSSt18_Rb_tree_node_base", !66, i64 0, !67, i64 8, !67, i64 16, !67, i64 24}
!66 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!67 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!68 = !{!"_ZTSSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE", !69, i64 0}
!69 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE", !70, i64 0}
!70 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !71, i64 0, !64, i64 8}
!71 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !72, i64 0}
!72 = !{!"_ZTSSt4lessIiE"}
!73 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !74, i64 0}
!74 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8FunctionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !75, i64 0}
!75 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8FunctionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !62, i64 0, !64, i64 8}
!76 = !{!"_ZTSSt5dequeIN2PP3CmdESaIS1_EE", !77, i64 0}
!77 = !{!"_ZTSSt11_Deque_baseIN2PP3CmdESaIS1_EE", !78, i64 0}
!78 = !{!"_ZTSNSt11_Deque_baseIN2PP3CmdESaIS1_EE11_Deque_implE", !79, i64 0}
!79 = !{!"_ZTSNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_Deque_impl_dataE", !21, i64 0, !31, i64 8, !80, i64 16, !80, i64 48}
!80 = !{!"_ZTSSt15_Deque_iteratorIN2PP3CmdERS1_PS1_E", !25, i64 0, !25, i64 8, !25, i64 16, !21, i64 24}
!81 = !{!"p1 _ZTSSt5dequeIN2PP3CmdESaIS1_EE", !11, i64 0}
!82 = !{!"_ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !83, i64 0, !85, i64 24}
!83 = !{!"_ZTSSd", !84, i64 0, !39, i64 16}
!84 = !{!"_ZTSSi", !31, i64 8}
!85 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !41, i64 0, !47, i64 64, !28, i64 72}
!86 = !{!"_ZTSSt5dequeIN2PP8WhenthenESaIS1_EE", !87, i64 0}
!87 = !{!"_ZTSSt11_Deque_baseIN2PP8WhenthenESaIS1_EE", !88, i64 0}
!88 = !{!"_ZTSNSt11_Deque_baseIN2PP8WhenthenESaIS1_EE11_Deque_implE", !89, i64 0}
!89 = !{!"_ZTSNSt11_Deque_baseIN2PP8WhenthenESaIS1_EE16_Deque_impl_dataE", !90, i64 0, !31, i64 8, !91, i64 16, !91, i64 48}
!90 = !{!"p2 _ZTSN2PP8WhenthenE", !22, i64 0}
!91 = !{!"_ZTSSt15_Deque_iteratorIN2PP8WhenthenERS1_PS1_E", !92, i64 0, !92, i64 8, !92, i64 16, !90, i64 24}
!92 = !{!"p1 _ZTSN2PP8WhenthenE", !11, i64 0}
!93 = !{!"_ZTSSt5dequeIN2PP12RestartblockESaIS1_EE", !94, i64 0}
!94 = !{!"_ZTSSt11_Deque_baseIN2PP12RestartblockESaIS1_EE", !95, i64 0}
!95 = !{!"_ZTSNSt11_Deque_baseIN2PP12RestartblockESaIS1_EE11_Deque_implE", !96, i64 0}
!96 = !{!"_ZTSNSt11_Deque_baseIN2PP12RestartblockESaIS1_EE16_Deque_impl_dataE", !97, i64 0, !31, i64 8, !98, i64 16, !98, i64 48}
!97 = !{!"p2 _ZTSN2PP12RestartblockE", !22, i64 0}
!98 = !{!"_ZTSSt15_Deque_iteratorIN2PP12RestartblockERS1_PS1_E", !99, i64 0, !99, i64 8, !99, i64 16, !97, i64 24}
!99 = !{!"p1 _ZTSN2PP12RestartblockE", !11, i64 0}
!100 = !{!"_ZTSSt5dequeIbSaIbEE", !101, i64 0}
!101 = !{!"_ZTSSt11_Deque_baseIbSaIbEE", !102, i64 0}
!102 = !{!"_ZTSNSt11_Deque_baseIbSaIbEE11_Deque_implE", !103, i64 0}
!103 = !{!"_ZTSNSt11_Deque_baseIbSaIbEE16_Deque_impl_dataE", !104, i64 0, !31, i64 8, !105, i64 16, !105, i64 48}
!104 = !{!"p2 bool", !22, i64 0}
!105 = !{!"_ZTSSt15_Deque_iteratorIbRbPbE", !106, i64 0, !106, i64 8, !106, i64 16, !104, i64 24}
!106 = !{!"p1 bool", !11, i64 0}
!107 = !{!"_ZTSSt5dequeIiSaIiEE", !108, i64 0}
!108 = !{!"_ZTSSt11_Deque_baseIiSaIiEE", !109, i64 0}
!109 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE11_Deque_implE", !110, i64 0}
!110 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !111, i64 0, !31, i64 8, !112, i64 16, !112, i64 48}
!111 = !{!"p2 int", !22, i64 0}
!112 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !10, i64 0, !10, i64 8, !10, i64 16, !111, i64 24}
!113 = !{!80, !21, i64 24}
!114 = !{!80, !25, i64 0}
!115 = !{!80, !25, i64 8}
!116 = !{!80, !25, i64 16}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El: argument 0"}
!119 = distinct !{!119, !"_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN2PP3Cmd12get_cmd_nameB5cxx11Ev: argument 0"}
!122 = distinct !{!122, !"_ZN2PP3Cmd12get_cmd_nameB5cxx11Ev"}
!123 = !{!29, !30, i64 0}
!124 = !{!31, !31, i64 0}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El: argument 0"}
!127 = distinct !{!127, !"_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El"}
!128 = !{!37, !5, i64 2792}
!129 = !{!55, !58, i64 48}
!130 = !{!55, !58, i64 64}
!131 = distinct !{!131, !14}
!132 = !{!133, !133, i64 0}
!133 = !{!"vtable pointer", !7, i64 0}
!134 = !{!84, !31, i64 8}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!137 = distinct !{!137, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!140 = distinct !{!140, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!141 = !{!139, !136}
!142 = !{!41, !30, i64 40}
!143 = !{!41, !30, i64 32}
!144 = !{!37, !5, i64 2256}
!145 = !{!37, !51, i64 520}
!146 = !{!147, !5, i64 8}
!147 = !{!"_ZTSN2PP4CommE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!148 = !{!147, !5, i64 12}
!149 = !{!150, !158, i64 240}
!150 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !151, i64 0, !157, i64 216, !6, i64 224, !46, i64 225, !50, i64 232, !158, i64 240, !159, i64 248, !160, i64 256}
!151 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !152, i64 24, !153, i64 28, !153, i64 32, !154, i64 40, !155, i64 48, !6, i64 64, !5, i64 192, !156, i64 200, !42, i64 208}
!152 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!153 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
end_hunk_1
