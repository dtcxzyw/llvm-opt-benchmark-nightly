inline.NumInlined: 1995
inline.NumDeleted: 945
begin_hunk_0_@_ZN5arrow2io8internal12_GLOBAL__N_116MakeIOThreadPoolEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.v
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !33
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bd = icmp sgt i32 %.113.fr, 0
  %spec.select = select i1 %i.bd, i32 %.113.fr, i32 8
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread3
  %i.be = phi i32 [ 8, %.thread3 ], [ %spec.select, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  invoke void @_ZN5arrow8internal10ThreadPool11MakeEternalEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.103") align 8 %3, i32 noundef %i.be)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %3, align 8, !tbaa !81
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

bb.ad:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.ad
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !33
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit: ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !14, !noalias !347
  store <2 x ptr> %i.bq, ptr @_ZZN5arrow2io8internal15GetIOThreadPoolEvE4pool, align 16, !tbaa !14, !alias.scope !347
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.br = load ptr, ptr %0, align 8, !tbaa !81    ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ae, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !89

bb.ae:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !127 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.ae
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !33
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #36
  %.pr.pre.i = load ptr, ptr %0, align 8, !tbaa !81 ; 2 uses
  %.not.i.i34 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i34, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !118

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit
  %i.bz = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i ], [ %i.br, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !90, !range !100, !noundef !101
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #32
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ae, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31: ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %.pn18 = phi { ptr, i32 } [ %i.bi, %bb.ac ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bj, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, %bb.ab
  %.pn20.pn = phi { ptr, i32 } [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ], [ %i.bh, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.ag ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !243
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !243
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io8internal18CoalesceReadRangesESt6vectorINS0_9ReadRangeESaIS3_EEll(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.88") align 8 captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %5 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %6 = alloca %"class.std::vector.64", align 8    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !348    ; 27 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !348
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350  ; 11 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !350
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !351  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !351
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.h = icmp eq ptr %i.a, %i.d
  br i1 %i.h, label %7, label %bb.b

7:                                                ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !352
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %8, align 8, !tbaa !348, !alias.scope !352
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %9, align 8, !tbaa !350, !alias.scope !352
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %10, align 8, !tbaa !351, !alias.scope !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = ashr i64 %i.k, 6                         ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.n = and i64 %i.k, -64
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.a, i64 %i.n ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i
  %.051.i.i.i.i.i = phi i64 [ %i.x, %bb.f ], [ %i.l, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.031.050.i.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.a, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.o = getelementptr i8, ptr %.sroa.031.050.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !355, !noalias !352
  %i.p = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr i8, ptr %.sroa.031.050.i.i.i.i.i, i64 24
  %.val.i16.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !355, !noalias !352
  %i.r = icmp eq i64 %.val.i16.i.i.i.i.i, 0
  br i1 %i.r, label %.loopexit.split.loop.exit41.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %.sroa.031.050.i.i.i.i.i, i64 40
  %.val.i17.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !355, !noalias !352
  %i.t = icmp eq i64 %.val.i17.i.i.i.i.i, 0
  br i1 %i.t, label %.loopexit.split.loop.exit43.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %.sroa.031.050.i.i.i.i.i, i64 56
  %.val.i18.i.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !355, !noalias !352
  %i.v = icmp eq i64 %.val.i18.i.i.i.i.i, 0
  br i1 %i.v, label %.loopexit.split.loop.exit45.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 64
  %i.x = add nsw i64 %.051.i.i.i.i.i, -1
  %i.y = icmp sgt i64 %.051.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !357

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.f
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre56.i.i.i.i.i = sub i64 %i.i, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.b
  %.pre-phi57.i.i.i.i.i = phi i64 [ %.pre56.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.k, %bb.b ]
  %.sroa.031.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 5 uses
  %i.z = ashr exact i64 %.pre-phi57.i.i.i.i.i, 4
  switch i64 %i.z, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aa = getelementptr i8, ptr %.sroa.031.0.lcssa.i.i.i.i.i, i64 8
  %.val.i19.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !355, !noalias !352
  %i.ab = icmp eq i64 %.val.i19.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i.i.i, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %.sroa.031.1.i.i.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ad = getelementptr i8, ptr %.sroa.031.1.i.i.i.i.i, i64 8
  %.val.i20.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !355, !noalias !352
  %i.ae = icmp eq i64 %.val.i20.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i.i.i, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.sroa.031.2.i.i.i.i.i = phi ptr [ %i.af, %bb.j ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.sroa.031.2.i.i.i.i.i, i64 8
  %.val.i21.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !355, !noalias !352
  %i.ah = icmp eq i64 %.val.i21.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.ah, ptr %.sroa.031.2.i.i.i.i.i, ptr %i.d
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i

.loopexit.split.loop.exit41.i.i.i.i.i:            ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i

.loopexit.split.loop.exit43.i.i.i.i.i:            ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 32
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i

.loopexit.split.loop.exit45.i.i.i.i.i:            ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 48
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.split.loop.exit45.i.i.i.i.i, %.loopexit.split.loop.exit43.i.i.i.i.i, %.loopexit.split.loop.exit41.i.i.i.i.i, %bb.k, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.031.1.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i, %bb.k ], [ %i.ak, %.loopexit.split.loop.exit45.i.i.i.i.i ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %bb.g ], [ %i.aj, %.loopexit.split.loop.exit43.i.i.i.i.i ], [ %i.ai, %.loopexit.split.loop.exit41.i.i.i.i.i ], [ %.sroa.031.050.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.al = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.d
  %.sroa.06.021.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 16 ; 2 uses
  %i.am = icmp eq ptr %.sroa.06.021.i.i.i, %i.d
  %or.cond.i.i.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, %bb.m
  %.sroa.06.024.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.m ], [ %.sroa.06.021.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.012.023.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %bb.m ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn22.i.i.i = phi ptr [ %.sroa.06.024.i.i.i, %bb.m ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i ]
  %i.an = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn22.i.i.i, i64 24
  %.val.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !355, !noalias !352
  %i.ao = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.023.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.024.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.023.i.i.i, %.lr.ph.i.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.024.i.i.i, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.06.0.i.i.i, %i.d
  br i1 %i.aq, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !359

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i: ; preds = %bb.m, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.012.2.i.i.i = phi ptr [ %i.d, %._crit_edge.i.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i ], [ %.sroa.012.1.i.i.i, %bb.m ] ; 11 uses
  %i.ar = icmp eq ptr %i.a, %.sroa.012.2.i.i.i
  br i1 %i.ar, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i
  %i.as = ptrtoint ptr %.sroa.012.2.i.i.i to i64
  %i.at = sub i64 %i.as, %i.j                     ; 2 uses
  %i.au = ashr exact i64 %i.at, 4
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = xor i64 %i.aw, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_T1_(ptr %i.a, ptr %.sroa.012.2.i.i.i, i64 noundef %i.ax), !noalias !352
  %i.ay = icmp sgt i64 %i.at, 256
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.a, i64 16 ; 3 uses
  br i1 %i.ay, label %.lr.ph.i.i.i.i32.i, label %bb.t

.lr.ph.i.i.i.i32.i:                               ; preds = %bb.n, %bb.s
  %.sroa.0.018.i.idx.i.i.i.i = phi i64 [ %.sroa.0.018.i.add.i.i.i.i, %bb.s ], [ 16, %bb.n ] ; 4 uses
  %.pn17.i.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i.i.i, %bb.s ], [ %i.a, %bb.n ] ; 4 uses
  %.sroa.0.018.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.018.i.idx.i.i.i.i ; 5 uses
  %.val.i.i.i.i.i33.i = load i64, ptr %.sroa.0.018.i.ptr.i.i.i.i, align 8, !tbaa !360, !noalias !352 ; 4 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !360, !noalias !352
  %i.az = icmp slt i64 %.val.i.i.i.i.i33.i, %.val1.i.i.i.i.i.i
  br i1 %i.az, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.lr.ph.i.i.i.i32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.ptr.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %i.ba = icmp samesign ugt i64 %.sroa.0.018.i.idx.i.i.i.i, 16
  br i1 %i.ba, label %bb.p, label %bb.q, !prof !89

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %.sroa.0.018.i.idx.i.i.i.i, i1 false), !noalias !352
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i.i32.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.val2.i11.i.i.i.i.i.i = load i64, ptr %.pn17.i.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bc = icmp slt i64 %.val.i.i.i.i.i33.i, %.val2.i11.i.i.i.i.i.i
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn17.i.i.i.i.i, %bb.r ] ; 4 uses
  %.sroa.07.012.i.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.018.i.ptr.i.i.i.i, %bb.r ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bd = icmp slt i64 %.val.i.i.i.i.i33.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i.i.i.i.i, !llvm.loop !361

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.r
  %.sroa.07.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i.i.i, %bb.r ], [ %.sroa.0.013.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 %.val.i.i.i.i.i33.i, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i, align 8, !tbaa !246, !noalias !352
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow2io8internal18CoalesceReadRangesESt6vectorINS0_9ReadRangeESaIS3_EEll:bb.a
  br i1 %i.be, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i32.i, !llvm.loop !362

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i: ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %.sroa.012.2.i.i.i
  br i1 %i.bg, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i12.i.i.i.i

.lr.ph.i12.i.i.i.i:                               ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.bk, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i ], [ %i.bf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i ] ; 6 uses
  %i.bh = load <2 x i64>, ptr %.sroa.0.06.i.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8, !tbaa !246, !noalias !352 ; 2 uses
  %.sroa.0.010.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i11.i.i15.i.i.i.i = load i64, ptr %.sroa.0.010.i.i.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bi = icmp slt i64 %.sroa.03.0.copyload.i.i.i.i.i.i, %.val2.i11.i.i15.i.i.i.i
  br i1 %i.bi, label %.lr.ph.i.i19.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i

.lr.ph.i.i19.i.i.i.i:                             ; preds = %.lr.ph.i12.i.i.i.i, %.lr.ph.i.i19.i.i.i.i
  %.sroa.0.013.i.i20.i.i.i.i = phi ptr [ %.sroa.0.0.i.i22.i.i.i.i, %.lr.ph.i.i19.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ] ; 4 uses
  %.sroa.07.012.i.i21.i.i.i.i = phi ptr [ %.sroa.0.013.i.i20.i.i.i.i, %.lr.ph.i.i19.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i21.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i20.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %.sroa.0.0.i.i22.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i20.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i23.i.i.i.i = load i64, ptr %.sroa.0.0.i.i22.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bj = icmp slt i64 %.sroa.03.0.copyload.i.i.i.i.i.i, %.val2.i.i.i23.i.i.i.i
  br i1 %i.bj, label %.lr.ph.i.i19.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i, !llvm.loop !361

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i: ; preds = %.lr.ph.i.i19.i.i.i.i, %.lr.ph.i12.i.i.i.i
  %.sroa.07.0.lcssa.i.i17.i.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ], [ %.sroa.0.013.i.i20.i.i.i.i, %.lr.ph.i.i19.i.i.i.i ]
  store <2 x i64> %i.bh, ptr %.sroa.07.0.lcssa.i.i17.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %.sroa.012.2.i.i.i
  br i1 %i.bl, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i12.i.i.i.i, !llvm.loop !363

bb.t:                                             ; preds = %bb.n
  %i.bm = icmp eq ptr %scevgep.i.i.i.i, %.sroa.012.2.i.i.i
  br i1 %i.bm, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i26.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.t, %bb.z
  %.sroa.0.018.i27.i.i.i.i = phi ptr [ %.sroa.0.0.i37.i.i.i.i, %bb.z ], [ %scevgep.i.i.i.i, %bb.t ] ; 7 uses
  %.pn17.i28.i.i.i.i = phi ptr [ %.sroa.0.018.i27.i.i.i.i, %bb.z ], [ %i.a, %bb.t ] ; 5 uses
  %.val.i.i29.i.i.i.i = load i64, ptr %.sroa.0.018.i27.i.i.i.i, align 8, !tbaa !360, !noalias !352 ; 4 uses
  %.val1.i.i30.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !360, !noalias !352
  %i.bn = icmp slt i64 %.val.i.i29.i.i.i.i, %.val1.i.i30.i.i.i.i
  br i1 %i.bn, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.lr.ph.i26.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i27.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %i.bo = ptrtoint ptr %.sroa.0.018.i27.i.i.i.i to i64
  %i.bp = sub i64 %i.bo, %i.j                     ; 3 uses
  %i.bq = ashr exact i64 %i.bp, 4                 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.v, label %bb.w, !prof !89

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn17.i28.i.i.i.i, i64 32
  %i.bt = sub nsw i64 0, %i.bq
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bt
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bp, i1 false), !noalias !352
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bv = icmp eq i64 %i.bp, 16
  br i1 %i.bv, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn17.i28.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.i26.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i31.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i28.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i32.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i31.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.val2.i11.i.i33.i.i.i.i = load i64, ptr %.pn17.i28.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bx = icmp slt i64 %.val.i.i29.i.i.i.i, %.val2.i11.i.i33.i.i.i.i
  br i1 %i.bx, label %.lr.ph.i.i38.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i

.lr.ph.i.i38.i.i.i.i:                             ; preds = %bb.y, %.lr.ph.i.i38.i.i.i.i
  %.sroa.0.013.i.i39.i.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ], [ %.pn17.i28.i.i.i.i, %bb.y ] ; 4 uses
  %.sroa.07.012.i.i40.i.i.i.i = phi ptr [ %.sroa.0.013.i.i39.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ], [ %.sroa.0.018.i27.i.i.i.i, %bb.y ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i40.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i39.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %.sroa.0.0.i.i41.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i39.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i42.i.i.i.i = load i64, ptr %.sroa.0.0.i.i41.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.by = icmp slt i64 %.val.i.i29.i.i.i.i, %.val2.i.i.i42.i.i.i.i
  br i1 %i.by, label %.lr.ph.i.i38.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i, !llvm.loop !361

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i.i, %bb.y
  %.sroa.07.0.lcssa.i.i35.i.i.i.i = phi ptr [ %.sroa.0.018.i27.i.i.i.i, %bb.y ], [ %.sroa.0.013.i.i39.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ] ; 2 uses
  store i64 %.val.i.i29.i.i.i.i, ptr %.sroa.07.0.lcssa.i.i35.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.sroa.5.0..sroa_idx5.i.i36.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i35.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i32.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i36.i.i.i.i, align 8, !tbaa !246, !noalias !352
  br label %bb.z

bb.z:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i
  %.sroa.0.0.i37.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i27.i.i.i.i, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.0.0.i37.i.i.i.i, %.sroa.012.2.i.i.i
  br i1 %i.bz, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i26.i.i.i.i, !llvm.loop !362

.preheader.i.i.i.i.preheader:                     ; preds = %bb.z, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i, %bb.t
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %bb.aa
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.ca, %bb.aa ], [ %i.a, %.preheader.i.i.i.i.preheader ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 16 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, %.sroa.012.2.i.i.i
  br i1 %i.cb, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.preheader.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %.sroa.09.0.i.i.i.i, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.09.0.i.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !352
  %.val2.i.i.i.i.i = load i64, ptr %i.ca, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cd = getelementptr i8, ptr %.sroa.09.0.i.i.i.i, i64 24
  %.val3.i.i.i.i.i = load i64, ptr %i.cd, align 8, !noalias !352
  %.not.i.i.i.i.i.i = icmp sge i64 %.val2.i.i.i.i.i, %.val.i.i.i.i.i
  %i.ce = add nsw i64 %.val3.i.i.i.i.i, %.val2.i.i.i.i.i
  %i.cf = add nsw i64 %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  %i.cg = icmp sle i64 %i.ce, %i.cf
  %i.ch = select i1 %.not.i.i.i.i.i.i, i1 %i.cg, i1 false
  br i1 %i.ch, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !364

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i: ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 32 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %.sroa.012.2.i.i.i
  br i1 %i.cj, label %._crit_edge.i.i.i, label %.lr.ph.i.i34.i

.lr.ph.i.i34.i:                                   ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i, %bb.ac
  %i.ck = phi ptr [ %i.cs, %bb.ac ], [ %i.ci, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 4 uses
  %.sroa.0.020.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.ac ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 4 uses
  %.sroa.012.019.i.i.i = phi ptr [ %i.ck, %bb.ac ], [ %i.ca, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ]
  %.val.i.i.i35.i = load i64, ptr %.sroa.0.020.i.i.i, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.0.020.i.i.i, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.cl, align 8, !noalias !352
  %.val2.i.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.012.019.i.i.i, i64 24
  %.val3.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !352
  %.not.i.i.i.i.i = icmp sge i64 %.val2.i.i.i.i, %.val.i.i.i35.i
  %i.cn = add nsw i64 %.val3.i.i.i.i, %.val2.i.i.i.i
  %i.co = add nsw i64 %.val1.i.i.i.i, %.val.i.i.i35.i
  %i.cp = icmp sle i64 %i.cn, %i.co
  %i.cq = select i1 %.not.i.i.i.i.i, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i34.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i.i34.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.020.i.i.i, %.lr.ph.i.i34.i ], [ %i.cr, %bb.ab ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %.sroa.012.2.i.i.i
  br i1 %i.ct, label %._crit_edge.i.i.i, label %.lr.ph.i.i34.i, !llvm.loop !365

._crit_edge.i.i.i:                                ; preds = %bb.ac, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.ac ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 16
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i: ; preds = %.preheader.i.i.i.i, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i, %._crit_edge.i.i.i
  %.sroa.06.0.i.i36.i = phi ptr [ %i.cu, %._crit_edge.i.i.i ], [ %i.a, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i ], [ %.sroa.012.2.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.cv = ptrtoint ptr %.sroa.06.0.i.i36.i to i64
  %i.cw = sub i64 %i.cv, %i.j                     ; 2 uses
  %i.cx = ashr exact i64 %i.cw, 4                 ; 3 uses
  %i.cy = ashr exact i64 %i.k, 4                  ; 3 uses
  %i.cz = icmp ugt i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i
  %i.da = sub nuw nsw i64 %i.cx, %i.cy
  invoke void @_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.da)
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.ad
  %.pre78.i = load ptr, ptr %6, align 8, !tbaa !244, !noalias !352
  %.pre79.i = load ptr, ptr %i.b, align 8, !tbaa !244, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i

bb.ae:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i
  %i.db = icmp uge i64 %i.cx, %i.cy
  %.not.i.i.i = icmp eq ptr %i.d, %.sroa.06.0.i.i36.i
  %or.cond31.i = or i1 %.not.i.i.i, %i.db
  br i1 %or.cond31.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw ; 2 uses
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !350, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.ae, %.noexc
  %i.dd = phi ptr [ %.pre79.i, %.noexc ], [ %i.d, %bb.ae ], [ %i.dc, %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i ] ; 4 uses
  %i.de = phi ptr [ %.pre78.i, %.noexc ], [ %i.a, %bb.ae ], [ %i.a, %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i ] ; 5 uses
  %i.df = icmp eq ptr %i.de, %i.dd
  br i1 %i.df, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !352
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %11, align 8, !tbaa !348, !alias.scope !352
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dd, ptr %12, align 8, !tbaa !350, !alias.scope !352
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !351, !noalias !352
  store ptr %i.dg, ptr %13, align 8, !tbaa !351, !alias.scope !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

bb.ag:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i
  %.not53.i = icmp ult ptr %i.de, %i.dd
  br i1 %.not53.i, label %.lr.ph.i.preheader, label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

.lr.ph.i.preheader:                               ; preds = %bb.ag
  %i.dh = load i64, ptr %i.de, align 8, !tbaa !360, !noalias !352 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i
  %i.di = phi ptr [ %i.ej, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dd, %.lr.ph.i.preheader ] ; 3 uses
  %.02959.i = phi i64 [ %.1.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dh, %.lr.ph.i.preheader ] ; 6 uses
  %.03058.i = phi i64 [ %i.dm, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dh, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.015.057.i = phi ptr [ %.sroa.015.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 9 uses
  %.sroa.12.056.i = phi ptr [ %.sroa.12.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 9 uses
  %.sroa.21.055.i = phi ptr [ %.sroa.21.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.054.i = phi ptr [ %i.ek, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.de, %.lr.ph.i.preheader ] ; 3 uses
  %i.dj = load i64, ptr %.sroa.010.054.i, align 8, !tbaa !360, !noalias !352 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !355, !noalias !352
  %i.dm = add nsw i64 %i.dl, %i.dj                ; 4 uses
  %i.dn = sub nsw i64 %i.dm, %.02959.i
  %i.do = icmp sgt i64 %i.dn, %3
  %i.dp = sub nsw i64 %i.dj, %.03058.i
  %i.dq = icmp sgt i64 %i.dp, %2
  %or.cond.i = select i1 %i.do, i1 true, i1 %i.dq
  br i1 %or.cond.i, label %bb.ah, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.ah:                                            ; preds = %.lr.ph.i
  %i.dr = icmp sgt i64 %.03058.i, %.02959.i
  br i1 %i.dr, label %bb.ai, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.ds = sub nsw i64 %.03058.i, %.02959.i        ; 2 uses
  %.not.i.i37.i = icmp eq ptr %.sroa.12.056.i, %.sroa.21.055.i
  br i1 %.not.i.i37.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i64 %.02959.i, ptr %.sroa.12.056.i, align 8, !tbaa !246, !noalias !352
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.12.056.i, i64 8
  store i64 %i.ds, ptr %.sroa.66.0..sroa_idx.i, align 8, !tbaa !246, !noalias !352
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.12.056.i, i64 16
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.du = ptrtoint ptr %.sroa.12.056.i to i64
  %i.dv = ptrtoint ptr %.sroa.015.057.i to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 6 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775792
  br i1 %i.dx, label %bb.al, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #34
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !352

.noexc.i:                                         ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ak
  %i.dy = ashr exact i64 %i.dw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 576460752303423487)
  %i.ec = select i1 %i.ea, i64 576460752303423487, i64 %i.eb ; 3 uses
  %.not.i.i.i.i38.i = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38.i)
  %i.ed = shl nuw nsw i64 %i.ec, 4
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #35
          to label %.noexc39.i unwind label %.loopexit.i, !noalias !352 ; 4 uses

.noexc39.i:                                       ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 3 uses
  store i64 %.02959.i, ptr %i.ef, align 8, !tbaa !246, !noalias !352
  %.sroa.66.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.ds, ptr %.sroa.66.0..sroa_idx7.i, align 8, !tbaa !246, !noalias !352
  %i.eg = icmp sgt i64 %i.dw, 0
  br i1 %i.eg, label %bb.am, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.am:                                            ; preds = %.noexc39.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %.sroa.015.057.i, i64 %i.dw, i1 false), !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.am, %.noexc39.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.015.057.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.057.i, i64 noundef %i.dw) #36, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.an, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ec
  %.pre80.i = load ptr, ptr %i.b, align 8, !tbaa !244, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp.i:                             ; preds = %bb.al
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.aj, %bb.ah, %.lr.ph.i
  %i.ej = phi ptr [ %i.di, %.lr.ph.i ], [ %i.di, %bb.ah ], [ %.pre80.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.di, %bb.aj ] ; 2 uses
  %.sroa.21.2.i = phi ptr [ %.sroa.21.055.i, %.lr.ph.i ], [ %.sroa.21.055.i, %bb.ah ], [ %i.ei, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.21.055.i, %bb.aj ] ; 6 uses
  %.sroa.12.2.i = phi ptr [ %.sroa.12.056.i, %.lr.ph.i ], [ %.sroa.12.056.i, %bb.ah ], [ %i.eh, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.dt, %bb.aj ] ; 6 uses
  %.sroa.015.2.i = phi ptr [ %.sroa.015.057.i, %.lr.ph.i ], [ %.sroa.015.057.i, %bb.ah ], [ %i.ee, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.015.057.i, %bb.aj ] ; 8 uses
  %.1.i = phi i64 [ %.02959.i, %.lr.ph.i ], [ %i.dj, %bb.ah ], [ %i.dj, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.dj, %bb.aj ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 16 ; 2 uses
  %.not.i = icmp ult ptr %i.ek, %i.ej
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !366

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i
  %i.el = icmp sgt i64 %i.dm, %.1.i
  br i1 %i.el, label %bb.ao, label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.ao:                                            ; preds = %._crit_edge.i
  %i.em = sub nsw i64 %i.dm, %.1.i                ; 2 uses
  %.not.i.i40.i = icmp eq ptr %.sroa.12.2.i, %.sroa.21.2.i
  br i1 %.not.i.i40.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %.1.i, ptr %.sroa.12.2.i, align 8, !tbaa !246, !noalias !352
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i, i64 8
  store i64 %i.em, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !246, !noalias !352
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i, i64 16
  br label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.eo = ptrtoint ptr %.sroa.21.2.i to i64
  %i.ep = ptrtoint ptr %.sroa.015.2.i to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 6 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775792
  br i1 %i.er, label %bb.ar, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #34
          to label %.noexc47.i unwind label %bb.au, !noalias !352

.noexc47.i:                                       ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i: ; preds = %bb.aq
  %i.es = ashr exact i64 %i.eq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i42.i = call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i.i.i42.i, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = call i64 @llvm.umin.i64(i64 %i.et, i64 576460752303423487)
  %i.ew = select i1 %i.eu, i64 576460752303423487, i64 %i.ev ; 3 uses
  %.not.i.i.i.i43.i = icmp ne i64 %i.ew, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43.i)
  %i.ex = shl nuw nsw i64 %i.ew, 4
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #35
          to label %.noexc48.i unwind label %bb.au, !noalias !352 ; 4 uses

.noexc48.i:                                       ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %i.eq ; 3 uses
  store i64 %.1.i, ptr %i.ez, align 8, !tbaa !246, !noalias !352
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 %i.em, ptr %.sroa.6.0..sroa_idx2.i, align 8, !tbaa !246, !noalias !352
  %i.fa = icmp sgt i64 %i.eq, 0
  br i1 %i.fa, label %bb.as, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i

bb.as:                                            ; preds = %.noexc48.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr align 8 %.sroa.015.2.i, i64 %i.eq, i1 false), !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i: ; preds = %bb.as, %.noexc48.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %.not.i17.i.i.i45.i = icmp eq ptr %.sroa.015.2.i, null
  br i1 %.not.i17.i.i.i45.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.2.i, i64 noundef %i.eq) #36, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i: ; preds = %bb.at, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.ew
  br label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.au:                                            ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i, %bb.ar
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.21.045.i = phi ptr [ %.sroa.21.2.i, %bb.au ], [ %.sroa.12.056.i, %.loopexit.i ], [ %.sroa.12.056.i, %.loopexit.split-lp.i ]
  %.sroa.015.039.i = phi ptr [ %.sroa.015.2.i, %bb.au ], [ %.sroa.015.057.i, %.loopexit.i ], [ %.sroa.015.057.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %i.fd, %bb.au ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i50.i = icmp eq ptr %.sroa.015.039.i, null
  br i1 %.not.i.i.i50.i, label %.body, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fe = ptrtoint ptr %.sroa.21.045.i to i64
  %i.ff = ptrtoint ptr %.sroa.015.039.i to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.039.i, i64 noundef %i.fg) #36, !noalias !352
  br label %.body

_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit: ; preds = %bb.ag, %._crit_edge.i, %bb.ap, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i
  %.sroa.21.4.i = phi ptr [ %.sroa.21.2.i, %._crit_edge.i ], [ %i.fc, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %.sroa.21.2.i, %bb.ap ], [ null, %bb.ag ]
  %.sroa.12.4.i = phi ptr [ %.sroa.12.2.i, %._crit_edge.i ], [ %i.fb, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %i.en, %bb.ap ], [ null, %bb.ag ]
  %.sroa.015.4.i = phi ptr [ %.sroa.015.2.i, %._crit_edge.i ], [ %i.ey, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %.sroa.015.2.i, %bb.ap ], [ null, %bb.ag ]
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !352
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.015.4.i, ptr %i.fh, align 8, !tbaa !348, !alias.scope !352
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.4.i, ptr %i.fi, align 8, !tbaa !350, !alias.scope !352
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.21.4.i, ptr %i.fj, align 8, !tbaa !351, !alias.scope !352
  %.pr = load ptr, ptr %6, align 8, !tbaa !348    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit
  %i.fk = load ptr, ptr %i.e, align 8, !tbaa !351
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %.pr to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fn) #36
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit: ; preds = %7, %bb.af, %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit, %bb.ax
  ret void

bb.ay:                                            ; preds = %bb.ad
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.aw, %bb.ay
  %eh.lpad-body = phi { ptr, i32 } [ %i.fo, %bb.ay ], [ %.pn.i, %bb.aw ], [ %.pn.i, %bb.av ]
  %i.fp = load ptr, ptr %6, align 8, !tbaa !348   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6, label %bb.az

bb.az:                                            ; preds = %.body
  %i.fq = load ptr, ptr %i.e, align 8, !tbaa !351
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.ft) #36
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6: ; preds = %.body, %bb.az
  resume { ptr, i32 } %eh.lpad-body
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8WritableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8WritableD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8ReadableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8ReadableD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io11InputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io11InputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5arrow2io11InputStreamD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5arrow2io11InputStreamD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !29
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32, !inline_history !367
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32, !inline_history !367
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #32 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !368
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !368
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
end_hunk_1
