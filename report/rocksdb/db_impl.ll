Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl?download=true
inline.NumInlined: 18355
inline.NumDeleted: 8074
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN7rocksdb6DBImpl26CommitFileIngestionHandlesESt6vectorISt10unique_ptrINS_19FileIngestionHandleESt14default_deleteIS3_EESaIS6_EE:bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.am

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE12emplace_backIJbEEERS1_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ft = icmp ugt i64 %i.fa, 1152921504606846975
  br i1 %i.ft, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.216) #41
          to label %.noexc271 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc271:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.fu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %.not1275 = icmp eq ptr %.sroa.25.0.lcssa1290, %.sroa.0577.0.lcssa1293
  br i1 %.not1275, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.ak
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #42
          to label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.fv, ptr %15, align 8, !tbaa !2014
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !2015
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ez ; 2 uses
  store ptr %i.fx, ptr %i.fu, align 8, !tbaa !2016
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

bb.al:                                            ; preds = %bb.ai
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.am:                                            ; preds = %.lr.ph949, %_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE12emplace_backIJbEEERS1_DpOT_.exit
  %.0172948 = phi i64 [ 0, %.lr.ph949 ], [ %i.gd, %_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE12emplace_backIJbEEERS1_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i8 1, ptr %i.a, align 1, !tbaa !709
  %i.fz = load ptr, ptr %i.fr, align 8, !tbaa !1056 ; 3 uses
  %i.ga = load ptr, ptr %i.fs, align 8, !tbaa !1057
  %.not.i273 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i273, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN7rocksdb19SuperVersionContextC2Eb(ptr noundef nonnull align 8 dereferenceable(536) %i.fz, i1 noundef zeroext true)
          to label %.noexc274 unwind label %bb.ap

.noexc274:                                        ; preds = %bb.an
  %i.gb = load ptr, ptr %i.fr, align 8, !tbaa !1056
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 536
  store ptr %i.gc, ptr %i.fr, align 8, !tbaa !1056
  br label %_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE12emplace_backIJbEEERS1_DpOT_.exit

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE17_M_realloc_insertIJbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.fz, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE12emplace_backIJbEEERS1_DpOT_.exit unwind label %bb.ap

_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE12emplace_backIJbEEERS1_DpOT_.exit: ; preds = %bb.ao, %.noexc274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.gd = add nuw i64 %.0172948, 1                ; 2 uses
  %.not186 = icmp eq i64 %i.gd, %i.fa
  br i1 %.not186, label %._crit_edge, label %bb.am, !llvm.loop !3502

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.gw

_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.ak
  %i.gf = phi ptr [ %i.fx, %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ null, %bb.ak ]
  %i.gg = phi ptr [ %i.fv, %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ null, %bb.ak ] ; 2 uses
  br i1 %.not186947, label %._crit_edge952, label %.lr.ph951

.lr.ph951:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  br label %bb.aq

._crit_edge952:                                   ; preds = %bb.ba, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 11 uses
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.gi)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %.lr.ph951, %bb.ba
  %i.gj = phi ptr [ %i.gg, %.lr.ph951 ], [ %i.iw, %bb.ba ] ; 14 uses
  %i.gk = phi ptr [ %i.gf, %.lr.ph951 ], [ %i.ix, %bb.ba ] ; 6 uses
  %i.gl = phi ptr [ %i.gg, %.lr.ph951 ], [ %i.iy, %bb.ba ] ; 4 uses
  %.sroa.0548.0950 = phi ptr [ %.sroa.0577.0.lcssa1293, %.lr.ph951 ], [ %i.iz, %bb.ba ] ; 2 uses
  %i.gm = load ptr, ptr %.sroa.0548.0950, align 8, !tbaa !1963
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !2003 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 61
  %i.gq = load atomic i8, ptr %i.gp monotonic, align 1, !range !638, !noundef !639
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  %i.gs = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #42
          to label %.noexc277 unwind label %bb.az ; 4 uses

.noexc277:                                        ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 3032 ; 2 uses
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !2018, !noalias !3533
  invoke void @_ZN7rocksdb4port7RWMutex8ReadLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.gt)
          to label %bb.at unwind label %bb.as, !noalias !3533

bb.as:                                            ; preds = %.noexc277
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 8) #40, !noalias !3533
  br label %.body278

bb.at:                                            ; preds = %.noexc277
  store ptr %i.gs, ptr %16, align 8, !tbaa !2020, !alias.scope !3533
  %.not.i280 = icmp eq ptr %i.gl, %i.gk
  %i.gv = ptrtoint ptr %i.gs to i64               ; 2 uses
  br i1 %.not.i280, label %bb.au, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.at
  store i64 %i.gv, ptr %i.gl, align 8, !tbaa !2020
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  store ptr %i.gw, ptr %i.gh, align 8, !tbaa !2015
  br label %_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev.exit

bb.au:                                            ; preds = %bb.at
  %i.gx = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gy = ptrtoint ptr %i.gj to i64               ; 3 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775800
  br i1 %i.ha, label %bb.av, label %_ZNKSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #41
          to label %.noexc467 unwind label %.loopexit.split-lp749.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc467:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.au
  %i.hb = ashr exact i64 %i.gz, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 1152921504606846975)
  %i.hf = select i1 %i.hd, i64 1152921504606846975, i64 %i.he ; 3 uses
  %.not.i.i459 = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i459)
  %i.hg = shl nuw nsw i64 %i.hf, 3
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #42
          to label %.noexc468 unwind label %.loopexit.split-lp749.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 14 uses

.noexc468:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gz
  store i64 %i.gv, ptr %i.hi, align 8, !tbaa !2020
  store ptr null, ptr %16, align 8, !tbaa !2020
  %.not10.i.i.i.i460 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not10.i.i.i.i460, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc468
  %i.hj = add i64 %i.gx, -8
  %i.hk = sub i64 %i.hj, %i.gy                    ; 3 uses
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = add nuw nsw i64 %i.hl, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.hk, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i461.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hn = add i64 %i.gx, -8
  %i.ho = sub i64 %i.hn, %i.gy
  %i.hp = and i64 %i.ho, -8
  %i.hq = add i64 %i.hp, 8                        ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hh, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.gj, i64 %i.hq
  %bound0 = icmp ult ptr %i.hh, %i.hs
  %bound1 = icmp ult ptr %i.gj, %i.hr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i461.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1644 = icmp ult i64 %i.hk, 120
  br i1 %min.iters.check1644, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ht = and i64 %i.hm, 12
  %n.vec = and i64 %i.hm, 4611686018427387888     ; 4 uses
  %i.hu = shl i64 %n.vec, 3                       ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hh, i64 %i.hu  ; 2 uses
  %i.hw = getelementptr i8, ptr %i.gj, i64 %i.hu
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hh, i64 %i.hx ; 4 uses
  %next.gep1645 = getelementptr i8, ptr %i.gj, i64 %i.hx ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  %i.hy = getelementptr i8, ptr %next.gep1645, i64 32 ; 2 uses
  %i.hz = getelementptr i8, ptr %next.gep1645, i64 64 ; 2 uses
  %i.ia = getelementptr i8, ptr %next.gep1645, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep1645, align 8, !tbaa !2020, !alias.scope !3536
  %wide.load1646 = load <4 x i64>, ptr %i.hy, align 8, !tbaa !2020, !alias.scope !3536
  %wide.load1647 = load <4 x i64>, ptr %i.hz, align 8, !tbaa !2020, !alias.scope !3536
  %wide.load1648 = load <4 x i64>, ptr %i.ia, align 8, !tbaa !2020, !alias.scope !3536
  %i.ib = getelementptr i8, ptr %next.gep, i64 32
  %i.ic = getelementptr i8, ptr %next.gep, i64 64
  %i.id = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2020, !alias.scope !3537, !noalias !3538
  store <4 x i64> %wide.load1646, ptr %i.ib, align 8, !tbaa !2020, !alias.scope !3537, !noalias !3538
  store <4 x i64> %wide.load1647, ptr %i.ic, align 8, !tbaa !2020, !alias.scope !3537, !noalias !3538
  store <4 x i64> %wide.load1648, ptr %i.id, align 8, !tbaa !2020, !alias.scope !3537, !noalias !3538
  store <4 x ptr> splat (ptr null), ptr %next.gep1645, align 8, !tbaa !2020, !alias.scope !3536
  store <4 x ptr> splat (ptr null), ptr %i.hy, align 8, !tbaa !2020, !alias.scope !3536
  store <4 x ptr> splat (ptr null), ptr %i.hz, align 8, !tbaa !2020, !alias.scope !3536
  store <4 x ptr> splat (ptr null), ptr %i.ia, align 8, !tbaa !2020, !alias.scope !3536
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ie = icmp eq i64 %index.next, %n.vec
  br i1 %i.ie, label %middle.block, label %vector.body, !llvm.loop !3511

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ht, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i461.preheader, label %vec.epilog.ph, !prof !1069

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1649 = and i64 %i.hm, 4611686018427387900 ; 3 uses
  %i.if = shl i64 %n.vec1649, 3                   ; 2 uses
  %i.ig = getelementptr i8, ptr %i.hh, i64 %i.if  ; 2 uses
  %i.ih = getelementptr i8, ptr %i.gj, i64 %i.if
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1650 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1654, %vec.epilog.vector.body ] ; 2 uses
  %i.ii = shl i64 %index1650, 3                   ; 2 uses
  %next.gep1651 = getelementptr i8, ptr %i.hh, i64 %i.ii
  %next.gep1652 = getelementptr i8, ptr %i.gj, i64 %i.ii ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  %wide.load1653 = load <4 x i64>, ptr %next.gep1652, align 8, !tbaa !2020, !alias.scope !3536
  store <4 x i64> %wide.load1653, ptr %next.gep1651, align 8, !tbaa !2020, !alias.scope !3537, !noalias !3538
  store <4 x ptr> splat (ptr null), ptr %next.gep1652, align 8, !tbaa !2020, !alias.scope !3536
  %index.next1654 = add nuw i64 %index1650, 4     ; 2 uses
  %i.ij = icmp eq i64 %index.next1654, %n.vec1649
  br i1 %i.ij, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3512

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1655 = icmp eq i64 %i.hm, %n.vec1649
  br i1 %cmp.n1655, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i461.preheader

.lr.ph.i.i.i.i461.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i462.ph = phi ptr [ %i.hh, %iter.check ], [ %i.hh, %vector.memcheck ], [ %i.hv, %vec.epilog.iter.check ], [ %i.ig, %vec.epilog.middle.block ]
  %.0911.i.i.i.i463.ph = phi ptr [ %i.gj, %iter.check ], [ %i.gj, %vector.memcheck ], [ %i.hw, %vec.epilog.iter.check ], [ %i.ih, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i461

.lr.ph.i.i.i.i461:                                ; preds = %.lr.ph.i.i.i.i461.preheader, %.lr.ph.i.i.i.i461
  %.012.i.i.i.i462 = phi ptr [ %i.im, %.lr.ph.i.i.i.i461 ], [ %.012.i.i.i.i462.ph, %.lr.ph.i.i.i.i461.preheader ] ; 2 uses
  %.0911.i.i.i.i463 = phi ptr [ %i.il, %.lr.ph.i.i.i.i461 ], [ %.0911.i.i.i.i463.ph, %.lr.ph.i.i.i.i461.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  %i.ik = load i64, ptr %.0911.i.i.i.i463, align 8, !tbaa !2020, !alias.scope !3535
  store i64 %i.ik, ptr %.012.i.i.i.i462, align 8, !tbaa !2020, !alias.scope !3534
  store ptr null, ptr %.0911.i.i.i.i463, align 8, !tbaa !2020, !alias.scope !3535
  %i.il = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i463, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i462, i64 8 ; 2 uses
  %.not.i.i.i.i464 = icmp eq ptr %i.il, %i.gk
  br i1 %.not.i.i.i.i464, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i461, !llvm.loop !3513

_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i461, %middle.block, %vec.epilog.middle.block, %.noexc468
  %.0.lcssa.i.i.i.i = phi ptr [ %i.hh, %.noexc468 ], [ %i.ig, %vec.epilog.middle.block ], [ %i.hv, %middle.block ], [ %i.im, %.lr.ph.i.i.i.i461 ]
  %i.in = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.gj, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gz) #40
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.aw
  store ptr %i.hh, ptr %15, align 8, !tbaa !2014
  store ptr %i.in, ptr %i.gh, align 8, !tbaa !2015
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hf ; 3 uses
  store ptr %i.io, ptr %i.fu, align 8, !tbaa !2016
  %.pr = load ptr, ptr %16, align 8, !tbaa !2020  ; 3 uses
  %.not.i283 = icmp eq ptr %.pr, null
  br i1 %.not.i283, label %_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.ip = load ptr, ptr %.pr, align 8, !tbaa !2018
  invoke void @_ZN7rocksdb4port7RWMutex10ReadUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ip)
          to label %_ZNKSt14default_deleteIN7rocksdb8ReadLockEEclEPS1_.exit.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #44
  unreachable

_ZNKSt14default_deleteIN7rocksdb8ReadLockEEclEPS1_.exit.i: ; preds = %bb.ax
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 8) #40
  br label %_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNKSt14default_deleteIN7rocksdb8ReadLockEEclEPS1_.exit.i
  %i.is = phi ptr [ %i.gj, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread ], [ %i.hh, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %i.hh, %_ZNKSt14default_deleteIN7rocksdb8ReadLockEEclEPS1_.exit.i ]
  %i.it = phi ptr [ %i.gk, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread ], [ %i.io, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %i.io, %_ZNKSt14default_deleteIN7rocksdb8ReadLockEEclEPS1_.exit.i ]
  %i.iu = phi ptr [ %i.gw, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread ], [ %i.in, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %i.in, %_ZNKSt14default_deleteIN7rocksdb8ReadLockEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.ba

bb.az:                                            ; preds = %bb.ar
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body278

.loopexit.split-lp749.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.av
  %lpad.loopexit.split-lp1727 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #43
  br label %.body278

.body278:                                         ; preds = %bb.az, %bb.as, %.loopexit.split-lp749.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn222 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1727, %.loopexit.split-lp749.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.iv, %bb.az ], [ %i.gu, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit433

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev.exit, %bb.aq
  %i.iw = phi ptr [ %i.is, %_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev.exit ], [ %i.gj, %bb.aq ]
  %i.ix = phi ptr [ %i.it, %_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev.exit ], [ %i.gk, %bb.aq ]
  %i.iy = phi ptr [ %i.iu, %_ZNSt10unique_ptrIN7rocksdb8ReadLockESt14default_deleteIS1_EED2Ev.exit ], [ %i.gl, %bb.aq ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0548.0950, i64 8 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %.sroa.25.0.lcssa1290
  br i1 %i.ja, label %._crit_edge952, label %bb.aq

bb.bb:                                            ; preds = %._crit_edge952
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #43
  %i.jb = getelementptr inbounds nuw i8, ptr %17, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %17, i8 0, i64 19, i1 false)
  store i32 4, ptr %i.jb, align 4, !tbaa !834
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i8 0, ptr %i.jc, align 8, !tbaa !835
  %i.jd = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %17, i64 97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.jd, i8 0, i64 65, i1 false)
  store i8 1, ptr %i.je, align 1, !tbaa !836
  %i.jf = getelementptr inbounds nuw i8, ptr %17, i64 104
  store ptr null, ptr %i.jf, align 8, !tbaa !837
  %i.jg = getelementptr inbounds nuw i8, ptr %17, i64 112
  store i64 72057594037927935, ptr %i.jg, align 8, !tbaa !838
  %i.jh = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i8 0, i64 6, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  store ptr null, ptr %i.jj, align 8, !tbaa !623
  %i.jk = getelementptr inbounds nuw i8, ptr %17, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ji, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, i8 0, i64 16, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 3992 ; 2 uses
  invoke void @_ZN7rocksdb11WriteThread14EnterUnbatchedEPNS0_6WriterEPNS_17InstrumentedMutexE(ptr noundef nonnull align 8 dereferenceable(440) %i.jl, ptr noundef nonnull %17, ptr noundef nonnull %i.gi)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  %i.jm = getelementptr inbounds nuw i8, ptr %18, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %18, i8 0, i64 19, i1 false)
  store i32 4, ptr %i.jm, align 4, !tbaa !834
  %i.jn = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 0, ptr %i.jn, align 8, !tbaa !835
  %i.jo = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.jp = getelementptr inbounds nuw i8, ptr %18, i64 97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.jo, i8 0, i64 65, i1 false)
  store i8 1, ptr %i.jp, align 1, !tbaa !836
  %i.jq = getelementptr inbounds nuw i8, ptr %18, i64 104
  store ptr null, ptr %i.jq, align 8, !tbaa !837
  %i.jr = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 72057594037927935, ptr %i.jr, align 8, !tbaa !838
  %i.js = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.jt = getelementptr inbounds nuw i8, ptr %18, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, i8 0, i64 6, i1 false)
  %i.ju = getelementptr inbounds nuw i8, ptr %18, i64 144 ; 2 uses
  store ptr null, ptr %i.ju, align 8, !tbaa !623
  %i.jv = getelementptr inbounds nuw i8, ptr %18, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.jt, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, i8 0, i64 16, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 6888 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !699, !range !638, !noundef !639
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 4592
  invoke void @_ZN7rocksdb11WriteThread14EnterUnbatchedEPNS0_6WriterEPNS_17InstrumentedMutexE(ptr noundef nonnull align 8 dereferenceable(440) %i.jz, ptr noundef nonnull %18, ptr noundef nonnull %i.gi)
          to label %bb.bg unwind label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.bf:                                            ; preds = %bb.bd
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.bg:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  %.not.i284 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i284, label %_ZTWN7rocksdb12perf_contextE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit
end_hunk_0
