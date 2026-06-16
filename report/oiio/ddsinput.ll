inline.NumInlined: 3422
inline.NumDeleted: 950
begin_hunk_0_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bv, i32 %i.cc)
  %spec.select35 = tail call i32 @llvm.usub.sat.i32(i32 %i.bv, i32 %i.cc)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.dp = icmp sgt i32 %i.bx, %i.bt
  br i1 %i.dp, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.dq = add i32 %i.bx, %i.cb
  %i.dr = sub nsw i32 %i.bx, %i.bt
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.025.0 = phi i32 [ %i.cc, %bb.t ], [ %spec.select, %bb.s ], [ %i.dq, %bb.u ]
  %.sroa.626.0 = phi i32 [ 0, %bb.t ], [ %spec.select35, %bb.s ], [ %i.dr, %bb.u ] ; 2 uses
  %i.ds = zext i32 %.sroa.025.0 to i64            ; 2 uses
  %i.dt = zext i32 %i.bv to i64
  %i.du = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 %i.ds) ; 4 uses
  %i.dv = lshr i32 %i.b, 3
  %i.dw = and i32 %i.dv, 7
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @.str.50, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = sext i8 %i.dz to i64
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = lshr i64 %i.du, %i.eb                   ; 4 uses
  %i.ed = sub nsw i64 %i.du, %i.ec
  %i.ee = lshr i32 %i.b, 15
  %i.ef = and i32 %i.ee, 7
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = mul nuw nsw i64 %i.du, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !233
  %i.ek = add i64 %i.ej, %i.ds
  %i.el = add i64 %i.ek, %i.eh                    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !229
  %i.eo = icmp ugt i64 %i.el, %i.en
  br i1 %i.eo, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.v:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !226
  tail call void %i.eq(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.el), !inline_history !305
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.v, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %.not.i.i17 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i17, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.er = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.ec, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.er, %bb.w ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 17 uses
  %i.es = and i32 %.0, 16777215                   ; 2 uses
  %.not8.i = icmp eq i32 %i.es, 0
  br i1 %.not8.i, label %._crit_edge.i21, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 24
  br label %bb.ad

._crit_edge.i21:                                  ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.x
  %.not.i.i22 = icmp eq i32 %.sroa.626.0, 0
  br i1 %.not.i.i22, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEjcEET_S5_T0_RKT1_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %._crit_edge.i21
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 24
  br label %bb.y

bb.y:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i23
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i23 ], [ %i.fh, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !233 ; 2 uses
  %i.fa = add i64 %i.ez, 1                        ; 3 uses
  %i.fb = load i64, ptr %i.ex, align 8, !tbaa !229
  %i.fc = icmp ugt i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !226
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0.i.i, i64 noundef %i.fa), !inline_history !306
  %.pre.i.i.i.i = load i64, ptr %i.ew, align 8, !tbaa !233 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.z, %bb.y
  %.pre-phi.i.i.i.i = phi i64 [ %i.fa, %bb.y ], [ %.pre2.i.i.i.i, %bb.z ]
  %i.fe = phi i64 [ %i.ez, %bb.y ], [ %.pre.i.i.i.i, %bb.z ]
  %i.ff = load ptr, ptr %.sroa.09.0.i.i, align 8, !tbaa !228
  store i64 %.pre-phi.i.i.i.i, ptr %i.ew, align 8, !tbaa !233
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  store i8 48, ptr %i.fg, align 1, !tbaa !9
  %i.fh = add nuw i32 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i24 = icmp eq i32 %i.fh, %.sroa.626.0
  br i1 %exitcond.not.i.i24, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEjcEET_S5_T0_RKT1_.exit.i, label %bb.y, !llvm.loop !307

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEjcEET_S5_T0_RKT1_.exit.i: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %._crit_edge.i21
  %.not31.i.i.i = icmp eq i64 %.0.i.idx, 32
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEjcEET_S5_T0_RKT1_.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 24
  %.pre.i.i.i = load i64, ptr %i.fi, align 8, !tbaa !233
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.fl = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.fy, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i.i ], [ %.02532.i.i.i.add, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02532.i.i.i.idx
  %i.fm = load i64, ptr %i.fj, align 8, !tbaa !229
  %i.fn = sub i64 %i.fm, %i.fl
  %gepdiff51 = sub nsw i64 32, %.02532.i.i.i.idx  ; 4 uses
  %i.fo = icmp ult i64 %i.fn, %gepdiff51
  br i1 %i.fo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fp = load ptr, ptr %i.fk, align 8, !tbaa !226
  %i.fq = add i64 %gepdiff51, %i.fl
  tail call void %i.fp(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0.i.i, i64 noundef %i.fq), !inline_history !308
  %i.fr = load i64, ptr %i.fi, align 8, !tbaa !233 ; 2 uses
  %i.fs = load i64, ptr %i.fj, align 8, !tbaa !229
  %i.ft = sub i64 %i.fs, %i.fr
  %i.fu = tail call i64 @llvm.umin.i64(i64 %gepdiff51, i64 %i.ft)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.027.i.i.i = phi i64 [ %i.fr, %bb.ab ], [ %i.fl, %bb.aa ] ; 2 uses
  %.026.i.i.i = phi i64 [ %i.fu, %bb.ab ], [ %gepdiff51, %bb.aa ] ; 4 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ac
  %i.fv = load ptr, ptr %.sroa.09.0.i.i, align 8, !tbaa !228
  %i.fw = getelementptr i8, ptr %i.fv, i64 %.027.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr align 1 %.02532.i.i.i.ptr, i64 %.026.i.i.i, i1 false), !tbaa !9
  %.pre37.i.i.i = load i64, ptr %i.fi, align 8, !tbaa !233
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.preheader, %bb.ac
  %i.fx = phi i64 [ %.pre37.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.027.i.i.i, %bb.ac ]
  %i.fy = add i64 %i.fx, %.026.i.i.i              ; 2 uses
  store i64 %i.fy, ptr %i.fi, align 8, !tbaa !233
  %.02532.i.i.i.add = add nsw i64 %.026.i.i.i, %.02532.i.i.i.idx ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02532.i.i.i.add, 32
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.aa, !llvm.loop !283

bb.ad:                                            ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i19
  %.09.i = phi i32 [ %i.es, %.lr.ph.i19 ], [ %i.gi, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ] ; 2 uses
  %i.fz = trunc i32 %.09.i to i8
  %i.ga = load i64, ptr %i.et, align 8, !tbaa !233 ; 2 uses
  %i.gb = add i64 %i.ga, 1                        ; 3 uses
  %i.gc = load i64, ptr %i.eu, align 8, !tbaa !229
  %i.gd = icmp ugt i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.ae, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ge = load ptr, ptr %i.ev, align 8, !tbaa !226
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0.i.i, i64 noundef %i.gb), !inline_history !309
  %.pre.i.i6.i = load i64, ptr %i.et, align 8, !tbaa !233 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i6.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.ae, %bb.ad
  %.pre-phi.i.i.i = phi i64 [ %i.gb, %bb.ad ], [ %.pre2.i.i.i, %bb.ae ]
  %i.gf = phi i64 [ %i.ga, %bb.ad ], [ %.pre.i.i6.i, %bb.ae ]
  %i.gg = load ptr, ptr %.sroa.09.0.i.i, align 8, !tbaa !228
  store i64 %.pre-phi.i.i.i, ptr %i.et, align 8, !tbaa !233
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gf
  store i8 %i.fz, ptr %i.gh, align 1, !tbaa !9
  %i.gi = lshr i32 %.09.i, 8                      ; 2 uses
  %.not.i20 = icmp eq i32 %i.gi, 0
  br i1 %.not.i20, label %._crit_edge.i21, label %bb.ad, !llvm.loop !310

_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEjcEET_S5_T0_RKT1_.exit.i
  %.not31.i.i18 = icmp eq i64 %i.du, %i.ec
  br i1 %.not31.i.i18, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.af

bb.af:                                            ; preds = %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.gj = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0.i.i, i64 noundef %i.ed, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit: ; preds = %._crit_edge.i.i, %bb.af, %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, %._crit_edge, %bb.j
  %.sroa.041.1.i = phi ptr [ %i.br, %bb.j ], [ %.sroa.09.0.i.i, %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ], [ %0, %._crit_edge ], [ %i.gj, %bb.af ], [ %0, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret ptr %.sroa.041.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_facetISt6localeEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !311
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_facetISt6localeEE, i64 16), ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i64 0, ptr %i.d, align 8, !tbaa !40
  store i8 0, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.g, align 8, !tbaa !40
  store i8 0, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.j, align 8, !tbaa !40
  store i8 0, ptr %i.i, align 8, !tbaa !9
  %i.k = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #34
  %i.l = load ptr, ptr %1, align 8, !tbaa !287
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !293
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !294  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt16__throw_bad_castv() #38
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34, !noalias !313
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !313
  invoke void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit unwind label %bb.o, !inline_history !316

_ZNKSt7__cxx118numpunctIcE8groupingEv.exit:       ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !87   ; 6 uses
  %i.u = icmp eq ptr %i.t, %i.f
  %i.v = load ptr, ptr %2, align 8, !tbaa !87     ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w                   ; 2 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit
  br i1 %i.x, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !40   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  switch i64 %i.z, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !9
  store i8 %i.ab, ptr %i.t, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !40  ; 2 uses
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !40
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !9
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !tbaa !9
  store <2 x i64> %i.ag, ptr %i.g, align 8, !tbaa !9
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !9
  store ptr %i.v, ptr %i.e, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !tbaa !9
  store <2 x i64> %i.aj, ptr %i.g, align 8, !tbaa !9
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.t, ptr %2, align 8, !tbaa !87
  store i64 %i.ah, ptr %i.w, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.w, ptr %2, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %4 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.t, %bb.f ], [ %i.w, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !40
  store i8 0, ptr %4, align 1, !tbaa !9
  %i.al = load ptr, ptr %2, align 8, !tbaa !87    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !9
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !40
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit unwind label %bb.p, !inline_history !317

_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit: ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 1, i8 noundef signext %i.av)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !87  ; 6 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  %i.az = load ptr, ptr %3, align 8, !tbaa !87    ; 5 uses
  %i.ba = icmp eq ptr %i.az, %i.aw                ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.ba, label %bb.i, label %.thread.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.ba, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i13

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !40 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  switch i64 %i.bc, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i16
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.be = load i8, ptr %i.az, align 1, !tbaa !9
  store i8 %i.be, ptr %i.ax, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i16

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i16: ; preds = %bb.k, %bb.j, %bb.i
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !40 ; 2 uses
  store i64 %i.bf, ptr %i.d, align 8, !tbaa !40
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1, !tbaa !9
  %.pre.i17 = load ptr, ptr %3, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit20

.thread.i19:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18
  store ptr %i.az, ptr %i.b, align 8, !tbaa !87
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !9
  store <2 x i64> %i.bj, ptr %i.d, align 8, !tbaa !9
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i12
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !9
  store ptr %i.az, ptr %i.b, align 8, !tbaa !87
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load <2 x i64>, ptr %i.bl, align 8, !tbaa !9
  store <2 x i64> %i.bm, ptr %i.d, align 8, !tbaa !9
  %.not.i14 = icmp eq ptr %i.ax, null
  br i1 %.not.i14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i13
  store ptr %i.ax, ptr %3, align 8, !tbaa !87
  store i64 %i.bk, ptr %i.aw, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit20

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i13, %.thread.i19
  store ptr %i.aw, ptr %3, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i16, %bb.l, %bb.m
  %5 = phi ptr [ %.pre.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i16 ], [ %i.ax, %bb.l ], [ %i.aw, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !40
  store i8 0, ptr %5, align 1, !tbaa !9
  %i.bo = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aw
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit20
  %i.bq = load i64, ptr %i.aw, align 8, !tbaa !9
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.s

bb.n:                                             ; preds = %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.t

bb.p:                                             ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.bu, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.t:                                             ; preds = %bb.r, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.bt, %bb.o ], [ %i.bs, %bb.n ]
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !87  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.t
  %i.by = load i64, ptr %i.i, align 8, !tbaa !9
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !87  ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.f
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !9
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.c
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !9
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_facetISt6localeED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_facetISt6localeEE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !9
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !9
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !9
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  tail call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #34
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #30

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_facetISt6localeED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_facetISt6localeEE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !9
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35, !inline_history !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !9
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35, !inline_history !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN3fmt3v1212format_facetISt6localeED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !9
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #35, !inline_history !296
  br label %_ZN3fmt3v1212format_facetISt6localeED2Ev.exit

_ZN3fmt3v1212format_facetISt6localeED2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(112) %0) #34, !inline_history !296
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %1, ptr noundef byval(%"class.fmt::v12::loc_value") align 16 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
