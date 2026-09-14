Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN32ViewMultiStorage_Conversion_Test8TestBodyEv:bb.a
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn113 = phi { ptr, i32 } [ %i.fc, %bb.ax ], [ %i.fb, %bb.aw ] ; 2 uses
  %i.fd = load ptr, ptr %18, align 8, !tbaa !76   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.ay
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !77
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %bb.av
  %.pn113.pn = phi { ptr, i32 } [ %i.fa, %bb.av ], [ %.pn113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ], [ %.pn113, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.fi = load ptr, ptr %16, align 8, !tbaa !79   ; 3 uses
  %.not.i.i282 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i282, label %_ZN7testing7MessageD2Ev.exit284, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(128) %i.fi) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit284

_ZN7testing7MessageD2Ev.exit284:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %bb.au
  %.pn113.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.au ], [ %.pn113.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %.pn113.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.is

bb.az:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.fm = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.ba, label %_ZN4entt13basic_storageIiNS_6entityESaIiEEC2Ev.exit, !prof !55

bb.ba:                                            ; preds = %bb.az
  %i.fo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i290 = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i.i290, label %_ZN4entt13basic_storageIiNS_6entityESaIiEEC2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.fp = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt13basic_storageIiNS_6entityESaIiEEC2Ev.exit

_ZN4entt13basic_storageIiNS_6entityESaIiEEC2Ev.exit: ; preds = %bb.az, %bb.ba, %bb.bb
  %i.fq = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %19, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fq, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.fr, align 8, !tbaa !68
  %i.fs = getelementptr inbounds nuw i8, ptr %19, i64 64
  store i8 0, ptr %i.fs, align 8, !tbaa !69
  %i.ft = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 1048575, ptr %i.ft, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIiNS_6entityESaIiEEE, i64 16), ptr %19, align 8, !tbaa !43
  %i.fu = getelementptr inbounds nuw i8, ptr %19, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.fv = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %bb.bc, label %bb.be, !prof !55

bb.bc:                                            ; preds = %_ZN4entt13basic_storageIiNS_6entityESaIiEEC2Ev.exit
  %i.fx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i291 = icmp eq i32 %i.fx, 0
  br i1 %.not.i.i.i291, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.fy = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %_ZN4entt13basic_storageIiNS_6entityESaIiEEC2Ev.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %20, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fz, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %i.ga, align 8, !tbaa !68
  %i.gb = getelementptr inbounds nuw i8, ptr %20, i64 64
  store i8 0, ptr %i.gb, align 8, !tbaa !69
  %i.gc = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i64 1048575, ptr %i.gc, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIcNS_6entityESaIcEEE, i64 16), ptr %20, align 8, !tbaa !43
  %i.gd = getelementptr inbounds nuw i8, ptr %20, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.ge = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %bb.bf, label %bb.bh, !prof !55

bb.bf:                                            ; preds = %bb.be
  %i.gg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i292 = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i.i292, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.gh = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.gi = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %21, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %i.gj, align 8, !tbaa !68
  %i.gk = getelementptr inbounds nuw i8, ptr %21, i64 64
  store i8 0, ptr %i.gk, align 8, !tbaa !69
  %i.gl = getelementptr inbounds nuw i8, ptr %21, i64 72
  store i64 1048575, ptr %i.gl, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIdNS_6entityESaIdEEE, i64 16), ptr %21, align 8, !tbaa !43
  %i.gm = getelementptr inbounds nuw i8, ptr %21, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.gn = load atomic i8, ptr @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance acquire, align 8
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.bi, label %.critedge.i.thread.i.i.i297, !prof !55

bb.bi:                                            ; preds = %bb.bh
  %i.gp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i293 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i293, label %.critedge.i.thread.i.i.i297, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN4entt9type_infoC2IfEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #26
  %i.gq = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #26
  br label %.critedge.i.thread.i.i.i297

.critedge.i.thread.i.i.i297:                      ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.gr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %22, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance, ptr %i.gs, align 8, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %22, i64 64
  store i8 0, ptr %i.gt, align 8, !tbaa !69
  %i.gu = getelementptr inbounds nuw i8, ptr %22, i64 72
  store i64 1048575, ptr %i.gu, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIfNS_6entityESaIfEEE, i64 16), ptr %22, align 8, !tbaa !43
  %i.gv = getelementptr inbounds nuw i8, ptr %22, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i8 0, i64 24, i1 false)
  store ptr %19, ptr %1, align 8, !tbaa !126
  %i.gw = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = load ptr, ptr %i.gw, align 8
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  store ptr %20, ptr %i.ai, align 8, !tbaa !126
  store i64 0, ptr %i.w, align 8, !tbaa !168
  %i.hd = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !80
  %i.hg = load ptr, ptr %i.hd, align 8, !tbaa !81
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = icmp ult i64 %i.hj, %i.hc
  br i1 %i.hk, label %bb.bk, label %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEKNS2_IcS3_SaIcEEEEEENS_9exclude_tIJNS2_IdS3_SaIdEEEKNS2_IfS3_SaIfEEEEEEE7storageIS7_EEvRT_.exit

bb.bk:                                            ; preds = %.critedge.i.thread.i.i.i297
  store i64 1, ptr %i.w, align 8, !tbaa !168
  br label %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEKNS2_IcS3_SaIcEEEEEENS_9exclude_tIJNS2_IdS3_SaIdEEEKNS2_IfS3_SaIfEEEEEEE7storageIS7_EEvRT_.exit

_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEKNS2_IcS3_SaIcEEEEEENS_9exclude_tIJNS2_IdS3_SaIdEEEKNS2_IfS3_SaIfEEEEEEE7storageIS7_EEvRT_.exit: ; preds = %.critedge.i.thread.i.i.i297, %bb.bk
  store ptr %21, ptr %i.u, align 8, !tbaa !126
  store ptr %22, ptr %i.x, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @_ZN4entt10basic_viewINS_5get_tIJKNS_13basic_storageIiNS_6entityESaIiEEEKNS2_IcS3_SaIcEEEEEENS_9exclude_tIJKNS2_IdS3_SaIdEEEKNS2_IfS3_SaIfEEEEEEEC2IJNS1_IJS5_S9_EEENSB_IJSD_SH_EEEEQntsr3stlE7same_asINS0_INS1_IJDpT_EEENSB_IJDpT0_EEEEENS0_IDpTL0__EEEEERKNS0_ISO_EE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 8 dereferenceable(48) %1) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %23, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.hl = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %bb.bl, label %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEEEENS_9exclude_tIJKNS2_IdS3_SaIdEEEEEEEC2Ev.exit.i298, !prof !55

bb.bl:                                            ; preds = %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEKNS2_IcS3_SaIcEEEEEENS_9exclude_tIJNS2_IdS3_SaIdEEEKNS2_IfS3_SaIfEEEEEEE7storageIS7_EEvRT_.exit
  %i.hn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  %.not.i.i.i.i303 = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i.i.i303, label %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEEEENS_9exclude_tIJKNS2_IdS3_SaIdEEEEEEEC2Ev.exit.i298, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder)
  %i.ho = call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  br label %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEEEENS_9exclude_tIJKNS2_IdS3_SaIdEEEEEEEC2Ev.exit.i298

_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEEEENS_9exclude_tIJKNS2_IdS3_SaIdEEEEEEEC2Ev.exit.i298: ; preds = %bb.bm, %bb.bl, %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEKNS2_IcS3_SaIcEEEEEENS_9exclude_tIJNS2_IdS3_SaIdEEEKNS2_IfS3_SaIfEEEEEEE7storageIS7_EEvRT_.exit
  %i.hp = load ptr, ptr %1, align 8, !tbaa !126   ; 8 uses
  %.not.i.i299 = icmp ne ptr %i.hp, null
  %i.hq = load ptr, ptr %i.u, align 8, !tbaa !126 ; 4 uses
  %i.hr = load ptr, ptr %i.v, align 8, !tbaa !167 ; 3 uses
  %i.hs = icmp ne ptr %i.hq, %i.hr
  %.not.i34.i301 = icmp ne ptr %i.hq, null
  %.not.i3.i302.not = and i1 %.not.i34.i301, %i.hs
  %i.ht = load ptr, ptr %i.ai, align 8, !tbaa !126 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.hu = load i64, ptr %i.w, align 8, !tbaa !168 ; 2 uses
  %.not.i.i307 = icmp eq i64 %i.hu, 2
  br i1 %.not.i.i307, label %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit.thread, label %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit

_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEEEENS_9exclude_tIJKNS2_IdS3_SaIdEEEEEEEC2Ev.exit.i298
  store i8 0, ptr %24, align 8, !tbaa !91
  %i.hv = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr null, ptr %i.hv, align 8, !tbaa !100
  br label %bb.bn

_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit: ; preds = %_ZN4entt10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEEEENS_9exclude_tIJKNS2_IdS3_SaIdEEEEEEEC2Ev.exit.i298
  %.not7.not.i.i.i = icmp ne ptr %i.hq, %i.hr
  %i.hw = load ptr, ptr %i.x, align 8
  %.not7.not.i.1.i.i = icmp ne ptr %i.hw, %i.hr
  %or.cond.not.i.i = select i1 %.not7.not.i.i.i, i1 %.not7.not.i.1.i.i, i1 false ; 2 uses
  %i.hx = zext i1 %or.cond.not.i.i to i8
  store i8 %i.hx, ptr %24, align 8, !tbaa !91
  %i.hy = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr null, ptr %i.hy, align 8, !tbaa !100
  br i1 %or.cond.not.i.i, label %bb.by, label %bb.bn

bb.bn:                                            ; preds = %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit.thread, %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit
  %i.hz = phi ptr [ %i.hv, %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit.thread ], [ %i.hy, %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bo unwind label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.ia = load ptr, ptr %27, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 708, ptr noundef %i.ia)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  %i.ib = load ptr, ptr %27, align 8, !tbaa !76   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.br
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !77
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.ig = load ptr, ptr %25, align 8, !tbaa !79   ; 3 uses
  %.not.i.i311 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i311, label %_ZN7testing7MessageD2Ev.exit313, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !43
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(128) %i.ig) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit313

_ZN7testing7MessageD2Ev.exit313:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.ik = load ptr, ptr %i.hz, align 8, !tbaa !94 ; 4 uses
  %.not.i.i314 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i314, label %_ZN7testing15AssertionResultD2Ev.exit318, label %bb.bs

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit313
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !76 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i315: ; preds = %bb.bs
  %i.io = load i64, ptr %i.im, align 8, !tbaa !77
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i315
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit318

_ZN7testing15AssertionResultD2Ev.exit318:         ; preds = %_ZN7testing7MessageD2Ev.exit313, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.io

bb.bt:                                            ; preds = %bb.bn
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit324

bb.bu:                                            ; preds = %bb.bo
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

bb.bv:                                            ; preds = %bb.bp
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bq
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn117 = phi { ptr, i32 } [ %i.it, %bb.bw ], [ %i.is, %bb.bv ] ; 2 uses
  %i.iu = load ptr, ptr %27, align 8, !tbaa !76   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %bb.bx
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !77
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %bb.bu
  %.pn117.pn = phi { ptr, i32 } [ %i.ir, %bb.bu ], [ %.pn117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %.pn117, %bb.bx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.iz = load ptr, ptr %25, align 8, !tbaa !79   ; 3 uses
  %.not.i.i322 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i322, label %_ZN7testing7MessageD2Ev.exit324, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !43
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(128) %i.iz) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit324

_ZN7testing7MessageD2Ev.exit324:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %bb.bt
  %.pn117.pn.pn = phi { ptr, i32 } [ %i.iq, %bb.bt ], [ %.pn117.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ], [ %.pn117.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.ir

bb.by:                                            ; preds = %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISL_S0_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  %i.jd = load i64, ptr %i.br, align 8, !tbaa !168
  %.not.i.i330 = icmp eq i64 %i.jd, 2
  br i1 %.not.i.i330, label %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit.thread, label %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit

_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit.thread: ; preds = %bb.by
  store i8 0, ptr %28, align 8, !tbaa !91
  %i.je = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store ptr null, ptr %i.je, align 8, !tbaa !100
  br label %bb.bz

_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit: ; preds = %bb.by
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !167 ; 2 uses
  %.09.i.ptr.i.i332 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jh = load ptr, ptr %.09.i.ptr.i.i332, align 8, !tbaa !126
  %.not7.not.i.i.i333 = icmp ne ptr %i.jh, %i.jg
  %.09.i.ptr.1.i.i334 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ji = load ptr, ptr %.09.i.ptr.1.i.i334, align 8
  %.not7.not.i.1.i.i335 = icmp ne ptr %i.ji, %i.jg
  %or.cond.not.i.i336 = select i1 %.not7.not.i.i.i333, i1 %.not7.not.i.1.i.i335, i1 false ; 2 uses
  %i.jj = zext i1 %or.cond.not.i.i336 to i8
  store i8 %i.jj, ptr %28, align 8, !tbaa !91
  %i.jk = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store ptr null, ptr %i.jk, align 8, !tbaa !100
  br i1 %or.cond.not.i.i336, label %bb.ck, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit.thread, %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit
  %i.jl = phi ptr [ %i.je, %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit.thread ], [ %i.jk, %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.jm = load ptr, ptr %31, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 709, ptr noundef %i.jm)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #26
  %i.jn = load ptr, ptr %31, align 8, !tbaa !76   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %bb.cd
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !77
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.js = load ptr, ptr %29, align 8, !tbaa !79   ; 3 uses
  %.not.i.i340 = icmp eq ptr %i.js, null
  br i1 %.not.i.i340, label %_ZN7testing7MessageD2Ev.exit342, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !43
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(128) %i.js) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit342

_ZN7testing7MessageD2Ev.exit342:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.jw = load ptr, ptr %i.jl, align 8, !tbaa !94 ; 4 uses
  %.not.i.i343 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i343, label %_ZN7testing15AssertionResultD2Ev.exit347, label %bb.ce

bb.ce:                                            ; preds = %_ZN7testing7MessageD2Ev.exit342
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !76 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344: ; preds = %bb.ce
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !77
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit347

_ZN7testing15AssertionResultD2Ev.exit347:         ; preds = %_ZN7testing7MessageD2Ev.exit342, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.io

bb.cf:                                            ; preds = %bb.bz
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit353

bb.cg:                                            ; preds = %bb.ca
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

bb.ch:                                            ; preds = %bb.cb
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cc
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #26
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pn121 = phi { ptr, i32 } [ %i.kf, %bb.ci ], [ %i.ke, %bb.ch ] ; 2 uses
  %i.kg = load ptr, ptr %31, align 8, !tbaa !76   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %bb.cj
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !77
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %bb.cg
  %.pn121.pn = phi { ptr, i32 } [ %i.kd, %bb.cg ], [ %.pn121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %.pn121, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.kl = load ptr, ptr %29, align 8, !tbaa !79   ; 3 uses
  %.not.i.i351 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i351, label %_ZN7testing7MessageD2Ev.exit353, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i352

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !43
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(128) %i.kl) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit353

_ZN7testing7MessageD2Ev.exit353:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %bb.cf
  %.pn121.pn.pn = phi { ptr, i32 } [ %i.kc, %bb.cf ], [ %.pn121.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %.pn121.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i352 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.ir

bb.ck:                                            ; preds = %_ZN7testing15AssertionResultC2IN4entt10basic_viewINS2_5get_tIJKNS2_13basic_storageIiNS2_6entityESaIiEEEKNS5_IcS6_SaIcEEEEEENS2_9exclude_tIJKNS5_IdS6_SaIdEEEKNS5_IfS6_SaIfEEEEEEEEEERKT_PNSt9enable_ifIXntsr3std14is_convertibleISN_S0_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %.not7.not.i.i.i361691 = icmp ne ptr %i.hq, @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder
  %.not7.not.i.i.i361 = and i1 %.not.i3.i302.not, %.not7.not.i.i.i361691
  %i.kp = select i1 %.not.i.i299, i1 %.not7.not.i.i.i361, i1 false ; 2 uses
  %i.kq = zext i1 %i.kp to i8
  store i8 %i.kq, ptr %32, align 8, !tbaa !91
  %i.kr = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  store ptr null, ptr %i.kr, align 8, !tbaa !100
  br i1 %i.kp, label %bb.cw, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.ks = load ptr, ptr %35, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 710, ptr noundef %i.ks)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.cp unwind label %bb.cu

bb.cp:                                            ; preds = %bb.co
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #26
  %i.kt = load ptr, ptr %35, align 8, !tbaa !76   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %bb.cp
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !77
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.ky = load ptr, ptr %33, align 8, !tbaa !79   ; 3 uses
  %.not.i.i365 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i365, label %_ZN7testing7MessageD2Ev.exit367, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !43
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(128) %i.ky) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit367

_ZN7testing7MessageD2Ev.exit367:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  %i.lc = load ptr, ptr %i.kr, align 8, !tbaa !94 ; 4 uses
  %.not.i.i368 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i368, label %_ZN7testing15AssertionResultD2Ev.exit372, label %bb.cq

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit367
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !76 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i369: ; preds = %bb.cq
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !77
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i370

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i370: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i369
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit372

_ZN7testing15AssertionResultD2Ev.exit372:         ; preds = %_ZN7testing7MessageD2Ev.exit367, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.io

bb.cr:                                            ; preds = %bb.cl
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit378

bb.cs:                                            ; preds = %bb.cm
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

bb.ct:                                            ; preds = %bb.cn
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.co
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #26
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn125 = phi { ptr, i32 } [ %i.ll, %bb.cu ], [ %i.lk, %bb.ct ] ; 2 uses
  %i.lm = load ptr, ptr %35, align 8, !tbaa !76   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %bb.cv
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !77
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373, %bb.cs
  %.pn125.pn = phi { ptr, i32 } [ %i.lj, %bb.cs ], [ %.pn125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %.pn125, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.lr = load ptr, ptr %33, align 8, !tbaa !79   ; 3 uses
  %.not.i.i376 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i376, label %_ZN7testing7MessageD2Ev.exit378, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !43
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(128) %i.lr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit378

_ZN7testing7MessageD2Ev.exit378:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %bb.cr
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.li, %bb.cr ], [ %.pn125.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ %.pn125.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.ir

bb.cw:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  %i.lv = icmp ne ptr %i.ht, null                 ; 2 uses
  %i.lw = zext i1 %i.lv to i8
  store i8 %i.lw, ptr %36, align 8, !tbaa !91
  %i.lx = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store ptr null, ptr %i.lx, align 8, !tbaa !100
  br i1 %i.lv, label %bb.di, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.cy unwind label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.cz unwind label %bb.de

bb.cz:                                            ; preds = %bb.cy
  %i.ly = load ptr, ptr %39, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 711, ptr noundef %i.ly)
          to label %bb.da unwind label %bb.df

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %bb.da
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #26
  %i.lz = load ptr, ptr %39, align 8, !tbaa !76   ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384: ; preds = %bb.db
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !77
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.me = load ptr, ptr %37, align 8, !tbaa !79   ; 3 uses
  %.not.i.i387 = icmp eq ptr %i.me, null
  br i1 %.not.i.i387, label %_ZN7testing7MessageD2Ev.exit389, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i388

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !43
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(128) %i.me) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit389

_ZN7testing7MessageD2Ev.exit389:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.mi = load ptr, ptr %i.lx, align 8, !tbaa !94 ; 4 uses
  %.not.i.i390 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i390, label %_ZN7testing15AssertionResultD2Ev.exit394, label %bb.dc

bb.dc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit389
end_hunk_0
