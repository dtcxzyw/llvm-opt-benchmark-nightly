Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/cpu_info?download=true
inline.NumInlined: 282
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %.not121.i.a = icmp eq i64 %i.fq, 0
  %.pre223.i = load ptr, ptr %3, align 8, !tbaa !10 ; 6 uses
  br i1 %.not121.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.fr = call ptr @memchr(ptr noundef %.pre223.i, i32 noundef 58, i64 noundef %i.fq) #25 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.fr, null
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %.pre223.i to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 4 uses
  %.not.i = icmp eq i64 %i.fu, -1
  %or.cond.i = or i1 %.not.i21.i, %.not.i
  br i1 %or.cond.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.fv = add i64 %i.fu, -1
  store ptr %i.ci, ptr %5, align 8, !tbaa !23, !alias.scope !52
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %i.fq) ; 8 uses
  %i.fw = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.fw, label %bb.aa, label %._crit_edge.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.fx = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.fx, label %.noexc10.i.i.i, label %bb.ab

.noexc10.i.i.i:                                   ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
          to label %.noexc22.i.a unwind label %.loopexit.split-lp140.i

.noexc22.i.a:                                     ; preds = %.noexc10.i.i.i
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.fy = add nuw i64 %spec.select.i.i.i.i, 1     ; 2 uses
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %.noexc11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !55

.noexc11.i.i.i:                                   ; preds = %bb.ab
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc23.i.a unwind label %.loopexit.split-lp140.i

.noexc23.i.a:                                     ; preds = %.noexc11.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ab
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #23
          to label %.noexc24.i unwind label %.loopexit139.i ; 2 uses

.noexc24.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ga, ptr %5, align 8, !tbaa !10, !alias.scope !52
  store i64 %spec.select.i.i.i.i, ptr %i.ci, align 8, !tbaa !15, !alias.scope !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc24.i, %bb.z
  %i.gb = phi ptr [ %i.ga, %.noexc24.i ], [ %i.ci, %bb.z ] ; 3 uses
  switch i64 %spec.select.i.i.i.i, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gc = load i8, ptr %.pre223.i, align 1, !tbaa !15
  store i8 %i.gc, ptr %i.gb, align 1, !tbaa !15
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gb, ptr align 1 %.pre223.i, i64 %spec.select.i.i.i.i, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i.i
  store i64 %spec.select.i.i.i.i, ptr %i.cj, align 8, !tbaa !24, !alias.scope !52
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %spec.select.i.i.i.i
  store i8 0, ptr %i.gd, align 1, !tbaa !15
  invoke void @_ZN5arrow8internal10TrimStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5)
          to label %bb.af unwind label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.ge = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ci
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.af
  %i.gg = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.gi = add nuw i64 %i.fu, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.gj = load i64, ptr %i.ch, align 8, !tbaa !24, !noalias !56 ; 3 uses
  %.not122.i = icmp ult i64 %i.fu, %i.gj
  br i1 %.not122.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %i.gi, i64 noundef %i.gj) #26
          to label %.noexc30.i.a unwind label %.loopexit.split-lp145.i

.noexc30.i.a:                                     ; preds = %bb.ag
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  store ptr %i.ck, ptr %7, align 8, !tbaa !23, !alias.scope !56
  %i.gk = load ptr, ptr %3, align 8, !tbaa !10, !noalias !56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gi ; 2 uses
  %i.gm = sub nuw i64 %i.gj, %i.gi                ; 8 uses
  %i.gn = icmp ugt i64 %i.gm, 15
  br i1 %i.gn, label %bb.ah, label %._crit_edge.i.i.i26.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.go = icmp slt i64 %i.gm, 0
  br i1 %i.go, label %.noexc10.i.i29.i, label %bb.ai

.noexc10.i.i29.i:                                 ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
          to label %.noexc31.i.a unwind label %.loopexit.split-lp145.i

.noexc31.i.a:                                     ; preds = %.noexc10.i.i29.i
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.gp = add nuw i64 %i.gm, 1                    ; 2 uses
  %i.gq = icmp slt i64 %i.gp, 0
  br i1 %i.gq, label %.noexc11.i.i28.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i, !prof !55

.noexc11.i.i28.i:                                 ; preds = %bb.ai
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc32.i.a unwind label %.loopexit.split-lp145.i

.noexc32.i.a:                                     ; preds = %.noexc11.i.i28.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i: ; preds = %bb.ai
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #23
          to label %.noexc33.i unwind label %.loopexit144.i ; 2 uses

.noexc33.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i
  store ptr %i.gr, ptr %7, align 8, !tbaa !10, !alias.scope !56
  store i64 %i.gm, ptr %i.ck, align 8, !tbaa !15, !alias.scope !56
  br label %._crit_edge.i.i.i26.i

._crit_edge.i.i.i26.i:                            ; preds = %.noexc33.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.gs = phi ptr [ %i.gr, %.noexc33.i ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 3 uses
  switch i64 %i.gm, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i26.i
  %i.gt = load i8, ptr %i.gl, align 1, !tbaa !15
  store i8 %i.gt, ptr %i.gs, align 1, !tbaa !15
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i26.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr nonnull align 1 %i.gl, i64 %i.gm, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i26.i
  store i64 %i.gm, ptr %i.cl, align 8, !tbaa !24, !alias.scope !56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gm
  store i8 0, ptr %i.gu, align 1, !tbaa !15
  invoke void @_ZN5arrow8internal10TrimStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %7)
          to label %bb.am unwind label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.gv = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.ck
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %bb.am
  %i.gx = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  %i.gz = load i64, ptr %i.cm, align 8, !tbaa !24 ; 9 uses
  %cond.i = icmp eq i64 %i.gz, 0
  br i1 %cond.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 5)
  %i.ha = load ptr, ptr %4, align 8, !tbaa !10    ; 4 uses
  %bcmp.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.10, i64 %.sroa.speculated.i.i)
  %.not.i38.i = icmp eq i32 %bcmp.i, 0
  %i.hb = icmp eq i64 %i.gz, 5
  %or.cond128.i.a = and i1 %i.hb, %.not.i38.i
  br i1 %or.cond128.i.a, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.sroa.speculated.i40.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 8)
  %bcmp123.i.a = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.11, i64 %.sroa.speculated.i40.i)
  %.not.i42.i = icmp eq i32 %bcmp123.i.a, 0
  %i.hc = icmp eq i64 %i.gz, 8
  %or.cond129.i.a = and i1 %i.hc, %.not.i42.i
  br i1 %or.cond129.i.a, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit48.thread.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.val.i = load ptr, ptr %6, align 8             ; 3 uses
  %.val17.i = load i64, ptr %i.cn, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.co, ptr %1, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
  store i64 5, ptr %i.cp, align 8, !tbaa !24
  store i8 0, ptr %i.cq, align 1, !tbaa !15
  store i64 1, ptr %i.cr, align 16, !tbaa !59
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ct, ptr noundef nonnull align 1 dereferenceable(6) @.str.20, i64 6, i1 false)
  store i64 6, ptr %i.cu, align 16, !tbaa !24
  store i8 0, ptr %i.cv, align 2, !tbaa !15
  store i64 2, ptr %i.cw, align 8, !tbaa !59
  store ptr %i.cy, ptr %i.cx, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.cy, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  store i64 6, ptr %i.cz, align 8, !tbaa !24
  store i8 0, ptr %i.da, align 2, !tbaa !15
  store i64 4, ptr %i.db, align 16, !tbaa !59
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dd, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  store i64 6, ptr %i.de, align 16, !tbaa !24
  store i8 0, ptr %i.df, align 2, !tbaa !15
  store i64 8, ptr %i.dg, align 8, !tbaa !59
  store ptr %i.di, ptr %i.dh, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.di, ptr noundef nonnull align 1 dereferenceable(3) @.str.23, i64 3, i1 false)
  store i64 3, ptr %i.dj, align 8, !tbaa !24
  store i8 0, ptr %i.dk, align 1, !tbaa !15
  store i64 16, ptr %i.dl, align 16, !tbaa !59
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !23
  store i32 846755425, ptr %i.dn, align 8
  store i64 4, ptr %i.do, align 16, !tbaa !24
  store i8 0, ptr %i.dp, align 4, !tbaa !15
  store i64 32, ptr %i.dq, align 8, !tbaa !59
  store ptr %i.ds, ptr %i.dr, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.ds, ptr noundef nonnull align 1 dereferenceable(7) @.str.25, i64 7, i1 false)
  store i64 7, ptr %i.dt, align 8, !tbaa !24
  store i8 0, ptr %i.du, align 1, !tbaa !15
  store i64 64, ptr %i.dv, align 16, !tbaa !59
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !23
  store i64 7233680613419021921, ptr %i.dx, align 8
  store i64 8, ptr %i.dy, align 16, !tbaa !24
  store i8 0, ptr %i.dz, align 16, !tbaa !15
  store i64 128, ptr %i.ea, align 8, !tbaa !59
  store ptr %i.ec, ptr %i.eb, align 16, !tbaa !23
  store i64 7815489390279947873, ptr %i.ec, align 16
  store i64 8, ptr %i.ed, align 8, !tbaa !24
  store i8 0, ptr %i.ee, align 8, !tbaa !15
  store i64 256, ptr %i.ef, align 16, !tbaa !59
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !23
  store i64 8170710810888795745, ptr %i.eh, align 8
  store i64 8, ptr %i.ei, align 16, !tbaa !24
  store i8 0, ptr %i.ej, align 16, !tbaa !15
  store i64 512, ptr %i.ek, align 8, !tbaa !59
  store ptr %i.em, ptr %i.el, align 16, !tbaa !23
  store i64 8602493425162942049, ptr %i.em, align 16
  store i64 8, ptr %i.en, align 8, !tbaa !24
  store i8 0, ptr %i.eo, align 8, !tbaa !15
  store i64 1024, ptr %i.ep, align 16, !tbaa !59
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !23
  store i32 828992866, ptr %i.er, align 8
  store i64 4, ptr %i.es, align 16, !tbaa !24
  store i8 0, ptr %i.et, align 4, !tbaa !15
  store i64 2048, ptr %i.eu, align 8, !tbaa !59
  store ptr %i.ew, ptr %i.ev, align 16, !tbaa !23
  store i32 845770082, ptr %i.ew, align 16
  store i64 4, ptr %i.ex, align 8, !tbaa !24
  store i8 0, ptr %i.ey, align 4, !tbaa !15
  store i64 4096, ptr %i.ez, align 16, !tbaa !59
  %12 = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val17.i
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %.val.i to i64
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, %bb.an
  %indvars.iv.i.i = phi i64 [ 0, %bb.an ], [ %indvars.iv.next.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ] ; 2 uses
  %.01221.i.i = phi i64 [ 0, %bb.an ], [ %.1.i50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ] ; 6 uses
  %i.hd = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv.i.i ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !10 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !24 ; 5 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not3339.i.i.i.i = icmp ult i64 %.val17.i, %i.hg
  br i1 %.not3339.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap
  %i.hi = load i8, ptr %i.he, align 1, !tbaa !15
  %i.hj = sext i8 %i.hi to i32
  %invariant.op = sub i64 1, %i.hg
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %.val17.i, %.lr.ph.i.i.i.i ], [ %i.hp, %bb.ar ]
  %.02740.i.i.i.i = phi ptr [ %.val.i, %.lr.ph.i.i.i.i ], [ %i.hn, %bb.ar ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.041.i.i.i.i, %invariant.op ; 2 uses
  %i.hk = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.hk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.aq
  %i.hl = call ptr @memchr(ptr noundef %.02740.i.i.i.i, i32 noundef %i.hj, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #25 ; 4 uses
  %.not34.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not34.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.hl, ptr nonnull %i.he, i64 %i.hg)
  %i.hm = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.hm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 1 ; 2 uses
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %13, %i.ho                      ; 2 uses
  %.not33.i.i.i.i = icmp ult i64 %i.hp, %i.hg
  br i1 %.not33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %bb.aq, !llvm.loop !61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.hq = ptrtoint ptr %i.hl to i64
  %i.hr = sub i64 %i.hq, %14
  %.not.i51.i = icmp eq i64 %i.hr, -1
  br i1 %.not.i51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, %bb.ao
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !59
  %i.hu = or i64 %i.ht, %.01221.i.i
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i: ; preds = %bb.ar, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, %bb.ap
  %.1.i50.i = phi i64 [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i ], [ %.01221.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i ], [ %.01221.i.i, %bb.ap ], [ %.01221.i.i, %bb.aq ], [ %.01221.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ %.01221.i.i, %bb.ar ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 13
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i, label %bb.ao, !llvm.loop !63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i
  %.pre.i = load i64, ptr %0, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.hv = or i64 %.pre.i, %.1.i50.i
  store i64 %i.hv, ptr %0, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc18.i, %bb.y
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit139.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %lpad.loopexit141.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

.loopexit.split-lp140.i:                          ; preds = %.noexc11.i.i.i, %.noexc10.i.i.i
  %lpad.loopexit.split-lp142.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

bb.as:                                            ; preds = %bb.ae
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.ci
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %bb.as
  %i.hz = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

.loopexit144.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i
  %lpad.loopexit146.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

.loopexit.split-lp145.i:                          ; preds = %.noexc11.i.i28.i, %.noexc10.i.i29.i, %bb.ag
  %lpad.loopexit.split-lp147.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

bb.at:                                            ; preds = %bb.al
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ck
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %bb.at
  %i.ie = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

bb.au:                                            ; preds = %bb.av
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.fa
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i: ; preds = %bb.au
  %i.ij = load i64, ptr %i.fa, align 8, !tbaa !15
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit48.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i
  %.sroa.speculated.i61.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 10)
  %bcmp124.i.a = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.12, i64 %.sroa.speculated.i61.i)
  %.not.i63.i = icmp eq i32 %bcmp124.i.a, 0
  %i.il = icmp eq i64 %i.gz, 10
  %or.cond130.i.a = and i1 %i.il, %.not.i63.i
  br i1 %or.cond130.i.a, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit69.thread.i

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit48.thread.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit69.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit48.thread.i
  %.sroa.speculated.i71.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 9)
  %bcmp125.i.a = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.13, i64 %.sroa.speculated.i71.i)
  %.not.i73.i = icmp eq i32 %bcmp125.i.a, 0
  %i.im = icmp eq i64 %i.gz, 9
  %or.cond131.i.a = and i1 %i.im, %.not.i73.i
  br i1 %or.cond131.i.a, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit69.thread.i
  %i.in = load i64, ptr %i.cn, align 8, !tbaa !24 ; 3 uses
  %cond137.i = icmp eq i64 %i.in, 0
  br i1 %cond137.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i81.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i81.i: ; preds = %bb.aw
  %.sroa.speculated.i80.i = call i64 @llvm.umin.i64(i64 %i.in, i64 12) ; 2 uses
  %i.io = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %bcmp126.i.a = call i32 @bcmp(ptr %i.io, ptr nonnull @.str.14, i64 %.sroa.speculated.i80.i)
  %.not.i82.i = icmp eq i32 %bcmp126.i.a, 0
  %i.ip = icmp eq i64 %i.in, 12                   ; 2 uses
  %or.cond132.i.a = and i1 %i.ip, %.not.i82.i
  br i1 %or.cond132.i.a, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit88.thread.i

bb.ax:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i81.i
  store i32 1, ptr %i.e, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit88.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i81.i
  %bcmp127.i = call i32 @bcmp(ptr %i.io, ptr nonnull @.str.15, i64 %.sroa.speculated.i80.i)
  %.not.i91.i = icmp eq i32 %bcmp127.i, 0
  %or.cond133.i = and i1 %i.ip, %.not.i91.i
  br i1 %or.cond133.i, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit88.thread.i
  store i32 2, ptr %i.e, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit88.thread.i, %bb.ax, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit69.thread.i, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %i.iq = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.fa
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.is = load i64, ptr %i.fa, align 8, !tbaa !15
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.iu = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.fb
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i
  %i.iw = load i64, ptr %i.fb, align 8, !tbaa !15
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre222.i = load ptr, ptr %3, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i: ; preds = %bb.au, %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i, %.loopexit.split-lp145.i, %.loopexit144.i
  %.pn.i = phi { ptr, i32 } [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i ], [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i ], [ %lpad.loopexit.split-lp147.i, %.loopexit.split-lp145.i ], [ %i.ib, %bb.at ], [ %lpad.loopexit146.i, %.loopexit144.i ], [ %i.ig, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.iy = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.fb
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i
  %i.ja = load i64, ptr %i.fb, align 8, !tbaa !15
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i, %.loopexit.split-lp140.i, %.loopexit139.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i ], [ %lpad.loopexit.split-lp142.i, %.loopexit.split-lp140.i ], [ %i.hw, %bb.as ], [ %lpad.loopexit141.i, %.loopexit139.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.az

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.jc = phi ptr [ %.pre223.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.pre223.i, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i ], [ %.pre222.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i ] ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.cg
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i
  %i.je = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jg = load ptr, ptr %2, align 8, !tbaa !25
  %i.jh = getelementptr i8, ptr %i.jg, i64 -24    ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds i8, ptr %2, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !27
  %i.jm = and i32 %i.jl, 5
  %.not.i.i26 = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i26, label %bb.v, label %.loopexit, !llvm.loop !65

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.jn = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.cg
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i: ; preds = %bb.az
  %i.jp = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i
end_hunk_0
begin_hunk_1_@_ZNK5arrow8internal7CpuInfo6vendorEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow8internal7CpuInfo10model_nameB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5arrow8internal7CpuInfo9CacheSizeENS1_10CacheLevelE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds [8 x i8], ptr @__const._ZNK5arrow8internal7CpuInfo9CacheSizeENS1_10CacheLevelE.kDefaultCacheSizes, i64 %i.c
  %i.i = getelementptr i8, ptr %i.d, i64 -8
  %i.j = load i64, ptr %i.h, align 8, !tbaa !36
  %i.k = load i64, ptr %i.i, align 8, !tbaa !36
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.a ], [ %i.l, %bb.c ], [ 32768, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = and i64 %i.b, %1
  %i.d = icmp eq i64 %i.c, %1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo10IsDetectedEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = and i64 %i.c, %1
  %i.e = icmp eq i64 %i.d, %1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZNK5arrow8internal7CpuInfo21VerifyCpuRequirementsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow8internal7CpuInfo13EnableFeatureElb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %1, -1
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16
  %i.d = and i64 %i.c, %i.b
  br label %_ZN5arrow8internal7CpuInfo4Impl13EnableFeatureElb.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, %1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !16
  %i.i = or i64 %i.h, %i.g
  br label %_ZN5arrow8internal7CpuInfo4Impl13EnableFeatureElb.exit

_ZN5arrow8internal7CpuInfo4Impl13EnableFeatureElb.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ %i.d, %bb.b ], [ %i.i, %bb.c ]
  store i64 %storemerge.i, ptr %i.a, align 8, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #11

declare void @_ZN5arrow8internal9GetEnvVarB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, i64, ptr) local_unnamed_addr #12

declare void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !82

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !83, !range !91, !noundef !92
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

declare void @_ZN5arrow8internal10TrimStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #22
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !10
  store i64 %.0, ptr %i.d, align 8, !tbaa !15
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 1, !tbaa !15
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15
  store i8 %i.t, ptr %i.r, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8, !tbaa !24
  %i.v = load ptr, ptr %0, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.b
  store i8 0, ptr %i.w, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !98
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !99
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !15
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !100
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_1
