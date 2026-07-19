inline.NumInlined: 4253
inline.NumDeleted: 716
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2PP3Cmd16handle_two_wordsEv:bb.a
  br i1 %i.di, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.dj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef 0) ; 2 uses
  store ptr %i.dj, ptr %15, align 8, !tbaa !45, !alias.scope !1971
  %i.dk = load i64, ptr %i.x, align 8, !tbaa !67, !noalias !1971
  store i64 %i.dk, ptr %i.ag, align 8, !tbaa !15, !alias.scope !1971
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.dl = phi ptr [ %i.dj, %.noexc.i.i ], [ %i.ag, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit ] ; 2 uses
  switch i64 %i.dh, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.dm = load i8, ptr %i.df, align 1, !tbaa !15
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !15
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.df, i64 %i.dh, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

_ZN2PP4Word10get_stringB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.dn = load i64, ptr %i.x, align 8, !tbaa !67, !noalias !1971 ; 2 uses
  store i64 %i.dn, ptr %i.ah, align 8, !tbaa !12, !alias.scope !1971
  %i.do = load ptr, ptr %15, align 8, !tbaa !45, !alias.scope !1971
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  store i8 0, ptr %i.dp, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #22, !noalias !1971
  %i.dq = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.dr = icmp eq i64 %i.dq, 1
  %.pre955 = load ptr, ptr %15, align 8, !tbaa !45 ; 3 uses
  br i1 %i.dr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  %lhsc1139 = load i8, ptr %.pre955, align 1
  %i.ds = icmp eq i8 %lhsc1139, 43
  br i1 %i.ds, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.dt = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.du = load ptr, ptr %i.aa, align 8, !tbaa !71, !noalias !1974 ; 2 uses
  %i.dv = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !1974
  %i.dw = load ptr, ptr %i.ac, align 8, !tbaa !76, !noalias !1974
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 7
  %i.eb = add nsw i64 %i.ea, %i.dt                ; 5 uses
  %i.ec = icmp sgt i64 %i.eb, -1
  br i1 %i.ec, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ed = icmp samesign ult i64 %i.eb, 4
  br i1 %i.ed, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ee = getelementptr inbounds nuw [128 x i8], ptr %i.du, i64 %i.dt
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit212

bb.m:                                             ; preds = %bb.k
  %i.ef = lshr i64 %i.eb, 2
  br label %bb.o

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.eg = ashr i64 %i.eb, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.eh = phi i64 [ %i.ef, %bb.m ], [ %i.eg, %bb.n ] ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51, !noalias !1974
  %i.ek = shl nsw i64 %i.eh, 2
  %i.el = sub nsw i64 %i.eb, %i.ek
  %i.em = getelementptr inbounds [128 x i8], ptr %i.ej, i64 %i.el
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit212

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit212:       ; preds = %bb.l, %bb.o
  %storemerge.i.i.i.i211 = phi ptr [ %i.em, %bb.o ], [ %i.ee, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  store ptr %i.ai, ptr %16, align 8, !tbaa !8, !alias.scope !1977
  %i.en = load ptr, ptr %storemerge.i.i.i.i211, align 8, !tbaa !45, !noalias !1977 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i211, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !12, !noalias !1977 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #22, !noalias !1977
  store i64 %i.ep, ptr %i.w, align 8, !tbaa !67, !noalias !1977
  %i.eq = icmp ugt i64 %i.ep, 15
  br i1 %i.eq, label %.noexc.i.i214, label %._crit_edge.i.i.i213

.noexc.i.i214:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit212
  %i.er = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i214
  store ptr %i.er, ptr %16, align 8, !tbaa !45, !alias.scope !1977
  %i.es = load i64, ptr %i.w, align 8, !tbaa !67, !noalias !1977
  store i64 %i.es, ptr %i.ai, align 8, !tbaa !15, !alias.scope !1977
  br label %._crit_edge.i.i.i213

._crit_edge.i.i.i213:                             ; preds = %.noexc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit212
  %i.et = phi ptr [ %i.er, %.noexc ], [ %i.ai, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit212 ] ; 2 uses
  switch i64 %i.ep, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i213
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !15
  store i8 %i.eu, ptr %i.et, align 1, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i213
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr align 1 %i.en, i64 %i.ep, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i213
  %i.ev = load i64, ptr %i.w, align 8, !tbaa !67, !noalias !1977 ; 2 uses
  store i64 %i.ev, ptr %i.aj, align 8, !tbaa !12, !alias.scope !1977
  %i.ew = load ptr, ptr %16, align 8, !tbaa !45, !alias.scope !1977
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #22, !noalias !1977
  %i.ey = load i64, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 1
  %.pre953 = load ptr, ptr %16, align 8, !tbaa !45 ; 3 uses
  br i1 %i.ez, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %lhsc1140 = load i8, ptr %.pre953, align 1
  %i.fa = icmp eq i8 %lhsc1140, 43
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.ph = phi i1 [ false, %bb.r ], [ %i.fa, %bb.s ]
  %i.fb = icmp eq ptr %.pre953, %i.ai
  br i1 %i.fb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.t
  %i.fc = icmp ult i64 %i.ey, 16
  call void @llvm.assume(i1 %i.fc)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.fd = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %.pre953, i64 noundef %i.fe) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %.pre954 = load ptr, ptr %15, align 8, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ff = phi ptr [ %.pre954, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre955, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre955, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ] ; 2 uses
  %i.fg = phi i1 [ %.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ]
  %i.fh = icmp eq ptr %i.ff, %i.ag
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %.critedge
  %i.fi = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %i.fg, label %bb.u, label %bb.ax

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.fk = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %i.fl = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 3 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 3
  %i.fq = icmp ne ptr %i.fk, null
  %.neg.i.i221 = sext i1 %i.fq to i64
  %i.fr = add nsw i64 %i.fp, %.neg.i.i221
  %i.fs = shl nsw i64 %i.fr, 2
  %i.ft = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.fu = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr exact i64 %i.fx, 7
  %i.fz = add nsw i64 %i.fs, %i.fy
  %i.ga = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.gb = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 3 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64               ; 3 uses
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = lshr exact i64 %i.ge, 7
  %i.gg = add nsw i64 %i.fz, %i.gf
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, -2                   ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv, %i.gj
  br i1 %i.gk, label %bb.w, label %_ZN2PP4Word9is_numvarEv.exit

bb.v:                                             ; preds = %.noexc.i.i214
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.gm = load ptr, ptr %15, align 8, !tbaa !45   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.ag
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.v
  %i.go = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.jp

bb.w:                                             ; preds = %bb.u
  %i.gq = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.gr = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !1980
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gd, %i.gs
  %i.gu = ashr exact i64 %i.gt, 7                 ; 2 uses
  %i.gv = add nsw i64 %i.gu, %i.gq                ; 5 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  br i1 %i.gw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gx = icmp samesign ult i64 %i.gv, 4
  br i1 %i.gx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gy = getelementptr inbounds nuw [128 x i8], ptr %i.gb, i64 %i.gq
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit230

bb.z:                                             ; preds = %bb.x
  %i.gz = lshr i64 %i.gv, 2
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.ha = ashr i64 %i.gv, 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hb = phi i64 [ %i.gz, %bb.z ], [ %i.ha, %bb.aa ] ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !51, !noalias !1980
  %i.he = shl nsw i64 %i.hb, 2
  %i.hf = sub nsw i64 %i.gv, %i.he
  %i.hg = getelementptr inbounds [128 x i8], ptr %i.hd, i64 %i.hf
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit230

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit230:       ; preds = %bb.y, %bb.ab
  %storemerge.i.i.i.i229 = phi ptr [ %i.hg, %bb.ab ], [ %i.gy, %bb.y ]
  %i.hh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i229, i64 32
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !107
  switch i32 %i.hi, label %_ZN2PP4Word9is_numvarEv.exit.thread714 [
    i32 2, label %bb.ax
    i32 3, label %bb.ax
    i32 13, label %bb.ax
  ]

_ZN2PP4Word9is_numvarEv.exit:                     ; preds = %bb.u
  %60 = zext i32 %i.gi to i64
  %61 = icmp eq i64 %indvars.iv, %60
  br i1 %61, label %_ZN2PP4Word9is_numvarEv.exit._ZN2PP4Word9is_numvarEv.exit.thread714_crit_edge, label %bb.ax

_ZN2PP4Word9is_numvarEv.exit._ZN2PP4Word9is_numvarEv.exit.thread714_crit_edge: ; preds = %_ZN2PP4Word9is_numvarEv.exit
  %.pre956 = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !1983
  %.pre957 = ptrtoint ptr %.pre956 to i64
  %.pre958 = sub i64 %i.gd, %.pre957
  %.pre960 = ashr exact i64 %.pre958, 7
  br label %_ZN2PP4Word9is_numvarEv.exit.thread714

_ZN2PP4Word9is_numvarEv.exit.thread714:           ; preds = %_ZN2PP4Word9is_numvarEv.exit._ZN2PP4Word9is_numvarEv.exit.thread714_crit_edge, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit230
  %.pre-phi961 = phi i64 [ %.pre960, %_ZN2PP4Word9is_numvarEv.exit._ZN2PP4Word9is_numvarEv.exit.thread714_crit_edge ], [ %i.gu, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit230 ]
  %i.hj = add nsw i64 %.pre-phi961, %indvars.iv   ; 6 uses
  %i.hk = icmp sgt i64 %i.hj, -1
  br i1 %i.hk, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZN2PP4Word9is_numvarEv.exit.thread714
  %i.hl = icmp samesign ult i64 %i.hj, 4
  br i1 %i.hl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hm = getelementptr inbounds nuw [128 x i8], ptr %i.gb, i64 %indvars.iv ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !443
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 84
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit236

bb.ae:                                            ; preds = %bb.ac
  %i.hr = lshr i64 %i.hj, 2
  br label %bb.ag

bb.af:                                            ; preds = %_ZN2PP4Word9is_numvarEv.exit.thread714
  %i.hs = ashr i64 %i.hj, 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink = phi i64 [ %i.hs, %bb.af ], [ %i.hr, %bb.ae ] ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.sink
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !51, !noalias !1983 ; 2 uses
  %i.hv = and i64 %i.hj, 3
  %i.hw = getelementptr inbounds nuw [128 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !443
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 84
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ib = shl nsw i64 %.sink, 2
  %i.ic = sub nsw i64 %i.hj, %i.ib
  %i.id = getelementptr inbounds [128 x i8], ptr %i.hu, i64 %i.ic
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit236

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit236:       ; preds = %bb.ad, %bb.ag
  %i.ie = phi i32 [ %i.ia, %bb.ag ], [ %i.hq, %bb.ad ]
  %i.if = phi i32 [ %i.hy, %bb.ag ], [ %i.ho, %bb.ad ]
  %storemerge.i.i.i.i235 = phi ptr [ %i.id, %bb.ag ], [ %i.hm, %bb.ad ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.ig = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i235, i64 88
  store ptr %i.ak, ptr %17, align 8, !tbaa !8, !alias.scope !1986
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !45, !noalias !1986 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i235, i64 96
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !12, !noalias !1986 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #22, !noalias !1986
  store i64 %i.ij, ptr %i.v, align 8, !tbaa !67, !noalias !1986
  %i.ik = icmp ugt i64 %i.ij, 15
  br i1 %i.ik, label %.noexc.i.i238, label %._crit_edge.i.i.i237

.noexc.i.i238:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit236
  %i.il = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 0) ; 2 uses
  store ptr %i.il, ptr %17, align 8, !tbaa !45, !alias.scope !1986
  %i.im = load i64, ptr %i.v, align 8, !tbaa !67, !noalias !1986
  store i64 %i.im, ptr %i.ak, align 8, !tbaa !15, !alias.scope !1986
  br label %._crit_edge.i.i.i237

._crit_edge.i.i.i237:                             ; preds = %.noexc.i.i238, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit236
  %i.in = phi ptr [ %i.il, %.noexc.i.i238 ], [ %i.ak, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit236 ] ; 2 uses
  switch i64 %i.ij, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i237
  %i.io = load i8, ptr %i.ih, align 1, !tbaa !15
  store i8 %i.io, ptr %i.in, align 1, !tbaa !15
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i237
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.in, ptr align 1 %i.ih, i64 %i.ij, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i237
  %i.ip = load i64, ptr %i.v, align 8, !tbaa !67, !noalias !1986 ; 2 uses
  store i64 %i.ip, ptr %i.al, align 8, !tbaa !12, !alias.scope !1986
  %i.iq = load ptr, ptr %17, align 8, !tbaa !45, !alias.scope !1986
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ip
  store i8 0, ptr %i.ir, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #22, !noalias !1986
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %i.am, ptr %18, align 8, !tbaa !8
  store i16 11051, ptr %i.am, align 8
  store i64 2, ptr %i.an, align 8, !tbaa !12
  store i8 0, ptr %i.aw, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.ao, ptr %20, align 8, !tbaa !8
  store i16 11051, ptr %i.ao, align 8
  store i64 2, ptr %i.ap, align 8, !tbaa !12
  store i8 0, ptr %i.ax, align 2, !tbaa !15
  store ptr %i.aq, ptr %21, align 8, !tbaa !8
  %i.is = load ptr, ptr %17, align 8, !tbaa !45   ; 2 uses
  %i.it = load i64, ptr %i.al, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #22
  store i64 %i.it, ptr %i.u, align 8, !tbaa !67
  %i.iu = icmp ugt i64 %i.it, 15
  br i1 %i.iu, label %.noexc.i244, label %._crit_edge.i.i243

.noexc.i244:                                      ; preds = %bb.aj
  %i.iv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0)
          to label %.noexc245 unwind label %bb.au ; 2 uses

.noexc245:                                        ; preds = %.noexc.i244
  store ptr %i.iv, ptr %21, align 8, !tbaa !45
  %i.iw = load i64, ptr %i.u, align 8, !tbaa !67
  store i64 %i.iw, ptr %i.aq, align 8, !tbaa !15
  br label %._crit_edge.i.i243

._crit_edge.i.i243:                               ; preds = %.noexc245, %bb.aj
  %i.ix = phi ptr [ %i.iv, %.noexc245 ], [ %i.aq, %bb.aj ] ; 2 uses
  switch i64 %i.it, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i243
  %i.iy = load i8, ptr %i.is, align 1, !tbaa !15
  store i8 %i.iy, ptr %i.ix, align 1, !tbaa !15
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i243
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ix, ptr align 1 %i.is, i64 %i.it, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i243
  %i.iz = load i64, ptr %i.u, align 8, !tbaa !67  ; 2 uses
  store i64 %i.iz, ptr %i.ar, align 8, !tbaa !12
  %i.ja = load ptr, ptr %21, align 8, !tbaa !45
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iz
  store i8 0, ptr %i.jb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #22
  %i.jc = load ptr, ptr %i.as, align 8, !tbaa !66
  invoke void @_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128) %19, ptr noundef nonnull %20, i32 noundef %i.if, i32 noundef %i.ie, ptr noundef nonnull %21, ptr noundef %i.jc)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.jd = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.aq
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %bb.an
  %i.jf = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247
  %i.jh = load ptr, ptr %20, align 8, !tbaa !45   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.ao
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
  %i.jj = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250
  %i.jl = add nuw nsw i32 %indvars912, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  invoke void @_ZN2PP3Cmd12delete_wordsEii(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %indvars912, i32 noundef %i.jl)
          to label %.noexc253 unwind label %bb.aw

.noexc253:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %i.jm = load ptr, ptr %i.aa, align 8, !tbaa !71, !noalias !1989 ; 2 uses
  %i.jn = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !1989 ; 2 uses
  %i.jo = load ptr, ptr %i.ae, align 8, !tbaa !87, !noalias !1989
  %i.jp = load ptr, ptr %i.ac, align 8, !tbaa !76, !noalias !1989 ; 2 uses
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = ptrtoint ptr %i.jn to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = ashr exact i64 %i.js, 7
  %i.ju = add nsw i64 %i.jt, %indvars.iv          ; 5 uses
  %i.jv = icmp sgt i64 %i.ju, -1
  br i1 %i.jv, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %.noexc253
  %i.jw = icmp samesign ult i64 %i.ju, 4
  br i1 %i.jw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jx = getelementptr inbounds nuw [128 x i8], ptr %i.jm, i64 %indvars.iv
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.jy = lshr i64 %i.ju, 2
  br label %bb.as

bb.ar:                                            ; preds = %.noexc253
  %i.jz = ashr i64 %i.ju, 2
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ka = phi i64 [ %i.jy, %bb.aq ], [ %i.jz, %bb.ar ] ; 2 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.ka ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !51, !noalias !1992 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 512
  %i.ke = shl nsw i64 %i.ka, 2
  %i.kf = sub nsw i64 %i.ju, %i.ke
  %i.kg = getelementptr inbounds [128 x i8], ptr %i.kc, i64 %i.kf
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i: ; preds = %bb.as, %bb.ap
  %.sroa.7.0.i = phi ptr [ %i.jo, %bb.ap ], [ %i.kd, %bb.as ]
  %.sroa.4.0.i = phi ptr [ %i.jn, %bb.ap ], [ %i.kc, %bb.as ]
  %.sroa.10.0.i = phi ptr [ %i.jp, %bb.ap ], [ %i.kb, %bb.as ]
  %storemerge.i.i.i = phi ptr [ %i.jx, %bb.ap ], [ %i.kg, %bb.as ]
  store ptr %storemerge.i.i.i, ptr %13, align 8, !tbaa !204
  store ptr %.sroa.4.0.i, ptr %i.at, align 8, !tbaa !206
  store ptr %.sroa.7.0.i, ptr %i.au, align 8, !tbaa !207
  store ptr %.sroa.10.0.i, ptr %i.av, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %14, ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(128) %19)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.kh = load ptr, ptr %18, align 8, !tbaa !45   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.am
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %bb.at
  %i.kj = load i64, ptr %i.am, align 8, !tbaa !15
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.kl = load ptr, ptr %17, align 8, !tbaa !45   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ak
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %i.kn = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ax

bb.au:                                            ; preds = %.noexc.i244
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

bb.av:                                            ; preds = %bb.am
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.aq
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.av
  %i.kt = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261, %bb.au
  %.pn191 = phi { ptr, i32 } [ %i.kp, %bb.au ], [ %i.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ], [ %i.kq, %bb.av ] ; 2 uses
  %i.kv = load ptr, ptr %20, align 8, !tbaa !45   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.ao
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.kx = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

bb.aw:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %19) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.aw
  %.pn193 = phi { ptr, i32 } [ %i.kz, %bb.aw ], [ %.pn191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %.pn191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.la = load ptr, ptr %18, align 8, !tbaa !45   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.am
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.lc = load i64, ptr %i.am, align 8, !tbaa !15
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.le = load ptr, ptr %17, align 8, !tbaa !45   ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.ak
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.lg = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.jp

bb.ax:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit230, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit230, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit230, %_ZN2PP4Word9is_numvarEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !1995

bb.ay:                                            ; preds = %.preheader, %bb.cv
  %i.li = phi ptr [ %i.bp, %.preheader ], [ %.pre921, %bb.cv ] ; 5 uses
  %i.lj = phi ptr [ %i.bo, %.preheader ], [ %.pre920, %bb.cv ]
  %i.lk = phi ptr [ %i.bi, %.preheader ], [ %.pre919, %bb.cv ]
  %i.ll = phi ptr [ %i.bh, %.preheader ], [ %.pre918, %bb.cv ]
  %i.lm = phi ptr [ %i.az, %.preheader ], [ %.pre917, %bb.cv ] ; 4 uses
  %i.ln = phi ptr [ %i.ay, %.preheader ], [ %.pre, %bb.cv ] ; 2 uses
  %indvars.iv913 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next914, %bb.cv ] ; 13 uses
  %indvars915 = trunc i64 %indvars.iv913 to i32   ; 2 uses
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.lm to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 3
  %i.ls = icmp ne ptr %i.ln, null
  %.neg.i.i273 = sext i1 %i.ls to i64
  %i.lt = add nsw i64 %i.lr, %.neg.i.i273
  %i.lu = shl nsw i64 %i.lt, 2
  %i.lv = ptrtoint ptr %i.ll to i64
  %i.lw = ptrtoint ptr %i.lk to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = lshr exact i64 %i.lx, 7
  %i.lz = add nsw i64 %i.lu, %i.ly
  %i.ma = ptrtoint ptr %i.lj to i64
  %i.mb = ptrtoint ptr %i.li to i64               ; 3 uses
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = lshr exact i64 %i.mc, 7
  %i.me = add nsw i64 %i.lz, %i.md                ; 2 uses
  %i.mf = shl i64 %i.me, 32
  %sext1137 = add i64 %i.mf, -4294967296
  %i.mg = ashr exact i64 %sext1137, 32
  %i.mh = icmp slt i64 %indvars.iv913, %i.mg
  br i1 %i.mh, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mi = trunc i64 %i.me to i32
  %i.mj = icmp slt i32 %i.mi, 2
  br i1 %i.mj, label %bb.jn, label %bb.cw

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.mk = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !1996
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = sub i64 %i.mb, %i.ml
  %i.mn = ashr exact i64 %i.mm, 7
  %i.mo = add nsw i64 %i.mn, %indvars.iv913       ; 5 uses
  %i.mp = icmp sgt i64 %i.mo, -1
  br i1 %i.mp, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.mq = icmp samesign ult i64 %i.mo, 4
  br i1 %i.mq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.mr = getelementptr inbounds nuw [128 x i8], ptr %i.li, i64 %indvars.iv913
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit276

bb.bd:                                            ; preds = %bb.bb
  %i.ms = lshr i64 %i.mo, 2
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.mt = ashr i64 %i.mo, 2
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.mu = phi i64 [ %i.ms, %bb.bd ], [ %i.mt, %bb.be ] ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !51, !noalias !1996
  %i.mx = shl nsw i64 %i.mu, 2
  %i.my = sub nsw i64 %i.mo, %i.mx
  %i.mz = getelementptr inbounds [128 x i8], ptr %i.mw, i64 %i.my
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit276

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit276:       ; preds = %bb.bc, %bb.bf
  %storemerge.i.i.i.i275 = phi ptr [ %i.mz, %bb.bf ], [ %i.mr, %bb.bc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  store ptr %i.by, ptr %22, align 8, !tbaa !8, !alias.scope !1999
  %i.na = load ptr, ptr %storemerge.i.i.i.i275, align 8, !tbaa !45, !noalias !1999 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i275, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !12, !noalias !1999 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #22, !noalias !1999
  store i64 %i.nc, ptr %i.t, align 8, !tbaa !67, !noalias !1999
  %i.nd = icmp ugt i64 %i.nc, 15
  br i1 %i.nd, label %.noexc.i.i278, label %._crit_edge.i.i.i277

.noexc.i.i278:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit276
  %i.ne = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0) ; 2 uses
  store ptr %i.ne, ptr %22, align 8, !tbaa !45, !alias.scope !1999
  %i.nf = load i64, ptr %i.t, align 8, !tbaa !67, !noalias !1999
  store i64 %i.nf, ptr %i.by, align 8, !tbaa !15, !alias.scope !1999
  br label %._crit_edge.i.i.i277

._crit_edge.i.i.i277:                             ; preds = %.noexc.i.i278, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit276
  %i.ng = phi ptr [ %i.ne, %.noexc.i.i278 ], [ %i.by, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit276 ] ; 2 uses
  switch i64 %i.nc, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit279
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i.i277
  %i.nh = load i8, ptr %i.na, align 1, !tbaa !15
  store i8 %i.nh, ptr %i.ng, align 1, !tbaa !15
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit279

bb.bh:                                            ; preds = %._crit_edge.i.i.i277
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ng, ptr align 1 %i.na, i64 %i.nc, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit279

_ZN2PP4Word10get_stringB5cxx11Ev.exit279:         ; preds = %._crit_edge.i.i.i277, %bb.bg, %bb.bh
  %i.ni = load i64, ptr %i.t, align 8, !tbaa !67, !noalias !1999 ; 2 uses
  store i64 %i.ni, ptr %i.bz, align 8, !tbaa !12, !alias.scope !1999
  %i.nj = load ptr, ptr %22, align 8, !tbaa !45, !alias.scope !1999
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.ni
  store i8 0, ptr %i.nk, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #22, !noalias !1999
  %i.nl = load i64, ptr %i.bz, align 8, !tbaa !12
  %i.nm = icmp eq i64 %i.nl, 1
  %.pre939 = load ptr, ptr %22, align 8, !tbaa !45 ; 3 uses
  br i1 %i.nm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281, label %.critedge199

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281: ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit279
  %lhsc = load i8, ptr %.pre939, align 1
  %i.nn = icmp eq i8 %lhsc, 45
  br i1 %i.nn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread, label %.critedge199

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.no = add nuw nsw i64 %indvars.iv913, 1       ; 2 uses
  %i.np = load ptr, ptr %i.aa, align 8, !tbaa !71, !noalias !2002 ; 2 uses
  %i.nq = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !2002
  %i.nr = load ptr, ptr %i.ac, align 8, !tbaa !76, !noalias !2002
  %i.ns = ptrtoint ptr %i.np to i64
  %i.nt = ptrtoint ptr %i.nq to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = ashr exact i64 %i.nu, 7
  %i.nw = add nsw i64 %i.nv, %i.no                ; 5 uses
  %i.nx = icmp sgt i64 %i.nw, -1
  br i1 %i.nx, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread
  %i.ny = icmp samesign ult i64 %i.nw, 4
  br i1 %i.ny, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.nz = getelementptr inbounds nuw [128 x i8], ptr %i.np, i64 %i.no
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit283

bb.bk:                                            ; preds = %bb.bi
  %i.oa = lshr i64 %i.nw, 2
  br label %bb.bm

bb.bl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread
  %i.ob = ashr i64 %i.nw, 2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.oc = phi i64 [ %i.oa, %bb.bk ], [ %i.ob, %bb.bl ] ; 2 uses
  %i.od = getelementptr inbounds [8 x i8], ptr %i.nr, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !51, !noalias !2002
  %i.of = shl nsw i64 %i.oc, 2
  %i.og = sub nsw i64 %i.nw, %i.of
  %i.oh = getelementptr inbounds [128 x i8], ptr %i.oe, i64 %i.og
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit283

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit283:       ; preds = %bb.bj, %bb.bm
  %storemerge.i.i.i.i282 = phi ptr [ %i.oh, %bb.bm ], [ %i.nz, %bb.bj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  store ptr %i.ca, ptr %23, align 8, !tbaa !8, !alias.scope !2005
  %i.oi = load ptr, ptr %storemerge.i.i.i.i282, align 8, !tbaa !45, !noalias !2005 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i282, i64 8
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !12, !noalias !2005 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #22, !noalias !2005
  store i64 %i.ok, ptr %i.s, align 8, !tbaa !67, !noalias !2005
  %i.ol = icmp ugt i64 %i.ok, 15
  br i1 %i.ol, label %.noexc.i.i285, label %._crit_edge.i.i.i284

.noexc.i.i285:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit283
  %i.om = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %.noexc286 unwind label %bb.bt ; 2 uses

.noexc286:                                        ; preds = %.noexc.i.i285
  store ptr %i.om, ptr %23, align 8, !tbaa !45, !alias.scope !2005
  %i.on = load i64, ptr %i.s, align 8, !tbaa !67, !noalias !2005
  store i64 %i.on, ptr %i.ca, align 8, !tbaa !15, !alias.scope !2005
  br label %._crit_edge.i.i.i284

._crit_edge.i.i.i284:                             ; preds = %.noexc286, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit283
  %i.oo = phi ptr [ %i.om, %.noexc286 ], [ %i.ca, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit283 ] ; 2 uses
  switch i64 %i.ok, label %bb.bo [
    i64 1, label %bb.bn
    i64 0, label %bb.bp
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i284
  %i.op = load i8, ptr %i.oi, align 1, !tbaa !15
  store i8 %i.op, ptr %i.oo, align 1, !tbaa !15
  br label %bb.bp

bb.bo:                                            ; preds = %._crit_edge.i.i.i284
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %i.oi, i64 %i.ok, i1 false)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %._crit_edge.i.i.i284
  %i.oq = load i64, ptr %i.s, align 8, !tbaa !67, !noalias !2005 ; 2 uses
  store i64 %i.oq, ptr %i.cb, align 8, !tbaa !12, !alias.scope !2005
  %i.or = load ptr, ptr %23, align 8, !tbaa !45, !alias.scope !2005
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.oq
  store i8 0, ptr %i.os, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #22, !noalias !2005
  %i.ot = load i64, ptr %i.cb, align 8, !tbaa !12 ; 2 uses
  %i.ou = icmp eq i64 %i.ot, 1
  %.pre937 = load ptr, ptr %23, align 8, !tbaa !45 ; 3 uses
  br i1 %i.ou, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %lhsc1138 = load i8, ptr %.pre937, align 1
  %i.ov = icmp eq i8 %lhsc1138, 45
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.ph722 = phi i1 [ false, %bb.bp ], [ %i.ov, %bb.bq ]
  %i.ow = icmp eq ptr %.pre937, %i.ca
  br i1 %i.ow, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i291: ; preds = %bb.br
  %i.ox = icmp ult i64 %i.ot, 16
  call void @llvm.assume(i1 %i.ox)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.br
  %i.oy = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %.pre937, i64 noundef %i.oz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %.pre938 = load ptr, ptr %22, align 8, !tbaa !45
  br label %.critedge199

.critedge199:                                     ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit279, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %i.pa = phi ptr [ %.pre938, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ %.pre939, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281 ], [ %.pre939, %_ZN2PP4Word10get_stringB5cxx11Ev.exit279 ] ; 2 uses
  %i.pb = phi i1 [ %.ph722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281 ], [ false, %_ZN2PP4Word10get_stringB5cxx11Ev.exit279 ]
  %i.pc = icmp eq ptr %i.pa, %i.by
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %.critedge199
  %i.pd = load i64, ptr %i.by, align 8, !tbaa !15
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %.critedge199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %.pre.pre941 = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 7 uses
  %.pre917.pre943 = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 8 uses
  %.pre918.pre945 = load ptr, ptr %i.z, align 8, !tbaa !71 ; 6 uses
  %.pre919.pre947 = load ptr, ptr %i.ad, align 8, !tbaa !75 ; 6 uses
  %.pre920.pre949 = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 6 uses
  %.pre921.pre951 = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 8 uses
  br i1 %i.pb, label %bb.bs, label %bb.cv

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.pf = ptrtoint ptr %.pre.pre941 to i64
  %i.pg = ptrtoint ptr %.pre917.pre943 to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = ashr exact i64 %i.ph, 3
  %i.pj = icmp ne ptr %.pre.pre941, null
  %.neg.i.i296 = sext i1 %i.pj to i64
  %i.pk = add nsw i64 %i.pi, %.neg.i.i296
  %i.pl = shl nsw i64 %i.pk, 2
  %i.pm = ptrtoint ptr %.pre918.pre945 to i64
  %i.pn = ptrtoint ptr %.pre919.pre947 to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = lshr exact i64 %i.po, 7
  %i.pq = add nsw i64 %i.pl, %i.pp
  %i.pr = ptrtoint ptr %.pre920.pre949 to i64
  %i.ps = ptrtoint ptr %.pre921.pre951 to i64     ; 3 uses
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = lshr exact i64 %i.pt, 7
  %i.pv = add nsw i64 %i.pq, %i.pu
  %i.pw = trunc i64 %i.pv to i32
  %i.px = add nsw i32 %i.pw, -2                   ; 2 uses
  %i.py = sext i32 %i.px to i64
  %i.pz = icmp slt i64 %indvars.iv913, %i.py
  br i1 %i.pz, label %bb.bu, label %_ZN2PP4Word9is_numvarEv.exit307

bb.bt:                                            ; preds = %.noexc.i.i285
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.qb = load ptr, ptr %22, align 8, !tbaa !45   ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.by
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %bb.bt
  %i.qd = load i64, ptr %i.by, align 8, !tbaa !15
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.jp

bb.bu:                                            ; preds = %bb.bs
  %i.qf = add nuw nsw i64 %indvars.iv913, 2       ; 2 uses
  %i.qg = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !2008
  %i.qh = ptrtoint ptr %i.qg to i64
  %i.qi = sub i64 %i.ps, %i.qh
  %i.qj = ashr exact i64 %i.qi, 7                 ; 2 uses
  %i.qk = add nsw i64 %i.qj, %i.qf                ; 5 uses
  %i.ql = icmp sgt i64 %i.qk, -1
  br i1 %i.ql, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.qm = icmp samesign ult i64 %i.qk, 4
  br i1 %i.qm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qn = getelementptr inbounds nuw [128 x i8], ptr %.pre921.pre951, i64 %i.qf
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305

bb.bx:                                            ; preds = %bb.bv
  %i.qo = lshr i64 %i.qk, 2
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.qp = ashr i64 %i.qk, 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.qq = phi i64 [ %i.qo, %bb.bx ], [ %i.qp, %bb.by ] ; 2 uses
  %i.qr = getelementptr inbounds [8 x i8], ptr %.pre917.pre943, i64 %i.qq
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !51, !noalias !2008
  %i.qt = shl nsw i64 %i.qq, 2
  %i.qu = sub nsw i64 %i.qk, %i.qt
  %i.qv = getelementptr inbounds [128 x i8], ptr %i.qs, i64 %i.qu
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305:       ; preds = %bb.bw, %bb.bz
  %storemerge.i.i.i.i304 = phi ptr [ %i.qv, %bb.bz ], [ %i.qn, %bb.bw ]
  %i.qw = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i304, i64 32
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !107
  switch i32 %i.qx, label %_ZN2PP4Word9is_numvarEv.exit307.thread724 [
    i32 2, label %bb.cv
    i32 3, label %bb.cv
    i32 13, label %bb.cv
  ]

_ZN2PP4Word9is_numvarEv.exit307:                  ; preds = %bb.bs
  %62 = zext i32 %i.px to i64
  %63 = icmp eq i64 %indvars.iv913, %62
  br i1 %63, label %_ZN2PP4Word9is_numvarEv.exit307._ZN2PP4Word9is_numvarEv.exit307.thread724_crit_edge, label %bb.cv

_ZN2PP4Word9is_numvarEv.exit307._ZN2PP4Word9is_numvarEv.exit307.thread724_crit_edge: ; preds = %_ZN2PP4Word9is_numvarEv.exit307
  %.pre940 = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !2011
  %.pre962 = ptrtoint ptr %.pre940 to i64
  %.pre964 = sub i64 %i.ps, %.pre962
  %.pre966 = ashr exact i64 %.pre964, 7
  br label %_ZN2PP4Word9is_numvarEv.exit307.thread724

_ZN2PP4Word9is_numvarEv.exit307.thread724:        ; preds = %_ZN2PP4Word9is_numvarEv.exit307._ZN2PP4Word9is_numvarEv.exit307.thread724_crit_edge, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305
  %.pre-phi967 = phi i64 [ %.pre966, %_ZN2PP4Word9is_numvarEv.exit307._ZN2PP4Word9is_numvarEv.exit307.thread724_crit_edge ], [ %i.qj, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ]
  %i.qy = add nsw i64 %.pre-phi967, %indvars.iv913 ; 6 uses
  %i.qz = icmp sgt i64 %i.qy, -1
  br i1 %i.qz, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %_ZN2PP4Word9is_numvarEv.exit307.thread724
  %i.ra = icmp samesign ult i64 %i.qy, 4
  br i1 %i.ra, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.rb = getelementptr inbounds nuw [128 x i8], ptr %.pre921.pre951, i64 %indvars.iv913 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 80
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !443
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 84
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit313

bb.cc:                                            ; preds = %bb.ca
  %i.rg = lshr i64 %i.qy, 2
  br label %bb.ce

bb.cd:                                            ; preds = %_ZN2PP4Word9is_numvarEv.exit307.thread724
  %i.rh = ashr i64 %i.qy, 2
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sink1201 = phi i64 [ %i.rh, %bb.cd ], [ %i.rg, %bb.cc ] ; 2 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %.pre917.pre943, i64 %.sink1201
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !51, !noalias !2011 ; 2 uses
  %i.rk = and i64 %i.qy, 3
  %i.rl = getelementptr inbounds nuw [128 x i8], ptr %i.rj, i64 %i.rk ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 80
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !443
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 84
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.rq = shl nsw i64 %.sink1201, 2
  %i.rr = sub nsw i64 %i.qy, %i.rq
  %i.rs = getelementptr inbounds [128 x i8], ptr %i.rj, i64 %i.rr
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit313

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit313:       ; preds = %bb.cb, %bb.ce
  %i.rt = phi i32 [ %i.rp, %bb.ce ], [ %i.rf, %bb.cb ]
  %i.ru = phi i32 [ %i.rn, %bb.ce ], [ %i.rd, %bb.cb ]
  %storemerge.i.i.i.i312 = phi ptr [ %i.rs, %bb.ce ], [ %i.rb, %bb.cb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  %i.rv = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i312, i64 88
  store ptr %i.cc, ptr %24, align 8, !tbaa !8, !alias.scope !2014
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !45, !noalias !2014 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i312, i64 96
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !12, !noalias !2014 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #22, !noalias !2014
  store i64 %i.ry, ptr %i.r, align 8, !tbaa !67, !noalias !2014
  %i.rz = icmp ugt i64 %i.ry, 15
  br i1 %i.rz, label %.noexc.i.i315, label %._crit_edge.i.i.i314

.noexc.i.i315:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit313
  %i.sa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0) ; 2 uses
  store ptr %i.sa, ptr %24, align 8, !tbaa !45, !alias.scope !2014
  %i.sb = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !2014
  store i64 %i.sb, ptr %i.cc, align 8, !tbaa !15, !alias.scope !2014
  br label %._crit_edge.i.i.i314

._crit_edge.i.i.i314:                             ; preds = %.noexc.i.i315, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit313
  %i.sc = phi ptr [ %i.sa, %.noexc.i.i315 ], [ %i.cc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit313 ] ; 2 uses
  switch i64 %i.ry, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %bb.ch
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i314
  %i.sd = load i8, ptr %i.rw, align 1, !tbaa !15
  store i8 %i.sd, ptr %i.sc, align 1, !tbaa !15
  br label %bb.ch

bb.cg:                                            ; preds = %._crit_edge.i.i.i314
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sc, ptr align 1 %i.rw, i64 %i.ry, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %._crit_edge.i.i.i314
  %i.se = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !2014 ; 2 uses
  store i64 %i.se, ptr %i.cd, align 8, !tbaa !12, !alias.scope !2014
  %i.sf = load ptr, ptr %24, align 8, !tbaa !45, !alias.scope !2014
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.se
  store i8 0, ptr %i.sg, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #22, !noalias !2014
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %i.ce, ptr %25, align 8, !tbaa !8
  store i16 11565, ptr %i.ce, align 8
  store i64 2, ptr %i.cf, align 8, !tbaa !12
  store i8 0, ptr %i.cn, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store ptr %i.cg, ptr %27, align 8, !tbaa !8
  store i16 11565, ptr %i.cg, align 8
  store i64 2, ptr %i.ch, align 8, !tbaa !12
  store i8 0, ptr %i.co, align 2, !tbaa !15
  store ptr %i.ci, ptr %28, align 8, !tbaa !8
  %i.sh = load ptr, ptr %24, align 8, !tbaa !45   ; 2 uses
  %i.si = load i64, ptr %i.cd, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #22
  store i64 %i.si, ptr %i.q, align 8, !tbaa !67
  %i.sj = icmp ugt i64 %i.si, 15
  br i1 %i.sj, label %.noexc.i326, label %._crit_edge.i.i325

.noexc.i326:                                      ; preds = %bb.ch
  %i.sk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc327 unwind label %bb.cs ; 2 uses

.noexc327:                                        ; preds = %.noexc.i326
  store ptr %i.sk, ptr %28, align 8, !tbaa !45
  %i.sl = load i64, ptr %i.q, align 8, !tbaa !67
  store i64 %i.sl, ptr %i.ci, align 8, !tbaa !15
  br label %._crit_edge.i.i325

._crit_edge.i.i325:                               ; preds = %.noexc327, %bb.ch
  %i.sm = phi ptr [ %i.sk, %.noexc327 ], [ %i.ci, %bb.ch ] ; 2 uses
  switch i64 %i.si, label %bb.cj [
    i64 1, label %bb.ci
    i64 0, label %bb.ck
  ]

bb.ci:                                            ; preds = %._crit_edge.i.i325
  %i.sn = load i8, ptr %i.sh, align 1, !tbaa !15
  store i8 %i.sn, ptr %i.sm, align 1, !tbaa !15
  br label %bb.ck

bb.cj:                                            ; preds = %._crit_edge.i.i325
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sm, ptr align 1 %i.sh, i64 %i.si, i1 false)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %._crit_edge.i.i325
  %i.so = load i64, ptr %i.q, align 8, !tbaa !67  ; 2 uses
  store i64 %i.so, ptr %i.cj, align 8, !tbaa !12
  %i.sp = load ptr, ptr %28, align 8, !tbaa !45
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.so
  store i8 0, ptr %i.sq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #22
  %i.sr = load ptr, ptr %i.as, align 8, !tbaa !66
  invoke void @_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128) %26, ptr noundef nonnull %27, i32 noundef %i.ru, i32 noundef %i.rt, ptr noundef nonnull %28, ptr noundef %i.sr)
          to label %bb.cl unwind label %bb.ct

bb.cl:                                            ; preds = %bb.ck
  %i.ss = load ptr, ptr %28, align 8, !tbaa !45   ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.ci
  br i1 %i.st, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.cl
  %i.su = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  %i.sw = load ptr, ptr %27, align 8, !tbaa !45   ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.cg
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.sy = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  %i.ta = add nuw nsw i32 %indvars915, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  invoke void @_ZN2PP3Cmd12delete_wordsEii(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %indvars915, i32 noundef %i.ta)
          to label %.noexc340 unwind label %bb.cu

.noexc340:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  %i.tb = load ptr, ptr %i.aa, align 8, !tbaa !71, !noalias !2017 ; 2 uses
  %i.tc = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !2017 ; 2 uses
  %i.td = load ptr, ptr %i.ae, align 8, !tbaa !87, !noalias !2017
  %i.te = load ptr, ptr %i.ac, align 8, !tbaa !76, !noalias !2017 ; 2 uses
  %i.tf = ptrtoint ptr %i.tb to i64
  %i.tg = ptrtoint ptr %i.tc to i64
  %i.th = sub i64 %i.tf, %i.tg
  %i.ti = ashr exact i64 %i.th, 7
  %i.tj = add nsw i64 %i.ti, %indvars.iv913       ; 5 uses
  %i.tk = icmp sgt i64 %i.tj, -1
  br i1 %i.tk, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %.noexc340
  %i.tl = icmp samesign ult i64 %i.tj, 4
  br i1 %i.tl, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.tm = getelementptr inbounds nuw [128 x i8], ptr %i.tb, i64 %indvars.iv913
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i335

bb.co:                                            ; preds = %bb.cm
  %i.tn = lshr i64 %i.tj, 2
  br label %bb.cq

bb.cp:                                            ; preds = %.noexc340
  %i.to = ashr i64 %i.tj, 2
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.tp = phi i64 [ %i.tn, %bb.co ], [ %i.to, %bb.cp ] ; 2 uses
  %i.tq = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.tp ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !51, !noalias !2020 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 512
  %i.tt = shl nsw i64 %i.tp, 2
  %i.tu = sub nsw i64 %i.tj, %i.tt
  %i.tv = getelementptr inbounds [128 x i8], ptr %i.tr, i64 %i.tu
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i335

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i335: ; preds = %bb.cq, %bb.cn
  %.sroa.7.0.i336 = phi ptr [ %i.td, %bb.cn ], [ %i.ts, %bb.cq ]
  %.sroa.4.0.i337 = phi ptr [ %i.tc, %bb.cn ], [ %i.tr, %bb.cq ]
  %.sroa.10.0.i338 = phi ptr [ %i.te, %bb.cn ], [ %i.tq, %bb.cq ]
  %storemerge.i.i.i339 = phi ptr [ %i.tm, %bb.cn ], [ %i.tv, %bb.cq ]
  store ptr %storemerge.i.i.i339, ptr %11, align 8, !tbaa !204
  store ptr %.sroa.4.0.i337, ptr %i.ck, align 8, !tbaa !206
  store ptr %.sroa.7.0.i336, ptr %i.cl, align 8, !tbaa !207
  store ptr %.sroa.10.0.i338, ptr %i.cm, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(128) %26)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.tw = load ptr, ptr %25, align 8, !tbaa !45   ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.ce
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.cr
  %i.ty = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.ua = load ptr, ptr %24, align 8, !tbaa !45   ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.cc
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  %i.uc = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %.pre.pre = load ptr, ptr %i.ab, align 8, !tbaa !76
  %.pre917.pre = load ptr, ptr %i.ac, align 8, !tbaa !76
  %.pre918.pre = load ptr, ptr %i.z, align 8, !tbaa !71
  %.pre919.pre = load ptr, ptr %i.ad, align 8, !tbaa !75
  %.pre920.pre = load ptr, ptr %i.ae, align 8, !tbaa !87
  %.pre921.pre = load ptr, ptr %i.aa, align 8, !tbaa !71
  br label %bb.cv

bb.cs:                                            ; preds = %.noexc.i326
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

bb.ct:                                            ; preds = %bb.ck
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ug = load ptr, ptr %28, align 8, !tbaa !45   ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.ci
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %bb.ct
  %i.ui = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349, %bb.cs
  %.pn182 = phi { ptr, i32 } [ %i.ue, %bb.cs ], [ %i.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %i.uf, %bb.ct ] ; 2 uses
  %i.uk = load ptr, ptr %27, align 8, !tbaa !45   ; 2 uses
  %i.ul = icmp eq ptr %i.uk, %i.cg
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351
  %i.um = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uk, i64 noundef %i.un) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

bb.cu:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  %i.uo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %26) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352, %bb.cu
  %.pn184 = phi { ptr, i32 } [ %i.uo, %bb.cu ], [ %.pn182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %.pn182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.up = load ptr, ptr %25, align 8, !tbaa !45   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.ce
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.ur = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.ut = load ptr, ptr %24, align 8, !tbaa !45   ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.cc
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %i.uv = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.uw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.jp

bb.cv:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305, %_ZN2PP4Word9is_numvarEv.exit307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %.pre921 = phi ptr [ %.pre921.pre951, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre921.pre951, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre921.pre951, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre921.pre951, %_ZN2PP4Word9is_numvarEv.exit307 ], [ %.pre921.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pre921.pre951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ]
  %.pre920 = phi ptr [ %.pre920.pre949, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre920.pre949, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre920.pre949, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre920.pre949, %_ZN2PP4Word9is_numvarEv.exit307 ], [ %.pre920.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pre920.pre949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ]
  %.pre919 = phi ptr [ %.pre919.pre947, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre919.pre947, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre919.pre947, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre919.pre947, %_ZN2PP4Word9is_numvarEv.exit307 ], [ %.pre919.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pre919.pre947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ]
  %.pre918 = phi ptr [ %.pre918.pre945, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre918.pre945, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre918.pre945, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre918.pre945, %_ZN2PP4Word9is_numvarEv.exit307 ], [ %.pre918.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pre918.pre945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ]
  %.pre917 = phi ptr [ %.pre917.pre943, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre917.pre943, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre917.pre943, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre917.pre943, %_ZN2PP4Word9is_numvarEv.exit307 ], [ %.pre917.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pre917.pre943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ]
  %.pre = phi ptr [ %.pre.pre941, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre.pre941, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre.pre941, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit305 ], [ %.pre.pre941, %_ZN2PP4Word9is_numvarEv.exit307 ], [ %.pre.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pre.pre941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ]
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 1
  br label %bb.ay, !llvm.loop !2023

bb.cw:                                            ; preds = %bb.az
  %i.ux = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !2024
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = sub i64 %i.mb, %i.uy                    ; 2 uses
  %i.va = ashr exact i64 %i.uz, 7                 ; 6 uses
  %i.vb = icmp sgt i64 %i.va, -1
  br i1 %i.vb, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.vc = icmp samesign ult i64 %i.va, 4
  br i1 %i.vc, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.vd = getelementptr inbounds nuw i8, ptr %i.li, i64 80
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !443
  %i.vf = getelementptr inbounds nuw i8, ptr %i.li, i64 84
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit366

bb.cz:                                            ; preds = %bb.cx
  %i.vh = lshr i64 %i.va, 2
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.vh
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !51, !noalias !2024 ; 2 uses
  %i.vk = and i64 %i.va, 3
  %i.vl = getelementptr inbounds nuw [128 x i8], ptr %i.vj, i64 %i.vk ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 80
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !443
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 84
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %.pre970 = and i64 %i.va, 3
  br label %bb.db

bb.da:                                            ; preds = %bb.cw
  %i.vq = ashr i64 %i.uz, 9                       ; 2 uses
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.vq
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !51, !noalias !2024 ; 2 uses
  %i.vt = shl nsw i64 %i.vq, 2
  %i.vu = sub nsw i64 %i.va, %i.vt                ; 2 uses
  %i.vv = getelementptr inbounds [128 x i8], ptr %i.vs, i64 %i.vu ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 80
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !443
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 84
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pre-phi971 = phi i64 [ %i.vu, %bb.da ], [ %.pre970, %bb.cz ]
  %i.wa = phi ptr [ %i.vs, %bb.da ], [ %i.vj, %bb.cz ]
  %i.wb = phi i32 [ %i.vz, %bb.da ], [ %i.vp, %bb.cz ]
  %i.wc = phi i32 [ %i.vx, %bb.da ], [ %i.vn, %bb.cz ]
  %i.wd = getelementptr inbounds [128 x i8], ptr %i.wa, i64 %.pre-phi971
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit366

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit366:       ; preds = %bb.cy, %bb.db
  %i.we = phi i32 [ %i.wb, %bb.db ], [ %i.vg, %bb.cy ] ; 5 uses
  %i.wf = phi i32 [ %i.wc, %bb.db ], [ %i.ve, %bb.cy ] ; 5 uses
  %storemerge.i.i.i.i365 = phi ptr [ %i.wd, %bb.db ], [ %i.li, %bb.cy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.wg = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i365, i64 88
  %i.wh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  store ptr %i.wh, ptr %29, align 8, !tbaa !8, !alias.scope !2027
  %i.wi = load ptr, ptr %i.wg, align 8, !tbaa !45, !noalias !2027 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i365, i64 96
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !12, !noalias !2027 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #22, !noalias !2027
  store i64 %i.wk, ptr %i.p, align 8, !tbaa !67, !noalias !2027
  %i.wl = icmp ugt i64 %i.wk, 15
  br i1 %i.wl, label %.noexc.i.i368, label %._crit_edge.i.i.i367

.noexc.i.i368:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit366
  %i.wm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0) ; 2 uses
  store ptr %i.wm, ptr %29, align 8, !tbaa !45, !alias.scope !2027
  %i.wn = load i64, ptr %i.p, align 8, !tbaa !67, !noalias !2027
  store i64 %i.wn, ptr %i.wh, align 8, !tbaa !15, !alias.scope !2027
  br label %._crit_edge.i.i.i367

._crit_edge.i.i.i367:                             ; preds = %.noexc.i.i368, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit366
  %i.wo = phi ptr [ %i.wm, %.noexc.i.i368 ], [ %i.wh, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit366 ] ; 2 uses
  switch i64 %i.wk, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %_ZN2PP4Word12get_filenameB5cxx11Ev.exit369
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i.i367
  %i.wp = load i8, ptr %i.wi, align 1, !tbaa !15
  store i8 %i.wp, ptr %i.wo, align 1, !tbaa !15
  br label %_ZN2PP4Word12get_filenameB5cxx11Ev.exit369

bb.dd:                                            ; preds = %._crit_edge.i.i.i367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wo, ptr align 1 %i.wi, i64 %i.wk, i1 false)
  br label %_ZN2PP4Word12get_filenameB5cxx11Ev.exit369

_ZN2PP4Word12get_filenameB5cxx11Ev.exit369:       ; preds = %._crit_edge.i.i.i367, %bb.dc, %bb.dd
  %i.wq = load i64, ptr %i.p, align 8, !tbaa !67, !noalias !2027 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 6 uses
  store i64 %i.wq, ptr %i.wr, align 8, !tbaa !12, !alias.scope !2027
  %i.ws = load ptr, ptr %29, align 8, !tbaa !45, !alias.scope !2027
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.wq
  store i8 0, ptr %i.wt, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #22, !noalias !2027
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.wu = load ptr, ptr %i.aa, align 8, !tbaa !71, !noalias !2030 ; 2 uses
  %i.wv = load ptr, ptr %i.af, align 8, !tbaa !75, !noalias !2030
  %i.ww = load ptr, ptr %i.ac, align 8, !tbaa !76, !noalias !2030
  %i.wx = ptrtoint ptr %i.wu to i64
  %i.wy = ptrtoint ptr %i.wv to i64
  %i.wz = sub i64 %i.wx, %i.wy                    ; 2 uses
  %i.xa = ashr exact i64 %i.wz, 7                 ; 4 uses
  %i.xb = icmp sgt i64 %i.xa, -1
  br i1 %i.xb, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %_ZN2PP4Word12get_filenameB5cxx11Ev.exit369
  %i.xc = icmp samesign ult i64 %i.xa, 4
  br i1 %i.xc, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit371, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xd = lshr i64 %i.xa, 2
  br label %bb.dh

bb.dg:                                            ; preds = %_ZN2PP4Word12get_filenameB5cxx11Ev.exit369
  %i.xe = ashr i64 %i.wz, 9
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.xf = phi i64 [ %i.xd, %bb.df ], [ %i.xe, %bb.dg ] ; 2 uses
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.ww, i64 %i.xf
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !51, !noalias !2030
  %i.xi = shl nsw i64 %i.xf, 2
  %i.xj = sub nsw i64 %i.xa, %i.xi
  %i.xk = getelementptr inbounds [128 x i8], ptr %i.xh, i64 %i.xj
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit371

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit371:       ; preds = %bb.de, %bb.dh
  %storemerge.i.i.i.i370 = phi ptr [ %i.xk, %bb.dh ], [ %i.wu, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.xl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.xl, ptr %30, align 8, !tbaa !8, !alias.scope !2033
  %i.xm = load ptr, ptr %storemerge.i.i.i.i370, align 8, !tbaa !45, !noalias !2033 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i370, i64 8
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !12, !noalias !2033 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22, !noalias !2033
  store i64 %i.xo, ptr %i.o, align 8, !tbaa !67, !noalias !2033
  %i.xp = icmp ugt i64 %i.xo, 15
  br i1 %i.xp, label %.noexc.i.i373, label %._crit_edge.i.i.i372

.noexc.i.i373:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit371
  %i.xq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc374 unwind label %bb.ef ; 2 uses

.noexc374:                                        ; preds = %.noexc.i.i373
  store ptr %i.xq, ptr %30, align 8, !tbaa !45, !alias.scope !2033
  %i.xr = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !2033
  store i64 %i.xr, ptr %i.xl, align 8, !tbaa !15, !alias.scope !2033
  br label %._crit_edge.i.i.i372

._crit_edge.i.i.i372:                             ; preds = %.noexc374, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit371
  %i.xs = phi ptr [ %i.xq, %.noexc374 ], [ %i.xl, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit371 ] ; 2 uses
  switch i64 %i.xo, label %bb.dj [
    i64 1, label %bb.di
    i64 0, label %bb.dk
  ]

bb.di:                                            ; preds = %._crit_edge.i.i.i372
  %i.xt = load i8, ptr %i.xm, align 1, !tbaa !15
  store i8 %i.xt, ptr %i.xs, align 1, !tbaa !15
  br label %bb.dk

bb.dj:                                            ; preds = %._crit_edge.i.i.i372
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xs, ptr align 1 %i.xm, i64 %i.xo, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %._crit_edge.i.i.i372
  %i.xu = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !2033 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 %i.xu, ptr %i.xv, align 8, !tbaa !12, !alias.scope !2033
  %i.xw = load ptr, ptr %30, align 8, !tbaa !45, !alias.scope !2033
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xu
  store i8 0, ptr %i.xx, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22, !noalias !2033
  %i.xy = load i64, ptr %i.xv, align 8, !tbaa !12
  %i.xz = icmp eq i64 %i.xy, 3
  %.pre924 = load ptr, ptr %30, align 8, !tbaa !45 ; 4 uses
  br i1 %i.xz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit377, label %.critedge202

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit377: ; preds = %bb.dk
  %i.ya = load i16, ptr %.pre924, align 1
  %i.yb = xor i16 %i.ya, 28261
  %i.yc = getelementptr i8, ptr %.pre924, i64 2
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = zext i8 %i.yd to i16
  %i.yf = xor i16 %i.ye, 100
  %i.yg = or i16 %i.yb, %i.yf
  %i.yh = icmp ne i16 %i.yg, 0
  %i.yi = zext i1 %i.yh to i32
end_hunk_0
