inline.NumInlined: 294
inline.NumDeleted: 156
begin_hunk_0_@_ZN6google8protobuf8compiler10objectivec20TextFormatDecodeData19DecodeDataForStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES7_:bb.a
  %i.bc = load i64, ptr %i.ai, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bd = phi i64 [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.bf = phi ptr [ %.pre.i.i.i.i, %.noexc ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 %spec.select.i.i, ptr %i.bg, align 1, !tbaa !22
  store i64 %i.ay, ptr %i.aj, align 8, !tbaa !20
  %i.bh = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ay
  store i8 0, ptr %i.bi, align 1, !tbaa !22
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i
  store i8 0, ptr %i.ak, align 2, !tbaa !33
  store i32 0, ptr %i.al, align 4, !tbaa !34
  store i8 1, ptr %i.am, align 1, !tbaa !35
  store i8 1, ptr %12, align 8, !tbaa !30
  br label %bb.ba

bb.s:                                             ; preds = %bb.aq, %bb.al, %bb.ac, %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %.lr.ph
  %.not = icmp ult i64 %.059185, %1
  br i1 %.not, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !18, !alias.scope !36
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.bk, align 8, !tbaa !22, !alias.scope !36
  store i64 1, ptr %i.bl, align 8, !tbaa !20, !alias.scope !36
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.bm, align 1, !tbaa !22, !alias.scope !36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !36
  store i64 %3, ptr %7, align 8, !tbaa !21, !noalias !36
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !39, !noalias !36
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !36
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !20, !alias.scope !36 ; 4 uses
  %i.bo = add i64 %i.bn, 1                        ; 3 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !36 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bk
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i: ; preds = %bb.v
  %i.br = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.v
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !22, !alias.scope !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i
  %i.bt = phi i64 [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i ]
  %i.bu = icmp ugt i64 %i.bo, %i.bt
  br i1 %i.bu, label %bb.w, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc10.i unwind label %bb.x

.noexc10.i:                                       ; preds = %bb.w
  %.pre.i.i8.i = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !36
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.x:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !36
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %i.bw, %bb.y ] ; 2 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !36 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bk
  br i1 %i.by, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.bz = load i64, ptr %i.bk, align 8, !tbaa !22, !alias.scope !36
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #17
  br label %.body

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i, %.noexc10.i
  %i.cb = phi ptr [ %.pre.i.i8.i, %.noexc10.i ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bn
  store i8 0, ptr %i.cc, align 1, !tbaa !22
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !20, !alias.scope !36
  %i.cd = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bo
  store i8 0, ptr %i.ce, align 1, !tbaa !22
  br label %.thread169

bb.aa:                                            ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.059185
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !22  ; 4 uses
  switch i32 %i.aq, label %bb.ah [
    i32 31, label %bb.ab
    i32 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ch = shl nuw i8 %i.ap, 7
  %i.ci = or i8 %i.an, %i.ch
  %spec.select.i.i88 = or i8 %i.ci, 31
  %i.cj = load i64, ptr %i.aj, align 8, !tbaa !20 ; 4 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ai
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i93: ; preds = %bb.ab
  %i.cn = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89: ; preds = %bb.ab
  %i.co = load i64, ptr %i.ai, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i93
  %i.cp = phi i64 [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i93 ]
  %i.cq = icmp ugt i64 %i.ck, %i.cp
  br i1 %i.cq, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i91

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i90
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.cj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc95 unwind label %bb.s

.noexc95:                                         ; preds = %bb.ac
  %.pre.i.i.i.i92 = load ptr, ptr %i.ah, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i91: ; preds = %.noexc95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i90
  %i.cr = phi ptr [ %.pre.i.i.i.i92, %.noexc95 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i90 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  store i8 %spec.select.i.i88, ptr %i.cs, align 1, !tbaa !22
  store i64 %i.ck, ptr %i.aj, align 8, !tbaa !20
  %i.ct = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ck
  store i8 0, ptr %i.cu, align 1, !tbaa !22
  store i8 0, ptr %12, align 8, !tbaa !30
  store i8 0, ptr %i.ak, align 2, !tbaa !33
  store i32 0, ptr %i.al, align 4, !tbaa !34
  store i8 1, ptr %i.am, align 1, !tbaa !35
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i91, %bb.aa
  %i.cv = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i91 ], [ %i.ao, %bb.aa ]
  %i.cw = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i91 ], [ %i.ap, %bb.aa ]
  %i.cx = icmp eq i8 %i.as, %i.cg
  br i1 %i.cx, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = zext i8 %i.cg to i64                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !22
  %i.db = icmp eq i8 %i.as, %i.da
  br i1 %i.db, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.cy
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !22
  %i.de = icmp eq i8 %i.as, %i.dd
  br i1 %i.de, label %bb.ag, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.sink.i.i = phi i8 [ 0, %bb.ad ], [ 64, %bb.ae ], [ 32, %bb.af ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.ak, align 2, !tbaa !33
  store i32 1, ptr %i.al, align 4, !tbaa !34
  %i.df = add i8 %i.as, -65
  %i.dg = icmp ult i8 %i.df, 26
  %14 = icmp ne i8 %i.cv, 0
  %15 = and i1 %i.dg, %14
  br label %bb.au

bb.ah:                                            ; preds = %bb.aa
  %i.dh = icmp eq i8 %i.as, %i.cg
  br i1 %i.dh, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %.not.i94 = icmp ne i8 %i.an, 96
  %i.di = add i8 %i.as, -65
  %i.dj = icmp ult i8 %i.di, 26                   ; 2 uses
  %or.cond.i = or i1 %i.dj, %.not.i94
  br i1 %or.cond.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dk = add nsw i32 %i.aq, 1                    ; 2 uses
  store i32 %i.dk, ptr %i.al, align 4, !tbaa !34
  %16 = icmp ne i8 %i.ao, 0
  %17 = and i1 %i.dj, %16
  br label %bb.au

bb.ak:                                            ; preds = %bb.ai
  %i.dl = trunc i32 %i.aq to i8
  %i.dm = shl nuw i8 %i.ap, 7
  %i.dn = or i8 %i.dm, %i.dl
  %spec.select.i15.i = or i8 %i.dn, 96
  %i.do = load i64, ptr %i.aj, align 8, !tbaa !20 ; 4 uses
  %i.dp = add i64 %i.do, 1                        ; 3 uses
  %i.dq = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ai
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21.i: ; preds = %bb.ak
  %i.ds = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.ds)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17.i: ; preds = %bb.ak
  %i.dt = load i64, ptr %i.ai, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i18.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21.i
  %i.du = phi i64 [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21.i ]
  %i.dv = icmp ugt i64 %i.dp, %i.du
  br i1 %i.dv, label %bb.al, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i18.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.do, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc96 unwind label %bb.s

.noexc96:                                         ; preds = %bb.al
  %.pre.i.i.i20.i = load ptr, ptr %i.ah, align 8, !tbaa !19
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i: ; preds = %.noexc96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i18.i
  %i.dw = phi ptr [ %.pre.i.i.i20.i, %.noexc96 ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i18.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do
  store i8 %spec.select.i15.i, ptr %i.dx, align 1, !tbaa !22
  store i64 %i.dp, ptr %i.aj, align 8, !tbaa !20
  %i.dy = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dp
  store i8 0, ptr %i.dz, align 1, !tbaa !22
  store i8 0, ptr %12, align 8, !tbaa !30
  store i8 0, ptr %i.ak, align 2, !tbaa !33
  store i32 1, ptr %i.al, align 4, !tbaa !34
  br label %bb.au

bb.am:                                            ; preds = %bb.ah
  %i.ea = zext i8 %i.cg to i64                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !22
  %i.ed = icmp eq i8 %i.as, %i.ec                 ; 2 uses
  %i.ee = trunc nuw i8 %i.ao to i1
  %or.cond180 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond180, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 96, ptr %i.ak, align 2, !tbaa !33
  %i.ef = add nsw i32 %i.aq, 1                    ; 2 uses
  store i32 %i.ef, ptr %i.al, align 4, !tbaa !34
  %i.eg = add i8 %i.as, -65
  %i.eh = icmp ult i8 %i.eg, 26
  br label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.ei = trunc i32 %i.aq to i8
  %i.ej = shl nuw i8 %i.ap, 7
  %i.ek = or i8 %i.ej, %i.ei
  %spec.select.i26.i = or i8 %i.ek, %i.an         ; 2 uses
  %.not.i27.i = icmp eq i8 %spec.select.i26.i, 0
  br i1 %.not.i27.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = load i64, ptr %i.aj, align 8, !tbaa !20 ; 4 uses
  %i.em = add i64 %i.el, 1                        ; 3 uses
  %i.en = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ai
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32.i: ; preds = %bb.ap
  %i.ep = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.ep)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28.i: ; preds = %bb.ap
  %i.eq = load i64, ptr %i.ai, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i29.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32.i
  %i.er = phi i64 [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32.i ]
  %i.es = icmp ugt i64 %i.em, %i.er
  br i1 %i.es, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i30.i

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i29.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.el, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc97 unwind label %bb.s

.noexc97:                                         ; preds = %bb.aq
  %.pre.i.i.i31.i = load ptr, ptr %i.ah, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i30.i: ; preds = %.noexc97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i29.i
  %i.et = phi ptr [ %.pre.i.i.i31.i, %.noexc97 ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i29.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el
  store i8 %spec.select.i26.i, ptr %i.eu, align 1, !tbaa !22
  store i64 %i.em, ptr %i.aj, align 8, !tbaa !20
  %i.ev = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.em
  store i8 0, ptr %i.ew, align 1, !tbaa !22
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i30.i, %bb.ao
  store i8 0, ptr %12, align 8, !tbaa !30
  store i8 0, ptr %i.ak, align 2, !tbaa !33
  store i32 0, ptr %i.al, align 4, !tbaa !34
  store i8 1, ptr %i.am, align 1, !tbaa !35
  br i1 %i.ed, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ex = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.ea
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.ez = icmp eq i8 %i.as, %i.ey
  br i1 %i.ez, label %bb.at, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sink.i35.i = phi i8 [ 32, %bb.as ], [ 64, %bb.ar ] ; 2 uses
  store i8 %.sink.i35.i, ptr %i.ak, align 2, !tbaa !33
  store i32 1, ptr %i.al, align 4, !tbaa !34
  %i.fa = add i8 %i.as, -65
  %i.fb = icmp ult i8 %i.fa, 26
  br label %bb.au

bb.au:                                            ; preds = %bb.aj, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i, %bb.an, %bb.ag, %bb.at
  %.sink.shrunk = phi i1 [ %17, %bb.aj ], [ false, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.eh, %bb.an ], [ %15, %bb.ag ], [ %i.fb, %bb.at ]
  %i.fc = phi i8 [ %i.an, %bb.aj ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ 96, %bb.an ], [ %.sink.i.i, %bb.ag ], [ %.sink.i35.i, %bb.at ]
  %i.fd = phi i8 [ %i.ap, %bb.aj ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.ap, %bb.an ], [ %i.cw, %bb.ag ], [ 0, %bb.at ]
  %i.fe = phi i32 [ %i.dk, %bb.aj ], [ 1, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.ef, %bb.an ], [ 1, %bb.ag ], [ 1, %bb.at ]
  %.sink = zext i1 %.sink.shrunk to i8            ; 2 uses
  store i8 %.sink, ptr %i.am, align 1, !tbaa !35
  %i.ff = add nuw i64 %.059185, 1
  br label %bb.ba

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit: ; preds = %bb.af, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.fg, ptr %0, align 8, !tbaa !18, !alias.scope !40
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.fg, align 8, !tbaa !22, !alias.scope !40
  store i64 1, ptr %i.fh, align 8, !tbaa !20, !alias.scope !40
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.fi, align 1, !tbaa !22, !alias.scope !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14, !noalias !40
  store i64 %3, ptr %6, align 8, !tbaa !21, !noalias !40
  %.sroa.2.0..sroa_idx.i.i98 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i98, align 8, !tbaa !39, !noalias !40
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !40
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !20, !alias.scope !40 ; 4 uses
  %i.fk = add i64 %i.fj, 1                        ; 3 uses
  %i.fl = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !40 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fg
  br i1 %i.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i107: ; preds = %bb.av
  %i.fn = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i103: ; preds = %bb.av
  %i.fo = load i64, ptr %i.fg, align 8, !tbaa !22, !alias.scope !40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i107
  %i.fp = phi i64 [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i103 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i107 ]
  %i.fq = icmp ugt i64 %i.fk, %i.fp
  br i1 %i.fq, label %bb.aw, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit110

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc10.i105 unwind label %bb.ax

.noexc10.i105:                                    ; preds = %bb.aw
  %.pre.i.i8.i106 = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !40
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit110

bb.ax:                                            ; preds = %bb.aw
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !40
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn.i99 = phi { ptr, i32 } [ %i.fr, %bb.ax ], [ %i.fs, %bb.ay ] ; 2 uses
  %i.ft = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !40 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fg
  br i1 %i.fu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100: ; preds = %bb.az
  %i.fv = load i64, ptr %i.fg, align 8, !tbaa !22, !alias.scope !40
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #17
  br label %.body

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i104, %.noexc10.i105
  %i.fx = phi ptr [ %.pre.i.i8.i106, %.noexc10.i105 ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i104 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fj
  store i8 0, ptr %i.fy, align 1, !tbaa !22
  store i64 %i.fk, ptr %i.fh, align 8, !tbaa !20, !alias.scope !40
  %i.fz = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !40
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fk
  store i8 0, ptr %i.ga, align 1, !tbaa !22
  br label %.thread169

bb.ba:                                            ; preds = %bb.au, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit
  %i.gb = phi i8 [ %i.fc, %bb.au ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ] ; 2 uses
  %i.gc = phi i8 [ %.sink, %bb.au ], [ 1, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ]
  %i.gd = phi i8 [ %i.fd, %bb.au ], [ 1, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ] ; 2 uses
  %i.ge = phi i32 [ %i.fe, %bb.au ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ] ; 2 uses
  %.160 = phi i64 [ %i.ff, %bb.au ], [ %.059185, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit ] ; 2 uses
  %i.gf = add nuw i64 %.058186, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gf, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.ba
  %.not66 = icmp eq i64 %.160, %1
  br i1 %.not66, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.gg, ptr %0, align 8, !tbaa !18, !alias.scope !44
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.gg, align 8, !tbaa !22, !alias.scope !44
  store i64 1, ptr %i.gh, align 8, !tbaa !20, !alias.scope !44
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.gi, align 1, !tbaa !22, !alias.scope !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14, !noalias !44
  store i64 %3, ptr %5, align 8, !tbaa !21, !noalias !44
  %.sroa.2.0..sroa_idx.i.i111 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i111, align 8, !tbaa !39, !noalias !44
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !44
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !20, !alias.scope !44 ; 4 uses
  %i.gk = add i64 %i.gj, 1                        ; 3 uses
  %i.gl = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !44 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.gg
  br i1 %i.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i120: ; preds = %bb.bc
  %i.gn = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i116: ; preds = %bb.bc
  %i.go = load i64, ptr %i.gg, align 8, !tbaa !22, !alias.scope !44
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i117: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i120
  %i.gp = phi i64 [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i116 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9.i120 ]
  %i.gq = icmp ugt i64 %i.gk, %i.gp
  br i1 %i.gq, label %bb.bd, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit123

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i117
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc10.i118 unwind label %bb.be

.noexc10.i118:                                    ; preds = %bb.bd
  %.pre.i.i8.i119 = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !44
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit123

bb.be:                                            ; preds = %bb.bd
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !44
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn.i112 = phi { ptr, i32 } [ %i.gr, %bb.be ], [ %i.gs, %bb.bf ] ; 2 uses
  %i.gt = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !44 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.gg
  br i1 %i.gu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.bg
  %i.gv = load i64, ptr %i.gg, align 8, !tbaa !22, !alias.scope !44
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #17
  br label %.body

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit123: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i117, %.noexc10.i118
  %i.gx = phi ptr [ %.pre.i.i8.i119, %.noexc10.i118 ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7.i117 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gj
  store i8 0, ptr %i.gy, align 1, !tbaa !22
  store i64 %i.gk, ptr %i.gh, align 8, !tbaa !20, !alias.scope !44
  %i.gz = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !44
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gk
  store i8 0, ptr %i.ha, align 1, !tbaa !22
  br label %.thread169

bb.bh:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.hb = trunc i32 %i.ge to i8
  %i.hc = shl nuw i8 %i.gd, 7
  %i.hd = or i8 %i.hc, %i.hb
  %spec.select.i.i124 = or i8 %i.hd, %i.gb        ; 2 uses
  %.not.i.i125 = icmp eq i8 %spec.select.i.i124, 0
  %.pre187 = load ptr, ptr %i.ah, align 8, !tbaa !19, !noalias !47 ; 3 uses
  %.pre189 = load i64, ptr %i.aj, align 8, !tbaa !20, !noalias !47 ; 5 uses
  br i1 %.not.i.i125, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder4PushEv.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.he = add i64 %.pre189, 1                     ; 3 uses
  %i.hf = icmp eq ptr %.pre187, %i.ai
  br i1 %i.hf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i130: ; preds = %bb.bi
  %i.hg = icmp ult i64 %.pre189, 16
  call void @llvm.assume(i1 %i.hg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126: ; preds = %bb.bi
  %i.hh = load i64, ptr %i.ai, align 8, !tbaa !22, !noalias !47
end_hunk_0
