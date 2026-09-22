Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/coordinateoperationfactory?download=true
inline.NumInlined: 9028
inline.NumDeleted: 2068
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private34findsOpsInRegistryWithIntermediateERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESD_RNS3_7ContextEb:bb.a
  %.sroa.0617.0728 = load ptr, ptr %12, align 8, !tbaa !202 ; 2 uses
  %.not688729 = icmp eq ptr %.sroa.0617.0728, %12
  br i1 %.not688729, label %.critedge279, label %.lr.ph731.split.preheader

.lr.ph731.split.preheader:                        ; preds = %bb.hh
  %i.xk = load ptr, ptr %i.d, align 8, !tbaa !196, !nonnull !118, !align !197
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !148
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !83
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 52
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !123 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 7 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 9 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.xt = icmp eq i32 %i.xp, 1
  %i.xu = icmp eq i32 %i.xp, 3                    ; 3 uses
  %i.xv = or i1 %i.xt, %i.xu                      ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.yc = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  br label %.lr.ph731.split

.critedge277.loopexit:                            ; preds = %bb.kv, %.lr.ph731.split
  %.sroa.0617.0 = load ptr, ptr %.sroa.0617.0730, align 8, !tbaa !202 ; 2 uses
  %.not688 = icmp eq ptr %.sroa.0617.0, %12
  br i1 %.not688, label %.critedge279, label %.lr.ph731.split, !llvm.loop !468

.lr.ph731.split:                                  ; preds = %.lr.ph731.split.preheader, %.critedge277.loopexit
  %.sroa.0617.0730 = phi ptr [ %.sroa.0617.0, %.critedge277.loopexit ], [ %.sroa.0617.0728, %.lr.ph731.split.preheader ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0617.0730, i64 16 ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0617.0730, i64 48 ; 2 uses
  %.sroa.0613.0725 = load ptr, ptr %27, align 8, !tbaa !202 ; 2 uses
  %.not689726 = icmp eq ptr %.sroa.0613.0725, %27
  br i1 %.not689726, label %.critedge277.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph731.split, %bb.kv
  %.sroa.0613.0727 = phi ptr [ %.sroa.0613.0, %bb.kv ], [ %.sroa.0613.0725, %.lr.ph731.split ] ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0613.0727, i64 16 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.0613.0727, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  %.val283 = load ptr, ptr %i.h, align 8, !tbaa !149
  invoke fastcc void @_ZN5osgeo4proj9operationL23getCandidateAuthoritiesERKSt10shared_ptrINS0_2io16AuthorityFactoryEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_(ptr dead_on_unwind noalias writable align 8 %29, ptr %.val283, ptr noundef nonnull align 8 dereferenceable(32) %i.yj, ptr noundef nonnull align 8 dereferenceable(32) %i.yl)
          to label %bb.hi unwind label %bb.ik

bb.hi:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  %i.yn = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.yo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj2io16AuthorityFactory15databaseContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yn)
          to label %bb.hj unwind label %bb.il

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  %i.yp = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.yq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2io16AuthorityFactory12getAuthorityB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.yp) #36 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !206
  %i.yt = icmp eq i64 %i.ys, 3
  br i1 %i.yt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread679

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.hj
  %i.yu = load ptr, ptr %i.yq, align 8, !tbaa !132 ; 2 uses
  %i.yv = load i16, ptr %i.yu, align 1
  %i.yw = xor i16 %i.yv, 28257
  %i.yx = getelementptr i8, ptr %i.yu, i64 2
  %i.yy = load i8, ptr %i.yx, align 1
  %i.yz = zext i8 %i.yy to i16
  %i.za = xor i16 %i.yz, 121
  %i.zb = or i16 %i.yw, %i.za
  %i.zc = icmp ne i16 %i.zb, 0
  %i.zd = zext i1 %i.zc to i32
  %i.ze = icmp eq i32 %i.zd, 0
  br i1 %i.ze, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread679

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread679: ; preds = %bb.hj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.zf = load ptr, ptr %i.xq, align 8, !tbaa !262
  %i.zg = load ptr, ptr %29, align 8, !tbaa !261  ; 3 uses
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = ptrtoint ptr %i.zg to i64
  %i.zj = sub i64 %i.zh, %i.zi
  %i.zk = icmp ugt i64 %i.zj, 32
  br i1 %i.zk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.hk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread679, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store ptr %i.xr, ptr %31, align 8, !tbaa !229
  store i64 0, ptr %i.xs, align 8, !tbaa !206
  store i8 0, ptr %i.xr, align 8, !tbaa !90
  br label %bb.hn

bb.hk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread679
  store ptr %i.xr, ptr %31, align 8, !tbaa !229
  %i.zl = load ptr, ptr %i.zg, align 8, !tbaa !132 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !206 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.zn, ptr %i.a, align 8, !tbaa !230
  %i.zo = icmp ugt i64 %i.zn, 15
  br i1 %i.zo, label %.noexc.i425, label %._crit_edge.i.i424

.noexc.i425:                                      ; preds = %bb.hk
  %i.zp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc426 unwind label %bb.im ; 2 uses

.noexc426:                                        ; preds = %.noexc.i425
  store ptr %i.zp, ptr %31, align 8, !tbaa !132
  %i.zq = load i64, ptr %i.a, align 8, !tbaa !230
  store i64 %i.zq, ptr %i.xr, align 8, !tbaa !90
  br label %._crit_edge.i.i424

._crit_edge.i.i424:                               ; preds = %.noexc426, %bb.hk
  %i.zr = phi ptr [ %i.zp, %.noexc426 ], [ %i.xr, %bb.hk ] ; 2 uses
  switch i64 %i.zn, label %bb.hm [
    i64 1, label %bb.hl
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.hl:                                            ; preds = %._crit_edge.i.i424
  %i.zs = load i8, ptr %i.zl, align 1, !tbaa !90
  store i8 %i.zs, ptr %i.zr, align 1, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.hm:                                            ; preds = %._crit_edge.i.i424
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zr, ptr align 1 %i.zl, i64 %i.zn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i424, %bb.hl, %bb.hm
  %i.zt = load i64, ptr %i.a, align 8, !tbaa !230 ; 2 uses
  store i64 %i.zt, ptr %i.xs, align 8, !tbaa !206
  %i.zu = load ptr, ptr %31, align 8, !tbaa !132
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zt
  store i8 0, ptr %i.zv, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.hn

bb.hn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN5osgeo4proj2io16AuthorityFactory6createERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15DatabaseContextEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.106") align 8 %30, ptr noundef nonnull align 8 dereferenceable(16) %i.yo, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.ho unwind label %bb.in

bb.ho:                                            ; preds = %bb.hn
  %i.zw = load ptr, ptr %31, align 8, !tbaa !132  ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.xr
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %bb.ho
  %i.zy = load i64, ptr %i.xr, align 8, !tbaa !90
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %bb.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  br i1 %4, label %bb.hp, label %bb.ip

bb.hp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  %i.aaa = load ptr, ptr %30, align 8, !tbaa !149
  %i.aab = load ptr, ptr %i.d, align 8, !tbaa !196, !nonnull !118, !align !197
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !148
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !83 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 48
  %i.aag = load i8, ptr %i.aaf, align 8, !tbaa !121, !range !117, !noundef !118
  %i.aah = trunc nuw i8 %i.aag to i1
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 88
  %i.aaj = load i8, ptr %i.aai, align 8, !tbaa !122, !range !117, !noundef !118
  %i.aak = trunc nuw i8 %i.aaj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  %i.aal = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.aam = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2io16AuthorityFactory12getAuthorityB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aal) #36 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !206
  %i.aap = icmp eq i64 %i.aao, 3
  br i1 %i.aap, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.hp
  %i.aaq = load ptr, ptr %i.aam, align 8, !tbaa !132 ; 2 uses
  %i.aar = load i16, ptr %i.aaq, align 1
  %i.aas = xor i16 %i.aar, 28257
  %i.aat = getelementptr i8, ptr %i.aaq, i64 2
  %i.aau = load i8, ptr %i.aat, align 1
  %i.aav = zext i8 %i.aau to i16
  %i.aaw = xor i16 %i.aav, 121
  %i.aax = or i16 %i.aas, %i.aaw
  %i.aay = icmp ne i16 %i.aax, 0
  %i.aaz = zext i1 %i.aay to i32
  %.not691 = icmp eq i32 %i.aaz, 0
  br i1 %.not691, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread680, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.hp, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aba = load ptr, ptr %i.xq, align 8, !tbaa !262 ; 3 uses
  %i.abb = load ptr, ptr %29, align 8, !tbaa !261 ; 3 uses
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = sub i64 %i.abc, %i.abd                 ; 4 uses
  %i.abf = icmp ugt i64 %i.abe, 32
  br i1 %i.abf, label %bb.hq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread680

bb.hq:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %.not.i.i.i.i430 = icmp eq ptr %i.aba, %i.abb
  br i1 %.not.i.i.i.i430, label %.noexc433, label %38

38:                                               ; preds = %bb.hq
  %39 = icmp ugt i64 %i.abe, 9223372036854775776
  br i1 %39, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !95

.noexc.i.i:                                       ; preds = %38
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc432 unwind label %.loopexit.split-lp698

.noexc432:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %38
  %i.abg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abe) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc433_crit_edge unwind label %.loopexit697

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc433_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre754 = load ptr, ptr %29, align 8, !tbaa !246
  %.pre755 = load ptr, ptr %i.xq, align 8, !tbaa !246
  br label %.noexc433

.noexc433:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc433_crit_edge, %bb.hq
  %40 = phi ptr [ %i.aba, %bb.hq ], [ %.pre755, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc433_crit_edge ]
  %41 = phi ptr [ %i.abb, %bb.hq ], [ %.pre754, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc433_crit_edge ]
  %42 = phi ptr [ null, %bb.hq ], [ %i.abg, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc433_crit_edge ] ; 4 uses
  store ptr %42, ptr %34, align 8, !tbaa !261
  store ptr %42, ptr %i.yd, align 8, !tbaa !262
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 %i.abe
  store ptr %43, ptr %i.ye, align 8, !tbaa !263
  %i.abh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %41, ptr %40, ptr noundef %42)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.hr

bb.hr:                                            ; preds = %.noexc433
  %i.abi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abj = load ptr, ptr %34, align 8, !tbaa !261 ; 3 uses
  %.not.i.i.i431 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i.i431, label %.body434, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.abk = load ptr, ptr %i.ye, align 8, !tbaa !263
  %i.abl = ptrtoint ptr %i.abk to i64
  %i.abm = ptrtoint ptr %i.abj to i64
  %i.abn = sub i64 %i.abl, %i.abm
  call void @_ZdlPvm(ptr noundef nonnull %i.abj, i64 noundef %i.abn) #32
  br label %.body434

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %.noexc433
  store ptr %i.abh, ptr %i.yd, align 8, !tbaa !262
  br label %bb.ht

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread680: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  br label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread680
  %i.abo = load ptr, ptr %3, align 8, !tbaa !247, !nonnull !118, !align !197
  %i.abp = load ptr, ptr %i.xy, align 8, !tbaa !248, !nonnull !118, !align !197
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory51createBetweenGeodeticCRSWithDatumBasedIntermediatesERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_SC_SK_SK_bbbbRKSt6vectorISI_SaISI_EERKS6_INS0_8metadata6ExtentEESU_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %i.aaa, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.yj, ptr noundef nonnull align 8 dereferenceable(32) %i.yk, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.yl, ptr noundef nonnull align 8 dereferenceable(32) %i.ym, i1 noundef zeroext %i.aah, i1 noundef zeroext %i.xv, i1 noundef zeroext %i.xu, i1 noundef zeroext %i.aak, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(16) %i.abo, ptr noundef nonnull align 8 dereferenceable(16) %i.abp)
          to label %bb.hu unwind label %bb.io

bb.hu:                                            ; preds = %bb.ht
  %i.abq = load ptr, ptr %32, align 16, !tbaa !157 ; 5 uses
  %i.abr = load ptr, ptr %i.xz, align 8, !tbaa !158 ; 2 uses
  %i.abs = load ptr, ptr %i.ya, align 16, !tbaa !159
  %i.abt = load <2 x ptr>, ptr %33, align 16, !tbaa !154
  store <2 x ptr> %i.abt, ptr %32, align 16, !tbaa !154
  %i.abu = load ptr, ptr %i.yg, align 16, !tbaa !159
  store ptr %i.abu, ptr %i.ya, align 16, !tbaa !159
  %.not4.i.i.i.i.i = icmp eq ptr %i.abq, %i.abr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.hu, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.acm, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i ], [ %i.abq, %bb.hu ] ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8 ; 4 uses
  %i.aby = load atomic i64, ptr %i.abx acquire, align 8 ; 2 uses
  %i.abz = icmp eq i64 %i.aby, 4294967297
  %i.aca = trunc i64 %i.aby to i32                ; 2 uses
  br i1 %i.abz, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  store i32 0, ptr %i.abx, align 8, !tbaa !93
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 12
  store i32 0, ptr %i.acb, align 4, !tbaa !94
  %i.acc = load ptr, ptr %i.abw, align 8, !tbaa !80
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.ace = load ptr, ptr %i.acd, align 8
  call void %i.ace(ptr noundef nonnull align 8 dereferenceable(16) %i.abw) #31, !inline_history !30
  %i.acf = load ptr, ptr %i.abw, align 8, !tbaa !80
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.ach = load ptr, ptr %i.acg, align 8
  call void %i.ach(ptr noundef nonnull align 8 dereferenceable(16) %i.abw) #31, !inline_history !30
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i

bb.hx:                                            ; preds = %bb.hv
  %i.aci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aci, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.acj = add nsw i32 %i.aca, -1
  store i32 %i.acj, ptr %i.abx, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.hz:                                            ; preds = %bb.hx
  %i.ack = atomicrmw volatile add ptr %i.abx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hz, %bb.hy
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aca, %bb.hy ], [ %i.ack, %bb.hz ]
  %i.acl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.acl, label %bb.ia, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, !prof !95

bb.ia:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abw) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ia, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.hw, %.lr.ph.i.i.i.i.i
  %i.acm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i436 = icmp eq ptr %i.acm, %i.abr
  br i1 %.not.i.i.i.i.i436, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, %bb.hu
  %.not.i.i1.i.i.i = icmp eq ptr %i.abq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.acn = ptrtoint ptr %i.abs to i64
  %i.aco = ptrtoint ptr %i.abq to i64
  %i.acp = sub i64 %i.acn, %i.aco
  call void @_ZdlPvm(ptr noundef nonnull %i.abq, i64 noundef %i.acp) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, %bb.ib
  %i.acq = load ptr, ptr %33, align 16, !tbaa !157 ; 3 uses
  %i.acr = load ptr, ptr %i.yf, align 8, !tbaa !158 ; 2 uses
  %.not4.i.i.i437 = icmp eq ptr %i.acq, %i.acr
  br i1 %.not4.i.i.i437, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i448, label %.lr.ph.i.i.i438

.lr.ph.i.i.i438:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i444
  %.05.i.i.i439 = phi ptr [ %i.adj, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i444 ], [ %i.acq, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit ] ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.05.i.i.i439, i64 8
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i440 = icmp eq ptr %i.act, null
  br i1 %.not.i.i.i.i.i.i.i440, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i444, label %bb.ic

bb.ic:                                            ; preds = %.lr.ph.i.i.i438
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8 ; 4 uses
  %i.acv = load atomic i64, ptr %i.acu acquire, align 8 ; 2 uses
  %i.acw = icmp eq i64 %i.acv, 4294967297
  %i.acx = trunc i64 %i.acv to i32                ; 2 uses
  br i1 %i.acw, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i32 0, ptr %i.acu, align 8, !tbaa !93
  %i.acy = getelementptr inbounds nuw i8, ptr %i.act, i64 12
  store i32 0, ptr %i.acy, align 4, !tbaa !94
  %i.acz = load ptr, ptr %i.act, align 8, !tbaa !80
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.adb = load ptr, ptr %i.ada, align 8
  call void %i.adb(ptr noundef nonnull align 8 dereferenceable(16) %i.act) #31, !inline_history !4
  %i.adc = load ptr, ptr %i.act, align 8, !tbaa !80
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  %i.ade = load ptr, ptr %i.add, align 8
  call void %i.ade(ptr noundef nonnull align 8 dereferenceable(16) %i.act) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i444

bb.ie:                                            ; preds = %bb.ic
  %i.adf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i441 = icmp eq i8 %i.adf, 0
  br i1 %.not.i.i.i.i.i.i.i.i441, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.adg = add nsw i32 %i.acx, -1
  store i32 %i.adg, ptr %i.acu, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i442

bb.ig:                                            ; preds = %bb.ie
  %i.adh = atomicrmw volatile add ptr %i.acu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i442

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i442: ; preds = %bb.ig, %bb.if
  %.0.i.i.i.i.i.i.i.i.i443 = phi i32 [ %i.acx, %bb.if ], [ %i.adh, %bb.ig ]
  %i.adi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i443, 1
  br i1 %i.adi, label %bb.ih, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i444, !prof !95

bb.ih:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i442
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.act) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i444

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i444: ; preds = %bb.ih, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i442, %bb.id, %.lr.ph.i.i.i438
  %i.adj = getelementptr inbounds nuw i8, ptr %.05.i.i.i439, i64 16 ; 2 uses
  %.not.i.i.i445 = icmp eq ptr %i.adj, %i.acr
  br i1 %.not.i.i.i445, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i446, label %.lr.ph.i.i.i438, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i446: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i444
  %.pr.i447 = load ptr, ptr %33, align 16, !tbaa !157
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i448

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i448: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i446, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit
  %i.adk = phi ptr [ %.pr.i447, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i446 ], [ %i.acq, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit ] ; 3 uses
  %.not.i.i1.i449 = icmp eq ptr %i.adk, null
  br i1 %.not.i.i1.i449, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit451, label %bb.ii

bb.ii:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i448
  %i.adl = load ptr, ptr %i.yg, align 16, !tbaa !159
  %i.adm = ptrtoint ptr %i.adl to i64
  %i.adn = ptrtoint ptr %i.adk to i64
  %i.ado = sub i64 %i.adm, %i.adn
  call void @_ZdlPvm(ptr noundef nonnull %i.adk, i64 noundef %i.ado) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit451

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit451: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i448, %bb.ii
  %i.adp = load ptr, ptr %34, align 8, !tbaa !261 ; 3 uses
  %i.adq = load ptr, ptr %i.yd, align 8, !tbaa !262 ; 2 uses
  %.not4.i.i.i452 = icmp eq ptr %i.adp, %i.adq
  br i1 %.not4.i.i.i452, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i453

.lr.ph.i.i.i453:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit451, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i454 = phi ptr [ %i.adw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.adp, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit451 ] ; 3 uses
  %i.adr = load ptr, ptr %.05.i.i.i454, align 8, !tbaa !132 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.05.i.i.i454, i64 16 ; 2 uses
  %i.adt = icmp eq ptr %i.adr, %i.ads
  br i1 %i.adt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i453
  %i.adu = load i64, ptr %i.ads, align 8, !tbaa !90
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %i.adr, i64 noundef %i.adv) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.adw = getelementptr inbounds nuw i8, ptr %.05.i.i.i454, i64 32 ; 2 uses
  %.not.i.i.i455 = icmp eq ptr %i.adw, %i.adq
  br i1 %.not.i.i.i455, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i453, !llvm.loop !26

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i456 = load ptr, ptr %34, align 8, !tbaa !261
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit451
  %i.adx = phi ptr [ %.pr.i456, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.adp, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit451 ] ; 3 uses
  %.not.i.i1.i457 = icmp eq ptr %i.adx, null
  br i1 %.not.i.i1.i457, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ij

bb.ij:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ady = load ptr, ptr %i.ye, align 8, !tbaa !263
  %i.adz = ptrtoint ptr %i.ady to i64
  %i.aea = ptrtoint ptr %i.adx to i64
  %i.aeb = sub i64 %i.adz, %i.aea
  call void @_ZdlPvm(ptr noundef nonnull %i.adx, i64 noundef %i.aeb) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %bb.jp

bb.ik:                                            ; preds = %.lr.ph
  %i.aec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.il:                                            ; preds = %bb.hi
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.im:                                            ; preds = %.noexc.i425
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461

bb.in:                                            ; preds = %bb.hn
  %i.aef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeg = load ptr, ptr %31, align 8, !tbaa !132 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.xr
  br i1 %i.aeh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459: ; preds = %bb.in
  %i.aei = load i64, ptr %i.xr, align 8, !tbaa !90
  %i.aej = add i64 %i.aei, 1
  call void @_ZdlPvm(ptr noundef %i.aeg, i64 noundef %i.aej) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461: ; preds = %bb.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459, %bb.im
  %.pn = phi { ptr, i32 } [ %i.aee, %bb.im ], [ %i.aef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459 ], [ %i.aef, %bb.in ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %bb.kx

.loopexit697:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit699 = landingpad { ptr, i32 }
          cleanup
  br label %.body434

.loopexit.split-lp698:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp700 = landingpad { ptr, i32 }
          cleanup
  br label %.body434

bb.io:                                            ; preds = %bb.ht
  %i.aek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #31
  br label %.body434

.body434:                                         ; preds = %.loopexit697, %.loopexit.split-lp698, %bb.hs, %bb.hr, %bb.io
  %.pn226 = phi { ptr, i32 } [ %i.aek, %bb.io ], [ %i.abi, %bb.hr ], [ %i.abi, %bb.hs ], [ %lpad.loopexit699, %.loopexit697 ], [ %lpad.loopexit.split-lp700, %.loopexit.split-lp698 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %bb.kw

bb.ip:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.ael = load ptr, ptr %i.d, align 8, !tbaa !196, !nonnull !118, !align !197 ; 2 uses
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !148
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !83 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 64
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !134
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 72
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !134
  %i.aet = icmp eq ptr %i.aeq, %i.aes
  br i1 %i.aet, label %bb.iq, label %.critedge273

bb.iq:                                            ; preds = %bb.ip
  %i.aeu = load ptr, ptr %1, align 8, !tbaa !162  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, null
  br i1 %i.aev, label %.critedge273, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.aew = call ptr @__dynamic_cast(ptr nonnull %i.aeu, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #31
  %i.aex = icmp eq ptr %i.aew, null
  br i1 %i.aex, label %.critedge273, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aey = load ptr, ptr %2, align 8, !tbaa !162  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, null
  br i1 %i.aez, label %.thread681, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.afa = call ptr @__dynamic_cast(ptr nonnull %i.aey, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #31
  %.fr = freeze ptr %i.afa
  %i.afb = icmp eq ptr %.fr, null
  br i1 %i.afb, label %.thread681, label %.critedge273

.thread681:                                       ; preds = %bb.is, %bb.it
  br label %.critedge273

.critedge273:                                     ; preds = %.thread681, %bb.it, %bb.iq, %bb.ir, %bb.ip
  %.0 = phi i32 [ 6, %bb.iq ], [ 6, %bb.ip ], [ 6, %bb.ir ], [ 6, %.thread681 ], [ 9, %bb.it ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  %i.afc = load ptr, ptr %30, align 8, !tbaa !149
  %i.afd = load ptr, ptr %i.ael, align 8, !tbaa !148
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !83 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 48
  %i.afh = load i8, ptr %i.afg, align 8, !tbaa !121, !range !117, !noundef !118
  %i.afi = trunc nuw i8 %i.afh to i1
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 88
  %i.afk = load i8, ptr %i.afj, align 8, !tbaa !122, !range !117, !noundef !118
  %i.afl = trunc nuw i8 %i.afk to i1
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aff, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  %i.afn = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.afo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2io16AuthorityFactory12getAuthorityB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.afn) #36 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !206
  %i.afr = icmp eq i64 %i.afq, 3
  br i1 %i.afr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463: ; preds = %.critedge273
  %i.afs = load ptr, ptr %i.afo, align 8, !tbaa !132 ; 2 uses
  %i.aft = load i16, ptr %i.afs, align 1
  %i.afu = xor i16 %i.aft, 28257
  %i.afv = getelementptr i8, ptr %i.afs, i64 2
  %i.afw = load i8, ptr %i.afv, align 1
  %i.afx = zext i8 %i.afw to i16
  %i.afy = xor i16 %i.afx, 121
  %i.afz = or i16 %i.afu, %i.afy
  %i.aga = icmp ne i16 %i.afz, 0
  %i.agb = zext i1 %i.aga to i32
  %.not690 = icmp eq i32 %i.agb, 0
  br i1 %.not690, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread684, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread: ; preds = %.critedge273, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463
  %i.agc = load ptr, ptr %i.xq, align 8, !tbaa !262 ; 3 uses
  %i.agd = load ptr, ptr %29, align 8, !tbaa !261 ; 3 uses
  %i.age = ptrtoint ptr %i.agc to i64
  %i.agf = ptrtoint ptr %i.agd to i64
  %i.agg = sub i64 %i.age, %i.agf                 ; 4 uses
  %i.agh = icmp ugt i64 %i.agg, 32
  br i1 %i.agh, label %bb.iu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread684

bb.iu:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %.not.i.i.i.i464 = icmp eq ptr %i.agc, %i.agd
  br i1 %.not.i.i.i.i464, label %.noexc470, label %44

44:                                               ; preds = %bb.iu
  %45 = icmp ugt i64 %i.agg, 9223372036854775776
  br i1 %45, label %.noexc.i.i468, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465, !prof !95

.noexc.i.i468:                                    ; preds = %44
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc469 unwind label %.loopexit.split-lp

.noexc469:                                        ; preds = %.noexc.i.i468
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465: ; preds = %44
  %i.agi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agg) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465..noexc470_crit_edge unwind label %.loopexit696

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465..noexc470_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465
  %.pre752 = load ptr, ptr %29, align 8, !tbaa !246
  %.pre753 = load ptr, ptr %i.xq, align 8, !tbaa !246
  br label %.noexc470

.noexc470:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465..noexc470_crit_edge, %bb.iu
  %46 = phi ptr [ %i.agc, %bb.iu ], [ %.pre753, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465..noexc470_crit_edge ]
  %47 = phi ptr [ %i.agd, %bb.iu ], [ %.pre752, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465..noexc470_crit_edge ]
  %48 = phi ptr [ null, %bb.iu ], [ %i.agi, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i465..noexc470_crit_edge ] ; 4 uses
  store ptr %48, ptr %36, align 8, !tbaa !261
  store ptr %48, ptr %i.xw, align 8, !tbaa !262
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 %i.agg
  store ptr %49, ptr %i.xx, align 8, !tbaa !263
  %i.agj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %47, ptr %46, ptr noundef %48)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit473 unwind label %bb.iv

bb.iv:                                            ; preds = %.noexc470
  %i.agk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agl = load ptr, ptr %36, align 8, !tbaa !261 ; 3 uses
  %.not.i.i.i466 = icmp eq ptr %i.agl, null
  br i1 %.not.i.i.i466, label %.body471, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.agm = load ptr, ptr %i.xx, align 8, !tbaa !263
  %i.agn = ptrtoint ptr %i.agm to i64
  %i.ago = ptrtoint ptr %i.agl to i64
  %i.agp = sub i64 %i.agn, %i.ago
  call void @_ZdlPvm(ptr noundef nonnull %i.agl, i64 noundef %i.agp) #32
  br label %.body471

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit473: ; preds = %.noexc470
  store ptr %i.agj, ptr %i.xw, align 8, !tbaa !262
  br label %bb.ix

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread684: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  br label %bb.ix

bb.ix:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit473, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread684
  %i.agq = load ptr, ptr %3, align 8, !tbaa !247, !nonnull !118, !align !197
  %i.agr = load ptr, ptr %i.xy, align 8, !tbaa !248, !nonnull !118, !align !197
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory35createFromCRSCodesWithIntermediatesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_bbbbRKSt6vectorISt4pairIS8_S8_ESaISD_EENS2_10ObjectTypeERKSB_IS8_SaIS8_EERKSt10shared_ptrINS0_8metadata6ExtentEESS_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %35, ptr noundef nonnull align 8 dereferenceable(8) %i.afc, ptr noundef nonnull align 8 dereferenceable(32) %i.yj, ptr noundef nonnull align 8 dereferenceable(32) %i.yk, ptr noundef nonnull align 8 dereferenceable(32) %i.yl, ptr noundef nonnull align 8 dereferenceable(32) %i.ym, i1 noundef zeroext %i.afi, i1 noundef zeroext %i.xv, i1 noundef zeroext %i.xu, i1 noundef zeroext %i.afl, ptr noundef nonnull align 8 dereferenceable(24) %i.afm, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(16) %i.agq, ptr noundef nonnull align 8 dereferenceable(16) %i.agr)
          to label %bb.iy unwind label %bb.jo

bb.iy:                                            ; preds = %bb.ix
  %i.ags = load ptr, ptr %32, align 16, !tbaa !157 ; 5 uses
  %i.agt = load ptr, ptr %i.xz, align 8, !tbaa !158 ; 2 uses
  %i.agu = load ptr, ptr %i.ya, align 16, !tbaa !159
  %i.agv = load <2 x ptr>, ptr %35, align 16, !tbaa !154
  store <2 x ptr> %i.agv, ptr %32, align 16, !tbaa !154
  %i.agw = load ptr, ptr %i.yc, align 16, !tbaa !159
  store ptr %i.agw, ptr %i.ya, align 16, !tbaa !159
  %.not4.i.i.i.i.i474 = icmp eq ptr %i.ags, %i.agt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i474, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i483, label %.lr.ph.i.i.i.i.i475

.lr.ph.i.i.i.i.i475:                              ; preds = %bb.iy, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i481
  %.05.i.i.i.i.i476 = phi ptr [ %i.aho, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i481 ], [ %i.ags, %bb.iy ] ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i476, i64 8
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i477 = icmp eq ptr %i.agy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i477, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i481, label %bb.iz

bb.iz:                                            ; preds = %.lr.ph.i.i.i.i.i475
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 8 ; 4 uses
  %i.aha = load atomic i64, ptr %i.agz acquire, align 8 ; 2 uses
  %i.ahb = icmp eq i64 %i.aha, 4294967297
  %i.ahc = trunc i64 %i.aha to i32                ; 2 uses
  br i1 %i.ahb, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  store i32 0, ptr %i.agz, align 8, !tbaa !93
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agy, i64 12
  store i32 0, ptr %i.ahd, align 4, !tbaa !94
  %i.ahe = load ptr, ptr %i.agy, align 8, !tbaa !80
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16
  %i.ahg = load ptr, ptr %i.ahf, align 8
  call void %i.ahg(ptr noundef nonnull align 8 dereferenceable(16) %i.agy) #31, !inline_history !30
  %i.ahh = load ptr, ptr %i.agy, align 8, !tbaa !80
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 24
  %i.ahj = load ptr, ptr %i.ahi, align 8
  call void %i.ahj(ptr noundef nonnull align 8 dereferenceable(16) %i.agy) #31, !inline_history !30
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i481

bb.jb:                                            ; preds = %bb.iz
  %i.ahk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i.i.i478 = icmp eq i8 %i.ahk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i478, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.ahl = add nsw i32 %i.ahc, -1
  store i32 %i.ahl, ptr %i.agz, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i479

bb.jd:                                            ; preds = %bb.jb
  %i.ahm = atomicrmw volatile add ptr %i.agz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i479

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i479: ; preds = %bb.jd, %bb.jc
  %.0.i.i.i.i.i.i.i.i.i.i.i480 = phi i32 [ %i.ahc, %bb.jc ], [ %i.ahm, %bb.jd ]
  %i.ahn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i480, 1
  br i1 %i.ahn, label %bb.je, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i481, !prof !95

bb.je:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i479
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agy) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i481

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i481: ; preds = %bb.je, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i479, %bb.ja, %.lr.ph.i.i.i.i.i475
  %i.aho = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i476, i64 16 ; 2 uses
  %.not.i.i.i.i.i482 = icmp eq ptr %i.aho, %i.agt
  br i1 %.not.i.i.i.i.i482, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i483, label %.lr.ph.i.i.i.i.i475, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i483: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i481, %bb.iy
  %.not.i.i1.i.i.i484 = icmp eq ptr %i.ags, null
  br i1 %.not.i.i1.i.i.i484, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit485, label %bb.jf

bb.jf:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i483
  %i.ahp = ptrtoint ptr %i.agu to i64
  %i.ahq = ptrtoint ptr %i.ags to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq
  call void @_ZdlPvm(ptr noundef nonnull %i.ags, i64 noundef %i.ahr) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit485

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit485: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i483, %bb.jf
  %i.ahs = load ptr, ptr %35, align 16, !tbaa !157 ; 3 uses
  %i.aht = load ptr, ptr %i.yb, align 8, !tbaa !158 ; 2 uses
  %.not4.i.i.i486 = icmp eq ptr %i.ahs, %i.aht
  br i1 %.not4.i.i.i486, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i497, label %.lr.ph.i.i.i487

.lr.ph.i.i.i487:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit485, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i493
  %.05.i.i.i488 = phi ptr [ %i.ail, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i493 ], [ %i.ahs, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit485 ] ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.05.i.i.i488, i64 8
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i489 = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i.i.i.i.i.i489, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i493, label %bb.jg

bb.jg:                                            ; preds = %.lr.ph.i.i.i487
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8 ; 4 uses
  %i.ahx = load atomic i64, ptr %i.ahw acquire, align 8 ; 2 uses
  %i.ahy = icmp eq i64 %i.ahx, 4294967297
  %i.ahz = trunc i64 %i.ahx to i32                ; 2 uses
  br i1 %i.ahy, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  store i32 0, ptr %i.ahw, align 8, !tbaa !93
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahv, i64 12
  store i32 0, ptr %i.aia, align 4, !tbaa !94
  %i.aib = load ptr, ptr %i.ahv, align 8, !tbaa !80
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %i.aid = load ptr, ptr %i.aic, align 8
  call void %i.aid(ptr noundef nonnull align 8 dereferenceable(16) %i.ahv) #31, !inline_history !4
  %i.aie = load ptr, ptr %i.ahv, align 8, !tbaa !80
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 24
  %i.aig = load ptr, ptr %i.aif, align 8
  call void %i.aig(ptr noundef nonnull align 8 dereferenceable(16) %i.ahv) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i493

bb.ji:                                            ; preds = %bb.jg
  %i.aih = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i490 = icmp eq i8 %i.aih, 0
  br i1 %.not.i.i.i.i.i.i.i.i490, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aii = add nsw i32 %i.ahz, -1
  store i32 %i.aii, ptr %i.ahw, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i491

bb.jk:                                            ; preds = %bb.ji
  %i.aij = atomicrmw volatile add ptr %i.ahw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i491

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i491: ; preds = %bb.jk, %bb.jj
  %.0.i.i.i.i.i.i.i.i.i492 = phi i32 [ %i.ahz, %bb.jj ], [ %i.aij, %bb.jk ]
  %i.aik = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i492, 1
  br i1 %i.aik, label %bb.jl, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i493, !prof !95

bb.jl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i491
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahv) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i493

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i493: ; preds = %bb.jl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i491, %bb.jh, %.lr.ph.i.i.i487
  %i.ail = getelementptr inbounds nuw i8, ptr %.05.i.i.i488, i64 16 ; 2 uses
  %.not.i.i.i494 = icmp eq ptr %i.ail, %i.aht
  br i1 %.not.i.i.i494, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i495, label %.lr.ph.i.i.i487, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i495: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i493
  %.pr.i496 = load ptr, ptr %35, align 16, !tbaa !157
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i497

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i497: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i495, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit485
  %i.aim = phi ptr [ %.pr.i496, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i495 ], [ %i.ahs, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit485 ] ; 3 uses
  %.not.i.i1.i498 = icmp eq ptr %i.aim, null
  br i1 %.not.i.i1.i498, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit500, label %bb.jm

bb.jm:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i497
  %i.ain = load ptr, ptr %i.yc, align 16, !tbaa !159
  %i.aio = ptrtoint ptr %i.ain to i64
  %i.aip = ptrtoint ptr %i.aim to i64
  %i.aiq = sub i64 %i.aio, %i.aip
  call void @_ZdlPvm(ptr noundef nonnull %i.aim, i64 noundef %i.aiq) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit500

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit500: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i497, %bb.jm
  %i.air = load ptr, ptr %36, align 8, !tbaa !261 ; 3 uses
  %i.ais = load ptr, ptr %i.xw, align 8, !tbaa !262 ; 2 uses
  %.not4.i.i.i501 = icmp eq ptr %i.air, %i.ais
  br i1 %.not4.i.i.i501, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i509, label %.lr.ph.i.i.i502

.lr.ph.i.i.i502:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit500, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i505
  %.05.i.i.i503 = phi ptr [ %i.aiy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i505 ], [ %i.air, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit500 ] ; 3 uses
  %i.ait = load ptr, ptr %.05.i.i.i503, align 8, !tbaa !132 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.05.i.i.i503, i64 16 ; 2 uses
  %i.aiv = icmp eq ptr %i.ait, %i.aiu
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj9operation13FilterResults22removeUninterestingOpsEv:bb.a
bb.cl:                                            ; preds = %bb.cj
  %i.ig = atomicrmw volatile add ptr %i.ic, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !89
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.cl, %bb.ck, %bb.ci
  %i.ih = phi ptr [ %i.ib, %bb.ci ], [ %i.ib, %bb.ck ], [ %.pr.pre.i.i.i, %bb.cl ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 4 uses
  %i.ij = load atomic i64, ptr %i.ii acquire, align 8 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 4294967297
  %i.il = trunc i64 %i.ij to i32                  ; 2 uses
  br i1 %i.ik, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %i.ii, align 8, !tbaa !93
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  store i32 0, ptr %i.im, align 4, !tbaa !94
  %i.in = load ptr, ptr %i.ih, align 8, !tbaa !80
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #31, !inline_history !51
  %i.iq = load ptr, ptr %i.ih, align 8, !tbaa !80
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #31, !inline_history !51
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.it = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i9.i.i.i = icmp eq i8 %i.it, 0
  br i1 %.not.i9.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.iu = add nsw i32 %i.il, -1
  store i32 %i.iu, ptr %i.ii, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i104

bb.cq:                                            ; preds = %bb.co
  %i.iv = atomicrmw volatile add ptr %i.ii, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i104

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i104: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i105 = phi i32 [ %i.il, %bb.cp ], [ %i.iv, %bb.cq ]
  %i.iw = icmp eq i32 %.0.i.i.i.i.i105, 1
  br i1 %i.iw, label %bb.cr, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !95

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i104
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i104, %bb.cn, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ia, ptr %i.m, align 8, !tbaa !89
  br label %_ZNSt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEaSERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEaSERKS4_.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ix = load <2 x ptr>, ptr %4, align 16, !tbaa !155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.iy = load ptr, ptr %i.h, align 8, !tbaa !89  ; 8 uses
  store <2 x ptr> %i.ix, ptr %2, align 16, !tbaa !155
  %.not.i.i.i.i106 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i106, label %.critedge70, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEaSERKS4_.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 4 uses
  %i.ja = load atomic i64, ptr %i.iz acquire, align 8 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 4294967297
  %i.jc = trunc i64 %i.ja to i32                  ; 2 uses
  br i1 %i.jb, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.iz, align 8, !tbaa !93
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 0, ptr %i.jd, align 4, !tbaa !94
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !80
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #31, !inline_history !65
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !80
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #31, !inline_history !65
  br label %.critedge70thread-pre-split

bb.cu:                                            ; preds = %bb.cs
  %i.jk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i107 = icmp eq i8 %i.jk, 0
  br i1 %.not.i.i.i.i.i107, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jl = add nsw i32 %i.jc, -1
  store i32 %i.jl, ptr %i.iz, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.jm = atomicrmw volatile add ptr %i.iz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i.i.i = phi i32 [ %i.jc, %bb.cv ], [ %i.jm, %bb.cw ]
  %i.jn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jn, label %bb.cx, label %.critedge70thread-pre-split, !prof !95

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #31
  br label %.critedge70thread-pre-split

.critedge70thread-pre-split:                      ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bx, %bb.bw, %bb.ct, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cx
  %.157.ph = phi double [ %i.cy, %bb.cx ], [ %i.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %i.cy, %bb.ct ], [ %.056129, %bb.bx ], [ %.056129, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.056129, %bb.bw ]
  %.155.ph = phi i64 [ %i.ds, %bb.cx ], [ %i.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %i.ds, %bb.ct ], [ %.054130, %bb.bx ], [ %.054130, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.054130, %bb.bw ]
  %.pr = load ptr, ptr %i.j, align 8, !tbaa !89
  br label %.critedge70

.critedge70:                                      ; preds = %.critedge70thread-pre-split, %_ZNSt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEaSERKS4_.exit
  %i.jo = phi ptr [ %.pr, %.critedge70thread-pre-split ], [ null, %_ZNSt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEaSERKS4_.exit ] ; 8 uses
  %.157 = phi double [ %.157.ph, %.critedge70thread-pre-split ], [ %i.cy, %_ZNSt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEaSERKS4_.exit ]
  %.155 = phi i64 [ %.155.ph, %.critedge70thread-pre-split ], [ %i.ds, %_ZNSt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEaSERKS4_.exit ]
  %.not.i.i108 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i108, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112, label %bb.cy

bb.cy:                                            ; preds = %.critedge70
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jq = load atomic i64, ptr %i.jp acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.jp, align 8, !tbaa !93
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 0, ptr %i.jt, align 4, !tbaa !94
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !80
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #31, !inline_history !12
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !80
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #31, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112

bb.da:                                            ; preds = %bb.cy
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i109 = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i109, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kb = add nsw i32 %i.js, -1
  store i32 %i.kb, ptr %i.jp, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

bb.dc:                                            ; preds = %bb.da
  %i.kc = atomicrmw volatile add ptr %i.jp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i111 = phi i32 [ %i.js, %bb.db ], [ %i.kc, %bb.dc ]
  %i.kd = icmp eq i32 %.0.i.i.i.i111, 1
  br i1 %i.kd, label %bb.dd, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112, !prof !95

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112

_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112: ; preds = %.critedge70, %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0113.0128, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ke, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %bb.ab

bb.de:                                            ; preds = %bb.ch, %bb.ca, %bb.ay, %bb.ap
  %.pn61 = phi { ptr, i32 } [ %i.ef, %bb.ap ], [ %i.ff, %bb.ay ], [ %i.hw, %bb.ch ], [ %.pn, %bb.ca ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.ao
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %bb.de ], [ %i.ee, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.an
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %bb.df ], [ %i.ed, %bb.an ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj9operation19CoordinateOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn61.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj9operation13FilterResults18removeDuplicateOpsEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::set", align 8          ; 11 uses
  %2 = alloca %"class.std::vector.35", align 16   ; 15 uses
  %3 = alloca %"class.dropbox::oxygen::nn.368", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.116", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.std::shared_ptr.2", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !157  ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 17
  br i1 %i.i, label %bb.by, label %11

11:                                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store i32 0, ptr %12, align 8, !tbaa !334
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %13, align 8, !tbaa !195
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %12, ptr %14, align 8, !tbaa !187
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %12, ptr %15, align 8, !tbaa !188
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %16, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not132138 = icmp eq ptr %i.e, %i.d
  br i1 %.not132138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %11
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !157
  %.pre144 = load ptr, ptr %i.c, align 8, !tbaa !158
  %17 = load <2 x ptr>, ptr %2, align 16, !tbaa !154
  %.pre148 = load ptr, ptr %i.u, align 16, !tbaa !159
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %11
  %18 = phi ptr [ %.pre148, %._crit_edge.loopexit ], [ null, %11 ]
  %19 = phi ptr [ %.pre144, %._crit_edge.loopexit ], [ %i.d, %11 ] ; 2 uses
  %20 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %11 ] ; 5 uses
  %21 = phi <2 x ptr> [ %17, %._crit_edge.loopexit ], [ splat (ptr null), %11 ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !159
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x ptr> %21, ptr %i.b, align 8, !tbaa !154
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %18, ptr %i.x, align 8, !tbaa !159
  %.not4.i.i.i.i.i = icmp eq ptr %20, %19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i ], [ %20, %._crit_edge ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.ab, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !94
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !30
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !30
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.e ], [ %i.ao, %bb.f ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.g, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, !prof !95

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %19
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, %._crit_edge
  %.not.i.i1.i.i.i = icmp eq ptr %20, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ar = ptrtoint ptr %i.y to i64
  %i.as = ptrtoint ptr %20 to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %20, i64 noundef %i.at) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, %bb.h
  %i.au = load ptr, ptr %2, align 16, !tbaa !157  ; 3 uses
  %i.av = load ptr, ptr %22, align 8, !tbaa !158  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i ], [ %i.au, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ay, align 8, !tbaa !93
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !94
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #31, !inline_history !4
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.bl, %bb.m ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.n, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i, !prof !95

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %i.av
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 16, !tbaa !157
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit
  %i.bo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.au, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.bp = load ptr, ptr %23, align 16, !tbaa !159
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.bt = load ptr, ptr %13, align 8, !tbaa !195
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bt)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #35
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.by

bb.q:                                             ; preds = %.lr.ph, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit
  %.sroa.0123.0139 = phi ptr [ %i.e, %.lr.ph ], [ %i.jr, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter6createENS2_10ConventionESt10shared_ptrINS1_15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.368") align 8 %3, i32 noundef 0, ptr noundef nonnull align 8 %4)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !89  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bx, align 8, !tbaa !93
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !94
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #31, !inline_history !15
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !80
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #31, !inline_history !15
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i49 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i49, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.ca, %bb.v ], [ %i.ck, %bb.w ]
  %i.cl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cl, label %bb.x, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.cm = load ptr, ptr %.sroa.0123.0139, align 8, !tbaa !191
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %3, align 8, !tbaa !327
  invoke void @_ZNK5osgeo4proj2io21IPROJStringExportable18exportToPROJStringB5cxx11EPNS1_19PROJStringFormatterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.co)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 0, ptr %i.a, align 1, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN5osgeo4proj9operation9getExtentERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEEbRb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0123.0139, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cp = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %.not133 = icmp eq ptr %i.cp, null
  br i1 %.not133, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj8metadata6Extent18geographicElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cp) #36 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1099
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !1100 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = icmp eq i64 %i.cw, 16
  br i1 %i.cx, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !384 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.thread, label %bb.af

bb.ac:                                            ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  br label %bb.bx

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ae:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.br

bb.af:                                            ; preds = %bb.ab
  %i.dd = call ptr @__dynamic_cast(ptr nonnull %i.cy, ptr nonnull @_ZTIN5osgeo4proj8metadata16GeographicExtentE, ptr nonnull @_ZTIN5osgeo4proj8metadata21GeographicBoundingBoxE, i64 0) #31 ; 5 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = call noundef double @_ZNK5osgeo4proj8metadata21GeographicBoundingBox18westBoundLongitudeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dd) #36
  %i.df = call noundef double @_ZNK5osgeo4proj8metadata21GeographicBoundingBox18southBoundLatitudeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dd) #36
  %i.dg = call noundef double @_ZNK5osgeo4proj8metadata21GeographicBoundingBox18eastBoundLongitudeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dd) #36
  %i.dh = call noundef double @_ZNK5osgeo4proj8metadata21GeographicBoundingBox18northBoundLatitudeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dd) #36
  %i.di = load i64, ptr %i.k, align 8, !tbaa !206
  %i.dj = icmp eq i64 %i.di, 4611686018427387903
  br i1 %i.dj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ag
  %i.dk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.82, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.ap ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, double noundef %i.de, i32 noundef 15)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.dl = load i64, ptr %i.l, align 8, !tbaa !206 ; 2 uses
  %i.dm = load i64, ptr %i.k, align 8, !tbaa !206
  %i.dn = sub i64 4611686018427387903, %i.dm
  %i.do = icmp ult i64 %i.dn, %i.dl
  br i1 %i.do, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #34
          to label %.noexc51 unwind label %bb.ar

.noexc51:                                         ; preds = %bb.ai
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ah
  %i.dp = load ptr, ptr %7, align 8, !tbaa !132
  %i.dq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.dp, i64 noundef %i.dl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.ar ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dr = load ptr, ptr %7, align 8, !tbaa !132   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.m
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.dt = load i64, ptr %i.m, align 8, !tbaa !90
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.dv = load i64, ptr %i.k, align 8, !tbaa !206
  %i.dw = icmp eq i64 %i.dv, 4611686018427387903
  br i1 %i.dw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.82, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56 unwind label %bb.ap ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, double noundef %i.df, i32 noundef 15)
          to label %bb.aj unwind label %bb.as

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56
  %i.dy = load i64, ptr %i.n, align 8, !tbaa !206 ; 2 uses
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !206
  %i.ea = sub i64 4611686018427387903, %i.dz
  %i.eb = icmp ult i64 %i.ea, %i.dy
  br i1 %i.eb, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i57

bb.ak:                                            ; preds = %bb.aj
end_hunk_1
begin_hunk_2_@_ZN5osgeo4proj9operation13FilterResults18removeDuplicateOpsEv:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67 unwind label %bb.ap ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, double noundef %i.dg, i32 noundef 15)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67
  %i.el = load i64, ptr %i.p, align 8, !tbaa !206 ; 2 uses
  %i.em = load i64, ptr %i.k, align 8, !tbaa !206
  %i.en = sub i64 4611686018427387903, %i.em
  %i.eo = icmp ult i64 %i.en, %i.el
  br i1 %i.eo, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i68

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #34
          to label %.noexc69 unwind label %bb.av

.noexc69:                                         ; preds = %bb.am
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i68: ; preds = %bb.al
  %i.ep = load ptr, ptr %9, align 8, !tbaa !132
  %i.eq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ep, i64 noundef %i.el)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71 unwind label %bb.av ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i68
  %i.er = load ptr, ptr %9, align 8, !tbaa !132   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.q
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71
  %i.et = load i64, ptr %i.q, align 8, !tbaa !90
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.ev = load i64, ptr %i.k, align 8, !tbaa !206
  %i.ew = icmp eq i64 %i.ev, 4611686018427387903
  br i1 %i.ew, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #34
          to label %.cont unwind label %bb.ap

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.82, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit78 unwind label %bb.ap ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, double noundef %i.dh, i32 noundef 15)
          to label %bb.an unwind label %bb.aw

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit78
  %i.ey = load i64, ptr %i.r, align 8, !tbaa !206 ; 2 uses
  %i.ez = load i64, ptr %i.k, align 8, !tbaa !206
  %i.fa = sub i64 4611686018427387903, %i.ez
  %i.fb = icmp ult i64 %i.fa, %i.ey
  br i1 %i.fb, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i79

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #34
          to label %.noexc80 unwind label %bb.ax

.noexc80:                                         ; preds = %bb.ao
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i79: ; preds = %bb.an
  %i.fc = load ptr, ptr %10, align 8, !tbaa !132
  %i.fd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.fc, i64 noundef %i.ey)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit82 unwind label %bb.ax ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i79
  %i.fe = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.s
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit82
  %i.fg = load i64, ptr %i.s, align 8, !tbaa !90
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.thread

bb.ap:                                            ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ai
  %i.fk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.fl = load ptr, ptr %7, align 8, !tbaa !132   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.m
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ar
  %i.fn = load i64, ptr %i.m, align 8, !tbaa !90
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.fk, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.bq

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56
  %i.fp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i57, %bb.ak
  %i.fq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.fr = load ptr, ptr %8, align 8, !tbaa !132   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.o
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.at
  %i.ft = load i64, ptr %i.o, align 8, !tbaa !90
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.as
  %.pn35 = phi { ptr, i32 } [ %i.fp, %bb.as ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.fq, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.bq

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67
  %i.fv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i68, %bb.am
  %i.fw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.fx = load ptr, ptr %9, align 8, !tbaa !132   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.q
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.av
  %i.fz = load i64, ptr %i.q, align 8, !tbaa !90
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.au
  %.pn37 = phi { ptr, i32 } [ %i.fv, %bb.au ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.fw, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.bq

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit78
  %i.gb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i79, %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.gd = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.s
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ax
  %i.gf = load i64, ptr %i.s, align 8, !tbaa !90
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.aw
  %.pn39 = phi { ptr, i32 } [ %i.gb, %bb.aw ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.gc, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.bq

.thread:                                          ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.af, %bb.z
  %i.gh = load ptr, ptr %13, align 8, !tbaa !195  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %.thread
  %i.gi = load i64, ptr %i.k, align 8, !tbaa !206 ; 4 uses
  %i.gj = load ptr, ptr %5, align 8               ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i98
  %.012.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i98 ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %12, %.lr.ph.i.i.i98 ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !206 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gl) ; 2 uses
  %i.gm = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.gm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ay
  %i.gn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !132
  %i.gp = call i32 @memcmp(ptr noundef %i.go, ptr noundef %i.gj, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ay
  %i.gq = sub i64 %i.gl, %i.gi
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.gp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.gr = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.gr, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.gr, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i99, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.ay, !llvm.loop !47

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.gs = icmp eq ptr %.19.i.i.i, %12
  br i1 %i.gs, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.az

bb.az:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gr, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.gt = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !206 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gt, i64 %i.gi) ; 2 uses
  %i.gu = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.gu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.az
  %.19.i.i.i.sroa.sel128.v.sroa.sel.v.sroa.sel.v = select i1 %i.gr, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel128.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel128.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.gv = load ptr, ptr %.19.i.i.i.sroa.sel128.v.sroa.sel.v.sroa.sel, align 8, !tbaa !132
  %i.gw = call i32 @memcmp(ptr noundef %i.gj, ptr noundef %i.gv, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i100 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i.i.i100, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.az
  %i.gx = sub i64 %i.gi, %i.gt
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gx, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.gw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.gy = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.gy, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %.thread, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.gz = load ptr, ptr %i.t, align 8, !tbaa !158 ; 5 uses
  %i.ha = load ptr, ptr %i.u, align 16, !tbaa !159
  %.not.i = icmp eq ptr %i.gz, %i.ha
  br i1 %.not.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0123.0139, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !89 ; 2 uses
  %i.hd = load <2 x ptr>, ptr %.sroa.0123.0139, align 8, !tbaa !155
  store <2 x ptr> %i.hd, ptr %i.gz, align 8, !tbaa !155
  %.not.i.i.i.i.i101 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i101, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 3 uses
  %i.hf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i102 = icmp eq i8 %i.hf, 0
  br i1 %.not.i.i.i.i.i.i102, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !91
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i

bb.bd:                                            ; preds = %bb.bb
  %i.hi = atomicrmw volatile add ptr %i.he, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !158
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i: ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.hj = phi ptr [ %i.gz, %bb.ba ], [ %i.gz, %bb.bc ], [ %.pre.i, %bb.bd ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr %i.hk, ptr %i.t, align 8, !tbaa !158
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

bb.be:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  invoke void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0123.0139)
          to label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit unwind label %bb.bj

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit: ; preds = %bb.be, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i
  %i.hl = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc105 unwind label %bb.bj ; 2 uses

.noexc105:                                        ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %i.hm = extractvalue { ptr, ptr } %i.hl, 1      ; 5 uses
  %.not.i.i104 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i104, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit, label %bb.bf

bb.bf:                                            ; preds = %.noexc105
  %i.hn = extractvalue { ptr, ptr } %i.hl, 0
  %.not.i118 = icmp ne ptr %i.hn, null
  %i.ho = icmp eq ptr %i.hm, %12
  %or.cond.i = or i1 %.not.i118, %i.ho
  br i1 %or.cond.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hp = load i64, ptr %i.k, align 8, !tbaa !206 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !206 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hr, i64 %i.hp) ; 2 uses
  %i.hs = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.hs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.bg
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !132
  %i.hv = load ptr, ptr %5, align 8, !tbaa !132
  %i.hw = call i32 @memcmp(ptr noundef %i.hv, ptr noundef %i.hu, i64 noundef %.sroa.speculated.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.bg
  %i.hx = sub i64 %i.hp, %i.hr
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hx, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i119 = phi i32 [ %i.hw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.hy = icmp slt i32 %.0.i.i.i.i119, 0
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.bf
  %i.hz = phi i1 [ %i.hy, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.bf ]
  %i.ia = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33
          to label %.noexc120 unwind label %bb.bj ; 4 uses

.noexc120:                                        ; preds = %bb.bh
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 48 ; 3 uses
  store ptr %i.ic, ptr %i.ib, align 8, !tbaa !229
  %i.id = load ptr, ptr %5, align 8, !tbaa !132   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.v
  br i1 %i.ie, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.bi:                                            ; preds = %.noexc120
  %i.if = load i64, ptr %i.k, align 8, !tbaa !206 ; 3 uses
  %i.ig = icmp ult i64 %i.if, 16
  call void @llvm.assume(i1 %i.ig)
  %i.ih = add nuw nsw i64 %i.if, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ic, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.ih, i1 false)
  br label %.noexc106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc120
  store ptr %i.id, ptr %i.ib, align 8, !tbaa !132
  %i.ii = load i64, ptr %i.v, align 8, !tbaa !90
  store i64 %i.ii, ptr %i.ic, align 8, !tbaa !90
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !206
  br label %.noexc106

.noexc106:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bi
  %i.ij = phi i64 [ %i.if, %bb.bi ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !206
  store ptr %i.v, ptr %5, align 8, !tbaa !132
  store i64 0, ptr %i.k, align 8, !tbaa !206
  store i8 0, ptr %i.v, align 8, !tbaa !90
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hz, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %12) #31
  %i.il = load i64, ptr %16, align 8, !tbaa !335
  %i.im = add i64 %i.il, 1
  store i64 %i.im, ptr %16, align 8, !tbaa !335
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit

bb.bj:                                            ; preds = %bb.bh, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit, %bb.be
  %i.in = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bq

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit: ; preds = %.noexc106, %.noexc105, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.io = load ptr, ptr %i.w, align 8, !tbaa !89  ; 8 uses
  %.not.i.i107 = icmp eq ptr %i.io, null
  br i1 %.not.i.i107, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.ip, align 8, !tbaa !93
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !94
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !80
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #31, !inline_history !12
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !80
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #31, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bm:                                            ; preds = %bb.bk
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i108 = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i108, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109

bb.bo:                                            ; preds = %bb.bm
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i110 = phi i32 [ %i.is, %bb.bn ], [ %i.jc, %bb.bo ]
  %i.jd = icmp eq i32 %.0.i.i.i.i110, 1
  br i1 %i.jd, label %bb.bp, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.je = load ptr, ptr %5, align 8, !tbaa !132   ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.v
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jg = load i64, ptr %i.v, align 8, !tbaa !90
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bu

bb.bq:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.bj
  %.pn42 = phi { ptr, i32 } [ %i.in, %bb.bj ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.fi, %bb.ap ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.ae
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.bq ], [ %i.dc, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ji = load ptr, ptr %5, align 8, !tbaa !132   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.v
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.br
  %i.jk = load i64, ptr %i.v, align 8, !tbaa !90
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.ad
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %.pn42.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.pn42.pn, %bb.br ] ; 3 uses
  %.7 = extractvalue { ptr, i32 } %.pn42.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.jm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.jn = icmp eq i32 %.7, %i.jm
  br i1 %i.jn, label %bb.bs, label %.loopexit

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %.728 = extractvalue { ptr, i32 } %.pn42.pn.pn, 0
  %i.jo = call ptr @__cxa_begin_catch(ptr %.728) #31 ; 0 uses
  %i.jp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0123.0139)
          to label %bb.bt unwind label %bb.bv     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  invoke void @__cxa_end_catch()
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.jq = load ptr, ptr %3, align 8, !tbaa !327   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i117, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i: ; preds = %bb.bu
  call void @_ZN5osgeo4proj2io19PROJStringFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jq) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef 8) #32
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit: ; preds = %bb.bu, %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0123.0139, i64 16 ; 2 uses
  %.not132 = icmp eq ptr %i.jr, %i.d
  br i1 %.not132, label %._crit_edge.loopexit, label %bb.q

bb.bv:                                            ; preds = %bb.bs
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bt
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.bw, %bb.bv
  %.merged48 = phi { ptr, i32 } [ %i.js, %bb.bv ], [ %i.jt, %bb.bw ], [ %.pn42.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  call void @_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #31
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit, %bb.ac
  %.merged = phi { ptr, i32 } [ %.merged48, %.loopexit ], [ %i.da, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.merged

bb.by:                                            ; preds = %bb.a, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  ret void

bb.bz:                                            ; preds = %bb.bv
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #35
  unreachable
}

declare hidden noundef i64 @_ZNK5osgeo4proj2io19PROJStringFormatter12getStepCountEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj9operation28PrecomputedOpCharacteristicsC2ERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEEdbbbbmm(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i64 noundef %7, i64 noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %i.c = zext i1 %3 to i8
  %i.d = zext i1 %4 to i8
  %i.e = zext i1 %5 to i8
  %i.f = zext i1 %6 to i8
  store double %2, ptr %0, align 8, !tbaa !1101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call noundef double @_ZN5osgeo4proj9operation11getAccuracyERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE(ptr noundef nonnull align 8 dereferenceable(16) %1)
  store double %i.h, ptr %i.g, align 8, !tbaa !1102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.c, ptr %i.i, align 8, !tbaa !1103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.d, ptr %i.j, align 1, !tbaa !1104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.e, ptr %i.k, align 2, !tbaa !1105
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.f, ptr %i.l, align 1, !tbaa !1106
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %7, ptr %i.m, align 8, !tbaa !1107
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %8, ptr %i.n, align 8, !tbaa !1108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %1, align 8, !tbaa !191
  %i.q = tail call noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p)
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %i.o, align 8, !tbaa !1109
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.t = load ptr, ptr %1, align 8, !tbaa !191
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #36
  %i.v = load ptr, ptr @_ZN5osgeo4proj9operation32BALLPARK_VERTICAL_TRANSFORMATIONE, align 8, !tbaa !316 ; 2 uses
  %i.w = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #31
  %i.x = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef %i.w) #31
  %i.y = icmp ne i64 %i.x, -1
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %i.s, align 1, !tbaa !1110
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ab = load ptr, ptr %1, align 8, !tbaa !191
  %i.ac = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #36
  %i.ad = tail call fastcc noundef zeroext i1 @_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.aa, align 2, !tbaa !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.af = load ptr, ptr %1, align 8, !tbaa !191
  call void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.af)
  %i.ag = load ptr, ptr %10, align 8, !tbaa !162
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #36
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !132 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !229
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.87) #34
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.al, ptr %i.b, align 8, !tbaa !230
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc42 unwind label %bb.aa  ; 2 uses

.noexc42:                                         ; preds = %.noexc.i
  store ptr %i.an, ptr %9, align 8, !tbaa !132
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !230
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !90
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc42, %bb.c
  %i.ap = phi ptr [ %i.an, %.noexc42 ], [ %i.aj, %bb.c ] ; 2 uses
  switch i64 %i.al, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !90
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !90
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ai, i64 %i.al, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !230 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !206
  %i.at = load ptr, ptr %9, align 8, !tbaa !132
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.av = load i64, ptr %i.as, align 8, !tbaa !206
  %i.aw = icmp ult i64 %i.av, 7
  %.pre67 = load ptr, ptr %9, align 8, !tbaa !132 ; 4 uses
  br i1 %i.aw, label %.critedge41, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.f
  %i.ax = load i32, ptr %.pre67, align 1
  %i.ay = xor i32 %i.ax, 1397904453
  %i.az = getelementptr i8, ptr %.pre67, i64 3
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = xor i32 %i.ba, 758724691
  %i.bc = or i32 %i.ay, %i.bb
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %.critedge41

bb.g:                                             ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.bg = load ptr, ptr %1, align 8, !tbaa !191
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.bg)
          to label %bb.h unwind label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %12, align 8, !tbaa !162
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !132 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bk, ptr %11, align 8, !tbaa !229
  %i.bl = icmp eq ptr %i.bj, null
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.87) #34
          to label %.noexc45 unwind label %bb.ac

.noexc45:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !230
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %.noexc.i44, label %._crit_edge.i.i43

.noexc.i44:                                       ; preds = %bb.j
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc46 unwind label %bb.ac  ; 2 uses

.noexc46:                                         ; preds = %.noexc.i44
end_hunk_2
