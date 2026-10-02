Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/explicit_seed_seq_test?download=true
inline.NumInlined: 2080
inline.NumDeleted: 878
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN44ExplicitSeedSeq_CopyAndMoveConstructors_Test8TestBodyEv:._crit_edge.i.i
  br label %_ZN7testing7MessageD2Ev.exit429

_ZN7testing7MessageD2Ev.exit429:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i428, %bb.fa, %bb.ex
  %.pn130.pn = phi { ptr, i32 } [ %i.ur, %bb.ex ], [ %.pn130, %bb.fa ], [ %.pn130, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i428 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #21
  br label %bb.fh

bb.fb:                                            ; preds = %bb.ep, %_ZN7testing7MessageD2Ev.exit426
  %i.uy = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !56 ; 4 uses
  %.not.i.i430 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i430, label %_ZNSt6vectorIjSaIjEED2Ev.exit436, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !60 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 2 uses
  %i.vc = icmp eq ptr %i.va, %i.vb
  br i1 %i.vc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i431: ; preds = %bb.fc
  %i.vd = load i64, ptr %i.vb, align 8, !tbaa !41
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.ve) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i431
  call void @_ZdlPvm(ptr noundef nonnull %i.uz, i64 noundef 32) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit436

_ZNSt6vectorIjSaIjEED2Ev.exit436:                 ; preds = %bb.fb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef 4000) #22
  %.not.i.i.i.i437 = icmp eq ptr %i.of, null
  br i1 %.not.i.i.i.i437, label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit438, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit436
  %i.vf = ptrtoint ptr %i.ou to i64
  %i.vg = sub i64 %i.vf, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.vg) #22
  br label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit438

_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit438: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit436, %bb.fd
  %i.vh = load ptr, ptr %26, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i439 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i.i439, label %_ZNSt6vectorIjSaIjEED2Ev.exit440, label %bb.fe

bb.fe:                                            ; preds = %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit438
  %i.vi = load ptr, ptr %i.od, align 8, !tbaa !40
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = ptrtoint ptr %i.vh to i64
  %i.vl = sub i64 %i.vj, %i.vk
  call void @_ZdlPvm(ptr noundef nonnull %i.vh, i64 noundef %i.vl) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit440

_ZNSt6vectorIjSaIjEED2Ev.exit440:                 ; preds = %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit438, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  %i.vm = load ptr, ptr %3, align 8, !tbaa !39    ; 3 uses
  %.not.i.i.i.i441 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i.i.i441, label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit442, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit440
  %i.vn = load ptr, ptr %i.ot, align 8, !tbaa !40
  %i.vo = ptrtoint ptr %i.vn to i64
  %i.vp = ptrtoint ptr %i.vm to i64
  %i.vq = sub i64 %i.vo, %i.vp
  call void @_ZdlPvm(ptr noundef nonnull %i.vm, i64 noundef %i.vq) #22
  br label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit442

_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit442: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit440, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.fg

bb.fg:                                            ; preds = %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit442
  %i.vr = landingpad { ptr, i32 }
          catch ptr null
  %i.vs = extractvalue { ptr, i32 } %i.vr, 0
  call void @__clang_call_terminate(ptr %i.vs) #23
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit442
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.fh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit429, %bb.er
  %.pn130.pn.pn = phi { ptr, i32 } [ %.pn130.pn, %_ZN7testing7MessageD2Ev.exit429 ], [ %i.ui, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit444

_ZNSt6vectorIjSaIjEED2Ev.exit444:                 ; preds = %bb.fh, %bb.eq, %bb.ec
  %.pn130.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn, %bb.fh ], [ %.pn126.pn.pn, %bb.eq ], [ %.pn122.pn.pn, %bb.ec ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef 4000) #22
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit444, %bb.dj
  %.pn130.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit444 ], [ %i.qy, %bb.dj ] ; 2 uses
  %.not.i.i.i.i445 = icmp eq ptr %i.of, null
  br i1 %.not.i.i.i.i445, label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit446, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.vt = ptrtoint ptr %i.ou to i64
  %i.vu = sub i64 %i.vt, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.vu) #22
  br label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit446

_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit446: ; preds = %bb.fi, %bb.fj
  %i.vv = load ptr, ptr %26, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i447 = icmp eq ptr %i.vv, null
  br i1 %.not.i.i.i447, label %_ZNSt6vectorIjSaIjEED2Ev.exit448, label %bb.fk

bb.fk:                                            ; preds = %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit446
  %i.vw = load ptr, ptr %i.od, align 8, !tbaa !40
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = ptrtoint ptr %i.vv to i64
  %i.vz = sub i64 %i.vx, %i.vy
  call void @_ZdlPvm(ptr noundef nonnull %i.vv, i64 noundef %i.vz) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit448

_ZNSt6vectorIjSaIjEED2Ev.exit448:                 ; preds = %bb.fk, %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit446, %bb.di
  %.pn130.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qx, %bb.di ], [ %.pn130.pn.pn.pn.pn, %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit446 ], [ %.pn130.pn.pn.pn.pn, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit201

_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit201: ; preds = %bb.j, %bb.ax, %bb.ay, %_ZNSt6vectorIjSaIjEED2Ev.exit448, %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit379, %bb.az
  %.pn137 = phi { ptr, i32 } [ %i.fz, %bb.az ], [ %.pn130.pn.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit448 ], [ %.pn111.pn.pn.pn.pn.pn.pn, %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit379 ], [ %i.ap, %bb.j ], [ %.pn91.pn.pn.pn.pn.pn, %bb.ax ], [ %.pn91.pn.pn.pn.pn.pn, %bb.ay ] ; 2 uses
  %i.wa = load ptr, ptr %3, align 8, !tbaa !39    ; 3 uses
  %.not.i.i.i.i449 = icmp eq ptr %i.wa, null
  br i1 %.not.i.i.i.i449, label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit450, label %bb.fl

bb.fl:                                            ; preds = %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit201
  %i.wb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !40
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = ptrtoint ptr %i.wa to i64
  %i.wf = sub i64 %i.wd, %i.we
  call void @_ZdlPvm(ptr noundef nonnull %i.wa, i64 noundef %i.wf) #22
  br label %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit450

_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit450: ; preds = %bb.fl, %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit201, %bb.i
  %.pn137.pn = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %.pn137, %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit201 ], [ %.pn137, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.fm

bb.fm:                                            ; preds = %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit450, %bb.b
  %.pn140 = phi { ptr, i32 } [ %i.u, %bb.b ], [ %.pn137.pn, %_ZN4absl12lts_2026052615random_internal15ExplicitSeedSeqD2Ev.exit450 ]
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceD2Ev.exit451 unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.wg = landingpad { ptr, i32 }
          catch ptr null
  %i.wh = extractvalue { ptr, i32 } %i.wg, 0
  call void @__clang_call_terminate(ptr %i.wh) #23
  unreachable

_ZNSt13random_deviceD2Ev.exit451:                 ; preds = %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn140.pn = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn140, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn140.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEENS0_29PredicateFormatterFromMatcherIT_EES9_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::PredicateFormatterFromMatcher") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !69

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !63  ; 3 uses
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.j = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ]
  %.not.i.i.i.i.i.i = phi i1 [ %i.j, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.m = sub i64 %.pre-phi, %.pre-phi14           ; 9 uses
  %i.n = icmp sgt i64 %i.m, 4                     ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.m, i1 false)
  br label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.m, 4
  br i1 %i.o, label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit.thread, label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit

_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit: ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %bb.f

_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit.thread: ; preds = %bb.e
  %i.q = load i32, ptr %i.k, align 4, !tbaa !65
  store i32 %i.q, ptr %i.l, align 4, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i

.thread:                                          ; preds = %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit.thread, %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit
  %i.s = phi ptr [ %i.r, %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit.thread ], [ %i.p, %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit ]
  store ptr null, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr inbounds i8, ptr null, i64 %i.m ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !40
  br label %bb.i

bb.f:                                             ; preds = %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit
  %i.w = icmp ugt i64 %i.m, 9223372036854775804
  br i1 %i.w, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !72

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit.thread, %bb.f
  %i.x = phi ptr [ %i.p, %bb.f ], [ %i.r, %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2EOS6_.exit.thread ]
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
          to label %.noexc1 unwind label %bb.k    ; 4 uses

.noexc1:                                          ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.y, ptr %i.x, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.m ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !40
  br i1 %i.n, label %bb.g, label %bb.h, !prof !73

bb.g:                                             ; preds = %.noexc1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.l, i64 %i.m, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc1
  %i.ac = icmp eq i64 %i.m, 4
  br i1 %i.ac, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !65
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !42
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ae = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.u, %.thread ]
  %i.af = phi ptr [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %i.t, %.thread ]
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !42
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #22
  br label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit

_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i2, label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #22
  br label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit3

_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit3: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEclIS6_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::Matcher", align 8  ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25, !noalias !239 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEE4ImplIRKS5_EC2ERKS2_S9_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN7testing15SafeMatcherCastIRKSt6vectorIjSaIjEENS_8internal16PointwiseMatcherINS6_10Eq2MatcherES3_EEEENS_7MatcherIT_EERKT0_.exit unwind label %bb.b, !noalias !239

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn21, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #22, !noalias !239
  br label %common.resume

_ZN7testing15SafeMatcherCastIRKSt6vectorIjSaIjEENS_8internal16PointwiseMatcherINS6_10Eq2MatcherES3_EEEENS_7MatcherIT_EERKT0_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE9GetVTableINS7_11ValuePolicyIPKNS_16MatcherInterfaceIS6_EELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.d, align 8, !tbaa !77, !alias.scope !239
  %i.f = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !239 ; 3 uses
  store i32 1, ptr %i.f, align 4, !tbaa !79, !noalias !239
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = ptrtoint ptr %i.a to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !81, !noalias !239
  store ptr %i.f, ptr %i.e, align 8, !tbaa !41, !alias.scope !239
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt6vectorIjSaIjEEEE, i64 16), ptr %8, align 8, !tbaa !25, !alias.scope !239
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !84
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !25
  %i.j = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN7testing15SafeMatcherCastIRKSt6vectorIjSaIjEENS_8internal16PointwiseMatcherINS6_10Eq2MatcherES3_EEEENS_7MatcherIT_EERKT0_.exit
  br i1 %i.j, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef 234)
          to label %.noexc23 unwind label %bb.e

.noexc23:                                         ; preds = %.noexc3.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc23
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %7)
          to label %bb.c unwind label %bb.e, !inline_history !2

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.al unwind label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %_ZN7testing15SafeMatcherCastIRKSt6vectorIjSaIjEENS_8internal16PointwiseMatcherINS6_10Eq2MatcherES3_EEEENS_7MatcherIT_EERKT0_.exit, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.46, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36
  %i.y = or i32 %i.x, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.y)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %2, i64 noundef %i.z)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.h, %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.47, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.48, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.ae = icmp ne ptr %i.ad, null
  %i.af = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ae)
          to label %.noexc33 unwind label %bb.p

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.af, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef 246)
          to label %.noexc34 unwind label %bb.p

.noexc34:                                         ; preds = %bb.j
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc34
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.l

end_hunk_0
begin_hunk_1_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEclIS6_EENS_15AssertionResultEPKcRKT_:bb.a
  store ptr %i.dx, ptr %i.al, align 8, !tbaa !25
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dx, i64 -24    ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds i8, ptr %i.al, i64 %i.ea
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.ec, align 8, !tbaa !94
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ed) #21, !inline_history !92
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  store ptr %i.dj, ptr %9, align 8, !tbaa !25
  %i.ee = load i64, ptr %i.dl, align 8
  %i.ef = getelementptr inbounds i8, ptr %9, i64 %i.ee
  store ptr %i.dk, ptr %i.ef, align 8, !tbaa !25
  store ptr %i.do, ptr %i.q, align 8, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.eg, align 8, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !60 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !41
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.eg, align 8, !tbaa !25
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.en) #21
  store ptr %i.dx, ptr %9, align 8, !tbaa !25
  %i.eo = load i64, ptr %i.dz, align 8
  %i.ep = getelementptr inbounds i8, ptr %9, i64 %i.eo
  store ptr %i.dy, ptr %i.ep, align 8, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.eq, align 8, !tbaa !94
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.er) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.al

bb.ae:                                            ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %11, align 8, !tbaa !60   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.av
  br i1 %i.eu, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.ae, %bb.t
  %.sink = phi ptr [ %i.bj, %bb.t ], [ %i.et, %bb.ae ]
  %.pn.ph = phi { ptr, i32 } [ %i.bi, %bb.t ], [ %i.es, %bb.ae ]
  %i.ev = load i64, ptr %i.av, align 8, !tbaa !41
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ew) #22
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.ae, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.t ], [ %i.es, %bb.ae ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ai

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.ab
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.ag
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.ey, %bb.ag ], [ %i.ct, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.ez = load ptr, ptr %13, align 8, !tbaa !60   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.bt
  br i1 %i.fa, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.x
  %.sink90 = phi ptr [ %i.ch, %bb.x ], [ %i.ez, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.cg, %bb.x ], [ %eh.lpad-body51, %.body50 ]
  %i.fb = load i64, ptr %i.bt, align 8, !tbaa !41
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %.sink90, i64 noundef %i.fc) #22
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.x
  %.pn14 = phi { ptr, i32 } [ %i.cg, %bb.x ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #21
  br label %bb.ah

bb.ah:                                            ; preds = %.body46, %bb.af
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.ex, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body43, %bb.r
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ah ], [ %.pn, %.body43 ], [ %i.at, %bb.r ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.q
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ai ], [ %i.as, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body35

.body35:                                          ; preds = %bb.p, %bb.k, %bb.aj
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.aj ], [ %i.ar, %bb.p ], [ %i.ah, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #21
  br label %bb.ak

bb.ak:                                            ; preds = %.body35, %bb.o
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.aq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.body

bb.al:                                            ; preds = %bb.d, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEEE, i64 16), ptr %8, align 8, !tbaa !25
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !77  ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE8IsSharedEv.exit.i.i: ; preds = %bb.al
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !95
  %.not.i.i67 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE8IsSharedEv.exit.i.i
  %i.fg = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.fh = atomicrmw sub ptr %i.fg, i32 1 acq_rel, align 4
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.an, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEED2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.fj = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !95
  %i.fm = load ptr, ptr %i.e, align 8, !tbaa !41
  invoke void %i.fl(ptr noundef %i.fm)
          to label %_ZN7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEED2Ev.exit unwind label %bb.ao, !inline_history !4

bb.ao:                                            ; preds = %bb.an
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #23, !inline_history !96
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEED2Ev.exit: ; preds = %bb.al, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE8IsSharedEv.exit.i.i, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

.body:                                            ; preds = %bb.e, %.body.i, %bb.ak
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.ak ], [ %i.p, %bb.e ], [ %i.l, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEEEENS0_29PredicateFormatterFromMatcherIT_EESB_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::PredicateFormatterFromMatcher.17") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !69

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !63  ; 3 uses
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.j = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.e, %bb.a ]
  %.not.i.i.i.i.i.i.i = phi i1 [ %i.j, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.m = sub i64 %.pre-phi, %.pre-phi14           ; 9 uses
  %i.n = icmp sgt i64 %i.m, 4                     ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.m, i1 false)
  br label %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.m, 4
  br i1 %i.o, label %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit.thread, label %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit

_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit: ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.f

_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit.thread: ; preds = %bb.e
  %i.q = load i32, ptr %i.k, align 4, !tbaa !65
  store i32 %i.q, ptr %i.l, align 4, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i

.thread:                                          ; preds = %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit.thread, %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit
  %i.s = phi ptr [ %i.r, %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit.thread ], [ %i.p, %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit ]
  store ptr null, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr inbounds i8, ptr null, i64 %i.m ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !40
  br label %bb.i

bb.f:                                             ; preds = %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit
  %i.w = icmp ugt i64 %i.m, 9223372036854775804
  br i1 %i.w, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !72

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit.thread, %bb.f
  %i.x = phi ptr [ %i.p, %bb.f ], [ %i.r, %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEC2EOS8_.exit.thread ]
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
          to label %.noexc1 unwind label %bb.k    ; 4 uses

.noexc1:                                          ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.y, ptr %i.x, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.m ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !40
  br i1 %i.n, label %bb.g, label %bb.h, !prof !73

bb.g:                                             ; preds = %.noexc1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.l, i64 %i.m, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc1
  %i.ac = icmp eq i64 %i.m, 4
  br i1 %i.ac, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !65
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !42
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ae = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.u, %.thread ]
  %i.af = phi ptr [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %i.t, %.thread ]
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !42
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #22
  br label %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEED2Ev.exit

_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEED2Ev.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i2, label %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEED2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #22
  br label %_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEED2Ev.exit3

_ZN7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEED2Ev.exit3: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ag
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing3NotINS_8internal16PointwiseMatcherINS1_10Eq2MatcherESt6vectorIjSaIjEEEEEENS1_10NotMatcherIT_EES9_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::NotMatcher") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !69

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !63  ; 3 uses
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.j = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ]
  %.not.i.i.i.i.i.i = phi i1 [ %i.j, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.m = sub i64 %.pre-phi, %.pre-phi14           ; 9 uses
  %i.n = icmp sgt i64 %i.m, 4                     ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.m, i1 false)
  br label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.m, 4
  br i1 %i.o, label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit.thread, label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit

_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit: ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %bb.f

_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit.thread: ; preds = %bb.e
  %i.q = load i32, ptr %i.k, align 4, !tbaa !65
  store i32 %i.q, ptr %i.l, align 4, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i

.thread:                                          ; preds = %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit.thread, %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit
  %i.s = phi ptr [ %i.r, %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit.thread ], [ %i.p, %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit ]
  store ptr null, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr inbounds i8, ptr null, i64 %i.m ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !40
  br label %bb.i

bb.f:                                             ; preds = %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit
  %i.w = icmp ugt i64 %i.m, 9223372036854775804
  br i1 %i.w, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !72

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit.thread, %bb.f
  %i.x = phi ptr [ %i.p, %bb.f ], [ %i.r, %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEC2ERKS6_.exit.thread ]
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
          to label %.noexc1 unwind label %bb.k    ; 4 uses

.noexc1:                                          ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.y, ptr %i.x, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.m ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !40
  br i1 %i.n, label %bb.g, label %bb.h, !prof !73

bb.g:                                             ; preds = %.noexc1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.l, i64 %i.m, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc1
  %i.ac = icmp eq i64 %i.m, 4
  br i1 %i.ac, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !65
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !42
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ae = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.u, %.thread ]
  %i.af = phi ptr [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %i.t, %.thread ]
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !42
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #22
  br label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit

_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i2, label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #22
  br label %_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit3

_ZN7testing8internal16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEED2Ev.exit3: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::Matcher", align 8  ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZNK7testing8internal10NotMatcherINS0_16PointwiseMatcherINS0_10Eq2MatcherESt6vectorIjSaIjEEEEEcvNS_7MatcherIT_EEIRKS6_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !84
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = icmp ne ptr %i.c, null
  %i.e = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.d)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  br i1 %i.e, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef 234)
          to label %.noexc23 unwind label %bb.d

.noexc23:                                         ; preds = %.noexc3.i
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc23
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %7)
          to label %bb.b unwind label %bb.d, !inline_history !2

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.ak unwind label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %bb.a, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.46, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !36
  %i.t = or i32 %i.s, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.q, i32 noundef %i.t)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.o

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %2, i64 noundef %i.u)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.g, %bb.h
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.47, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.48, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.z = icmp ne ptr %i.y, null
  %i.aa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.z)
          to label %.noexc33 unwind label %bb.o

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.aa, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef 246)
          to label %.noexc34 unwind label %bb.o

.noexc34:                                         ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc34
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.k

bb.j:                                             ; preds = %.noexc34
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body35

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc33
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %i.l, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE10DescribeToEPSo.exit unwind label %bb.o, !inline_history !88

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE10DescribeToEPSo.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !84
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ag)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.p

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIjSaIjEEE10DescribeToEPSo.exit
  %i.aj = invoke noundef zeroext i1 @_ZN7testing8internal20MatchPrintAndExplainIKSt6vectorIjSaIjEERS5_EEbRT_RKNS_7MatcherIT0_EEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %10)
          to label %bb.l unwind label %bb.q
end_hunk_1
begin_hunk_2_@_ZNK7testing8internal22ElementsAreMatcherImplIRA4_KmE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !41
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !41
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.95, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !62    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !128
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRA4_KmE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !62    ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.88, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.60, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !136
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !136
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !140
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !141
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.95, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !129
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !128
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !568

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRA4_KmE15MatchAndExplainES4_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.138", align 8   ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !128  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #24
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !143
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !144
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !67
  store i8 0, ptr %i.q, align 8, !tbaa !41
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !570

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !67
  store i8 0, ptr %i.v, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !67
  store i8 0, ptr %i.y, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !67
  store i8 0, ptr %i.ab, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !67
  store i8 0, ptr %i.ae, align 8, !tbaa !41
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !571

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !145
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.at = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.w
  %.043.idx206 = phi i64 [ 0, %.loopexit ], [ %.043.add, %bb.w ] ; 4 uses
  %storemerge205 = phi i64 [ 0, %.loopexit ], [ %i.ee, %bb.w ] ; 11 uses
  %.043.ptr.ptr207 = getelementptr inbounds nuw i8, ptr %1, i64 %.043.idx206 ; 2 uses
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !128 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not59.not = icmp eq i64 %storemerge205, %i.bk ; 2 uses
  br i1 %.not59.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.al, ptr %i.am, align 8, !tbaa !84
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ak)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %storemerge205 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !136
  %i.bp = icmp ne ptr %i.bo, null
  %i.bq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bp)
          to label %.noexc80 unwind label %bb.r

.noexc80:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bq, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef 234)
          to label %.noexc81 unwind label %bb.r

.noexc81:                                         ; preds = %bb.e
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc81
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.g

bb.f:                                             ; preds = %.noexc81
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc80
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !136
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !585
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %.043.ptr.ptr207, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKmE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !572

_ZNK7testing8internal11MatcherBaseIRKmE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  store ptr %i.an, ptr %11, align 8, !tbaa !66, !alias.scope !589
  store i64 0, ptr %i.ao, align 8, !tbaa !67, !alias.scope !589
  store i8 0, ptr %i.an, align 8, !tbaa !41, !alias.scope !589
  %i.bw = load ptr, ptr %i.ap, align 8, !tbaa !90, !noalias !589 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bw, null
  %i.bx = load ptr, ptr %i.aq, align 8, !noalias !589 ; 2 uses
  %i.by = icmp ugt ptr %i.bw, %i.bx
  %.08.i.i.i.i = select i1 %i.by, ptr %i.bw, ptr %i.bx ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !91, !noalias !589 ; 2 uses
  %i.ca = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.bz, i64 noundef %i.cc)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %11, align 8, !tbaa !60, !alias.scope !589 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.an
  br i1 %i.cg, label %.body83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ch = load i64, ptr %i.an, align 8, !tbaa !41, !alias.scope !589
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #22
  br label %.body83

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cj = load ptr, ptr %9, align 8, !tbaa !143
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %storemerge205 ; 9 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !60 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 4 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  %i.co = load ptr, ptr %11, align 8, !tbaa !60   ; 6 uses
  %i.cp = icmp eq ptr %i.co, %i.an                ; 2 uses
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cp, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cp, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cq = load i64, ptr %i.ao, align 8, !tbaa !67 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %.not21.i = icmp eq ptr %11, %i.ck
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cq, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !41
  store i8 %i.cs, ptr %i.cl, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.ct = load i64, ptr %i.ao, align 8, !tbaa !67 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !67
  %i.cv = load ptr, ptr %i.ck, align 8, !tbaa !60
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 0, ptr %i.cw, align 1, !tbaa !41
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !60
  %i.cy = load i64, ptr %i.ao, align 8, !tbaa !67
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !67
  %i.cz = load i64, ptr %i.an, align 8, !tbaa !41
  store i64 %i.cz, ptr %i.cm, align 8, !tbaa !41
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.da = load i64, ptr %i.cm, align 8, !tbaa !41
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !60
  %i.db = load i64, ptr %i.ao, align 8, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !67
  %i.dd = load i64, ptr %i.an, align 8, !tbaa !41
end_hunk_2
