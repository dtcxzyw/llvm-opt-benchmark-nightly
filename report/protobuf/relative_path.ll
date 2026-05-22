inline.NumInlined: 440
inline.NumDeleted: 193
begin_hunk_0_@_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_:bb.a
  %i.cj = sub i64 %i.ci, %i.ad                    ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, %.sroa.speculated.i.i
  br i1 %i.ck, label %.invoke, label %.noexc17

.noexc17:                                         ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i
  %i.cl = sub nuw i64 %.sroa.speculated.i.i, %i.cj ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cj ; 3 uses
  %i.cn = ashr i64 %i.cl, 2                       ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i.i.preheader.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %.noexc17
  %i.cp = and i64 %i.cl, 3
  %scevgep.i.i.i = getelementptr i8, ptr %i.cm, i64 %i.cp ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.u, %.lr.ph.i.i.i.preheader.i.i.i
  %.sroa.03.3.i.i.i.i.i = phi ptr [ %i.di, %bb.u ], [ %i.ai, %.lr.ph.i.i.i.preheader.i.i.i ] ; 8 uses
  %.015.i.i.i.i.i.i = phi i64 [ %i.do, %bb.u ], [ %i.cn, %.lr.ph.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i.i, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15, !noalias !99
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15, !noalias !99
  %i.cv = and i8 %i.cu, 8
  %.not.i.i.i16 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i16, label %.noexc14, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cw = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i.i, i64 -2
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15, !noalias !99
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15, !noalias !99
  %i.db = and i8 %i.da, 8
  %.not9.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not9.i.i.i, label %.noexc14.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i.i, i64 -3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15, !noalias !99
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15, !noalias !99
  %i.dh = and i8 %i.dg, 8
  %.not10.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not10.i.i.i, label %.noexc14.loopexit.split.loop.exit100, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i.i, i64 -4 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15, !noalias !99
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15, !noalias !99
  %i.dn = and i8 %i.dm, 8
  %.not11.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not11.i.i.i, label %.noexc14.loopexit.split.loop.exit102, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = add nsw i64 %.015.i.i.i.i.i.i, -1
  %i.dp = icmp sgt i64 %.015.i.i.i.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.loopexit, !llvm.loop !106

._crit_edge.i.i.i.i.i.i.loopexit:                 ; preds = %bb.u
  %.pre67 = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %.noexc17
  %.pre-phi.i.i.i.i.i.i.pre-phi = phi i64 [ %.pre67, %._crit_edge.i.i.i.i.i.i.loopexit ], [ %i.aj, %.noexc17 ]
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ], [ %i.ai, %.noexc17 ] ; 4 uses
  %i.dq = sub i64 %.pre-phi.i.i.i.i.i.i.pre-phi, %i.ci
  switch i64 %i.dq, label %.noexc14 [
    i64 3, label %bb.v
    i64 2, label %bb.w
    i64 1, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dr = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i, i64 -1 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15, !noalias !99
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !15, !noalias !99
  %i.dw = and i8 %i.dv, 8
  %.not12.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not12.i.i.i, label %.noexc14, label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.dr, %bb.v ] ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i.i, i64 -1 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !15, !noalias !99
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !15, !noalias !99
  %i.ec = and i8 %i.eb, 8
  %.not13.i.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not13.i.i.i, label %.noexc14, label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i
  %.sroa.03.1.i.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.dx, %bb.w ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i.i, i64 -1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !15, !noalias !99
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !15, !noalias !99
  %i.ei = and i8 %i.eh, 8
  %.not14.i.i.i = icmp eq i8 %i.ei, 0
  %spec.select.i.i.i.i.i = select i1 %.not14.i.i.i, ptr %.sroa.03.1.i.i.i.i.i, ptr %i.cm
  br label %.noexc14

.noexc14.loopexit.split.loop.exit:                ; preds = %bb.r
  %i.ej = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i.i, i64 -1
  br label %.noexc14

.noexc14.loopexit.split.loop.exit100:             ; preds = %bb.s
  %i.ek = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i.i, i64 -2
  br label %.noexc14

.noexc14.loopexit.split.loop.exit102:             ; preds = %bb.t
  %i.el = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i.i, i64 -3
  br label %.noexc14

.noexc14:                                         ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14.loopexit.split.loop.exit, %.noexc14.loopexit.split.loop.exit100, %.noexc14.loopexit.split.loop.exit102, %bb.x, %bb.w, %bb.v, %._crit_edge.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.x ], [ %.sroa.03.2.i.i.i.i.i, %bb.w ], [ %.sroa.03.0.i.i.i.i.i, %bb.v ], [ %i.cm, %._crit_edge.i.i.i.i.i.i ], [ %i.el, %.noexc14.loopexit.split.loop.exit102 ], [ %i.ek, %.noexc14.loopexit.split.loop.exit100 ], [ %i.ej, %.noexc14.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.em = ptrtoint ptr %.sink.i.i.i.i.i.i to i64
  %i.en = sub i64 %i.em, %i.ci
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.en)
  %.not22 = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not22, label %bb.d, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, !llvm.loop !107

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %.noexc14
  %.pre66 = load i32, ptr %i.a, align 8
  %i.eo = icmp eq i32 %.pre66, 2
  %i.ep = add nuw nsw i64 %.0, 1                  ; 3 uses
  %.not = icmp eq i64 %i.ep, 16
  %or.cond = select i1 %.not, i1 true, i1 %i.eo
  br i1 %or.cond, label %.critedge, label %.preheader, !llvm.loop !108

.critedge:                                        ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread
  %i.eq = phi i64 [ %i.p, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread ], [ %i.ep, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ]
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.eq
  %i.et = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %i.ew
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_14SkipWhitespaceES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ex, ptr noundef nonnull %3, ptr noundef nonnull %i.es)
          to label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit unwind label %bb.y, !llvm.loop !109

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %.critedge
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.y, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.ey, %bb.y ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ez = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !86
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.z, %bb.aa
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_(ptr noundef nonnull align 8 dereferenceable(42) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !97
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  store i8 %i.f, ptr %i.d, align 8, !tbaa !15
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !7 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !87
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !97
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %1, 2
  br i1 %i.h, label %3, label %bb.d

3:                                                ; preds = %bb.c
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !97
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 41
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %bb.d
  %i.j = load i32, ptr %i.a, align 8, !tbaa !87
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.a, align 8, !tbaa !87
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.g:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !7 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !9 ; 3 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !97
  %i.n = tail call { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.m) ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.a, align 8, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = load i64, ptr %0, align 8, !tbaa !97     ; 5 uses
  %i.t = icmp ugt i64 %i.s, %.sroa.0.0.copyload.i.i
  br i1 %i.t, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef %i.s, i64 noundef %.sroa.0.0.copyload.i.i) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.i
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.s ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.u, %i.w
  %i.y = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.s
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.x) ; 3 uses
  store i64 %.sroa.speculated.i.i, ptr %i.b, align 8, !tbaa !7
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !9
  %i.z = add i64 %i.s, %i.o
  %i.aa = add i64 %i.z, %.sroa.speculated.i.i
  store i64 %i.aa, ptr %0, align 8, !tbaa !97
  %i.ab = tail call noundef zeroext i1 @_ZNK4absl12lts_2025051214SkipWhitespaceclESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i64 %.sroa.speculated.i.i, ptr %i.v)
  br i1 %i.ab, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, label %bb.e, !llvm.loop !107

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_14SkipWhitespaceESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %bb.f, %3, %bb.b
  ret void
}

declare { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4absl12lts_2025051214SkipWhitespaceclESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %1, ptr %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 4 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ashr i64 %i.b, 2                         ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.a
  %i.h = and i64 %i.b, 3
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.h
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.03.3.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader.i.i ] ; 8 uses
  %.015.i.i.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.f, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15, !noalias !110
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15, !noalias !110
  %i.n = and i8 %i.m, 8
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15, !noalias !110
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15, !noalias !110
  %i.t = and i8 %i.s, 8
  %.not9.i.i = icmp eq i8 %i.t, 0
  br i1 %.not9.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15, !noalias !110
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15, !noalias !110
  %i.z = and i8 %i.y, 8
  %.not10.i.i = icmp eq i8 %i.z, 0
  br i1 %.not10.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15, !noalias !110
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15, !noalias !110
  %i.af = and i8 %i.ae, 8
  %.not11.i.i = icmp eq i8 %i.af, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i64 %.015.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.015.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !106

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.a
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %scevgep.i.i, %bb.e ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.i.i.i.i to i64
  %i.ai = sub i64 %.pre-phi.i.i.i.i.i, %i.e
  switch i64 %i.ai, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15, !noalias !110
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15, !noalias !110
  %i.ao = and i8 %i.an, 8
  %.not12.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not12.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i
  %.sroa.03.2.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15, !noalias !110
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15, !noalias !110
  %i.au = and i8 %i.at, 8
  %.not13.i.i = icmp eq i8 %i.au, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15, !noalias !110
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15, !noalias !110
  %i.ba = and i8 %i.az, 8
  %.not14.i.i = icmp eq i8 %i.ba, 0
  %spec.select.i.i.i.i = select i1 %.not14.i.i, ptr %.sroa.03.1.i.i.i.i, ptr %i.c
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.bb = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit14: ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit16: ; preds = %bb.b
  %i.bd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit14, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit16, %._crit_edge.i.i.i.i.i, %bb.f, %bb.g, %bb.h
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.h ], [ %.sroa.03.2.i.i.i.i, %bb.g ], [ %.sroa.03.0.i.i.i.i, %bb.f ], [ %i.c, %._crit_edge.i.i.i.i.i ], [ %i.bd, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit16 ], [ %i.bc, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit14 ], [ %i.bb, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.bf = sub i64 %i.be, %i.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.bf)
  %i.bg = icmp ne i64 %.sroa.speculated.i.i.i, 0
  ret i1 %i.bg
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ashr i64 %0, 2                           ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.f = and i64 %0, -4
  %scevgep = getelementptr i8, ptr %1, i64 %i.f   ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.047.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %1, %.lr.ph.i.i.i.preheader ] ; 9 uses
  %i.g = load i8, ptr %.02946.i.i.i, align 1, !tbaa !15
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  %i.q = and i8 %i.p, 8
  %.not5 = icmp eq i8 %i.q, 0
  br i1 %.not5, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  %i.w = and i8 %i.v, 8
  %.not6 = icmp eq i8 %i.w, 0
  br i1 %.not6, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = and i8 %i.ab, 8
  %.not7 = icmp eq i8 %i.ac, 0
  br i1 %.not7, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.ae = add nsw i64 %.047.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !98

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
end_hunk_0
