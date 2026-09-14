Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c43yml7NodeRef11_apply_seedEv:bb.a
  %.not41.i10 = icmp eq ptr %i.dw, null
  br i1 %.not41.i10, label %bb.r, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i11

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i11:  ; preds = %bb.q
  %i.ei = getelementptr inbounds nuw [144 x i8], ptr %i.dw, i64 %i.cv
  store i64 %i.cv, ptr %i.dt, align 8, !tbaa !127
  %i.ej = ptrtoint ptr %i.dr to i64
  %i.ek = ptrtoint ptr %i.dw to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 144
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 128
  store i64 %i.em, ptr %i.en, align 8, !tbaa !128
  br label %bb.r

bb.r:                                             ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i11, %bb.q, %.thread.i19
  %.0.i4672.i12 = phi ptr [ %i.ec, %.thread.i19 ], [ %.0.i46.i9, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i11 ], [ %.0.i46.i9, %bb.q ] ; 3 uses
  %i.eo = phi ptr [ %i.dw, %.thread.i19 ], [ %i.dw, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit50.i11 ], [ null, %bb.q ] ; 3 uses
  %.not42.i13 = icmp eq ptr %.0.i4672.i12, null
  br i1 %.not42.i13, label %.thread73.i15, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i14

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i14:  ; preds = %bb.r
  %i.ep = ptrtoint ptr %.0.i4672.i12 to i64
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 144
  store i64 %i.es, ptr %i.du, align 8, !tbaa !128
  %i.et = ptrtoint ptr %i.dr to i64
  %i.eu = sub i64 %i.et, %i.eq
  %i.ev = sdiv exact i64 %i.eu, 144
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i4672.i12, i64 136
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !127
  br label %.thread73.i15

.thread73.i15:                                    ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i14, %bb.r, %.thread.i19
  %i.ex = phi ptr [ %i.eo, %bb.r ], [ %i.eo, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit56.i14 ], [ %i.dw, %.thread.i19 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dx, i64 112 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !119 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, -1
  br i1 %i.fa, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i18, label %bb.s

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i18:  ; preds = %.thread73.i15
  %i.fb = ptrtoint ptr %i.dr to i64
  %i.fc = ptrtoint ptr %i.ex to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = sdiv exact i64 %i.fd, 144               ; 2 uses
  store i64 %i.fe, ptr %i.ey, align 8, !tbaa !119
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dx, i64 120
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !141
  br label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit20

bb.s:                                             ; preds = %.thread73.i15
  %i.fg = load i64, ptr %i.du, align 8, !tbaa !128
  %i.fh = icmp eq i64 %i.fg, %i.ez
  br i1 %i.fh, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i17, label %bb.t

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i17:  ; preds = %bb.s
  %i.fi = ptrtoint ptr %i.dr to i64
  %i.fj = ptrtoint ptr %i.ex to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = sdiv exact i64 %i.fk, 144
  store i64 %i.fl, ptr %i.ey, align 8, !tbaa !119
  br label %bb.t

bb.t:                                             ; preds = %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit65.i17, %bb.s
  %i.fm = load i64, ptr %i.dt, align 8, !tbaa !127
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dx, i64 120 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !141
  %i.fp = icmp eq i64 %i.fm, %i.fo
  br i1 %i.fp, label %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i16, label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit20

_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i16:  ; preds = %bb.t
  %i.fq = ptrtoint ptr %i.dr to i64
  %i.fr = ptrtoint ptr %i.ex to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = sdiv exact i64 %i.fs, 144
  store i64 %i.ft, ptr %i.fn, align 8, !tbaa !141
  br label %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit20

_ZN2c43yml4Tree14_set_hierarchyEmmm.exit20:       ; preds = %_ZN2c43yml4Tree6_claimEv.exit7, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit62.i18, %bb.t, %_ZNK2c43yml4Tree2idEPKNS0_8NodeDataE.exit68.i16
  store i64 %i.df, ptr %i.cq, align 8, !tbaa !114
  store ptr null, ptr %i.a, align 8, !tbaa !1024
  store i64 -1, ptr %i.cn, align 8, !tbaa !113
  br label %bb.u

bb.u:                                             ; preds = %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit20, %bb.k, %_ZN2c43yml4Tree14_set_hierarchyEmmm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN2c43yml7NodeRef18set_val_serializedENS_3fmt15base64_wrapper_IKcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.c4::fmt::base64_wrapper_", align 8 ; 3 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  tail call void @_ZN2c43yml7NodeRef11_apply_seedEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !112, !noalias !1027
  %i.c = call { ptr, i64 } @_ZN2c43yml4Tree8to_arenaINS_3fmt15base64_wrapper_IKcEEEENSt9enable_ifIXntsr3std17is_floating_pointIT_EE5valueENS_15basic_substringIS5_EEE4typeERKS8_(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  call void @_ZN2c43yml7NodeRef11_apply_seedEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.f = load ptr, ptr %0, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %i.d, ptr %i.k, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %i.e, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102
  %i.l = load i32, ptr %i.j, align 8, !tbaa !126
  %i.m = or i32 %i.l, 2
  store i32 %i.m, ptr %i.j, align 8, !tbaa !126
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN2c43yml16preprocess_rxmapENS_15basic_substringIKcEENS1_IcEE(ptr %0, i64 %1, ptr nofree writeonly captures(none) %2, i64 %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %.not.i89 = icmp eq i64 %1, 0
  br i1 %.not.i89, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit

_ZNK2c415basic_substringIKcE11begins_withEc.exit: ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !87
  %i.b = icmp eq i8 %i.a, 123
  br i1 %i.b, label %_ZNK2c415basic_substringIKcE9ends_withEc.exit, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread

_ZNK2c415basic_substringIKcE9ends_withEc.exit:    ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.c = getelementptr i8, ptr %0, i64 %1
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87
  %i.f = icmp eq i8 %i.e, 125
  br i1 %i.f, label %bb.c, label %bb.b, !prof !88

bb.b:                                             ; preds = %_ZNK2c415basic_substringIKcE9ends_withEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 43723, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.1, ptr %.sroa.4124.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 74, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2c43yml12_GLOBAL__N_119s_default_callbacksE, i64 24), align 8, !tbaa !97
  %i.h = load ptr, ptr @_ZN2c43yml12_GLOBAL__N_119s_default_callbacksE, align 8, !tbaa !94
  tail call void %i.g(ptr noundef nonnull @.str.219, i64 noundef 30, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %4, ptr noundef %i.h), !inline_history !1028
  tail call void @abort() #60
  unreachable

bb.c:                                             ; preds = %_ZNK2c415basic_substringIKcE9ends_withEc.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = add i64 %1, -2
  br label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread

_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread: ; preds = %bb.a, %bb.c, %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %.sroa.0148.0 = phi ptr [ %i.i, %bb.c ], [ %0, %_ZNK2c415basic_substringIKcE11begins_withEc.exit ], [ %0, %bb.a ] ; 5 uses
  %.sroa.13.0 = phi i64 [ %i.j, %bb.c ], [ %1, %_ZNK2c415basic_substringIKcE11begins_withEc.exit ], [ 0, %bb.a ] ; 9 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread
  store i8 123, ptr %2, align 1, !tbaa !87
  br label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

_ZN2c43yml6detail13_SubstrWriter6appendEc.exit:   ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread, %bb.d
  %.not205 = icmp eq i64 %.sroa.13.0, 0
  br i1 %.not205, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177
  %i.k = icmp eq i32 %.2, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit
  %.sroa.16.0.lcssa = phi i64 [ 1, %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit ], [ %.sroa.16.1, %._crit_edge.loopexit ] ; 2 uses
  %.061.lcssa = phi i64 [ 0, %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit ], [ %.162, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i1 [ false, %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit ], [ %i.k, %._crit_edge.loopexit ]
  %i.l = sub i64 %.sroa.13.0, %.061.lcssa         ; 2 uses
  %.not.i91 = icmp eq i64 %.sroa.13.0, %.061.lcssa
  %i.m = add i64 %i.l, %.sroa.16.0.lcssa          ; 4 uses
  %.not4.i = icmp ugt i64 %i.m, %3
  %or.cond = select i1 %.not.i91, i1 true, i1 %.not4.i
  br i1 %or.cond, label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0148.0, i64 %.061.lcssa
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.16.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.n, i64 %i.l, i1 false)
  br label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit

_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit: ; preds = %._crit_edge, %bb.e
  br i1 %.0.lcssa, label %bb.z, label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit111

.lr.ph:                                           ; preds = %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177
  %.0202 = phi i32 [ %.2, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177 ], [ 0, %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit ] ; 4 uses
  %.061201 = phi i64 [ %.162, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177 ], [ 0, %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit ] ; 10 uses
  %.063200 = phi i64 [ %i.cj, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177 ], [ 0, %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit ] ; 11 uses
  %.sroa.16.0199 = phi i64 [ %.sroa.16.1, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177 ], [ 1, %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0148.0, i64 %.063200 ; 6 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87    ; 12 uses
  %i.r = add nuw i64 %.063200, 1                  ; 2 uses
  %i.s = icmp ult i64 %i.r, %.sroa.13.0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0148.0, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !87
  %i.v = icmp eq i8 %i.u, 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i1 [ %i.v, %bb.f ], [ false, %.lr.ph ] ; 3 uses
  switch i8 %i.q, label %bb.k [
    i8 39, label %.lr.ph.i.i.i.preheader
    i8 34, label %.lr.ph.i.i.i.preheader
  ]

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g, %bb.g
  %i.x = sub nuw i64 %.sroa.13.0, %.063200        ; 4 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.h
  %.0811.i.i.i = phi i64 [ %i.ab, %bb.h ], [ 0, %.lr.ph.i.i.i.preheader ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0811.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !87
  %i.aa = icmp eq i8 %i.z, %i.q
  br i1 %i.aa, label %_ZNK2c415basic_substringIKcE4findEcm.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = add nuw i64 %.0811.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.x
  br i1 %exitcond.not.i.i.i, label %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit.i:      ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0811.i.i.i
  %i.ad = icmp ne i64 %.0811.i.i.i, -1
  %.026.i = add nuw i64 %.0811.i.i.i, 1           ; 2 uses
  %.not1727.i = icmp ult i64 %.026.i, %i.x
  %or.cond.i94 = select i1 %i.ad, i1 %.not1727.i, i1 false
  br i1 %or.cond.i94, label %.lr.ph.i, label %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit

.lr.ph.i:                                         ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit.i, %bb.j
  %.029.i = phi i64 [ %.0.i, %bb.j ], [ %.026.i, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ] ; 3 uses
  %.0.in28.i = phi i64 [ %.029.i, %bb.j ], [ %.0811.i.i.i, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %.029.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !87
  %i.ag = icmp eq i8 %i.af, %i.q
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0.in28.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !87
  %.not.i95 = icmp eq i8 %i.ai, 92
  br i1 %.not.i95, label %bb.j, label %.critedge.i

.critedge.i:                                      ; preds = %bb.i
  %i.aj = add nuw i64 %.0.in28.i, 2               ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, -1
  %i.ak = select i1 %.not.i.i, i64 %i.x, i64 %i.aj
  %i.al = sub i64 %i.ak, %.0811.i.i.i
  br label %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.0.i = add i64 %.029.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %.0.i, %i.x
  br i1 %exitcond.not.i, label %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit, label %.lr.ph.i, !llvm.loop !1029

_ZN2c415basic_substringIKcE14pair_range_escEcc.exit: ; preds = %bb.h, %bb.j, %_ZNK2c415basic_substringIKcE4findEcm.exit.i, %.critedge.i
  %.sroa.4.0.i = phi i64 [ 0, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %i.al, %.critedge.i ], [ 0, %bb.j ], [ 0, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %i.ac, %.critedge.i ], [ null, %bb.j ], [ null, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.p to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = add i64 %i.ap, %.063200                 ; 2 uses
  %i.ar = add nsw i32 %.0202, 1
  %i.as = icmp slt i32 %.0202, 2
  br i1 %i.as, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177

bb.k:                                             ; preds = %bb.g
  %i.at = icmp eq i32 %.0202, 0
  br i1 %i.at, label %bb.l, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit

bb.l:                                             ; preds = %bb.k
  %i.au = and i8 %i.q, -33
  %i.av = add i8 %i.au, -65
  %or.cond24.i = icmp ult i8 %i.av, 26
  %i.aw = add i8 %i.q, -48
  %or.cond8.i = icmp ult i8 %i.aw, 10
  %or.cond25.i = or i1 %or.cond8.i, %or.cond24.i
  br i1 %or.cond25.i, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.q, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177 [
    i8 126, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180
    i8 95, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180
    i8 45, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180
    i8 36, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180
  ]

_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit:      ; preds = %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit, %bb.k
  %.164 = phi i64 [ %.063200, %bb.k ], [ %i.aq, %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit ] ; 7 uses
  %.1 = phi i32 [ %.0202, %bb.k ], [ %i.ar, %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit ] ; 2 uses
  switch i32 %.1, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177 [
    i32 1, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180
    i32 2, label %bb.r
  ]

_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180: ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.l, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit
  %.164183 = phi i64 [ %.164, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit ], [ %.063200, %bb.l ], [ %.063200, %bb.m ], [ %.063200, %bb.m ], [ %.063200, %bb.m ], [ %.063200, %bb.m ] ; 6 uses
  %i.ax = icmp eq i8 %i.q, 58
  %or.cond5 = select i1 %i.ax, i1 %i.w, i1 false
  br i1 %or.cond5, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177, label %bb.n

bb.n:                                             ; preds = %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180
  %i.ay = icmp eq i8 %i.q, 44
  %or.cond8 = select i1 %i.ay, i1 %i.w, i1 false
  br i1 %or.cond8, label %bb.o, label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq i64 %.164183, -1
  %i.az = select i1 %.not.i, i64 %.sroa.13.0, i64 %.164183 ; 2 uses
  %i.ba = sub i64 %i.az, %.061201                 ; 2 uses
  %.not.i96 = icmp eq i64 %i.az, %.061201
  %i.bb = add i64 %i.ba, %.sroa.16.0199           ; 3 uses
  %.not4.i97 = icmp ugt i64 %i.bb, %3
  %or.cond184 = select i1 %.not.i96, i1 true, i1 %.not4.i97
  br i1 %or.cond184, label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit98, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0148.0, i64 %.061201
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.16.0199
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bc, i64 %i.ba, i1 false)
  br label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit98

_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit98: ; preds = %bb.o, %bb.p
  %i.be = add i64 %i.bb, 5                        ; 2 uses
  %.not4.i99 = icmp ugt i64 %i.be, %3
  br i1 %.not4.i99, label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit100, label %bb.q

bb.q:                                             ; preds = %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit98
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bf, ptr noundef nonnull align 1 dereferenceable(5) @.str.220, i64 5, i1 false)
  br label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit100

_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit100: ; preds = %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit98, %bb.q
  %i.bg = add i64 %.164183, 2
  br label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177

bb.r:                                             ; preds = %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit
  switch i8 %i.q, label %bb.y [
    i8 123, label %bb.s
    i8 91, label %bb.s
    i8 40, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0148.0, i64 %.164 ; 4 uses
  %i.bi = sub i64 %.sroa.13.0, %.164              ; 5 uses
  %.not26.i = icmp eq i64 %.sroa.13.0, %.164
  br i1 %.not26.i, label %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit, label %.lr.ph.i.i.i101

.lr.ph.i.i.i101:                                  ; preds = %bb.s, %bb.t
  %.0811.i.i.i102 = phi i64 [ %i.bm, %bb.t ], [ 0, %bb.s ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.0811.i.i.i102
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !87
  %i.bl = icmp eq i8 %i.bk, %i.q
  br i1 %i.bl, label %_ZNK2c415basic_substringIKcE4findEcm.exit.i106, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i101
  %i.bm = add nuw i64 %.0811.i.i.i102, 1          ; 2 uses
  %exitcond.not.i.i.i103 = icmp eq i64 %i.bm, %i.bi
  br i1 %exitcond.not.i.i.i103, label %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit, label %.lr.ph.i.i.i101, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit.i106:   ; preds = %.lr.ph.i.i.i101
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.0811.i.i.i102
  %i.bo = icmp ne i64 %.0811.i.i.i102, -1
  %i.bp = add nuw i64 %.0811.i.i.i102, 1          ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bi
  %or.cond.i107 = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond.i107, label %.preheader.lr.ph.i.i, label %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit

.preheader.lr.ph.i.i:                             ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit.i106, %bb.x
  %.031.i = phi i64 [ %i.ca, %bb.x ], [ 0, %_ZNK2c415basic_substringIKcE4findEcm.exit.i106 ] ; 2 uses
  %.01730.i = phi i64 [ %i.cb, %bb.x ], [ %i.bp, %_ZNK2c415basic_substringIKcE4findEcm.exit.i106 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i
  %.01224.i.i = phi i64 [ %i.bv, %._crit_edge.i.i ], [ %.01730.i, %.preheader.lr.ph.i.i ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.01224.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !87  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, %i.q
  br i1 %i.bt, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.i, label %bb.u

bb.u:                                             ; preds = %.preheader.i.i
  %i.bu = icmp eq i8 %i.bs, 92
  br i1 %i.bu, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread42.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.u
  %i.bv = add nuw i64 %.01224.i.i, 1              ; 2 uses
  %exitcond27.not.i.i = icmp eq i64 %i.bv, %i.bi
  br i1 %exitcond27.not.i.i, label %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit, label %.preheader.i.i, !llvm.loop !4

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.i: ; preds = %.preheader.i.i
  %.not.i109 = icmp eq i64 %.01224.i.i, -1
  br i1 %.not.i109, label %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit, label %bb.x

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread42.i: ; preds = %bb.u
  %.not43.i = icmp eq i64 %.01224.i.i, -1
  br i1 %.not43.i, label %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread42.i
  %i.bw = icmp eq i64 %.031.i, 0
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bx = add nuw i64 %.01224.i.i, 1              ; 2 uses
  %.not.i.i108 = icmp eq i64 %i.bx, -1
  %i.by = select i1 %.not.i.i108, i64 %i.bi, i64 %i.bx
  %i.bz = sub i64 %i.by, %.0811.i.i.i102
  br label %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit

bb.x:                                             ; preds = %bb.v, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.i
  %.sink.i = phi i64 [ 1, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.i ], [ -1, %bb.v ]
  %i.ca = add i64 %.sink.i, %.031.i
  %i.cb = add nuw i64 %.01224.i.i, 1              ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bi
  br i1 %i.cc, label %.preheader.lr.ph.i.i, label %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit, !llvm.loop !1030

_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit: ; preds = %bb.t, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.i, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread42.i, %bb.x, %._crit_edge.i.i, %bb.s, %_ZNK2c415basic_substringIKcE4findEcm.exit.i106, %bb.w
  %.sroa.022.1.i = phi ptr [ null, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.i ], [ null, %_ZNK2c415basic_substringIKcE4findEcm.exit.i106 ], [ null, %bb.s ], [ %i.bn, %bb.w ], [ null, %._crit_edge.i.i ], [ null, %bb.x ], [ null, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread42.i ], [ null, %bb.t ]
  %.sroa.4.1.i = phi i64 [ 0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.i ], [ 0, %_ZNK2c415basic_substringIKcE4findEcm.exit.i106 ], [ 0, %bb.s ], [ %i.bz, %bb.w ], [ 0, %._crit_edge.i.i ], [ 0, %bb.x ], [ 0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread42.i ], [ 0, %bb.t ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i, i64 %.sroa.4.1.i
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.bh to i64
  %i.cg = sub i64 %.164, %i.cf
  %i.ch = add i64 %i.cg, %i.ce
  br label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177

bb.y:                                             ; preds = %bb.r
  %i.ci = icmp eq i8 %i.q, 44
  %or.cond17 = select i1 %i.ci, i1 %i.w, i1 false
  %spec.select = select i1 %or.cond17, i32 0, i32 2
  br label %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177

_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread177: ; preds = %bb.y, %bb.m, %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit, %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit, %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit100, %bb.n
  %.sroa.16.1 = phi i64 [ %.sroa.16.0199, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit ], [ %.sroa.16.0199, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180 ], [ %i.be, %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit100 ], [ %.sroa.16.0199, %bb.n ], [ %.sroa.16.0199, %bb.m ], [ %.sroa.16.0199, %bb.y ], [ %.sroa.16.0199, %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit ], [ %.sroa.16.0199, %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit ] ; 2 uses
  %.265 = phi i64 [ %.164, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit ], [ %.164183, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180 ], [ %.164183, %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit100 ], [ %.164183, %bb.n ], [ %.063200, %bb.m ], [ %.164, %bb.y ], [ %i.ch, %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit ], [ %i.aq, %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit ]
  %.162 = phi i64 [ %.061201, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit ], [ %.061201, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180 ], [ %i.bg, %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit100 ], [ %.061201, %bb.n ], [ %.061201, %bb.m ], [ %.061201, %bb.y ], [ %.061201, %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit ], [ %.061201, %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit ] ; 2 uses
  %.2 = phi i32 [ %.1, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit ], [ 2, %_ZN2c43yml12_GLOBAL__N_110_is_idcharEc.exit.thread180 ], [ 1, %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit100 ], [ 1, %bb.n ], [ 0, %bb.m ], [ %spec.select, %bb.y ], [ 0, %_ZNK2c415basic_substringIKcE17pair_range_nestedEcc.exit ], [ 0, %_ZN2c415basic_substringIKcE14pair_range_escEcc.exit ] ; 2 uses
  %i.cj = add i64 %.265, 1                        ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %.sroa.13.0
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1031

bb.z:                                             ; preds = %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit
  %i.cl = add i64 %i.m, 3                         ; 3 uses
  %.not4.i110 = icmp ugt i64 %i.cl, %3
  br i1 %.not4.i110, label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit111, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cm, ptr noundef nonnull align 1 dereferenceable(3) @.str.221, i64 3, i1 false)
  br label %_ZN2c43yml6detail13_SubstrWriter6appendENS_15basic_substringIKcEE.exit111

end_hunk_0
begin_hunk_1_@_ZNK2c415basic_substringIKcE20_first_real_span_decEm:bb.a
bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %.thread

bb.g:                                             ; preds = %.peel.next
  %i.s = add i64 %.079233, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.b
  br i1 %exitcond.not, label %.thread, label %.peel.next, !llvm.loop !1065

.preheader:                                       ; preds = %.lr.ph293
  %.281 = add nuw i64 %.281292, 1                 ; 2 uses
  %i.t = icmp ult i64 %.281, %i.b
  br i1 %i.t, label %.lr.ph293, label %.loopexit255.thread, !llvm.loop !1066

.lr.ph293:                                        ; preds = %.preheader.preheader279, %.preheader
  %.281292 = phi i64 [ %.281, %.preheader ], [ %.281290, %.preheader.preheader279 ] ; 4 uses
  %.281.in291 = phi i64 [ %.281292, %.preheader ], [ %.281.peel, %.preheader.preheader279 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.281292
  %i.v = load i8, ptr %i.u, align 1, !tbaa !87    ; 2 uses
  %i.w = add i8 %i.v, -48
  %or.cond8 = icmp ult i8 %i.w, 10
  br i1 %or.cond8, label %.preheader, label %.loopexit256, !llvm.loop !1066

.loopexit256:                                     ; preds = %.lr.ph293, %bb.c
  %.lcssa248 = phi i8 [ %i.n, %bb.c ], [ %i.v, %.lr.ph293 ] ; 2 uses
  %.281.in.lcssa247 = phi i64 [ %.079233.lcssa, %bb.c ], [ %.281.in291, %.lr.ph293 ]
  %.074.lcssa246 = phi i1 [ %or.cond.peel, %bb.c ], [ true, %.lr.ph293 ] ; 2 uses
  %.281.lcssa245 = phi i64 [ %.281.peel, %bb.c ], [ %.281292, %.lr.ph293 ]
  %i.x = and i8 %.lcssa248, -33
  %or.cond11 = icmp eq i8 %i.x, 69
  br i1 %or.cond11, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.loopexit256
  switch i8 %.lcssa248, label %.thread [
    i8 125, label %bb.i
    i8 93, label %bb.i
    i8 59, label %bb.i
    i8 44, label %bb.i
    i8 41, label %bb.i
    i8 32, label %bb.i
    i8 13, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %.281. = select i1 %.074.lcssa246, i64 %.281.lcssa245, i64 0
  br label %.thread

bb.j:                                             ; preds = %.loopexit256
  %i.y = add nuw i64 %.281.in.lcssa247, 2
  br label %bb.k

.loopexit255:                                     ; preds = %.preheader.preheader
  br i1 %or.cond.peel, label %.loopexit255.thread, label %.thread

.loopexit255.thread:                              ; preds = %.preheader, %.preheader.preheader279, %.loopexit255
  br label %.thread

bb.k:                                             ; preds = %bb.j, %.thread188
  %.4 = phi i64 [ %i.y, %bb.j ], [ %i.r, %.thread188 ] ; 4 uses
  %.276 = phi i1 [ %.074.lcssa246, %bb.j ], [ %or.cond.peel, %.thread188 ]
  %i.z = icmp ne i64 %i.b, %.4
  %or.cond91 = and i1 %i.z, %.276
  br i1 %or.cond91, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !87
  switch i8 %i.ab, label %bb.n [
    i8 45, label %bb.m
    i8 43, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ac = add i64 %.4, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.5 = phi i64 [ %i.ac, %bb.m ], [ %.4, %bb.l ]  ; 3 uses
  %i.ad = icmp ult i64 %.5, %i.b
  br i1 %i.ad, label %.lr.ph239.preheader, label %.thread

.lr.ph239.preheader:                              ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !87
  %i.ag = add i8 %i.af, -48
  %or.cond20.peel = icmp ult i8 %i.ag, 10
  br i1 %or.cond20.peel, label %bb.o, label %_ZN2c415basic_substringIKcE14_is_delim_charEc.exit

bb.o:                                             ; preds = %.lr.ph239.preheader
  %i.ah = add nuw i64 %.5, 1                      ; 2 uses
  %exitcond257.peel.not = icmp eq i64 %i.ah, %i.b
  br i1 %exitcond257.peel.not, label %.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.o, %bb.p
  %.6236 = phi i64 [ %i.al, %bb.p ], [ %i.ah, %bb.o ] ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.6236
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !87  ; 2 uses
  %i.ak = add i8 %i.aj, -48
  %or.cond20 = icmp ult i8 %i.ak, 10
  br i1 %or.cond20, label %bb.p, label %.loopexit259

.loopexit259:                                     ; preds = %.lr.ph239
  switch i8 %i.aj, label %_ZN2c415basic_substringIKcE14_is_delim_charEc.exit [
    i8 125, label %.thread
    i8 93, label %.thread
    i8 59, label %.thread
    i8 44, label %.thread
    i8 41, label %.thread
    i8 32, label %.thread
    i8 13, label %.thread
    i8 10, label %.thread
    i8 9, label %.thread
    i8 0, label %.thread
  ]

_ZN2c415basic_substringIKcE14_is_delim_charEc.exit: ; preds = %.lr.ph239.preheader, %.loopexit259
  br label %.thread

bb.p:                                             ; preds = %.lr.ph239
  %i.al = add i64 %.6236, 1                       ; 2 uses
  %exitcond257.not = icmp eq i64 %i.al, %i.b
  br i1 %exitcond257.not, label %.thread, label %.lr.ph239, !llvm.loop !1067

.thread:                                          ; preds = %bb.g, %bb.p, %bb.n, %bb.o, %.loopexit255.thread, %.loopexit255, %bb.a, %bb.b, %.loopexit259, %.loopexit259, %.loopexit259, %.loopexit259, %.loopexit259, %.loopexit259, %.loopexit259, %.loopexit259, %.loopexit259, %.loopexit259, %bb.k, %bb.h, %bb.e, %_ZN2c415basic_substringIKcE14_is_delim_charEc.exit, %bb.i, %bb.f
  %.sroa.16.12 = phi i64 [ 0, %_ZN2c415basic_substringIKcE14_is_delim_charEc.exit ], [ %.281., %bb.i ], [ 0, %bb.h ], [ %.079., %bb.f ], [ 0, %bb.k ], [ 0, %bb.e ], [ %.6236, %.loopexit259 ], [ 0, %.loopexit255 ], [ %i.b, %bb.b ], [ %.6236, %.loopexit259 ], [ %.6236, %.loopexit259 ], [ %.6236, %.loopexit259 ], [ %.6236, %.loopexit259 ], [ %.6236, %.loopexit259 ], [ %.6236, %.loopexit259 ], [ %.6236, %.loopexit259 ], [ %.6236, %.loopexit259 ], [ %.6236, %.loopexit259 ], [ 0, %bb.a ], [ %i.b, %bb.p ], [ %i.b, %.loopexit255.thread ], [ 0, %bb.n ], [ %i.b, %bb.o ], [ %i.b, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.pre, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.16.12, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read) uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNK2c415basic_substringIKcE20_first_real_span_hexEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #51 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 14 uses
  %i.c = icmp ult i64 %1, %i.b
  %.sroa.0.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !101 ; 8 uses
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87
  %.fr206.peel = freeze i8 %i.e                   ; 3 uses
  %i.f = add i8 %.fr206.peel, -48
  %or.cond.i138.peel = icmp ult i8 %i.f, 10
  br i1 %or.cond.i138.peel, label %bb.b, label %switch.early.test.peel

switch.early.test.peel:                           ; preds = %.lr.ph
  switch i8 %.fr206.peel, label %.loopexit [
    i8 102, label %bb.b
    i8 101, label %bb.b
    i8 100, label %bb.b
    i8 99, label %bb.b
    i8 98, label %bb.b
    i8 97, label %bb.b
    i8 70, label %bb.b
    i8 69, label %bb.b
    i8 68, label %bb.b
    i8 67, label %bb.b
    i8 66, label %bb.b
    i8 65, label %bb.b
    i8 46, label %.preheader212
  ]

bb.b:                                             ; preds = %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %.lr.ph
  %i.g = add nuw i64 %1, 1                        ; 2 uses
  %exitcond.peel.not = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.peel.not, label %.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.b, %bb.f
  %.070228 = phi i64 [ %i.q, %bb.f ], [ %i.g, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.070228
  %i.i = load i8, ptr %i.h, align 1, !tbaa !87
  %.fr206 = freeze i8 %i.i                        ; 3 uses
  %i.j = add i8 %.fr206, -48
  %or.cond.i138 = icmp ult i8 %i.j, 10
  br i1 %or.cond.i138, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %.peel.next
  switch i8 %.fr206, label %.loopexit [
    i8 102, label %bb.f
    i8 101, label %bb.f
    i8 100, label %bb.f
    i8 99, label %bb.f
    i8 98, label %bb.f
    i8 97, label %bb.f
    i8 70, label %bb.f
    i8 69, label %bb.f
    i8 68, label %bb.f
    i8 67, label %bb.f
    i8 66, label %bb.f
    i8 65, label %bb.f
    i8 46, label %.preheader212
  ]

.preheader212:                                    ; preds = %switch.early.test, %switch.early.test.peel
  %.068229.lcssa252 = phi i1 [ false, %switch.early.test.peel ], [ true, %switch.early.test ] ; 2 uses
  %.070228.lcssa250 = phi i64 [ %1, %switch.early.test.peel ], [ %.070228, %switch.early.test ] ; 3 uses
  %.272231 = add nuw i64 %.070228.lcssa250, 1     ; 4 uses
  %i.k = icmp ult i64 %.272231, %i.b
  br i1 %i.k, label %.lr.ph235.preheader, label %._crit_edge236

.lr.ph235.preheader:                              ; preds = %.preheader212
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.272231
  %i.m = load i8, ptr %i.l, align 1, !tbaa !87
  %.fr207.peel = freeze i8 %i.m                   ; 3 uses
  %i.n = add i8 %.fr207.peel, -48
  %or.cond.i.peel = icmp ult i8 %i.n, 10
  br i1 %or.cond.i.peel, label %bb.c, label %switch.early.test205.peel

switch.early.test205.peel:                        ; preds = %.lr.ph235.preheader
  switch i8 %.fr207.peel, label %.loopexit257 [
    i8 102, label %bb.c
    i8 101, label %bb.c
    i8 100, label %bb.c
    i8 99, label %bb.c
    i8 98, label %bb.c
    i8 97, label %bb.c
    i8 70, label %bb.c
    i8 69, label %bb.c
    i8 68, label %bb.c
    i8 67, label %bb.c
    i8 66, label %bb.c
    i8 65, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %switch.early.test205.peel, %.lr.ph235.preheader
  %.272.peel = add i64 %.070228.lcssa250, 2       ; 2 uses
  %exitcond255.peel.not = icmp eq i64 %.272.peel, %i.b
  br i1 %exitcond255.peel.not, label %._crit_edge236.thread, label %.lr.ph235

.loopexit:                                        ; preds = %switch.early.test, %switch.early.test.peel
  %.068229.lcssa = phi i1 [ false, %switch.early.test.peel ], [ true, %switch.early.test ] ; 2 uses
  %.070228.lcssa = phi i64 [ %1, %switch.early.test.peel ], [ %.070228, %switch.early.test ] ; 2 uses
  %.fr206.lcssa = phi i8 [ %.fr206.peel, %switch.early.test.peel ], [ %.fr206, %switch.early.test ] ; 2 uses
  %i.o = and i8 %.fr206.lcssa, -33
  %or.cond = icmp eq i8 %i.o, 80
  br i1 %or.cond, label %.thread176, label %bb.d

.thread176:                                       ; preds = %.loopexit
  %i.p = add nuw i64 %.070228.lcssa, 1
  br label %bb.k

bb.d:                                             ; preds = %.loopexit
  switch i8 %.fr206.lcssa, label %.thread [
    i8 125, label %bb.e
    i8 93, label %bb.e
    i8 59, label %bb.e
    i8 44, label %bb.e
    i8 41, label %bb.e
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.070. = select i1 %.068229.lcssa, i64 %.070228.lcssa, i64 0
  br label %.thread

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.peel.next
  %i.q = add i64 %.070228, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.b
  br i1 %exitcond.not, label %.thread, label %.peel.next, !llvm.loop !1068

.lr.ph235:                                        ; preds = %bb.c, %bb.j
  %.272234 = phi i64 [ %.272, %bb.j ], [ %.272.peel, %bb.c ] ; 4 uses
  %.272.in232 = phi i64 [ %.272234, %bb.j ], [ %.272231, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.272234
  %i.s = load i8, ptr %i.r, align 1, !tbaa !87
  %.fr207 = freeze i8 %i.s                        ; 3 uses
  %i.t = add i8 %.fr207, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.j, label %switch.early.test205

switch.early.test205:                             ; preds = %.lr.ph235
  switch i8 %.fr207, label %.loopexit257 [
    i8 102, label %bb.j
    i8 101, label %bb.j
    i8 100, label %bb.j
    i8 99, label %bb.j
    i8 98, label %bb.j
    i8 97, label %bb.j
    i8 70, label %bb.j
    i8 69, label %bb.j
    i8 68, label %bb.j
    i8 67, label %bb.j
    i8 66, label %bb.j
    i8 65, label %bb.j
  ]

.loopexit257:                                     ; preds = %switch.early.test205, %switch.early.test205.peel
  %.272234.lcssa = phi i64 [ %.272231, %switch.early.test205.peel ], [ %.272234, %switch.early.test205 ]
  %.065233.lcssa = phi i1 [ %.068229.lcssa252, %switch.early.test205.peel ], [ true, %switch.early.test205 ] ; 2 uses
  %.272.in232.lcssa = phi i64 [ %.070228.lcssa250, %switch.early.test205.peel ], [ %.272.in232, %switch.early.test205 ]
  %.fr207.lcssa = phi i8 [ %.fr207.peel, %switch.early.test205.peel ], [ %.fr207, %switch.early.test205 ] ; 2 uses
  %i.u = and i8 %.fr207.lcssa, -33
  %or.cond5 = icmp eq i8 %i.u, 80
  br i1 %or.cond5, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.loopexit257
  switch i8 %.fr207.lcssa, label %.thread [
    i8 125, label %bb.h
    i8 93, label %bb.h
    i8 59, label %bb.h
    i8 44, label %bb.h
    i8 41, label %bb.h
    i8 32, label %bb.h
    i8 13, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %.272. = select i1 %.065233.lcssa, i64 %.272234.lcssa, i64 0
  br label %.thread

bb.i:                                             ; preds = %.loopexit257
  %i.v = add nuw i64 %.272.in232.lcssa, 2
  br label %bb.k

bb.j:                                             ; preds = %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %switch.early.test205, %.lr.ph235
  %.272 = add i64 %.272234, 1                     ; 2 uses
  %exitcond255.not = icmp eq i64 %.272, %i.b
  br i1 %exitcond255.not, label %._crit_edge236.thread, label %.lr.ph235, !llvm.loop !1069

._crit_edge236:                                   ; preds = %.preheader212
  br i1 %.068229.lcssa252, label %._crit_edge236.thread, label %.thread

._crit_edge236.thread:                            ; preds = %bb.j, %bb.c, %._crit_edge236
  br label %.thread

bb.k:                                             ; preds = %bb.i, %.thread176
  %.4 = phi i64 [ %i.v, %bb.i ], [ %i.p, %.thread176 ] ; 3 uses
  %.267 = phi i1 [ %.065233.lcssa, %bb.i ], [ %.068229.lcssa, %.thread176 ]
  %i.w = add i64 %.4, 1                           ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.w
  br i1 %.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !87
  switch i8 %i.y, label %.thread [
    i8 43, label %bb.m
    i8 45, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  br i1 %.267, label %.lr.ph240.preheader, label %.thread

.lr.ph240.preheader:                              ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %i.w
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !87
  %i.ab = add i8 %i.aa, -48
  %or.cond14.peel = icmp ult i8 %i.ab, 10
  br i1 %or.cond14.peel, label %bb.n, label %_ZN2c415basic_substringIKcE14_is_delim_charEc.exit

bb.n:                                             ; preds = %.lr.ph240.preheader
  %i.ac = add i64 %.4, 2                          ; 2 uses
  %exitcond258.peel.not = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond258.peel.not, label %.thread, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.n, %bb.o
  %.5238 = phi i64 [ %i.ag, %bb.o ], [ %i.ac, %bb.n ] ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.5238
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !87  ; 2 uses
  %i.af = add i8 %i.ae, -48
  %or.cond14 = icmp ult i8 %i.af, 10
  br i1 %or.cond14, label %bb.o, label %.loopexit260

.loopexit260:                                     ; preds = %.lr.ph240
  switch i8 %i.ae, label %_ZN2c415basic_substringIKcE14_is_delim_charEc.exit [
    i8 125, label %.thread
    i8 93, label %.thread
    i8 59, label %.thread
    i8 44, label %.thread
    i8 41, label %.thread
    i8 32, label %.thread
    i8 13, label %.thread
    i8 10, label %.thread
    i8 9, label %.thread
    i8 0, label %.thread
  ]

_ZN2c415basic_substringIKcE14_is_delim_charEc.exit: ; preds = %.lr.ph240.preheader, %.loopexit260
  br label %.thread

bb.o:                                             ; preds = %.lr.ph240
  %i.ag = add i64 %.5238, 1                       ; 2 uses
  %exitcond258.not = icmp eq i64 %i.ag, %i.b
  br i1 %exitcond258.not, label %.thread, label %.lr.ph240, !llvm.loop !1070

.thread:                                          ; preds = %bb.f, %bb.o, %bb.n, %._crit_edge236.thread, %._crit_edge236, %bb.a, %bb.b, %.loopexit260, %.loopexit260, %.loopexit260, %.loopexit260, %.loopexit260, %.loopexit260, %.loopexit260, %.loopexit260, %.loopexit260, %.loopexit260, %bb.k, %bb.m, %bb.l, %bb.g, %bb.d, %_ZN2c415basic_substringIKcE14_is_delim_charEc.exit, %bb.h, %bb.e
  %.sroa.15.11 = phi i64 [ %.5238, %.loopexit260 ], [ 0, %_ZN2c415basic_substringIKcE14_is_delim_charEc.exit ], [ 0, %bb.g ], [ %.272., %bb.h ], [ %i.b, %bb.b ], [ 0, %bb.d ], [ 0, %._crit_edge236 ], [ 0, %bb.k ], [ %.070., %bb.e ], [ 0, %bb.l ], [ 0, %bb.m ], [ %.5238, %.loopexit260 ], [ %.5238, %.loopexit260 ], [ %.5238, %.loopexit260 ], [ %.5238, %.loopexit260 ], [ %.5238, %.loopexit260 ], [ %.5238, %.loopexit260 ], [ %.5238, %.loopexit260 ], [ %.5238, %.loopexit260 ], [ %.5238, %.loopexit260 ], [ 0, %bb.a ], [ %i.b, %bb.o ], [ %i.b, %._crit_edge236.thread ], [ %i.b, %bb.n ], [ %i.b, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.pre, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.15.11, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read) uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNK2c415basic_substringIKcE20_first_real_span_binEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #51 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 14 uses
  %i.c = icmp ult i64 %1, %i.b
  %.sroa.0.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !101 ; 8 uses
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87    ; 2 uses
  %i.f = and i8 %i.e, -2
  %or.cond.peel = icmp eq i8 %i.f, 48             ; 4 uses
  br i1 %or.cond.peel, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %1, 1                        ; 2 uses
  %exitcond.peel.not = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.peel.not, label %.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.b, %bb.g
  %.078227 = phi i64 [ %i.s, %bb.g ], [ %i.g, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.078227
  %i.i = load i8, ptr %i.h, align 1, !tbaa !87    ; 2 uses
  %i.j = and i8 %i.i, -2
  %or.cond = icmp eq i8 %i.j, 48
  br i1 %or.cond, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.lr.ph
  %.078. = phi i64 [ 0, %.lr.ph ], [ %.078227, %.peel.next ]
  %.078227.lcssa = phi i64 [ %1, %.lr.ph ], [ %.078227, %.peel.next ] ; 4 uses
  %.lcssa240 = phi i8 [ %i.e, %.lr.ph ], [ %i.i, %.peel.next ] ; 3 uses
  %i.k = icmp eq i8 %.lcssa240, 46
  br i1 %i.k, label %.preheader214.preheader, label %bb.d

.preheader214.preheader:                          ; preds = %.loopexit
  %.280.peel = add nuw i64 %.078227.lcssa, 1      ; 4 uses
  %i.l = icmp ult i64 %.280.peel, %i.b
  br i1 %i.l, label %bb.c, label %.loopexit246

bb.c:                                             ; preds = %.preheader214.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.280.peel
  %i.n = load i8, ptr %i.m, align 1, !tbaa !87    ; 2 uses
  %i.o = and i8 %i.n, -2
  %or.cond8.peel = icmp eq i8 %i.o, 48
  br i1 %or.cond8.peel, label %.preheader214.preheader271, label %.loopexit247

.preheader214.preheader271:                       ; preds = %bb.c
  %.280282 = add nuw i64 %.078227.lcssa, 2        ; 2 uses
  %i.p = icmp ult i64 %.280282, %i.b
  br i1 %i.p, label %.lr.ph285, label %.loopexit246.thread

bb.d:                                             ; preds = %.loopexit
  %i.q = and i8 %.lcssa240, -33
  %or.cond5 = icmp eq i8 %i.q, 80
  br i1 %or.cond5, label %.thread182, label %bb.e

.thread182:                                       ; preds = %bb.d
  %i.r = add nuw i64 %.078227.lcssa, 1
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  switch i8 %.lcssa240, label %.thread [
    i8 125, label %bb.f
    i8 93, label %bb.f
    i8 59, label %bb.f
    i8 44, label %bb.f
    i8 41, label %bb.f
    i8 32, label %bb.f
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %.thread

bb.g:                                             ; preds = %.peel.next
  %i.s = add i64 %.078227, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.b
  br i1 %exitcond.not, label %.thread, label %.peel.next, !llvm.loop !1071

.preheader214:                                    ; preds = %.lr.ph285
  %.280 = add nuw i64 %.280284, 1                 ; 2 uses
  %i.t = icmp ult i64 %.280, %i.b
  br i1 %i.t, label %.lr.ph285, label %.loopexit246.thread, !llvm.loop !1072

.lr.ph285:                                        ; preds = %.preheader214.preheader271, %.preheader214
  %.280284 = phi i64 [ %.280, %.preheader214 ], [ %.280282, %.preheader214.preheader271 ] ; 4 uses
  %.280.in283 = phi i64 [ %.280284, %.preheader214 ], [ %.280.peel, %.preheader214.preheader271 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 %.280284
  %i.v = load i8, ptr %i.u, align 1, !tbaa !87    ; 2 uses
  %i.w = and i8 %i.v, -2
  %or.cond8 = icmp eq i8 %i.w, 48
  br i1 %or.cond8, label %.preheader214, label %.loopexit247, !llvm.loop !1072

.loopexit247:                                     ; preds = %.lr.ph285, %bb.c
  %.lcssa239 = phi i8 [ %i.n, %bb.c ], [ %i.v, %.lr.ph285 ] ; 2 uses
  %.280.in.lcssa238 = phi i64 [ %.078227.lcssa, %bb.c ], [ %.280.in283, %.lr.ph285 ]
  %.073.lcssa237 = phi i1 [ %or.cond.peel, %bb.c ], [ true, %.lr.ph285 ] ; 2 uses
  %.280.lcssa236 = phi i64 [ %.280.peel, %bb.c ], [ %.280284, %.lr.ph285 ]
  %i.x = and i8 %.lcssa239, -33
  %or.cond11 = icmp eq i8 %i.x, 80
  br i1 %or.cond11, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.loopexit247
  switch i8 %.lcssa239, label %.thread [
    i8 125, label %bb.i
    i8 93, label %bb.i
    i8 59, label %bb.i
    i8 44, label %bb.i
    i8 41, label %bb.i
    i8 32, label %bb.i
    i8 13, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %.280. = select i1 %.073.lcssa237, i64 %.280.lcssa236, i64 0
  br label %.thread
end_hunk_1
