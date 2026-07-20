inline.NumInlined: 729
inline.NumDeleted: 425
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !17
  br label %.body

.thread:                                          ; preds = %bb.h
  store i64 1, ptr %11, align 8, !tbaa !13, !alias.scope !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !17
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.d, %bb.g
  %.pr = load i64, ptr %11, align 8, !tbaa !13    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !17
  %i.ay = icmp eq i64 %.pr, 1
  br i1 %i.ay, label %bb.m, label %.thread231

.thread231:                                       ; preds = %bb.l
  store i64 %.pr, ptr %0, align 8, !tbaa !13
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit75

.loopexit106:                                     ; preds = %bb.f
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp107:                            ; preds = %bb.d, %bb.e, %bb.g, %bb.i, %.noexc39
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.l, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.az = load ptr, ptr %10, align 8, !tbaa !20
  %i.ba = load i64, ptr %i.k, align 8, !tbaa !7
  store i64 %i.ba, ptr %13, align 8, !tbaa !27, !alias.scope !28
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.az, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !31, !alias.scope !28
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 10, ptr %i.bb, align 8, !tbaa !16, !alias.scope !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !32
  invoke void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %12, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(18) %13)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.be = load ptr, ptr %12, align 8, !tbaa !38   ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %.not = icmp eq ptr %i.bd, %i.be
  br i1 %.not, label %._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 15 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 13 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  br label %bb.o

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %.preheader
  %.122.lcssa = phi i64 [ %i.bz, %.preheader ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ] ; 2 uses
  %i.bu = icmp ult i64 %.122.lcssa, %i.bi
  br i1 %i.bu, label %bb.o, label %._crit_edge, !llvm.loop !39

bb.o:                                             ; preds = %.lr.ph162, %.loopexit
  %.021161 = phi i64 [ 0, %.lr.ph162 ], [ %.122.lcssa, %.loopexit ] ; 2 uses
  %i.bv = load ptr, ptr %12, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.021161 ; 4 uses
  %.sroa.092.0.copyload = load i64, ptr %i.bw, align 8, !tbaa !27 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.bx, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.by = invoke noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal18safe_strtou64_baseESt17basic_string_viewIcSt11char_traitsIcEEPmi(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %i.c, i32 noundef 10)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.bz = add i64 %.021161, 2                     ; 4 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %i.by, label %.preheader, label %bb.t

.preheader:                                       ; preds = %bb.p
  %.not163 = icmp eq i64 %i.ca, 0
  br i1 %.not163, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cb = icmp eq ptr %.sroa.5.0.copyload, null
  %i.cc = icmp ne i64 %.sroa.092.0.copyload, 0
  %or.cond.i.i.i53 = and i1 %i.cc, %i.cb
  %i.cd = icmp ugt i64 %.sroa.092.0.copyload, 15
  %or.cond.i.i.i53.fr = freeze i1 %or.cond.i.i.i53
  br i1 %or.cond.i.i.i53.fr, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ce = add i64 %i.bz, %i.ca                    ; 2 uses
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.cf = load ptr, ptr %12, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i.us = load i64, ptr %i.cg, align 8, !tbaa !27 ; 5 uses
  %.sroa.2.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.2.0.copyload.i.us = load ptr, ptr %.sroa.2.0..sroa_idx.i.us, align 8, !tbaa !31 ; 3 uses
  store ptr %i.bj, ptr %16, align 8, !tbaa !15
  %i.ch = icmp eq ptr %.sroa.2.0.copyload.i.us, null
  %i.ci = icmp ne i64 %.sroa.0.0.copyload.i.us, 0
  %or.cond.i.i.i.us = and i1 %i.ci, %i.ch
  br i1 %or.cond.i.i.i.us, label %.split.us134, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %.sroa.0.0.copyload.i.us, ptr %i.b, align 8, !tbaa !27
  %i.cj = icmp ugt i64 %.sroa.0.0.copyload.i.us, 15
  br i1 %i.cj, label %.noexc.i.i.i.us, label %._crit_edge.i.i.i.i.us

.noexc.i.i.i.us:                                  ; preds = %bb.q
  %i.ck = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc49.us unwind label %.loopexit100.split.us ; 2 uses

.noexc49.us:                                      ; preds = %.noexc.i.i.i.us
  store ptr %i.ck, ptr %16, align 8, !tbaa !20
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !27
  store i64 %i.cl, ptr %i.bj, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i.us

._crit_edge.i.i.i.i.us:                           ; preds = %.noexc49.us, %bb.q
  %i.cm = phi ptr [ %i.ck, %.noexc49.us ], [ %i.bj, %bb.q ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.us, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %.split137.us
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.us
  %i.cn = load i8, ptr %.sroa.2.0.copyload.i.us, align 1, !tbaa !16
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !16
  br label %.split137.us

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %.sroa.2.0.copyload.i.us, i64 %.sroa.0.0.copyload.i.us, i1 false)
  br label %.split137.us

.split137.us:                                     ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i.us
  %i.co = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  store i64 %i.co, ptr %i.bk, align 8, !tbaa !7
  %i.cp = load ptr, ptr %16, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %i.bl, ptr %17, align 8, !tbaa !15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc56 unwind label %.loopexit.split-lp102

.loopexit100.split.us:                            ; preds = %.noexc.i.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %14, i64 53, ptr nonnull @.str)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cr = load i64, ptr %14, align 8, !tbaa !13   ; 2 uses
  store i64 %i.cr, ptr %0, align 8, !tbaa !13
  store i64 55, ptr %14, align 8, !tbaa !13
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.v, label %.thread98, !prof !41

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4absl12lts_202505128StatusOrINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_18container_internal10StringHashENS9_8StringEqESaISt4pairIKS8_S8_EEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ESG_T_EE5valueEiE4typeELi0EEEOSL_.exit47 unwind label %.body45

.body45:                                          ; preds = %bb.v
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #23
  br label %bb.ab

_ZN4absl12lts_202505128StatusOrINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_18container_internal10StringHashENS9_8StringEqESaISt4pairIKS8_S8_EEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ESG_T_EE5valueEiE4typeELi0EEEOSL_.exit47: ; preds = %bb.v
  %.pre = load i64, ptr %14, align 8, !tbaa !13
  %i.cu = trunc nuw i64 %.pre to i1
  br i1 %i.cu, label %.thread98, label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_202505128StatusOrINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_18container_internal10StringHashENS9_8StringEqESaISt4pairIKS8_S8_EEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ESG_T_EE5valueEiE4typeELi0EEEOSL_.exit47
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) null)
          to label %.thread98 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #26
  unreachable

.thread98:                                        ; preds = %bb.u, %bb.w, %_ZN4absl12lts_202505128StatusOrINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_18container_internal10StringHashENS9_8StringEqESaISt4pairIKS8_S8_EEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ESG_T_EE5valueEiE4typeELi0EEEOSL_.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bd

bb.y:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74

bb.z:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.aa:                                            ; preds = %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.body45, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ct, %.body45 ], [ %i.cz, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bf

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.122132 = phi i64 [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.bz, %.lr.ph.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.da = add i64 %.122132, 1                     ; 2 uses
  %i.db = load ptr, ptr %12, align 8, !tbaa !38
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.122132 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.dc, align 8, !tbaa !27 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !31 ; 3 uses
  store ptr %i.bj, ptr %16, align 8, !tbaa !15
  %i.dd = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.de = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.de, %i.dd
  br i1 %or.cond.i.i.i, label %.split.us134, label %bb.ac

.split.us134:                                     ; preds = %.lr.ph.split, %.lr.ph.split.us
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc48 unwind label %.loopexit.split-lp

.noexc48:                                         ; preds = %.split.us134
  unreachable

bb.ac:                                            ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8, !tbaa !27
  %i.df = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.df, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.ac
  %i.dg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc49 unwind label %.loopexit100.split ; 2 uses

.noexc49:                                         ; preds = %.noexc.i.i.i
  store ptr %i.dg, ptr %16, align 8, !tbaa !20
  %i.dh = load i64, ptr %i.b, align 8, !tbaa !27
  store i64 %i.dh, ptr %i.bj, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc49, %bb.ac
  %i.di = phi ptr [ %i.dg, %.noexc49 ], [ %i.bj, %bb.ac ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dj = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !16
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !16
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  store i64 %i.dk, ptr %i.bk, align 8, !tbaa !7
  %i.dl = load ptr, ptr %16, align 8, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 0, ptr %i.dm, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %i.bl, ptr %17, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.sroa.092.0.copyload, ptr %i.a, align 8, !tbaa !27
  br i1 %i.cd, label %.noexc.i.i.i55, label %._crit_edge.i.i.i.i54

.noexc56:                                         ; preds = %.split137.us
  unreachable

.noexc.i.i.i55:                                   ; preds = %bb.af
  %i.dn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc57 unwind label %.loopexit101 ; 2 uses

.noexc57:                                         ; preds = %.noexc.i.i.i55
  store ptr %i.dn, ptr %17, align 8, !tbaa !20
  %i.do = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.do, ptr %i.bl, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i54

._crit_edge.i.i.i.i54:                            ; preds = %.noexc57, %bb.af
  %i.dp = phi ptr [ %i.dn, %.noexc57 ], [ %i.bl, %bb.af ] ; 2 uses
  switch i64 %.sroa.092.0.copyload, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i54
  %i.dq = load i8, ptr %.sroa.5.0.copyload, align 1, !tbaa !16
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !16
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %.sroa.5.0.copyload, i64 %.sroa.092.0.copyload, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i.i54
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  store i64 %i.dr, ptr %i.bm, align 8, !tbaa !7
  %i.ds = load ptr, ptr %17, align 8, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store i8 0, ptr %i.dt, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store ptr %i.bn, ptr %15, align 8, !tbaa !15
  %i.du = load ptr, ptr %16, align 8, !tbaa !20   ; 3 uses
  %i.dv = icmp eq ptr %i.du, %i.bj
  br i1 %i.dv, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.dw = load i64, ptr %i.bk, align 8, !tbaa !7  ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.dx)
  %i.dy = add nuw nsw i64 %i.dw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.dy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  store ptr %i.du, ptr %15, align 8, !tbaa !20
  %i.dz = load i64, ptr %i.bj, align 8, !tbaa !16
  store i64 %i.dz, ptr %i.bn, align 8, !tbaa !16
  %.pr95 = load i64, ptr %i.bk, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aj
  %i.ea = phi ptr [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bn, %bb.aj ] ; 12 uses
  %i.eb = phi i64 [ %.pr95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dw, %bb.aj ] ; 15 uses
  store i64 %i.eb, ptr %i.bo, align 8, !tbaa !7
  store ptr %i.bj, ptr %16, align 8, !tbaa !20
  store i64 0, ptr %i.bk, align 8, !tbaa !7
  store i8 0, ptr %i.bj, align 8, !tbaa !16
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !15
  %i.ec = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.bl
  br i1 %i.ed, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ee = load i64, ptr %i.bm, align 8, !tbaa !7  ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %i.ee, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.eg, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ec, ptr %i.bp, align 8, !tbaa !20
  %i.eh = load i64, ptr %i.bl, align 8, !tbaa !16
  store i64 %i.eh, ptr %i.bq, align 8, !tbaa !16
  %.pre184 = load i64, ptr %i.bm, align 8, !tbaa !7
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.ei = phi i64 [ %i.ee, %bb.ak ], [ %.pre184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  store i64 %i.ei, ptr %i.br, align 8, !tbaa !7
  store ptr %i.bl, ptr %17, align 8, !tbaa !20
  store i64 0, ptr %i.bm, align 8, !tbaa !7
  store i8 0, ptr %i.bl, align 8, !tbaa !16
  %i.ej = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !16, !noalias !42
  call void @llvm.prefetch.p0(ptr %i.ej, i32 0, i32 1, i32 1), !noalias !42
  %i.ek = icmp ult i64 %i.eb, 9
  br i1 %i.ek, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit
  %i.el = icmp samesign ugt i64 %i.eb, 3
  br i1 %i.el, label %bb.am, label %bb.an

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE:bb.a
  br i1 %i.jh, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ji = load i64, ptr %i.bo, align 8, !tbaa !7, !noalias !53 ; 2 uses
  %i.jj = icmp ult i64 %i.ji, 16
  call void @llvm.assume(i1 %i.jj)
  %i.jk = add nuw nsw i64 %i.ji, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jf, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.jk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.az
  store ptr %i.jg, ptr %i.je, align 8, !tbaa !20
  %i.jl = load i64, ptr %i.bn, align 8, !tbaa !16, !noalias !53
  store i64 %i.jl, ptr %i.jf, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ba
  %i.jm = load i64, ptr %i.bo, align 8, !tbaa !7, !noalias !53
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !7
  store ptr %i.bn, ptr %15, align 8, !tbaa !20, !noalias !53
  store i64 0, ptr %i.bo, align 8, !tbaa !7, !noalias !53
  store i8 0, ptr %i.bn, align 8, !tbaa !16, !noalias !53
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 32 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 48 ; 3 uses
  store ptr %i.jp, ptr %i.jo, align 8, !tbaa !15
  %i.jq = load ptr, ptr %i.bp, align 8, !tbaa !20, !noalias !53 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.bq
  br i1 %i.jr, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.js = load i64, ptr %i.br, align 8, !tbaa !7, !noalias !53 ; 2 uses
  %i.jt = icmp ult i64 %i.js, 16
  call void @llvm.assume(i1 %i.jt)
  %i.ju = add nuw nsw i64 %i.js, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jp, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.ju, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESO_EEEvNSH_8iteratorEDpOT_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.jq, ptr %i.jo, align 8, !tbaa !20
  %i.jv = load i64, ptr %i.bq, align 8, !tbaa !16, !noalias !53
  store i64 %i.jv, ptr %i.jp, align 8, !tbaa !16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESO_EEEvNSH_8iteratorEDpOT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESO_EEEvNSH_8iteratorEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb
  %i.jw = load i64, ptr %i.br, align 8, !tbaa !7, !noalias !53
  %i.jx = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !7
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !20, !noalias !53
  store i64 0, ptr %i.br, align 8, !tbaa !7, !noalias !53
  store i8 0, ptr %i.bq, align 8, !tbaa !16, !noalias !53
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i82.us, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESO_EEEvNSH_8iteratorEDpOT_.exit.i.i.i.i.i.i.i
  %i.jy = load ptr, ptr %i.bp, align 8, !tbaa !20 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.bq
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit
  %i.ka = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  %i.kc = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.bn
  br i1 %i.kd, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61
  %i.ke = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #25
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.kg = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.bl
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.ki = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.kk = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.bj
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.km = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %exitcond.not = icmp eq i64 %i.da, %i.ce
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !64

.loopexit100.split:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit.split-lp:                               ; preds = %.split.us134
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit101:                                     ; preds = %.noexc.i.i.i55
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

.loopexit.split-lp102:                            ; preds = %.split137.us
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.bc:                                            ; preds = %bb.aw, %bb.av, %.thread.i
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %15) #23
  %i.kp = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.bl
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.bc
  %i.kr = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.bc, %.loopexit101, %.loopexit.split-lp102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %.pn26 = phi { ptr, i32 } [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp102 ], [ %lpad.loopexit103, %.loopexit101 ], [ %i.ko, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.kt = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.bj
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.kv = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %.loopexit.split-lp, %.loopexit100.split.us, %.loopexit100.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %lpad.loopexit.us, %.loopexit100.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit100.split ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bf

._crit_edge:                                      ; preds = %.loopexit, %bb.n
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEEC2EOSH_(ptr noundef nonnull align 8 dereferenceable(32) %i.kx, ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  store i64 1, ptr %0, align 8, !tbaa !13
  br label %bb.bd

bb.bd:                                            ; preds = %.thread98, %._crit_edge
  %i.ky = load ptr, ptr %12, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !65
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.ky to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.ld) #25
  br label %bb.bh

bb.bf:                                            ; preds = %bb.z, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.z ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn, %bb.ab ] ; 2 uses
  %i.le = load ptr, ptr %12, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !65
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lj) #25
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74: ; preds = %bb.bg, %bb.bf, %bb.y
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.y ], [ %.pn26.pn.pn.pn, %bb.bf ], [ %.pn26.pn.pn.pn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %.body

bb.bh:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.pre185 = load i64, ptr %11, align 8, !tbaa !13
  %i.lk = trunc nuw i64 %.pre185 to i1
  br i1 %i.lk, label %_ZN4absl12lts_202505126StatusD2Ev.exit75, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) null)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit75 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #26
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit75:         ; preds = %.thread231, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ln = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.j
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit75
  %i.lp = load i64, ptr %i.j, align 8, !tbaa !16
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bk

.body:                                            ; preds = %.loopexit106, %.loopexit.split-lp107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74
  %.pn26.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ], [ %lpad.loopexit108, %.loopexit106 ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.lr = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.j
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body
  %i.lt = load i64, ptr %i.j, align 8, !tbaa !16
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn.pn.pn

bb.bk:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.lv = load i64, ptr %9, align 8, !tbaa !50
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %9, ptr %2, align 8, !tbaa !66
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 64, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.bm

.noexc.i:                                         ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.lx = load i64, ptr %9, align 8, !tbaa !50
  %i.ly = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !16
  %i.lz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !45
  %i.mb = and i64 %i.ma, 65536
  %i.mc = icmp ne i64 %i.mb, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.lx, ptr noundef %i.ly, i64 noundef 64, i64 noundef 8, i1 noundef zeroext %i.mc)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %.noexc.i, %bb.bl
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  call void @__clang_call_terminate(ptr %i.me) #26
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev.exit: ; preds = %bb.bk, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) null)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.18, align 8             ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !50
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %0, ptr %1, align 8, !tbaa !66
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 64, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.c = load i64, ptr %0, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, ptr noundef %i.e, i64 noundef 64, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE15destructor_implEv.exit: ; preds = %bb.a, %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051213NotFoundErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #25
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEEC2EOSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"struct.absl::lts_20250512::container_internal::HeapPtrs", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.a = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}
end_hunk_1
