Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/symbolize?download=true
inline.NumInlined: 205
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internalL11ReadAddrMapEPFbPKcPKvS5_mPvES6_S6_m:bb.a
bb.ag:                                            ; preds = %.lr.ph56
  %i.cv = add nsw i32 %.054, 1
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph56
  %i.cw = icmp sgt i32 %.054, 1
  br i1 %i.cw, label %._crit_edge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1 = phi i32 [ %i.cv, %bb.ag ], [ %.054, %bb.ah ]
  %storemerge43 = getelementptr inbounds nuw i8, ptr %storemerge4355, i64 1 ; 3 uses
  store ptr %storemerge43, ptr %i.b, align 8, !tbaa !12
  %exitcond68.not = icmp eq ptr %storemerge43, %i.ae
  br i1 %exitcond68.not, label %._crit_edge, label %.lr.ph56, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.ai, %bb.ah, %_ZN4absl12lts_2026052618debugging_internalL6GetHexEPKcS3_Pm.exit
  %i.cx = invoke noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  br i1 %i.cx, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = icmp eq ptr %.pre, %i.ae
  br i1 %i.cy, label %.critedge.critedge37, label %bb.al, !llvm.loop !104

bb.al:                                            ; preds = %bb.ak
  %i.cz = load i8, ptr %.pre, align 1, !tbaa !13
  %i.da = icmp eq i8 %i.cz, 91
  br i1 %i.da, label %.critedge.critedge37, label %bb.an, !llvm.loop !104

bb.am:                                            ; preds = %bb.an, %._crit_edge
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.de = load i64, ptr %i.e, align 8, !tbaa !31
  %i.df = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer15RegisterObjFileEPKcPKvS7_mPv(ptr noundef %.pre, ptr noundef %i.dc, ptr noundef %i.dd, i64 noundef %i.de, ptr noundef nonnull %0)
          to label %_ZN4absl12lts_2026052618debugging_internalL16ShouldUseMappingEPKc.exit.thread unwind label %bb.am

_ZN4absl12lts_2026052618debugging_internalL16ShouldUseMappingEPKc.exit.thread: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br i1 %i.df, label %.critedge.backedge, label %.loopexit

.critedge.backedge.sink.split:                    ; preds = %_ZN4absl12lts_2026052618debugging_internalL16ShouldUseMappingEPKc.exit, %bb.ac, %.critedge.critedge37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge.backedge.sink.split, %_ZN4absl12lts_2026052618debugging_internalL16ShouldUseMappingEPKc.exit.thread
  br label %.critedge

.thread31:                                        ; preds = %bb.x, %.critedge2.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.loopexit.sink.split.sink.split

bb.ao:                                            ; preds = %bb.ab, %bb.am, %bb.y
  %.pn46 = phi { ptr, i32 } [ %i.br, %bb.y ], [ %i.db, %bb.am ], [ %i.bx, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.r
  %.pn48 = phi { ptr, i32 } [ %i.ay, %bb.r ], [ %.pn46, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.k
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.ap ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.as

.loopexit.sink.split.sink.split:                  ; preds = %bb.q, %.thread31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.noexc, %bb.j, %.noexc57, %.loopexit.sink.split.sink.split
  %.6.ph = phi i1 [ false, %.loopexit.sink.split.sink.split ], [ true, %.noexc57 ], [ true, %bb.j ], [ true, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052618debugging_internalL16ShouldUseMappingEPKc.exit.thread, %.loopexit.sink.split
  %.6 = phi i1 [ %.6.ph, %.loopexit.sink.split ], [ true, %_ZN4absl12lts_2026052618debugging_internalL16ShouldUseMappingEPKc.exit.thread ]
  %i.dg = invoke i32 @close(i32 noundef %i.h)
          to label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev.exit unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %.loopexit
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  tail call void @__clang_call_terminate(ptr %i.di) #28
  unreachable

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev.exit: ; preds = %bb.d, %.loopexit
  %.635 = phi i1 [ %.6, %.loopexit ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.635

bb.as:                                            ; preds = %bb.aq, %bb.e
  %.pn51 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %.pn48.pn, %bb.aq ]
  call fastcc void @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev(i32 %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn51
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer15RegisterObjFileEPKcPKvS7_mPv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load i64, ptr %4, align 8, !tbaa !38    ; 5 uses
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val51 = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr [336 x i8], ptr %.val51, i64 %.val ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -336     ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 -320     ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 4 uses
  %i.f = icmp ugt ptr %i.e, %2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !53
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 53), i32 noundef 1254, ptr noundef nonnull @.str.18, i64 noundef %i.g, ptr noundef %0, i64 noundef %i.h, ptr noundef %i.i)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.e, %2
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.b, i64 -328
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %.not49 = icmp eq ptr %i.l, %1
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !53  ; 2 uses
  br i1 %.not49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pre, ptr noundef nonnull dereferenceable(1) %0) #26
  %.not50 = icmp eq i32 %i.m, 0
  br i1 %.not50, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = ptrtoint ptr %2 to i64                   ; 2 uses
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 53), i32 noundef 1263, ptr noundef nonnull @.str.19, i64 noundef %i.n, ptr noundef %0, i64 noundef %i.n, ptr noundef %.pre)
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.o = icmp eq ptr %i.e, %1
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.b, i64 -328
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr i8, ptr %i.b, i64 -312
  %i.t = load i64, ptr %i.s, align 8, !tbaa !56
  %i.u = sub i64 %i.r, %i.t
  %i.v = ptrtoint ptr %1 to i64
  %i.w = sub i64 %i.v, %3
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %0) #26
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !109
  %i.ad = icmp eq i64 %.val, %i.ac
  br i1 %i.ad, label %bb.m, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !39
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = shl i64 %.val, 1
  %i.af = add i64 %i.ae, 50                       ; 2 uses
  %i.ag = mul i64 %i.af, 336
  %i.ah = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal12SigSafeArenaEv()
  %i.ai = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.ag, ptr noundef %i.ah) ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39 ; 7 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load i64, ptr %4, align 8, !tbaa !38    ; 2 uses
  %.idx.i.i.i.i = mul i64 %i.al, 336              ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.i.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.n
  %5 = add i64 %.idx.i.i.i.i, -336                ; 2 uses
  %6 = udiv i64 %5, 336
  %7 = and i64 %6, 1
  %lcmp.mod.not.not = icmp eq i64 %7, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.ai, ptr noundef nonnull align 8 dereferenceable(336) %i.ak, i64 328, i1 false)
  %8 = getelementptr inbounds nuw i8, ptr %i.ai, i64 328
  %9 = getelementptr inbounds nuw i8, ptr %i.ak, i64 328 ; 2 uses
  %10 = load i64, ptr %9, align 8, !tbaa !41
  store i64 %10, ptr %8, align 8, !tbaa !41
  store ptr null, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds nuw i8, ptr %i.ak, i64 336
  %12 = getelementptr inbounds nuw i8, ptr %i.ai, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %12, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.010.012.i.i.i.i.i.i.i.unr = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %11, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %13 = icmp ult i64 %5, 336
  br i1 %13, label %_ZSt20uninitialized_move_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmS5_ESt4pairIT_T1_ES7_T0_S8_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.010.012.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.010.012.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.013.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.010.012.i.i.i.i.i.i.i, i64 328, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 328
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i.i.i.i.i.i, i64 328 ; 2 uses
  %16 = load i64, ptr %15, align 8, !tbaa !41
  store i64 %16, ptr %14, align 8, !tbaa !41
  store ptr null, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i.i.i.i.i.i, i64 336
  %18 = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %18, ptr noundef nonnull align 8 dereferenceable(336) %17, i64 328, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 664
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i.i.i.i.i.i, i64 664 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !41
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !41
  store ptr null, ptr %i.ao, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i.i.i.i.i.i, i64 672 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 672
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.aq, %i.am
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt20uninitialized_move_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmS5_ESt4pairIT_T1_ES7_T0_S8_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !106

_ZSt20uninitialized_move_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmS5_ESt4pairIT_T1_ES7_T0_S8_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  %.pre6.i = load i64, ptr %4, align 8, !tbaa !38 ; 2 uses
  %.not6.i.i.i.i = icmp eq i64 %.pre6.i, 0
  br i1 %.not6.i.i.i.i, label %_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt20uninitialized_move_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmS5_ESt4pairIT_T1_ES7_T0_S8_.exit.i, %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEEvPT_.exit.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.ay, %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEEvPT_.exit.i.i.i.i ], [ %.pre6.i, %_ZSt20uninitialized_move_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmS5_ESt4pairIT_T1_ES7_T0_S8_.exit.i ]
  %.047.i.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEEvPT_.exit.i.i.i.i ], [ %.pre.i, %_ZSt20uninitialized_move_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmS5_ESt4pairIT_T1_ES7_T0_S8_.exit.i ] ; 2 uses
  %i.as = getelementptr i8, ptr %.047.i.i.i.i, i64 328
  %.04.val.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !41 ; 4 uses
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %.04.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEEvPT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.at = load ptr, ptr %.04.val.i.i.i.i, align 8, !tbaa !43
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.04.val.i.i.i.i) #24, !inline_history !107
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %.04.val.i.i.i.i)
          to label %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEEvPT_.exit.i.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #28
  unreachable

_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEEvPT_.exit.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i, i64 336
  %i.ay = add i64 %.08.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i, label %_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !108

_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEEvPT_.exit.i.i.i.i
  %.pre7.i = load ptr, ptr %i.aj, align 8, !tbaa !39
  br label %_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.i

_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.i: ; preds = %_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.loopexit.i, %_ZSt20uninitialized_move_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmS5_ESt4pairIT_T1_ES7_T0_S8_.exit.i, %bb.n
  %i.az = phi ptr [ %.pre7.i, %_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.loopexit.i ], [ %.pre.i, %_ZSt20uninitialized_move_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmS5_ESt4pairIT_T1_ES7_T0_S8_.exit.i ], [ %i.ak, %bb.n ]
  tail call void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.az)
  br label %bb.q

bb.q:                                             ; preds = %_ZSt9destroy_nIPN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileEmET_S6_T0_.exit.i, %bb.m
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !39
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !109
  %.pre9.i = load i64, ptr %4, align 8, !tbaa !38
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit: ; preds = %._crit_edge.i, %bb.q
  %i.ba = phi i64 [ %.val, %._crit_edge.i ], [ %.pre9.i, %bb.q ] ; 2 uses
  %i.bb = phi ptr [ %.pre8.i, %._crit_edge.i ], [ %i.ai, %bb.q ]
  %i.bc = add i64 %i.ba, 1
  store i64 %i.bc, ptr %4, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw [336 x i8], ptr %i.bb, i64 %i.ba ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.bd, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.be, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 36 ; 2 uses
  store i32 -1, ptr %i.bf, align 4, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.bg, i8 0, i64 296, i1 false)
  %i.bh = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #26
  %i.bi = add i64 %i.bh, 1                        ; 2 uses
  %i.bj = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal12SigSafeArenaEv()
  %i.bk = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.bi, ptr noundef %i.bj) ; 3 uses
  %.not.i52 = icmp eq ptr %i.bk, null
  br i1 %.not.i52, label %bb.r, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit, !prof !24

bb.r:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 53), i32 noundef 294, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  unreachable

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull readonly align 1 %0, i64 %i.bi, i1 false)
  store ptr %i.bk, ptr %i.bd, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %1, ptr %i.bl, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %2, ptr %i.bm, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %3, ptr %i.bn, align 8, !tbaa !56
  store i32 -1, ptr %i.bf, align 4, !tbaa !55
  store i32 -1, ptr %i.be, align 8, !tbaa !52
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.f, %bb.k, %bb.g, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110Symbolizer12ClearAddrMapEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(22576) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val8 = load i64, ptr %0, align 16, !tbaa !38
  %.not9 = icmp eq i64 %.val8, 0
  br i1 %.not9, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap5ClearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %bb.g
  %.not4.i = icmp eq i64 %i.s, 0
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap5ClearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit.i, %.lr.ph.i
  %i.c = phi i64 [ %i.s, %.lr.ph.i ], [ %i.j, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit.i ]
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.k, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit.i ] ; 2 uses
  %.val.i = load ptr, ptr %i.b, align 16, !tbaa !39
  %i.d = getelementptr inbounds nuw [336 x i8], ptr %.val.i, i64 %.05.i
  %i.e = getelementptr i8, ptr %i.d, i64 328
  %.val3.i = load ptr, ptr %i.e, align 8, !tbaa !41 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.val3.i, align 8, !tbaa !43
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.val3.i) #24, !inline_history !110
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %.val3.i)
          to label %._ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit_crit_edge.i unwind label %bb.d

._ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit_crit_edge.i: ; preds = %bb.c
  %.pre.i = load i64, ptr %0, align 16, !tbaa !38
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #28
  unreachable

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit.i: ; preds = %._ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit_crit_edge.i, %bb.b
  %i.j = phi i64 [ %.pre.i, %._ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit_crit_edge.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.k = add i64 %.05.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.k, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap5ClearEv.exit, label %bb.b, !llvm.loop !111

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17AddrMap5ClearEv.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_17ObjFileD2Ev.exit.i, %bb.a, %._crit_edge
  store i64 0, ptr %0, align 16, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.l, align 1, !tbaa !37
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.g ] ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 16, !tbaa !39
  %i.m = getelementptr inbounds nuw [336 x i8], ptr %.val7, i64 %.010 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  tail call void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @close(i32 noundef %i.p)   ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = add i64 %.010, 1                         ; 4 uses
  %.val = load i64, ptr %0, align 16, !tbaa !38
  %.not = icmp eq i64 %i.s, %.val
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !112
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke fastcc noundef i32 @"_ZZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcENK3$_0clEv"()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr @_ZZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd, align 4, !tbaa !14
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load i32, ptr @_ZZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd, align 4, !tbaa !14
  %i.f = icmp sgt i32 %i.e, 999
end_hunk_0
