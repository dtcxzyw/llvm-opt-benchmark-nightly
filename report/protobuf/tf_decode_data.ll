inline.NumInlined: 294
inline.NumDeleted: 156
begin_hunk_0_@_ZN6google8protobuf8compiler10objectivec20TextFormatDecodeData19DecodeDataForStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES7_:bb.a
  %i.bc = icmp eq ptr %i.bb, %i.ak                ; 2 uses
  br i1 %i.bc, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bd = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.be = load i64, ptr %i.ak, align 8
  %i.bf = select i1 %i.bc, i64 15, i64 %i.be
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.az, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.t
  %.pre.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.bh = phi ptr [ %.pre.i.i.i.i, %.noexc ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i8 %spec.select.i.i, ptr %i.bi, align 1, !tbaa !22
  store i64 %i.ba, ptr %i.al, align 8, !tbaa !20
  %i.bj = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ba
  store i8 0, ptr %i.bk, align 1, !tbaa !22
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i
  store i8 0, ptr %i.am, align 2, !tbaa !32
  store i32 0, ptr %i.an, align 4, !tbaa !33
  store i8 1, ptr %i.ao, align 1, !tbaa !34
  store i8 1, ptr %12, align 8, !tbaa !29
  br label %bb.bh

bb.u:                                             ; preds = %bb.aw, %bb.aq, %bb.ag, %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %.lr.ph
  %.not = icmp ult i64 %.059166, %1
  br i1 %.not, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !18, !alias.scope !35
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !22, !alias.scope !35
  store i64 1, ptr %i.bn, align 8, !tbaa !20, !alias.scope !35
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.bo, align 1, !tbaa !22, !alias.scope !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !35
  store i64 %3, ptr %7, align 8, !tbaa !21, !noalias !35
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !38, !noalias !35
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !35
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !20, !alias.scope !35 ; 4 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !35 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bm                ; 2 uses
  br i1 %i.bs, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i

bb.y:                                             ; preds = %bb.x
  %i.bt = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i: ; preds = %bb.y, %bb.x
  %i.bu = load i64, ptr %i.bm, align 8, !alias.scope !35
  %i.bv = select i1 %i.bs, i64 15, i64 %i.bu
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.z, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bp, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.aa

.noexc8.i:                                        ; preds = %bb.z
  %.pre.i.i7.i = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !35
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %i.by, %bb.ab ] ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !35 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bm
  br i1 %i.ca, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ac
  %i.cb = load i64, ptr %i.bm, align 8, !tbaa !22, !alias.scope !35
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #17
  br label %.body

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i, %.noexc8.i
  %i.cd = phi ptr [ %.pre.i.i7.i, %.noexc8.i ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bp
  store i8 0, ptr %i.ce, align 1, !tbaa !22
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !20, !alias.scope !35
  %i.cf = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !35
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bq
  store i8 0, ptr %i.cg, align 1, !tbaa !22
  br label %.thread160

bb.ad:                                            ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %.059166
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22  ; 4 uses
  switch i32 %i.as, label %bb.al [
    i32 31, label %bb.ae
    i32 0, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cj = shl nuw i8 %i.ar, 7
  %i.ck = or i8 %i.ap, %i.cj
  %spec.select.i.i88 = or i8 %i.ck, 31
  %i.cl = load i64, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.cm = add i64 %i.cl, 1                        ; 3 uses
  %i.cn = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ak                ; 2 uses
  br i1 %i.co, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89

bb.af:                                            ; preds = %bb.ae
  %i.cp = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89: ; preds = %bb.af, %bb.ae
  %i.cq = load i64, ptr %i.ak, align 8
  %i.cr = select i1 %i.co, i64 15, i64 %i.cq
  %i.cs = icmp ugt i64 %i.cm, %i.cr
  br i1 %i.cs, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.cl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc93 unwind label %bb.u

.noexc93:                                         ; preds = %bb.ag
  %.pre.i.i.i.i91 = load ptr, ptr %i.aj, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90: ; preds = %.noexc93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89
  %i.ct = phi ptr [ %.pre.i.i.i.i91, %.noexc93 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  store i8 %spec.select.i.i88, ptr %i.cu, align 1, !tbaa !22
  store i64 %i.cm, ptr %i.al, align 8, !tbaa !20
  %i.cv = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cm
  store i8 0, ptr %i.cw, align 1, !tbaa !22
  store i8 0, ptr %12, align 8, !tbaa !29
  store i8 0, ptr %i.am, align 2, !tbaa !32
  store i32 0, ptr %i.an, align 4, !tbaa !33
  store i8 1, ptr %i.ao, align 1, !tbaa !34
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90, %bb.ad
  %i.cx = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90 ], [ %i.aq, %bb.ad ]
  %i.cy = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90 ], [ %i.ar, %bb.ad ]
  %i.cz = icmp eq i8 %i.au, %i.ci
  br i1 %i.cz, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = zext i8 %i.ci to i64                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22
  %i.dd = icmp eq i8 %i.au, %i.dc
  br i1 %i.dd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.da
  %i.df = load i8, ptr %i.de, align 1, !tbaa !22
  %i.dg = icmp eq i8 %i.au, %i.df
  br i1 %i.dg, label %bb.ak, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.sink.i.i = phi i8 [ 0, %bb.ah ], [ 64, %bb.ai ], [ 32, %bb.aj ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.am, align 2, !tbaa !32
  store i32 1, ptr %i.an, align 4, !tbaa !33
  %i.dh = add i8 %i.au, -65
  %i.di = icmp ult i8 %i.dh, 26
  %14 = icmp ne i8 %i.cx, 0
  %15 = and i1 %i.di, %14
  br label %bb.ba

bb.al:                                            ; preds = %bb.ad
  %i.dj = icmp eq i8 %i.au, %i.ci
  br i1 %i.dj, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %.not.i92 = icmp ne i8 %i.ap, 96
  %i.dk = add i8 %i.au, -65
  %i.dl = icmp ult i8 %i.dk, 26                   ; 2 uses
  %or.cond36.i = or i1 %i.dl, %.not.i92
  br i1 %or.cond36.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dm = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.dm, ptr %i.an, align 4, !tbaa !33
  %16 = icmp ne i8 %i.aq, 0
  %17 = and i1 %i.dl, %16
  br label %bb.ba

bb.ao:                                            ; preds = %bb.am
  %i.dn = trunc i32 %i.as to i8
  %i.do = shl nuw i8 %i.ar, 7
  %i.dp = or i8 %i.do, %i.dn
  %spec.select.i17.i = or i8 %i.dp, 96
  %i.dq = load i64, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  %i.ds = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ak                ; 2 uses
  br i1 %i.dt, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i

bb.ap:                                            ; preds = %bb.ao
  %i.du = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.du)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i: ; preds = %bb.ap, %bb.ao
  %i.dv = load i64, ptr %i.ak, align 8
  %i.dw = select i1 %i.dt, i64 15, i64 %i.dv
  %i.dx = icmp ugt i64 %i.dr, %i.dw
  br i1 %i.dx, label %bb.aq, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.dq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc94 unwind label %bb.u

.noexc94:                                         ; preds = %bb.aq
  %.pre.i.i.i21.i = load ptr, ptr %i.aj, align 8, !tbaa !19
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i: ; preds = %.noexc94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i
  %i.dy = phi ptr [ %.pre.i.i.i21.i, %.noexc94 ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq
  store i8 %spec.select.i17.i, ptr %i.dz, align 1, !tbaa !22
  store i64 %i.dr, ptr %i.al, align 8, !tbaa !20
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dr
  store i8 0, ptr %i.eb, align 1, !tbaa !22
  store i8 0, ptr %12, align 8, !tbaa !29
  store i8 0, ptr %i.am, align 2, !tbaa !32
  store i32 1, ptr %i.an, align 4, !tbaa !33
  br label %bb.ba

bb.ar:                                            ; preds = %bb.al
  %i.ec = zext i8 %i.ci to i64                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !22
  %i.ef = icmp eq i8 %i.au, %i.ee                 ; 2 uses
  %i.eg = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 96, ptr %i.am, align 2, !tbaa !32
  %i.eh = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.eh, ptr %i.an, align 4, !tbaa !33
  %i.ei = add i8 %i.au, -65
  %i.ej = icmp ult i8 %i.ei, 26
  br label %bb.ba

bb.at:                                            ; preds = %bb.ar
  %i.ek = trunc i32 %i.as to i8
  %i.el = shl nuw i8 %i.ar, 7
  %i.em = or i8 %i.el, %i.ek
  %spec.select.i26.i = or i8 %i.em, %i.ap         ; 2 uses
  %.not.i27.i = icmp eq i8 %spec.select.i26.i, 0
  br i1 %.not.i27.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.en = load i64, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.eo = add i64 %i.en, 1                        ; 3 uses
  %i.ep = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ak                ; 2 uses
  br i1 %i.eq, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i

bb.av:                                            ; preds = %bb.au
  %i.er = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.er)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i: ; preds = %bb.av, %bb.au
  %i.es = load i64, ptr %i.ak, align 8
  %i.et = select i1 %i.eq, i64 15, i64 %i.es
  %i.eu = icmp ugt i64 %i.eo, %i.et
  br i1 %i.eu, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29.i

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.en, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc95 unwind label %bb.u

.noexc95:                                         ; preds = %bb.aw
  %.pre.i.i.i30.i = load ptr, ptr %i.aj, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29.i: ; preds = %.noexc95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i
  %i.ev = phi ptr [ %.pre.i.i.i30.i, %.noexc95 ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.en
  store i8 %spec.select.i26.i, ptr %i.ew, align 1, !tbaa !22
  store i64 %i.eo, ptr %i.al, align 8, !tbaa !20
  %i.ex = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eo
  store i8 0, ptr %i.ey, align 1, !tbaa !22
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29.i, %bb.at
  store i8 0, ptr %12, align 8, !tbaa !29
  store i8 0, ptr %i.am, align 2, !tbaa !32
  store i32 0, ptr %i.an, align 4, !tbaa !33
  store i8 1, ptr %i.ao, align 1, !tbaa !34
  br i1 %i.ef, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.ec
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !22
  %i.fb = icmp eq i8 %i.au, %i.fa
  br i1 %i.fb, label %bb.az, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i33.i = phi i8 [ 32, %bb.ay ], [ 64, %bb.ax ] ; 2 uses
  store i8 %.sink.i33.i, ptr %i.am, align 2, !tbaa !32
  store i32 1, ptr %i.an, align 4, !tbaa !33
  %i.fc = add i8 %i.au, -65
  %i.fd = icmp ult i8 %i.fc, 26
  br label %bb.ba

bb.ba:                                            ; preds = %bb.an, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i, %bb.as, %bb.ak, %bb.az
  %.sink.shrunk = phi i1 [ %17, %bb.an ], [ false, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.ej, %bb.as ], [ %15, %bb.ak ], [ %i.fd, %bb.az ]
  %i.fe = phi i8 [ %i.ap, %bb.an ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ 96, %bb.as ], [ %.sink.i.i, %bb.ak ], [ %.sink.i33.i, %bb.az ]
  %i.ff = phi i8 [ %i.ar, %bb.an ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.ar, %bb.as ], [ %i.cy, %bb.ak ], [ 0, %bb.az ]
  %i.fg = phi i32 [ %i.dm, %bb.an ], [ 1, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.eh, %bb.as ], [ 1, %bb.ak ], [ 1, %bb.az ]
  %.sink = zext i1 %.sink.shrunk to i8            ; 2 uses
  store i8 %.sink, ptr %i.ao, align 1, !tbaa !34
  %i.fh = add nuw i64 %.059166, 1
  br label %bb.bh

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit: ; preds = %bb.aj, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.fi, ptr %0, align 8, !tbaa !18, !alias.scope !39
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.fi, align 8, !tbaa !22, !alias.scope !39
  store i64 1, ptr %i.fj, align 8, !tbaa !20, !alias.scope !39
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.fk, align 1, !tbaa !22, !alias.scope !39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14, !noalias !39
  store i64 %3, ptr %6, align 8, !tbaa !21, !noalias !39
  %.sroa.2.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i96, align 8, !tbaa !38, !noalias !39
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !39
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !20, !alias.scope !39 ; 4 uses
  %i.fm = add i64 %i.fl, 1                        ; 3 uses
  %i.fn = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !39 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.fi                ; 2 uses
  br i1 %i.fo, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i101

bb.bc:                                            ; preds = %bb.bb
  %i.fp = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i101: ; preds = %bb.bc, %bb.bb
  %i.fq = load i64, ptr %i.fi, align 8, !alias.scope !39
  %i.fr = select i1 %i.fo, i64 15, i64 %i.fq
  %i.fs = icmp ugt i64 %i.fm, %i.fr
  br i1 %i.fs, label %bb.bd, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit106

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i101
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc8.i102 unwind label %bb.be

.noexc8.i102:                                     ; preds = %bb.bd
  %.pre.i.i7.i103 = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !39
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit106

bb.be:                                            ; preds = %bb.bd
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !39
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn.i97 = phi { ptr, i32 } [ %i.ft, %bb.be ], [ %i.fu, %bb.bf ] ; 2 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !39 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fi
  br i1 %i.fw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98: ; preds = %bb.bg
  %i.fx = load i64, ptr %i.fi, align 8, !tbaa !22, !alias.scope !39
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #17
  br label %.body

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i101, %.noexc8.i102
  %i.fz = phi ptr [ %.pre.i.i7.i103, %.noexc8.i102 ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i101 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fl
  store i8 0, ptr %i.ga, align 1, !tbaa !22
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !20, !alias.scope !39
  %i.gb = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !39
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fm
  store i8 0, ptr %i.gc, align 1, !tbaa !22
  br label %.thread160

bb.bh:                                            ; preds = %bb.ba, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit
  %i.gd = phi i8 [ %i.fe, %bb.ba ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ] ; 2 uses
  %i.ge = phi i8 [ %.sink, %bb.ba ], [ 1, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ]
  %i.gf = phi i8 [ %i.ff, %bb.ba ], [ 1, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ] ; 2 uses
  %i.gg = phi i32 [ %i.fg, %bb.ba ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ] ; 2 uses
  %.160 = phi i64 [ %i.fh, %bb.ba ], [ %.059166, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ] ; 2 uses
  %i.gh = add nuw i64 %.058167, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gh, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.bh
  %.not66 = icmp eq i64 %.160, %1
  br i1 %.not66, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.gi, ptr %0, align 8, !tbaa !18, !alias.scope !43
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.gi, align 8, !tbaa !22, !alias.scope !43
  store i64 1, ptr %i.gj, align 8, !tbaa !20, !alias.scope !43
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.gk, align 1, !tbaa !22, !alias.scope !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14, !noalias !43
  store i64 %3, ptr %5, align 8, !tbaa !21, !noalias !43
  %.sroa.2.0..sroa_idx.i.i107 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i107, align 8, !tbaa !38, !noalias !43
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !43
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !20, !alias.scope !43 ; 4 uses
  %i.gm = add i64 %i.gl, 1                        ; 3 uses
  %i.gn = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !43 ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.gi                ; 2 uses
  br i1 %i.go, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i112

bb.bk:                                            ; preds = %bb.bj
  %i.gp = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i112: ; preds = %bb.bk, %bb.bj
  %i.gq = load i64, ptr %i.gi, align 8, !alias.scope !43
  %i.gr = select i1 %i.go, i64 15, i64 %i.gq
  %i.gs = icmp ugt i64 %i.gm, %i.gr
  br i1 %i.gs, label %bb.bl, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit117

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc8.i113 unwind label %bb.bm

.noexc8.i113:                                     ; preds = %bb.bl
  %.pre.i.i7.i114 = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !43
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit117

bb.bm:                                            ; preds = %bb.bl
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !43
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn.i108 = phi { ptr, i32 } [ %i.gt, %bb.bm ], [ %i.gu, %bb.bn ] ; 2 uses
  %i.gv = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !43 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.gi
  br i1 %i.gw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109: ; preds = %bb.bo
  %i.gx = load i64, ptr %i.gi, align 8, !tbaa !22, !alias.scope !43
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #17
  br label %.body

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit117: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i112, %.noexc8.i113
  %i.gz = phi ptr [ %.pre.i.i7.i114, %.noexc8.i113 ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i112 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gl
  store i8 0, ptr %i.ha, align 1, !tbaa !22
  store i64 %i.gm, ptr %i.gj, align 8, !tbaa !20, !alias.scope !43
  %i.hb = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !43
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gm
  store i8 0, ptr %i.hc, align 1, !tbaa !22
  br label %.thread160

bb.bp:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.hd = trunc i32 %i.gg to i8
  %i.he = shl nuw i8 %i.gf, 7
  %i.hf = or i8 %i.he, %i.hd
  %spec.select.i.i118 = or i8 %i.hf, %i.gd        ; 2 uses
  %.not.i.i119 = icmp eq i8 %spec.select.i.i118, 0
  %.pre168 = load ptr, ptr %i.aj, align 8, !tbaa !19, !noalias !46 ; 3 uses
  %.pre170 = load i64, ptr %i.al, align 8, !tbaa !20, !noalias !46 ; 5 uses
  br i1 %.not.i.i119, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder4PushEv.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hg = add i64 %.pre170, 1                     ; 3 uses
  %i.hh = icmp eq ptr %.pre168, %i.ak             ; 2 uses
  br i1 %i.hh, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i120

bb.br:                                            ; preds = %bb.bq
  %i.hi = icmp ult i64 %.pre170, 16
  call void @llvm.assume(i1 %i.hi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i120: ; preds = %bb.br, %bb.bq
  %i.hj = load i64, ptr %i.ak, align 8, !noalias !46
  %i.hk = select i1 %i.hh, i64 15, i64 %i.hj
  %i.hl = icmp ugt i64 %i.hg, %i.hk
  br i1 %i.hl, label %bb.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i121

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i120
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %.pre170, i64 noundef 0, ptr noundef null, i64 noundef 1)
end_hunk_0
