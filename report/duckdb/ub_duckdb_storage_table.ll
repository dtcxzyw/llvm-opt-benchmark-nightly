inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@_ZN6duckdb18RowGroupCollection12UpdateColumnENS_15TransactionDataERNS_9DataTableERNS_6VectorERKNS_6vectorImLb1ESaImEEERNS_9DataChunkE:bb.a
bb.s:                                             ; preds = %.noexc35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %i.bc)
          to label %.noexc37 unwind label %bb.ad

.noexc37:                                         ; preds = %bb.s
  %i.bm = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %_ZNK6duckdb8RowGroup9GetColumnEm.exit.i unwind label %bb.ad

_ZNK6duckdb8RowGroup9GetColumnEm.exit.i:          ; preds = %.noexc37, %bb.r
  %i.bn = phi ptr [ %i.bj, %bb.r ], [ %i.bm, %.noexc37 ]
  invoke void @_ZN6duckdb10ColumnData19MergeIntoStatisticsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(296) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.bg)
          to label %_ZN6duckdb8RowGroup19MergeIntoStatisticsEmRNS_14BaseStatisticsE.exit unwind label %bb.ad

_ZN6duckdb8RowGroup19MergeIntoStatisticsEmRNS_14BaseStatisticsE.exit: ; preds = %_ZNK6duckdb8RowGroup9GetColumnEm.exit.i
  %i.bo = load ptr, ptr %9, align 8, !tbaa !2668  ; 3 uses
  %.not.i40 = icmp eq ptr %i.bo, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19TableStatisticsLockEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19TableStatisticsLockEEclEPS1_.exit.i: ; preds = %_ZN6duckdb8RowGroup19MergeIntoStatisticsEmRNS_14BaseStatisticsE.exit
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2670, !nonnull !70, !align !145
  %i.bq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bp) #37 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #39
  br label %_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb8RowGroup19MergeIntoStatisticsEmRNS_14BaseStatisticsE.exit, %_ZNKSt14default_deleteIN6duckdb19TableStatisticsLockEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.br = load i64, ptr %i.p, align 8, !tbaa !1225
  %i.bs = icmp ult i64 %storemerge.i.lcssa, %i.br
  br i1 %i.bs, label %bb.f, label %bb.t, !llvm.loop !3351

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !93  ; 8 uses
  %.not.i.i.i41 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i41, label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bu, align 8, !tbaa !94
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !96
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #37, !inline_history !2941
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #37, !inline_history !2941
  br label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi i32 [ %i.bx, %bb.x ], [ %i.ch, %bb.y ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.z, label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit, !prof !99

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #37
  br label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret void

bb.aa:                                            ; preds = %.noexc24, %.noexc23, %.noexc, %bb.g, %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit, %bb.i, %._crit_edge75, %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc31, %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZNK6duckdb8RowGroup9GetColumnEm.exit.i, %.noexc37, %bb.s, %bb.r, %bb.q, %.noexc33, %bb.p, %_ZN6duckdb15TableStatistics8GetStatsERNS_19TableStatisticsLockEm.exit, %bb.o, %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #37
  br label %.body

.body:                                            ; preds = %bb.ac, %bb.m, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.ad ], [ %i.cl, %bb.ac ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %.body, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.aa ], [ %.pn, %.body ], [ %i.ck, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18RowGroupCollection21InitializeVacuumStateERNS_25CollectionCheckpointStateERNS_11VacuumStateE(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 1)) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::BlockIdDropper", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::BlockIdDropper", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 5 uses
  %6 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 6 uses
  %7 = alloca %"struct.duckdb::CheckpointOptions", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::vector.1993", align 8 ; 11 uses
  %9 = alloca %"class.duckdb::SegmentTree<duckdb::RowGroup, true>::SegmentNodeIterationHelper::SegmentIterator", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %10 = alloca %"class.duckdb::optional_idx", align 8 ; 6 uses
  %11 = alloca %"class.duckdb::optional_ptr.897", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3352, !nonnull !70, !align !145 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::CheckpointOptions") align 8 %7, ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2680
  %i.i = icmp ne i32 %i.h, 1                      ; 2 uses
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr %2, align 8, !tbaa !3382
  br i1 %i.i, label %bb.b, label %bb.bg

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = call noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.n = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(72) %i.m) #37 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb14TableIndexList5EmptyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.n) #40
  unreachable

_ZNK6duckdb14TableIndexList5EmptyEv.exit:         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3390
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !3391
  %i.s = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(72) %i.m) #37 ; 0 uses
  %i.t = icmp eq ptr %i.q, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.v = zext i1 %i.t to i8
  store i8 %i.v, ptr %i.u, align 1, !tbaa !3392
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3393
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !3394
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6duckdb14TableIndexList5EmptyEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #40
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNK6duckdb14TableIndexList5EmptyEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3395
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !3396 ; 7 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 4 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ad
  br i1 %i.al, label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i, label %bb.g

_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3397 ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aj
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #38
          to label %.noexc81 unwind label %bb.i   ; 7 uses

.noexc81:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.ah, %i.an
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc81
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %12 = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %12, %i.aj
  %13 = add i64 %i.as, -8                         ; 2 uses
  %i.at = lshr i64 %13, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 72
  %i.av = sub i64 %i.aj, %i.ar
  %diff.check = icmp ugt i64 %i.av, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader234, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ah, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ah, i64 %i.az ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3398)
  call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  %i.ba = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep190, align 8, !tbaa !24, !alias.scope !3401, !noalias !3398
  %wide.load191 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !24, !alias.scope !3401, !noalias !3398
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !24, !alias.scope !3398, !noalias !3401
  store <2 x i64> %wide.load191, ptr %i.bb, align 8, !tbaa !24, !alias.scope !3398, !noalias !3401
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !3403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.preheader234:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader234 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader234 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3398)
  call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !3401, !noalias !3398
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !3398, !noalias !3401
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3404

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc81
  %.not.i8.i = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #39
  br label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !3396
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store ptr %i.bg, ptr %i.am, align 8, !tbaa !3397
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ad
  store ptr %i.bh, ptr %i.af, align 8, !tbaa !3395
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !3405, !nonnull !70, !align !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.bk = invoke ptr @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE14GetRootSegmentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bj)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.bj, ptr %9, align 8, !tbaa !3221, !alias.scope !3406
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !1282, !alias.scope !3406
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !842, !alias.scope !3406
  %.not138156 = icmp eq ptr %i.bk, null
  br i1 %.not138156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bo = load i64, ptr @_ZN6duckdb18MAX_TRANSACTION_IDE, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.bs = load i64, ptr @_ZN6duckdb24COLUMN_IDENTIFIER_ROW_IDE, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.j:                                             ; preds = %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit.thread
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.l:                                             ; preds = %.lr.ph, %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !2318 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit unwind label %bb.q ; 14 uses

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit: ; preds = %bb.m
  %i.cb = load i64, ptr %i.bn, align 8, !tbaa !2681 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.bo
  br i1 %i.cc, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2367
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 144
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2367
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i, label %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i

_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i: ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  %i.cj = load atomic i8, ptr %i.ci seq_cst, align 8, !range !263, !noundef !70
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134

_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i: ; preds = %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cm = load atomic i64, ptr %i.cl seq_cst, align 8 ; 2 uses
  %i.cn = inttoptr i64 %i.cm to ptr
  store ptr %i.cn, ptr %6, align 8
  %.not.i89 = icmp eq i64 %i.cm, 0
  br i1 %.not.i89, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i
  invoke void @_ZNK6duckdb12optional_ptrINS_17RowVersionManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc90 unwind label %bb.r

.noexc90:                                         ; preds = %bb.o
  %i.co = load ptr, ptr %6, align 8, !tbaa !2580
  %i.cp = load atomic i64, ptr %i.ca seq_cst, align 8
  %i.cq = invoke noundef zeroext i1 @_ZN6duckdb17RowVersionManager24ShouldCheckpointRowGroupEmm(ptr noundef nonnull align 8 dereferenceable(336) %i.co, i64 noundef %i.cb, i64 noundef %i.cp)
          to label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit unwind label %bb.r

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134: ; preds = %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i, %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit: ; preds = %.noexc90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %i.cq, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread, label %bb.ao

bb.p:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.q:                                             ; preds = %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.r:                                             ; preds = %.noexc90, %bb.o
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread: ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit, %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134, %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.cu = invoke ptr @_ZN6duckdb8RowGroup14GetVersionInfoEv(ptr noundef nonnull align 8 dereferenceable(218) %i.ca)
          to label %.noexc94 unwind label %.loopexit.split-lp141 ; 2 uses

.noexc94:                                         ; preds = %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread
  store ptr %i.cu, ptr %5, align 8
  %.not.i92 = icmp eq ptr %i.cu, null
  %i.cv = load atomic i64, ptr %i.ca seq_cst, align 8 ; 2 uses
  br i1 %.not.i92, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc94
  invoke void @_ZNK6duckdb12optional_ptrINS_17RowVersionManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc95 unwind label %.loopexit.split-lp141

.noexc95:                                         ; preds = %bb.s
  %i.cw = load ptr, ptr %5, align 8, !tbaa !2580
  %i.cx = load atomic i64, ptr %i.ca seq_cst, align 8
  %i.cy = invoke noundef i64 @_ZN6duckdb17RowVersionManager24GetCommittedDeletedCountEm(ptr noundef nonnull align 8 dereferenceable(336) %i.cw, i64 noundef %i.cx)
          to label %.noexc96 unwind label %.loopexit.split-lp141
end_hunk_0
begin_hunk_1_@_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKlS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = load i64, ptr %3, align 8, !tbaa !24, !noalias !5301
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !926  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1639
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !116
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !98
  store i64 %i.p, ptr %i.h, align 8, !tbaa !98
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !117
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !117
  store ptr %i.j, ptr %i.g, align 8, !tbaa !35
  store i64 0, ptr %i.r, align 8, !tbaa !117
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !926
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !926
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = icmp eq ptr %.pre10, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = load i64, ptr %3, align 8, !tbaa !24, !noalias !5304
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !926  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1639
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !116
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !98
  store i64 %i.p, ptr %i.h, align 8, !tbaa !98
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !117
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !117
  store ptr %i.j, ptr %i.g, align 8, !tbaa !35
  store i64 0, ptr %i.r, align 8, !tbaa !117
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !926
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !926
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = icmp eq ptr %.pre9, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3397 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3396   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 9 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.s = load i64, ptr %2, align 8, !tbaa !24
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.s)
          to label %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit
  %3 = ptrtoint ptr %1 to i64
  %i.t = sub i64 %3, %i.e
  %4 = add i64 %i.t, -8                           ; 2 uses
  %i.u = lshr i64 %4, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.w = sub i64 %i.e, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  %i.ab = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep47, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  %wide.load48 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  store <2 x i64> %wide.load48, ptr %i.ac, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !5312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i.preheader70

.lr.ph.i.i.i.i.preheader70:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader70, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader70 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  %i.ae = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  store i64 %i.ae, ptr %.012.i.i.i.i, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5313

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i51 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27.preheader

.lr.ph.i.i.i.i27.preheader:                       ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %5 = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.d, %5
  %6 = add i64 %i.ai, -8                          ; 2 uses
  %i.aj = lshr i64 %6, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check54 = icmp ult i64 %6, 104
  br i1 %min.iters.check54, label %.lr.ph.i.i.i.i27.preheader69, label %vector.memcheck50

vector.memcheck50:                                ; preds = %.lr.ph.i.i.i.i27.preheader
  %i.al = sub i64 %.0.lcssa.i.i.i.i51, %i.m
  %i.am = add i64 %i.al, 7
  %diff.check52 = icmp ult i64 %i.am, 31
  br i1 %diff.check52, label %.lr.ph.i.i.i.i27.preheader69, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck50
  %n.vec57 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec57, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ah, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 %i.an
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next64, %vector.body58 ] ; 2 uses
  %i.aq = shl i64 %index59, 3                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ah, i64 %i.aq ; 2 uses
  %next.gep61 = getelementptr i8, ptr %1, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %i.ar = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load62 = load <2 x i64>, ptr %next.gep61, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  %wide.load63 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  %i.as = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x i64> %wide.load62, ptr %next.gep60, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  store <2 x i64> %wide.load63, ptr %i.as, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  %index.next64 = add nuw i64 %index59, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.at, label %middle.block65, label %vector.body58, !llvm.loop !5319

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %i.ak, %n.vec57
  br i1 %cmp.n66, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27.preheader69

.lr.ph.i.i.i.i27.preheader69:                     ; preds = %vector.memcheck50, %.lr.ph.i.i.i.i27.preheader, %middle.block65
  %.012.i.i.i.i28.ph = phi ptr [ %i.ah, %vector.memcheck50 ], [ %i.ah, %.lr.ph.i.i.i.i27.preheader ], [ %i.ao, %middle.block65 ]
  %.0911.i.i.i.i29.ph = phi ptr [ %1, %vector.memcheck50 ], [ %1, %.lr.ph.i.i.i.i27.preheader ], [ %i.ap, %middle.block65 ]
  br label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %.lr.ph.i.i.i.i27.preheader69, %.lr.ph.i.i.i.i27
  %.012.i.i.i.i28 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i27 ], [ %.012.i.i.i.i28.ph, %.lr.ph.i.i.i.i27.preheader69 ] ; 2 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.av, %.lr.ph.i.i.i.i27 ], [ %.0911.i.i.i.i29.ph, %.lr.ph.i.i.i.i27.preheader69 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %i.au = load i64, ptr %.0911.i.i.i.i29, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  store i64 %i.au, ptr %.012.i.i.i.i28, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27, !llvm.loop !5320

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i.i27, %middle.block65, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i31 = phi ptr [ %i.ah, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ao, %middle.block65 ], [ %i.aw, %.lr.ph.i.i.i.i27 ]
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !3396
  store ptr %.0.lcssa.i.i.i.i31, ptr %i.a, align 8, !tbaa !3397
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !3395
  ret void

bb.d:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #37 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.az

bb.g:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #41
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10VacuumTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb4TaskD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZN6duckdb4TaskD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !5321
  br label %_ZN6duckdb4TaskD2Ev.exit

_ZN6duckdb4TaskD2Ev.exit:                         ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

declare noundef zeroext i8 @_ZN6duckdb16BaseExecutorTask7ExecuteENS_17TaskExecutionModeE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb4Task10DescheduleEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 41, ptr %i.a, align 8, !tbaa !24
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %1, align 8, !tbaa !35
  %i.e = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.d, ptr noundef nonnull align 1 dereferenceable(41) @.str.210, i64 41, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7
end_hunk_1
