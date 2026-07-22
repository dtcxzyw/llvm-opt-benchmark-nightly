inline.NumInlined: 3702
inline.NumDeleted: 1232
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6duckdb9ListStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm:bb.a
  store i32 0, ptr %i.ii, align 4, !tbaa !39
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #28, !inline_history !327
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #28, !inline_history !327
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.iq = add nsw i32 %i.ih, -1
  store i32 %i.iq, ptr %i.ie, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ir = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.ih, %bb.t ], [ %i.ir, %bb.u ]
  %i.is = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.is, label %bb.v, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !44

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i77 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i77, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 4 uses
  %i.iw = load atomic i64, ptr %i.iv acquire, align 8 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 4294967297
  %i.iy = trunc i64 %i.iw to i32                  ; 2 uses
  br i1 %i.ix, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.iv, align 8, !tbaa !37
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  store i32 0, ptr %i.iz, align 4, !tbaa !39
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !40
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #28, !inline_history !313
  %i.jd = load ptr, ptr %i.iu, align 8, !tbaa !40
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #28, !inline_history !313
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.y:                                             ; preds = %bb.w
  %i.jg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jh = add nsw i32 %i.iy, -1
  store i32 %i.jh, ptr %i.iv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ji = atomicrmw volatile add ptr %i.iv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.iy, %bb.z ], [ %i.ji, %bb.aa ]
  %i.jj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !44

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.x, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 4 uses
  %i.jn = load atomic i64, ptr %i.jm acquire, align 8 ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 4294967297
  %i.jp = trunc i64 %i.jn to i32                  ; 2 uses
  br i1 %i.jo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.jm, align 8, !tbaa !37
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  store i32 0, ptr %i.jq, align 4, !tbaa !39
  %i.jr = load ptr, ptr %i.jl, align 8, !tbaa !40
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.jl) #28, !inline_history !314
  %i.ju = load ptr, ptr %i.jl, align 8, !tbaa !40
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jl) #28, !inline_history !314
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.jx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jy = add nsw i32 %i.jp, -1
  store i32 %i.jy, ptr %i.jm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ag:                                            ; preds = %bb.ae
  %i.jz = atomicrmw volatile add ptr %i.jm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.jp, %bb.af ], [ %i.jz, %bb.ag ]
  %i.ka = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ka, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !44

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jl) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  br label %.body

.body:                                            ; preds = %bb.i, %bb.ai
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kb, %bb.ai ], [ %i.fr, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.k, %.body, %bb.j
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.j ], [ %i.ft, %bb.k ], [ %.pn.pn.pn.pn.pn, %.body ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11StructStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !292
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ]  ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.09
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.09)
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  tail call void @_ZNK6duckdb14BaseStatistics6VerifyERNS_6VectorERKNS_15SelectionVectorEmb(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i1 noundef zeroext true)
  %i.j = add nuw i64 %.09, 1                      ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.j, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !293
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10ArrayStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb10ArrayStats13GetChildStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not108 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = load ptr, ptr %2, align 8, !tbaa !294    ; 7 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !301
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !294  ; 7 uses
  %.not.i60 = icmp eq ptr %i.g, null              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !311  ; 13 uses
  %.not.i62 = icmp eq ptr %i.i, null
  br i1 %.not.i62, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not.i60, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader: ; preds = %.lr.ph.split.split.us
  %xtraiter196 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader
  %unroll_iter200 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader: ; preds = %.lr.ph.split.split.us
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader178, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader
  %n.vec = and i64 %3, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi157 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.k = lshr i64 %index, 6
  %i.l = lshr i64 %index, 6
  %i.m = and <2 x i64> %vec.ind, splat (i64 63)
  %i.n = and <2 x i64> %step.add, splat (i64 63)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !123
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.r = load i64, ptr %i.p, align 8, !tbaa !123
  %broadcast.splatinsert158 = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat159 = shufflevector <2 x i64> %broadcast.splatinsert158, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.s = shl nuw <2 x i64> splat (i64 1), %i.m
  %i.t = shl nuw <2 x i64> splat (i64 1), %i.n
  %i.u = and <2 x i64> %broadcast.splat, %i.s
  %i.v = and <2 x i64> %broadcast.splat159, %i.t
  %i.w = freeze <2 x i64> %i.u
  %i.x = freeze <2 x i64> %i.v
  %i.y = icmp ne <2 x i64> %i.w, zeroinitializer
  %i.z = icmp ne <2 x i64> %i.x, zeroinitializer
  %i.aa = zext <2 x i1> %i.y to <2 x i64>
  %i.ab = zext <2 x i1> %i.z to <2 x i64>
  %i.ac = add <2 x i64> %vec.phi, %i.aa           ; 2 uses
  %i.ad = add <2 x i64> %vec.phi157, %i.ab        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ad, %i.ac
  %i.af = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader178

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader178: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader, %middle.block
  %.04375.us76.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader ], [ %i.af, %middle.block ]
  %.04974.us77.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader178, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us
  %.04375.us76.us = phi i64 [ %i.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us ], [ %.04375.us76.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader178 ]
  %.04974.us77.us = phi i64 [ %i.ao, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us ], [ %.04974.us77.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us.preheader178 ] ; 3 uses
  %i.ag = lshr i64 %.04974.us77.us, 6
  %i.ah = and i64 %.04974.us77.us, 63
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ag
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.ak = shl nuw i64 1, %i.ah
  %i.al = and i64 %i.aj, %i.ak
  %.fr.us.us = freeze i64 %i.al
  %.not73.us.us = icmp ne i64 %.fr.us.us, 0
  %i.am = zext i1 %.not73.us.us to i64
  %i.an = add i64 %.04375.us76.us, %i.am          ; 2 uses
  %i.ao = add nuw i64 %.04974.us77.us, 1          ; 2 uses
  %exitcond129.not = icmp eq i64 %i.ao, %3
  br i1 %exitcond129.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us, !llvm.loop !329

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader.new
  %.04375.us76 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader.new ], [ %i.bl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78 ]
  %.04974.us77 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader.new ], [ %i.bm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78 ] ; 3 uses
  %niter201 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader.new ], [ %niter201.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04974.us77
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 6
  %i.at = and i64 %i.ar, 63
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.as
  %i.av = load i64, ptr %i.au, align 8, !tbaa !123
  %i.aw = shl nuw i64 1, %i.at
  %i.ax = and i64 %i.av, %i.aw
  %.fr.us = freeze i64 %i.ax
  %.not73.us = icmp ne i64 %.fr.us, 0
  %i.ay = zext i1 %.not73.us to i64
  %i.az = add i64 %.04375.us76, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04974.us77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  %i.bf = and i64 %i.bd, 63
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.be
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !123
  %i.bi = shl nuw i64 1, %i.bf
  %i.bj = and i64 %i.bh, %i.bi
  %.fr.us.1 = freeze i64 %i.bj
  %.not73.us.1 = icmp ne i64 %.fr.us.1, 0
  %i.bk = zext i1 %.not73.us.1 to i64
  %i.bl = add i64 %i.az, %i.bk                    ; 3 uses
  %i.bm = add nuw i64 %.04974.us77, 2             ; 2 uses
  %niter201.next.1 = add nuw i64 %niter201, 2     ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %._crit_edge.loopexit182.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78, !llvm.loop !330

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not.i60, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph.split.split
  %xtraiter = and i64 %3, 1
  %i.bn = icmp eq i64 %3, 1
  br i1 %i.bn, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader: ; preds = %.lr.ph.split.split
  %xtraiter190 = and i64 %3, 1
  %i.bo = icmp eq i64 %3, 1
  br i1 %i.bo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader
  %unroll_iter194 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader.new
  %.04375.us83 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader.new ], [ %i.cl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82 ]
  %.04974.us84 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader.new ], [ %i.cm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82 ] ; 3 uses
  %niter195 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader.new ], [ %niter195.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82 ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04974.us84
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = and i64 %i.br, 63
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bs
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !123
  %i.bw = shl nuw i64 1, %i.bt
  %i.bx = and i64 %i.bv, %i.bw
  %.fr.us86 = freeze i64 %i.bx
  %.not73.us87 = icmp ne i64 %.fr.us86, 0
  %i.by = zext i1 %.not73.us87 to i64
  %i.bz = add i64 %.04375.us83, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04974.us84
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = lshr i64 %i.cd, 6
  %i.cf = and i64 %i.cd, 63
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ce
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !123
  %i.ci = shl nuw i64 1, %i.cf
  %i.cj = and i64 %i.ch, %i.ci
  %.fr.us86.1 = freeze i64 %i.cj
  %.not73.us87.1 = icmp ne i64 %.fr.us86.1, 0
  %i.ck = zext i1 %.not73.us87.1 to i64
  %i.cl = add i64 %i.bz, %i.ck                    ; 3 uses
  %i.cm = add nuw i64 %.04974.us84, 2             ; 2 uses
  %niter195.next.1 = add nuw i64 %niter195, 2     ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %._crit_edge.loopexit184.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82, !llvm.loop !330

._crit_edge.loopexit182.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.epil.preheader: ; preds = %._crit_edge.loopexit182.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader
  %.04375.us76.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader ], [ %i.bl, %._crit_edge.loopexit182.unr-lcssa ]
  %.04974.us77.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.preheader ], [ %i.bm, %._crit_edge.loopexit182.unr-lcssa ]
  %lcmp.mod199 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod199)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04974.us77.epil.init
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = and i64 %i.cp, 63
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !123
  %i.cu = shl nuw i64 1, %i.cr
  %i.cv = and i64 %i.ct, %i.cu
  %.fr.us.epil = freeze i64 %i.cv
  %.not73.us.epil = icmp ne i64 %.fr.us.epil, 0
  %i.cw = zext i1 %.not73.us.epil to i64
  %i.cx = add i64 %.04375.us76.epil.init, %i.cw
  br label %._crit_edge

._crit_edge.loopexit184.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.epil.preheader: ; preds = %._crit_edge.loopexit184.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader
  %.04375.us83.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader ], [ %i.cl, %._crit_edge.loopexit184.unr-lcssa ]
  %.04974.us84.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.preheader ], [ %i.cm, %._crit_edge.loopexit184.unr-lcssa ]
  %lcmp.mod193 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04974.us84.epil.init
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = and i64 %i.da, 63
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !123
  %i.df = shl nuw i64 1, %i.dc
  %i.dg = and i64 %i.de, %i.df
  %.fr.us86.epil = freeze i64 %i.dg
  %.not73.us87.epil = icmp ne i64 %.fr.us86.epil, 0
  %i.dh = zext i1 %.not73.us87.epil to i64
  %i.di = add i64 %.04375.us83.epil.init, %i.dh
  br label %._crit_edge

._crit_edge.loopexit186.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit186.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.04375.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.fj, %._crit_edge.loopexit186.unr-lcssa ]
  %.04974.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.fk, %._crit_edge.loopexit186.unr-lcssa ]
  %lcmp.mod189 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod189)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04974.epil.init
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = lshr i64 %i.do, 6
  %i.dq = and i64 %i.do, 63
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dp
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !123
  %i.dt = shl nuw i64 1, %i.dq
  %i.du = and i64 %i.ds, %i.dt
  %.fr.epil = freeze i64 %i.du
  %.not73.epil = icmp ne i64 %.fr.epil, 0
  %i.dv = zext i1 %.not73.epil to i64
  %i.dw = add i64 %.04375.epil.init, %i.dv
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit186.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.epil.preheader, %._crit_edge.loopexit184.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.epil.preheader, %._crit_edge.loopexit182.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us, %middle.block, %.lr.ph, %.preheader
  %.043.lcssa = phi i64 [ 0, %.preheader ], [ %i.cx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.epil.preheader ], [ %i.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us78.us ], [ %3, %.lr.ph ], [ %i.di, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us82.epil.preheader ], [ %i.af, %middle.block ], [ %i.bl, %._crit_edge.loopexit182.unr-lcssa ], [ %i.cl, %._crit_edge.loopexit184.unr-lcssa ], [ %i.fj, %._crit_edge.loopexit186.unr-lcssa ], [ %i.dw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dx = mul i64 %.043.lcssa, %i.d
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.dx)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.b

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %._crit_edge
  br i1 %.not108, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.lr.ph105

.lr.ph105:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.dz = load ptr, ptr %2, align 8, !tbaa !294   ; 2 uses
  %.not.i63 = icmp eq ptr %i.dz, null
  %i.ea = load ptr, ptr %4, align 8, !tbaa !301
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !294 ; 2 uses
  %.not.i65 = icmp eq ptr %i.eb, null
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !311 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ed, null
  %.not110 = icmp eq i64 %i.d, 0                  ; 2 uses
  %i.ee = load ptr, ptr %5, align 8               ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.d, i64 1) ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.d, 8
  %n.vec164 = and i64 %umax, -8                   ; 4 uses
  %cmp.n174 = icmp eq i64 %i.d, %n.vec164
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dy) #28
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.04375 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.fj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.04974 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.fk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04974
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = lshr i64 %i.em, 6
  %i.eo = and i64 %i.em, 63
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.en
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !123
  %i.er = shl nuw i64 1, %i.eo
  %i.es = and i64 %i.eq, %i.er
  %.fr = freeze i64 %i.es
  %.not73 = icmp ne i64 %.fr, 0
  %i.et = zext i1 %.not73 to i64
  %i.eu = add i64 %.04375, %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04974
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = lshr i64 %i.fb, 6
  %i.fd = and i64 %i.fb, 63
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.fc
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !123
  %i.fg = shl nuw i64 1, %i.fd
  %i.fh = and i64 %i.ff, %i.fg
  %.fr.1 = freeze i64 %i.fh
  %.not73.1 = icmp ne i64 %.fr.1, 0
  %i.fi = zext i1 %.not73.1 to i64
  %i.fj = add i64 %i.eu, %i.fi                    ; 3 uses
  %i.fk = add nuw i64 %.04974, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit186.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !330

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %.046.lcssa = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader ], [ %.248, %_ZN6duckdb15SelectionVectorC2Em.exit ]
  invoke void @_ZNK6duckdb14BaseStatistics6VerifyERNS_6VectorERKNS_15SelectionVectorEmb(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.046.lcssa, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.aa

bb.d:                                             ; preds = %.lr.ph105, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.045104 = phi i64 [ 0, %.lr.ph105 ], [ %i.gn, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 3 uses
  %.046103 = phi i64 [ 0, %.lr.ph105 ], [ %.248, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 5 uses
  br i1 %.not.i63, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit64, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.045104
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = zext i32 %i.fm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit64

_ZNK6duckdb15SelectionVector9get_indexEm.exit64:  ; preds = %bb.e, %bb.d
  %i.fo = phi i64 [ %i.fn, %bb.e ], [ %.045104, %bb.d ] ; 2 uses
  br i1 %.not.i65, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit66, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = zext i32 %i.fq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit66

_ZNK6duckdb15SelectionVector9get_indexEm.exit66:  ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit64
  %i.fs = phi i64 [ %i.fr, %bb.f ], [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit64 ] ; 3 uses
  %i.ft = mul i64 %i.fs, %i.d                     ; 2 uses
  br i1 %.not.i67, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader, label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit66
  %i.fu = lshr i64 %i.fs, 6
  %i.fv = and i64 %i.fs, 63
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fu
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !123
  %i.fy = shl nuw i64 1, %i.fv
  %i.fz = and i64 %i.fx, %i.fy
  %.not = icmp eq i64 %i.fz, 0
  %brmerge = or i1 %.not, %.not110
  br i1 %brmerge, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader111

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit66
  br i1 %.not110, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader111

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader111: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader, %bb.g
  br i1 %min.iters.check161, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader177, label %vector.ph162

vector.ph162:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader111
  %i.ga = add i64 %.046103, %n.vec164             ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i64> poison, i64 %i.ft, i64 0
  %broadcast.splat166 = shufflevector <4 x i64> %broadcast.splatinsert165, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat166
  %i.gb = getelementptr [4 x i8], ptr %i.ee, i64 %.046103
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph162
  %index168 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body167 ] ; 2 uses
  %vec.ind169 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph162 ], [ %vec.ind.next172, %vector.body167 ] ; 3 uses
  %i.gc = add <4 x i64> %vec.ind169, %broadcast.splat166
  %.reass = add <4 x i64> %vec.ind169, %invariant.op
  %i.gd = trunc <4 x i64> %i.gc to <4 x i32>
  %i.ge = trunc <4 x i64> %.reass to <4 x i32>
  %i.gf = getelementptr [4 x i8], ptr %i.gb, i64 %index168 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <4 x i32> %i.gd, ptr %i.gf, align 4, !tbaa !3
  store <4 x i32> %i.ge, ptr %i.gg, align 4, !tbaa !3
  %index.next171 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next172 = add nuw <4 x i64> %vec.ind169, splat (i64 8)
  %i.gh = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.gh, label %middle.block173, label %vector.body167, !llvm.loop !331

middle.block173:                                  ; preds = %vector.body167
  br i1 %cmp.n174, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader177

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader177: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader111, %middle.block173
  %.0100.ph = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader111 ], [ %n.vec164, %middle.block173 ]
  %.14799.ph = phi i64 [ %.046103, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader111 ], [ %i.ga, %middle.block173 ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader177, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69
  %.0100 = phi i64 [ %i.gm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69 ], [ %.0100.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader177 ] ; 2 uses
  %.14799 = phi i64 [ %i.gl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69 ], [ %.14799.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader177 ] ; 2 uses
  %i.gi = add i64 %.0100, %i.ft
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.14799
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !3
  %i.gl = add i64 %.14799, 1                      ; 2 uses
  %i.gm = add nuw i64 %.0100, 1                   ; 2 uses
  %exitcond130.not = icmp eq i64 %i.gm, %umax
  br i1 %exitcond130.not, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69, !llvm.loop !332

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69, %middle.block173, %bb.g, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader
  %.248 = phi i64 [ %.046103, %bb.g ], [ %.046103, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.preheader ], [ %i.ga, %middle.block173 ], [ %i.gl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69 ] ; 2 uses
  %i.gn = add nuw i64 %.045104, 1                 ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gn, %3
  br i1 %exitcond131.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %bb.d, !llvm.loop !333

bb.h:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.gq, align 8, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !39
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !40
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #28, !inline_history !327
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !40
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #28, !inline_history !327
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.gt, %bb.l ], [ %i.hd, %bb.m ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.he, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !44

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i70, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  %i.hi = load atomic i64, ptr %i.hh acquire, align 8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 4294967297
  %i.hk = trunc i64 %i.hi to i32                  ; 2 uses
  br i1 %i.hj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.hh, align 8, !tbaa !37
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !39
  %i.hm = load ptr, ptr %i.hg, align 8, !tbaa !40
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #28, !inline_history !313
  %i.hp = load ptr, ptr %i.hg, align 8, !tbaa !40
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #28, !inline_history !313
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.q:                                             ; preds = %bb.o
  %i.hs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ht = add nsw i32 %i.hk, -1
  store i32 %i.ht, ptr %i.hh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.hu = atomicrmw volatile add ptr %i.hh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.hk, %bb.r ], [ %i.hu, %bb.s ]
  %i.hv = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.hv, label %bb.t, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !44

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.hy, align 8, !tbaa !37
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !39
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !40
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #28, !inline_history !314
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !40
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #28, !inline_history !314
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.y:                                             ; preds = %bb.w
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ib, %bb.x ], [ %i.il, %bb.y ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.im, label %bb.z, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !44

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.aa:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  br label %.body

.body:                                            ; preds = %bb.b, %bb.aa
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.in, %bb.aa ], [ %i.ef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ab

bb.ab:                                            ; preds = %.body, %bb.c
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.c ], [ %.pn.pn.pn.pn.pn, %.body ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb13GeometryStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #15 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb12VariantStats6VerifyERKNS_14BaseStatisticsERNS_6VectorERKNS_15SelectionVectorEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #15 align 2 {
bb.a:
  ret void
}

declare void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #1

declare void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #1

declare void @_ZNK6duckdb6Vector8ToStringB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_0
