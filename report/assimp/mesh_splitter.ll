inline.NumInlined: 607
inline.NumDeleted: 343
begin_hunk_0_@_ZN12MeshSplitter7ExecuteEP7aiScene:bb.a
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = trunc nuw i64 %indvars.iv to i32
  invoke void @_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.n, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.a, align 8              ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !3

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %.pre46 = load ptr, ptr %2, align 8
  br label %bb.l

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.j, ptr %i.a, align 8
  %i.v = lshr exact i64 %i.h, 1
  %i.w = and i64 %i.v, 34359738360                ; 2 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #15
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.w, i1 false)
  store ptr %i.x, ptr %i.s, align 8
  %.not39 = icmp eq i32 %i.j, 0
  br i1 %.not39, label %._crit_edge37, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %bb.h
  %wide.trip.count = and i64 %i.i, 4294967295
  %i.y = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.z = icmp ult i64 %i.y, 3
  br i1 %i.z, label %.lr.ph36.epil.preheader, label %.lr.ph36.preheader.new

.lr.ph36.preheader.new:                           ; preds = %.lr.ph36.preheader
  %unroll_iter = and i64 %i.i, 4294967292
  br label %.lr.ph36

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %.lr.ph36
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.lr.ph36.epil.preheader

.lr.ph36.epil.preheader:                          ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36.preheader
  %indvars.iv42.epil.init = phi i64 [ 0, %.lr.ph36.preheader ], [ %indvars.iv.next43.3, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph36.epil

.lr.ph36.epil:                                    ; preds = %.lr.ph36.epil, %.lr.ph36.epil.preheader
  %indvars.iv42.epil = phi i64 [ %indvars.iv42.epil.init, %.lr.ph36.epil.preheader ], [ %indvars.iv.next43.epil, %.lr.ph36.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph36.epil.preheader ], [ %epil.iter.next, %.lr.ph36.epil ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv42.epil
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv42.epil
  store ptr %i.ab, ptr %i.ad, align 8
  %indvars.iv.next43.epil = add nuw nsw i64 %indvars.iv42.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge37, label %.lr.ph36.epil, !llvm.loop !5

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36.epil, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void @_ZN12MeshSplitter10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS6_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %._crit_edge37, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.lr.ph36:                                         ; preds = %.lr.ph36, %.lr.ph36.preheader.new
  %indvars.iv42 = phi i64 [ 0, %.lr.ph36.preheader.new ], [ %indvars.iv.next43.3, %.lr.ph36 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph36.preheader.new ], [ %niter.next.3, %.lr.ph36 ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv42
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.s, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv42
  store ptr %i.ai, ptr %i.ak, align 8
  %indvars.iv.next43 = or disjoint i64 %indvars.iv42, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next43
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.s, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next43
  store ptr %i.am, ptr %i.ao, align 8
  %indvars.iv.next43.1 = or disjoint i64 %indvars.iv42, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next43.1
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.s, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next43.1
  store ptr %i.aq, ptr %i.as, align 8
  %indvars.iv.next43.2 = or disjoint i64 %indvars.iv42, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next43.2
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load ptr, ptr %i.s, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next43.2
  store ptr %i.au, ptr %i.aw, align 8
  %indvars.iv.next43.3 = add nuw nsw i64 %indvars.iv42, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge37.loopexit.unr-lcssa, label %.lr.ph36, !llvm.loop !7

bb.j:                                             ; preds = %._crit_edge37, %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.ba) #14
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

bb.l:                                             ; preds = %bb.i, %bb.d
  %i.bb = phi ptr [ %.pre46, %bb.d ], [ %i.e, %bb.i ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ag, %bb.i ]
  %.not.i.i.i28 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit29, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #14
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit29

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit29: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.0", align 8     ; 14 uses
  %5 = alloca %"class.std::vector.12", align 8    ; 14 uses
  %6 = alloca %struct.aiString, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 21 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load i32, ptr %0, align 4
  %.not = icmp ugt i32 %i.b, %i.c
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %1, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.d, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %3, align 8                ; 5 uses
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 4                   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #15 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  store ptr %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !8
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #14
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.t, ptr %3, align 8
  store ptr %i.y, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.z, ptr %i.f, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.a
  %i.aa = tail call noundef ptr @_Z28ComputeVertexBoneWeightTablePK6aiMesh(ptr noundef nonnull %2) ; 5 uses
  %i.ab = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ac = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not307 = icmp eq i32 %i.ab, 0
  br i1 %.not307, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = zext i32 %i.ab to i64
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, i64 noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) @_ZL14WAS_NOT_COPIED)
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit unwind label %bb.n

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.h, %bb.g
  %i.af = udiv i32 %i.ab, %i.ac
  %i.ag = add i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = udiv i32 %i.ai, %i.ag                   ; 2 uses
  %i.ak = lshr i32 %i.aj, 3
  %i.al = add i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ay = zext i32 %i.al to i64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.not148 = icmp eq ptr %i.aa, null              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.0115 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %.3118, %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit ] ; 2 uses
  %i.co = load i32, ptr %0, align 4
  %.fr = freeze i32 %i.co                         ; 9 uses
  %i.cp = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #15
          to label %bb.j unwind label %bb.o       ; 64 uses

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 27 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 224 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 1272
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 1312
  store ptr null, ptr %i.cv, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.cs, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.ct, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cu, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cp, i8 0, i64 12, i1 false)
  %i.cw = load i32, ptr %i.am, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 232
  store i32 %i.cw, ptr %i.cx, align 8
  %i.cy = icmp eq ptr %i.cp, %2
  br i1 %i.cy, label %_ZN8aiStringaSERKS_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 236
  %i.da = load i32, ptr %i.an, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.da, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 240 ; 2 uses
  %i.dc = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.db, ptr nonnull align 4 %i.ao, i64 %i.dc, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store i8 0, ptr %i.dd, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.j, %bb.k
  %i.de = load ptr, ptr %i.ap, align 8
  %.not.i159 = icmp ne ptr %i.de, null
  %i.df = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = select i1 %.not.i159, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.di = zext i32 %i.df to i64
  %i.dj = shl nuw nsw i64 %i.di, 3                ; 2 uses
  %i.dk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #15
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dk, i8 0, i64 %i.dj, i1 false)
  store ptr %i.dk, ptr %i.ct, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.h
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.o:                                             ; preds = %bb.l, %bb.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.p:                                             ; preds = %bb.m, %_ZN8aiStringaSERKS_.exit
  %.not146 = icmp eq i32 %.0115, 0
  br i1 %.not146, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %4, align 8               ; 3 uses
  %i.do = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dn, %i.do
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.q
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = add i64 %i.dp, -4
  %i.ds = sub i64 %i.dr, %i.dq
  %i.dt = and i64 %i.ds, -4
  %i.du = add i64 %i.dt, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dn, i8 -1, i64 %i.du, i1 false)
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.dv = load ptr, ptr %i.ar, align 8
  %.not.i160 = icmp ne ptr %i.dv, null
  %i.dw = load i32, ptr %i.a, align 4
  %.fr354 = freeze i32 %i.dw
  %i.dx = icmp ne i32 %.fr354, 0                  ; 4 uses
  %i.dy = and i1 %.not.i160, %i.dx
  br i1 %i.dy, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit
  %i.dz = zext i32 %.fr to i64
  %i.ea = mul nuw nsw i64 %i.dz, 12               ; 2 uses
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #15
          to label %bb.s unwind label %.loopexit324 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ec = icmp eq i32 %.fr, 0
  br i1 %i.ec, label %.loopexit323, label %.loopexit323.loopexit

.loopexit323.loopexit:                            ; preds = %bb.s
  %i.ed = add nsw i64 %i.ea, -12                  ; 2 uses
  %i.ee = urem i64 %i.ed, 12
  %i.ef = sub nuw nsw i64 %i.ed, %i.ee
  %i.eg = add nsw i64 %i.ef, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eb, i8 0, i64 %i.eg, i1 false)
  br label %.loopexit323

.loopexit323:                                     ; preds = %.loopexit323.loopexit, %bb.s
  store ptr %i.eb, ptr %i.cs, align 8
end_hunk_0
begin_hunk_1_@_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE:bb.a
  %i.qo = select i1 %.not.i176.1, i1 %i.qn, i1 false
  br i1 %i.qo, label %bb.ch, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.2

bb.ch:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.1
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.ma
  %i.qq = load ptr, ptr %i.hh, align 8
  %i.qr = load i32, ptr %i.cq, align 4
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.qq, i64 %i.qs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qt, ptr noundef nonnull align 4 dereferenceable(16) %i.qp, i64 16, i1 false)
  %.pre399 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.2

_ZNK6aiMesh15HasVertexColorsEj.exit178.2:         ; preds = %bb.ch, %_ZNK6aiMesh15HasVertexColorsEj.exit178.1
  %i.qu = phi i32 [ %.pre399, %bb.ch ], [ %i.ql, %_ZNK6aiMesh15HasVertexColorsEj.exit178.1 ] ; 2 uses
  %i.qv = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not.i176.2 = icmp ne ptr %i.qv, null
  %i.qw = icmp ne i32 %i.qu, 0
  %i.qx = select i1 %.not.i176.2, i1 %i.qw, i1 false
  br i1 %i.qx, label %bb.ci, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.3

bb.ci:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.2
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %i.ma
  %i.qz = load ptr, ptr %i.hi, align 8
  %i.ra = load i32, ptr %i.cq, align 4
  %i.rb = zext i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [16 x i8], ptr %i.qz, i64 %i.rb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rc, ptr noundef nonnull align 4 dereferenceable(16) %i.qy, i64 16, i1 false)
  %.pre400 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.3

_ZNK6aiMesh15HasVertexColorsEj.exit178.3:         ; preds = %bb.ci, %_ZNK6aiMesh15HasVertexColorsEj.exit178.2
  %i.rd = phi i32 [ %.pre400, %bb.ci ], [ %i.qu, %_ZNK6aiMesh15HasVertexColorsEj.exit178.2 ] ; 2 uses
  %i.re = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i176.3 = icmp ne ptr %i.re, null
  %i.rf = icmp ne i32 %i.rd, 0
  %i.rg = select i1 %.not.i176.3, i1 %i.rf, i1 false
  br i1 %i.rg, label %bb.cj, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.4

bb.cj:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.3
  %i.rh = getelementptr inbounds nuw [16 x i8], ptr %i.re, i64 %i.ma
  %i.ri = load ptr, ptr %i.hj, align 8
  %i.rj = load i32, ptr %i.cq, align 4
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %i.ri, i64 %i.rk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rl, ptr noundef nonnull align 4 dereferenceable(16) %i.rh, i64 16, i1 false)
  %.pre401 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.4

_ZNK6aiMesh15HasVertexColorsEj.exit178.4:         ; preds = %bb.cj, %_ZNK6aiMesh15HasVertexColorsEj.exit178.3
  %i.rm = phi i32 [ %.pre401, %bb.cj ], [ %i.rd, %_ZNK6aiMesh15HasVertexColorsEj.exit178.3 ] ; 2 uses
  %i.rn = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not.i176.4 = icmp ne ptr %i.rn, null
  %i.ro = icmp ne i32 %i.rm, 0
  %i.rp = select i1 %.not.i176.4, i1 %i.ro, i1 false
  br i1 %i.rp, label %bb.ck, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.5

bb.ck:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.4
  %i.rq = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.ma
  %i.rr = load ptr, ptr %i.hk, align 8
  %i.rs = load i32, ptr %i.cq, align 4
  %i.rt = zext i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [16 x i8], ptr %i.rr, i64 %i.rt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ru, ptr noundef nonnull align 4 dereferenceable(16) %i.rq, i64 16, i1 false)
  %.pre402 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.5

_ZNK6aiMesh15HasVertexColorsEj.exit178.5:         ; preds = %bb.ck, %_ZNK6aiMesh15HasVertexColorsEj.exit178.4
  %i.rv = phi i32 [ %.pre402, %bb.ck ], [ %i.rm, %_ZNK6aiMesh15HasVertexColorsEj.exit178.4 ] ; 2 uses
  %i.rw = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not.i176.5 = icmp ne ptr %i.rw, null
  %i.rx = icmp ne i32 %i.rv, 0
  %i.ry = select i1 %.not.i176.5, i1 %i.rx, i1 false
  br i1 %i.ry, label %bb.cl, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.6

bb.cl:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.5
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %i.rw, i64 %i.ma
  %i.sa = load ptr, ptr %i.hl, align 8
  %i.sb = load i32, ptr %i.cq, align 4
  %i.sc = zext i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %i.sa, i64 %i.sc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sd, ptr noundef nonnull align 4 dereferenceable(16) %i.rz, i64 16, i1 false)
  %.pre403 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.6

_ZNK6aiMesh15HasVertexColorsEj.exit178.6:         ; preds = %bb.cl, %_ZNK6aiMesh15HasVertexColorsEj.exit178.5
  %i.se = phi i32 [ %.pre403, %bb.cl ], [ %i.rv, %_ZNK6aiMesh15HasVertexColorsEj.exit178.5 ] ; 2 uses
  %i.sf = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not.i176.6 = icmp ne ptr %i.sf, null
  %i.sg = icmp ne i32 %i.se, 0
  %i.sh = select i1 %.not.i176.6, i1 %i.sg, i1 false
  br i1 %i.sh, label %bb.cm, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7

bb.cm:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.6
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.ma
  %i.sj = load ptr, ptr %i.hm, align 8
  %i.sk = load i32, ptr %i.cq, align 4
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %i.sl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sm, ptr noundef nonnull align 4 dereferenceable(16) %i.si, i64 16, i1 false)
  %.pre404 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7

_ZNK6aiMesh15HasVertexColorsEj.exit178.7:         ; preds = %bb.cm, %_ZNK6aiMesh15HasVertexColorsEj.exit178.6
  %i.sn = phi i32 [ %.pre404, %bb.cm ], [ %i.se, %_ZNK6aiMesh15HasVertexColorsEj.exit178.6 ]
  %i.so = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i176.7 = icmp ne ptr %i.so, null
  %i.sp = icmp ne i32 %i.sn, 0
  %i.sq = select i1 %.not.i176.7, i1 %i.sp, i1 false
  br i1 %i.sq, label %bb.cn, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread

bb.cn:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.7
  %i.sr = getelementptr inbounds nuw [16 x i8], ptr %i.so, i64 %i.ma
  %i.ss = load ptr, ptr %i.hn, align 8
  %i.st = load i32, ptr %i.cq, align 4
  %i.su = zext i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr %i.ss, i64 %i.su
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sv, ptr noundef nonnull align 4 dereferenceable(16) %i.sr, i64 16, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread

_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread:  ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172, %bb.cn, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7
  %i.sw = load i32, ptr %i.cq, align 4            ; 4 uses
  %i.sx = load ptr, ptr %i.lk, align 8
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv372
  store i32 %i.sw, ptr %i.sy, align 4
  br i1 %.not148, label %.loopexit311, label %bb.co

bb.co:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread
  %i.sz = zext i32 %i.sw to i64
  %i.ta = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.sz ; 2 uses
  %i.tb = load ptr, ptr %i.ta, align 8            ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.td = load ptr, ptr %i.tc, align 8            ; 2 uses
  %.not310338 = icmp eq ptr %i.tb, %i.td
  br i1 %.not310338, label %.loopexit311, label %.lr.ph341

.lr.ph341:                                        ; preds = %bb.co, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.sroa.0228.0339 = phi ptr [ %i.va, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit ], [ %i.tb, %bb.co ] ; 4 uses
  %i.te = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.tf = load i32, ptr %.sroa.0228.0339, align 4
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.tg
  %i.ti = load ptr, ptr %i.th, align 8            ; 2 uses
  %.not149 = icmp eq ptr %i.ti, null
  br i1 %.not149, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %.lr.ph341
  %i.tj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %bb.cq unwind label %bb.cr     ; 3 uses

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tj, i8 0, i64 24, i1 false)
  %i.tk = load i32, ptr %.sroa.0228.0339, align 4
  %i.tl = zext i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.tl
  store ptr %i.tj, ptr %i.tm, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.cs:                                            ; preds = %bb.cq, %.lr.ph341
  %.0114 = phi ptr [ %i.ti, %.lr.ph341 ], [ %i.tj, %bb.cq ] ; 4 uses
  %i.to = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0228.0339, i64 4
  %i.tq = load float, ptr %i.tp, align 4          ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.0114, i64 8 ; 4 uses
  %i.ts = load ptr, ptr %i.tr, align 8            ; 6 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.0114, i64 16 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8
  %.not.i.i179 = icmp eq ptr %i.ts, %i.tu
  br i1 %.not.i.i179, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.to, ptr %i.ts, align 4
  %.sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  store float %i.tq, ptr %.sroa_idx220, align 4
  %i.tv = load ptr, ptr %i.tr, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store ptr %i.tw, ptr %i.tr, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

bb.cu:                                            ; preds = %bb.cs
  %i.tx = load ptr, ptr %.0114, align 8           ; 7 uses
  %i.ty = ptrtoint ptr %i.ts to i64               ; 2 uses
  %i.tz = ptrtoint ptr %i.tx to i64               ; 3 uses
  %i.ua = sub i64 %i.ty, %i.tz                    ; 4 uses
  %i.ub = icmp eq i64 %i.ua, 9223372036854775800
  br i1 %i.ub, label %bb.cv, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
          to label %.noexc181 unwind label %.loopexit.split-lp

.noexc181:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cu
  %i.uc = ashr exact i64 %i.ua, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.uc, i64 1)
  %i.ud = add nsw i64 %.sroa.speculated.i.i.i.i, %i.uc ; 2 uses
  %i.ue = call i64 @llvm.umin.i64(i64 %i.ud, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i180 = icmp ne i64 %i.ud, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180)
  %i.uf = shl nuw nsw i64 %i.ue, 3
  %i.ug = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uf) #15
          to label %.noexc182 unwind label %.loopexit312 ; 8 uses

.noexc182:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.ua ; 2 uses
  store i32 %i.to, ptr %i.uh, align 4
  %.sroa_idx222 = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  store float %i.tq, ptr %.sroa_idx222, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.tx, %i.ts
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc182
  %i.ui = ptrtoaddr ptr %i.ug to i64
  %i.uj = add i64 %i.ty, -8
  %i.uk = sub i64 %i.uj, %i.tz                    ; 2 uses
  %i.ul = lshr i64 %i.uk, 3
  %i.um = add nuw nsw i64 %i.ul, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.uk, 24
  %i.un = sub i64 %i.ui, %i.tz
  %diff.check = icmp ult i64 %i.un, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader508, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.um, 4611686018427387900     ; 3 uses
  %i.uo = shl i64 %n.vec, 3                       ; 2 uses
  %i.up = getelementptr i8, ptr %i.ug, i64 %i.uo  ; 2 uses
  %i.uq = getelementptr i8, ptr %i.tx, i64 %i.uo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ur = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ug, i64 %i.ur ; 2 uses
  %next.gep505 = getelementptr i8, ptr %i.tx, i64 %i.ur ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.us = getelementptr i8, ptr %next.gep505, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep505, align 4, !alias.scope !18, !noalias !15
  %wide.load506 = load <2 x i64>, ptr %i.us, align 4, !alias.scope !18, !noalias !15
  %i.ut = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !15, !noalias !18
  store <2 x i64> %wide.load506, ptr %i.ut, align 4, !alias.scope !15, !noalias !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uu = icmp eq i64 %index.next, %n.vec
  br i1 %i.uu, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.um, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader508

.lr.ph.i.i.i.i.i.i.preheader508:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.up, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.tx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.uq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader508, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ux, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader508 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.uw, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader508 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.uv = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !18, !noalias !15
  store i64 %i.uv, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !15, !noalias !18
  %i.uw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.uw, %i.ts
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc182
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ug, %.noexc182 ], [ %i.up, %middle.block ], [ %i.ux, %.lr.ph.i.i.i.i.i.i ]
  %i.uy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.tx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.ua) #14
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.cw, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.ug, ptr %.0114, align 8
  store ptr %i.uy, ptr %i.tr, align 8
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.ue
  store ptr %i.uz, ptr %i.tt, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.ct
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0228.0339, i64 8 ; 2 uses
  %.not310 = icmp eq ptr %i.va, %i.td
  br i1 %.not310, label %.loopexit311.loopexit, label %.lr.ph341, !llvm.loop !24

.loopexit312:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp:                               ; preds = %bb.cv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit311.loopexit:                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.pre405 = load i32, ptr %i.cq, align 4
  br label %.loopexit311

.loopexit311:                                     ; preds = %.loopexit311.loopexit, %bb.co, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread
  %i.vb = phi i32 [ %.pre405, %.loopexit311.loopexit ], [ %i.sw, %bb.co ], [ %i.sw, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ]
  %i.vc = load ptr, ptr %4, align 8
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.ma
  store i32 %i.vb, ptr %i.vd, align 4
  %i.ve = load i32, ptr %i.cq, align 4
  %i.vf = add i32 %i.ve, 1
  store i32 %i.vf, ptr %i.cq, align 4
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit311, %bb.bt
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next373, %i.lh
  br i1 %exitcond376.not, label %._crit_edge345, label %.lr.ph344, !llvm.loop !25

.thread:                                          ; preds = %._crit_edge345, %._crit_edge, %bb.bi
  %.3118.in = phi i64 [ %indvars.iv377, %bb.bi ], [ %indvars.iv377, %._crit_edge ], [ %indvars.iv.next378, %._crit_edge345 ]
  %.3118 = trunc i64 %.3118.in to i32             ; 2 uses
  %i.vg = load ptr, ptr %i.ap, align 8
  %.not.i183 = icmp ne ptr %i.vg, null
  %i.vh = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.vi = icmp ne i32 %i.vh, 0
  %i.vj = select i1 %.not.i183, i1 %i.vi, i1 false
  br i1 %i.vj, label %.lr.ph349, label %.loopexit318

.lr.ph349:                                        ; preds = %.thread
  %i.vk = load ptr, ptr %i.ct, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %i.cp, i64 216 ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph349, %bb.de
  %i.vm = phi i32 [ %i.vh, %.lr.ph349 ], [ %i.xi, %bb.de ]
  %indvars.iv380 = phi i64 [ 0, %.lr.ph349 ], [ %indvars.iv.next381, %bb.de ] ; 3 uses
  %.0112346 = phi ptr [ %i.vk, %.lr.ph349 ], [ %.1113, %bb.de ] ; 3 uses
  %i.vn = load ptr, ptr %i.ct, align 8
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %indvars.iv380
  %i.vp = load ptr, ptr %i.vo, align 8            ; 7 uses
  %.not153 = icmp eq ptr %i.vp, null
  br i1 %.not153, label %bb.de, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vq = load ptr, ptr %i.ap, align 8
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv380
  %i.vs = load ptr, ptr %i.vr, align 8            ; 3 uses
  %i.vt = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #15
          to label %bb.da unwind label %bb.dd     ; 13 uses

bb.da:                                            ; preds = %bb.cz
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.vt, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.vu, align 4
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 1060
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vw, align 4
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 1080
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vt, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vy, align 4
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vt, i64 1100
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vt, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.wa, align 4
  %i.wb = getelementptr inbounds nuw i8, ptr %.0112346, i64 8
  store ptr %i.vt, ptr %.0112346, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.wc = load i32, ptr %i.vs, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bc, i8 0, i64 1024, i1 false)
  %spec.select.i184 = call i32 @llvm.umin.i32(i32 %i.wc, i32 1023) ; 3 uses
  store i32 %spec.select.i184, ptr %6, align 4
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %i.we = zext nneg i32 %spec.select.i184 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr nonnull align 4 %i.wd, i64 %i.we, i1 false)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.we
  store i8 0, ptr %i.wf, align 1
  store i32 %spec.select.i184, ptr %i.vt, align 4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vt, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wg, ptr nonnull align 4 %i.bc, i64 %i.we, i1 false)
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.we
  store i8 0, ptr %i.wh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vs, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vu, ptr noundef nonnull align 8 dereferenceable(64) %i.wi, i64 64, i1 false)
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8
  %i.wl = load ptr, ptr %i.vp, align 8
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = sub i64 %i.wm, %i.wn                    ; 2 uses
  %i.wp = ashr exact i64 %i.wo, 3                 ; 2 uses
  %i.wq = trunc i64 %i.wp to i32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vt, i64 1028
  store i32 %i.wq, ptr %i.wr, align 4
  %i.ws = and i64 %i.wp, 4294967295               ; 2 uses
  %i.wt = shl nuw nsw i64 %i.ws, 3                ; 2 uses
  %i.wu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wt) #15
          to label %bb.db unwind label %bb.dd     ; 3 uses

bb.db:                                            ; preds = %bb.da
  %i.wv = icmp eq i64 %i.ws, 0
  br i1 %i.wv, label %.loopexit314, label %.loopexit314.loopexit

.loopexit314.loopexit:                            ; preds = %bb.db
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wu, i8 0, i64 %i.wt, i1 false)
  br label %.loopexit314

.loopexit314:                                     ; preds = %.loopexit314.loopexit, %bb.db
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vt, i64 1048
  store ptr %i.wu, ptr %i.ww, align 8
  %i.wx = load ptr, ptr %i.vp, align 8
  %i.wy = and i64 %i.wo, 34359738360
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wu, ptr nonnull align 4 %i.wx, i64 %i.wy, i1 false)
  %i.wz = load ptr, ptr %i.vp, align 8            ; 3 uses
  %.not.i.i.i186 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i186, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %.loopexit314
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8
  %i.xc = ptrtoint ptr %i.xb to i64
  %i.xd = ptrtoint ptr %i.wz to i64
  %i.xe = sub i64 %i.xc, %i.xd
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xe) #14
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit:   ; preds = %.loopexit314, %bb.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef 24) #14
  %i.xf = load i32, ptr %i.vl, align 8
  %i.xg = add i32 %i.xf, 1
  store i32 %i.xg, ptr %i.vl, align 8
  %.pre406 = load i32, ptr %i.aq, align 8
  br label %bb.de

bb.dd:                                            ; preds = %bb.da, %bb.cz
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.de:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, %bb.cy
  %i.xi = phi i32 [ %.pre406, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit ], [ %i.vm, %bb.cy ] ; 2 uses
  %.1113 = phi ptr [ %i.wb, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit ], [ %.0112346, %bb.cy ]
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %i.xj = zext i32 %i.xi to i64
  %i.xk = icmp samesign ult i64 %indvars.iv.next381, %i.xj
  br i1 %i.xk, label %bb.cy, label %.loopexit318, !llvm.loop !26

.loopexit318:                                     ; preds = %bb.de, %.thread
  %i.xl = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.xm = load ptr, ptr %5, align 8               ; 2 uses
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = ptrtoint ptr %i.xm to i64
  %i.xp = sub i64 %i.xn, %i.xo                    ; 3 uses
  %i.xq = ashr exact i64 %i.xp, 4                 ; 4 uses
  %i.xr = icmp ugt i64 %i.xq, 1152921504606846975
  %i.xs = or disjoint i64 %i.xp, 8
  %i.xt = select i1 %i.xr, i64 -1, i64 %i.xs
  %i.xu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xt) #15
          to label %bb.df unwind label %.loopexit324 ; 2 uses

bb.df:                                            ; preds = %.loopexit318
  store i64 %i.xq, ptr %i.xu, align 16
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8 ; 4 uses
  %i.xw = icmp eq ptr %i.xl, %i.xm
  br i1 %i.xw, label %.loopexit317.thread, label %bb.dg

.loopexit317.thread:                              ; preds = %bb.df
  %i.xx = getelementptr inbounds nuw i8, ptr %i.cp, i64 208
  store ptr %i.xv, ptr %i.xx, align 8
  %i.xy = trunc nuw nsw i64 %i.xq to i32
  store i32 %i.xy, ptr %i.cr, align 8
  br label %._crit_edge353

bb.dg:                                            ; preds = %bb.df
  %i.xz = getelementptr inbounds i8, ptr %i.xv, i64 %i.xp
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %bb.dg
  %i.ya = phi ptr [ %i.xv, %bb.dg ], [ %i.yc, %bb.dh ] ; 3 uses
  store i32 0, ptr %i.ya, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store ptr null, ptr %i.yb, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 16 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.xz
  br i1 %i.yd, label %.loopexit317, label %bb.dh

.loopexit317:                                     ; preds = %bb.dh
  %i.ye = getelementptr inbounds nuw i8, ptr %i.cp, i64 208 ; 2 uses
  store ptr %i.xv, ptr %i.ye, align 8
  %i.yf = trunc i64 %i.xq to i32                  ; 2 uses
  store i32 %i.yf, ptr %i.cr, align 8
  %.not358 = icmp eq i32 %i.yf, 0
  br i1 %.not358, label %._crit_edge353, label %.lr.ph352

._crit_edge353:                                   ; preds = %_ZN6aiFaceaSERKS_.exit, %.loopexit317.thread, %.loopexit317
  %i.yg = load ptr, ptr %i.bd, align 8            ; 6 uses
  %i.yh = load ptr, ptr %i.be, align 8
  %.not.i187 = icmp eq ptr %i.yg, %i.yh
  br i1 %.not.i187, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %._crit_edge353
  store ptr %i.cp, ptr %i.yg, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  store i32 %1, ptr %i.yi, align 8
  %i.yj = load ptr, ptr %i.bd, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store ptr %i.yk, ptr %i.bd, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202

bb.dj:                                            ; preds = %._crit_edge353
  %i.yl = load ptr, ptr %3, align 8               ; 5 uses
  %i.ym = ptrtoint ptr %i.yg to i64
  %i.yn = ptrtoint ptr %i.yl to i64
  %i.yo = sub i64 %i.ym, %i.yn                    ; 4 uses
  %i.yp = icmp eq i64 %i.yo, 9223372036854775792
  br i1 %i.yp, label %bb.dk, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i188

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
          to label %.noexc200 unwind label %.loopexit.split-lp325

.noexc200:                                        ; preds = %bb.dk
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i188: ; preds = %bb.dj
  %i.yq = ashr exact i64 %i.yo, 4                 ; 2 uses
  %.sroa.speculated.i.i.i189 = call i64 @llvm.umax.i64(i64 %i.yq, i64 1)
  %i.yr = add nsw i64 %.sroa.speculated.i.i.i189, %i.yq ; 2 uses
  %i.ys = call i64 @llvm.umin.i64(i64 %i.yr, i64 576460752303423487) ; 2 uses
  %.not.i.i.i190 = icmp ne i64 %i.yr, 0
  call void @llvm.assume(i1 %.not.i.i.i190)
  %i.yt = shl nuw nsw i64 %i.ys, 4
  %i.yu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yt) #15
          to label %.noexc201 unwind label %.loopexit324 ; 5 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i188
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.yo ; 2 uses
  store ptr %i.cp, ptr %i.yv, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store i32 %1, ptr %i.yw, align 8
  %.not10.i.i.i.i.i191 = icmp eq ptr %i.yl, %i.yg
  br i1 %.not10.i.i.i.i.i191, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196, label %.lr.ph.i.i.i.i.i192

.lr.ph.i.i.i.i.i192:                              ; preds = %.noexc201, %.lr.ph.i.i.i.i.i192
  %.012.i.i.i.i.i193 = phi ptr [ %i.yy, %.lr.ph.i.i.i.i.i192 ], [ %i.yu, %.noexc201 ] ; 2 uses
  %.0911.i.i.i.i.i194 = phi ptr [ %i.yx, %.lr.ph.i.i.i.i.i192 ], [ %i.yl, %.noexc201 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i193, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i194, i64 16, i1 false), !alias.scope !27
  %i.yx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 16 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 16 ; 2 uses
  %.not.i.i.i.i.i195 = icmp eq ptr %i.yx, %i.yg
  br i1 %.not.i.i.i.i.i195, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196, label %.lr.ph.i.i.i.i.i192, !llvm.loop !12

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196: ; preds = %.lr.ph.i.i.i.i.i192, %.noexc201
  %.0.lcssa.i.i.i.i.i197 = phi ptr [ %i.yu, %.noexc201 ], [ %i.yy, %.lr.ph.i.i.i.i.i192 ]
  %i.yz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i197, i64 16
  %.not.i34.i.i198 = icmp eq ptr %i.yl, null
  br i1 %.not.i34.i.i198, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i199, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196
  call void @_ZdlPvm(ptr noundef nonnull %i.yl, i64 noundef %i.yo) #14
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i199

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i199: ; preds = %bb.dl, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196
  store ptr %i.yu, ptr %3, align 8
  store ptr %i.yz, ptr %i.bd, align 8
  %i.za = getelementptr inbounds nuw [16 x i8], ptr %i.yu, i64 %i.ys
  store ptr %i.za, ptr %i.be, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202

.lr.ph352:                                        ; preds = %.loopexit317, %_ZN6aiFaceaSERKS_.exit
  %indvars.iv384 = phi i64 [ %indvars.iv.next385, %_ZN6aiFaceaSERKS_.exit ], [ 0, %.loopexit317 ] ; 3 uses
  %i.zb = load ptr, ptr %5, align 8               ; 2 uses
  %i.zc = getelementptr inbounds nuw [16 x i8], ptr %i.zb, i64 %indvars.iv384 ; 2 uses
  %i.zd = load ptr, ptr %i.ye, align 8            ; 2 uses
  %i.ze = getelementptr inbounds nuw [16 x i8], ptr %i.zd, i64 %indvars.iv384 ; 2 uses
  %i.zf = icmp eq ptr %i.zb, %i.zd
  br i1 %i.zf, label %_ZN6aiFaceaSERKS_.exit, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph352
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 8 ; 3 uses
  %i.zh = load ptr, ptr %i.zg, align 8            ; 2 uses
  %i.zi = icmp eq ptr %i.zh, null
  br i1 %i.zi, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZdaPv(ptr noundef nonnull %i.zh) #14
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.zj = load i32, ptr %i.zc, align 8            ; 3 uses
  store i32 %i.zj, ptr %i.ze, align 8
  %.not.i203 = icmp eq i32 %i.zj, 0
  br i1 %.not.i203, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.zk = zext i32 %i.zj to i64
  %i.zl = shl nuw nsw i64 %i.zk, 2                ; 2 uses
  %i.zm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zl) #15
          to label %.noexc204 unwind label %bb.dr ; 2 uses

.noexc204:                                        ; preds = %bb.dp
  store ptr %i.zm, ptr %i.zg, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.zo = load ptr, ptr %i.zn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zm, ptr align 4 %i.zo, i64 %i.zl, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit

bb.dq:                                            ; preds = %bb.do
  store ptr null, ptr %i.zg, align 8
  br label %_ZN6aiFaceaSERKS_.exit

_ZN6aiFaceaSERKS_.exit:                           ; preds = %bb.dq, %.noexc204, %.lr.ph352
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %i.zp = load i32, ptr %i.cr, align 8
  %i.zq = zext i32 %i.zp to i64
  %i.zr = icmp samesign ult i64 %indvars.iv.next385, %i.zq
  br i1 %i.zr, label %.lr.ph352, label %._crit_edge353, !llvm.loop !31

bb.dr:                                            ; preds = %bb.dp
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202: ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i199, %bb.di
  %i.zt = load i32, ptr %i.ah, align 8
  %i.zu = icmp eq i32 %i.zt, %.3118
  %i.zv = load ptr, ptr %5, align 8               ; 3 uses
  %i.zw = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.zv, %i.zw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aaa, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i ], [ %i.zv, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202 ] ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.zy = load ptr, ptr %i.zx, align 8            ; 2 uses
  %i.zz = icmp eq ptr %i.zy, null
  br i1 %i.zz, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.zy) #14
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i:            ; preds = %bb.ds, %.lr.ph.i.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %i.aaa, %i.zw
  br i1 %.not.i.i.i205, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !32

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i:  ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202
  %i.aab = phi ptr [ %.pr.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.zv, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i
  %i.aac = load ptr, ptr %i.bb, align 8
  %i.aad = ptrtoint ptr %i.aac to i64
  %i.aae = ptrtoint ptr %i.aab to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  call void @_ZdlPvm(ptr noundef nonnull %i.aab, i64 noundef %i.aaf) #14
  br label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit

_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit:            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.zu, label %bb.dx, label %bb.i

bb.du:                                            ; preds = %.loopexit312, %.loopexit.split-lp, %.loopexit324, %.loopexit.split-lp325, %bb.cr, %bb.bq, %bb.br, %bb.dr, %bb.dd, %bb.ar, %bb.aa
  %.pn154 = phi { ptr, i32 } [ %i.fx, %bb.aa ], [ %i.ho, %bb.ar ], [ %i.xh, %bb.dd ], [ %i.zs, %bb.dr ], [ %i.tn, %bb.cr ], [ %i.lo, %bb.bq ], [ %i.lp, %bb.br ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp325 ], [ %lpad.loopexit326, %.loopexit324 ], [ %lpad.loopexit, %.loopexit312 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aag = load ptr, ptr %5, align 8              ; 3 uses
  %i.aah = load ptr, ptr %i.ba, align 8           ; 2 uses
  %.not4.i.i.i206 = icmp eq ptr %i.aag, %i.aah
  br i1 %.not4.i.i.i206, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i213, label %.lr.ph.i.i.i207

.lr.ph.i.i.i207:                                  ; preds = %bb.du, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i209
  %.05.i.i.i208 = phi ptr [ %i.aal, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i209 ], [ %i.aag, %bb.du ] ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.05.i.i.i208, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8          ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, null
  br i1 %i.aak, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i209, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i207
  call void @_ZdaPv(ptr noundef nonnull %i.aaj) #14
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i209

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i209:         ; preds = %bb.dv, %.lr.ph.i.i.i207
  %i.aal = getelementptr inbounds nuw i8, ptr %.05.i.i.i208, i64 16 ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %i.aal, %i.aah
  br i1 %.not.i.i.i210, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i211, label %.lr.ph.i.i.i207, !llvm.loop !32

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i211: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i209
  %.pr.i212 = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i213

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i213: ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i211, %bb.du
  %i.aam = phi ptr [ %.pr.i212, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i211 ], [ %i.aag, %bb.du ] ; 3 uses
  %.not.i.i1.i214 = icmp eq ptr %i.aam, null
  br i1 %.not.i.i1.i214, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit215, label %bb.dw

bb.dw:                                            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i213
  %i.aan = load ptr, ptr %i.bb, align 8
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = ptrtoint ptr %i.aam to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  call void @_ZdlPvm(ptr noundef nonnull %i.aam, i64 noundef %i.aaq) #14
  br label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit215

_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit215:         ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i213, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ee

bb.dx:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit
  br i1 %.not148, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aar = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  %i.aas = load i64, ptr %i.aar, align 8          ; 2 uses
  %.idx = mul i64 %i.aas, 24                      ; 2 uses
  %i.aat = icmp eq i64 %i.aas, 0
  br i1 %i.aat, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.dy
  %i.aau = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit
  %i.aav = phi ptr [ %i.aaw, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit ], [ %i.aau, %.preheader.preheader ] ; 2 uses
  %i.aaw = getelementptr inbounds i8, ptr %i.aav, i64 -24 ; 3 uses
  %i.aax = load ptr, ptr %i.aaw, align 8          ; 3 uses
  %.not.i.i.i216 = icmp eq ptr %i.aax, null
  br i1 %.not.i.i.i216, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %.preheader
  %i.aay = getelementptr inbounds i8, ptr %i.aav, i64 -8
  %i.aaz = load ptr, ptr %i.aay, align 8
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aax to i64
  %i.abc = sub i64 %i.aba, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %i.aax, i64 noundef %i.abc) #14
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit:        ; preds = %.preheader, %bb.dz
  %i.abd = icmp eq ptr %i.aaw, %i.aa
  br i1 %i.abd, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, %bb.dy
  %i.abe = add i64 %.idx, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.aar, i64 noundef %i.abe) #14
  br label %bb.ea

bb.ea:                                            ; preds = %.loopexit, %bb.dx
  %i.abf = icmp eq ptr %2, null
  br i1 %i.abf, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %2) #13
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 1320) #14
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.abg = load ptr, ptr %4, align 8              ; 3 uses
  %.not.i.i.i217 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i217, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.abh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abi = load ptr, ptr %i.abh, align 8
  %i.abj = ptrtoint ptr %i.abi to i64
  %i.abk = ptrtoint ptr %i.abg to i64
  %i.abl = sub i64 %i.abj, %i.abk
  call void @_ZdlPvm(ptr noundef nonnull %i.abg, i64 noundef %i.abl) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c, %_ZNSt6vectorIjSaIjEED2Ev.exit
  ret void

bb.ee:                                            ; preds = %bb.o, %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit215, %bb.n
  %.pn154.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.n ], [ %.pn154, %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit215 ], [ %i.dm, %bb.o ]
  %i.abm = load ptr, ptr %4, align 8              ; 3 uses
  %.not.i.i.i218 = icmp eq ptr %i.abm, null
  br i1 %.not.i.i.i218, label %_ZNSt6vectorIjSaIjEED2Ev.exit219, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.abn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8
  %i.abp = ptrtoint ptr %i.abo to i64
  %i.abq = ptrtoint ptr %i.abm to i64
  %i.abr = sub i64 %i.abp, %i.abq
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef %i.abr) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit219

_ZNSt6vectorIjSaIjEED2Ev.exit219:                 ; preds = %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn154.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12MeshSplitter10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS6_EE(ptr noundef nonnull readnone align 4 captures(none) dereferenceable(4) %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.lr.ph78, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15
          to label %_ZNSt6vectorIjSaIjEE7reserveEm.exit unwind label %bb.b ; 4 uses

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.d ; 2 uses
  %.not91 = icmp eq i32 %i.b, 0
  br i1 %.not91, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.a, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.sroa.19.5119 = phi ptr [ %i.g, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %bb.a ]
  %.sroa.0.5118 = phi ptr [ %i.f, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  br label %bb.c

._crit_edge79:                                    ; preds = %._crit_edge, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.sroa.0.0.lcssa = phi ptr [ %i.f, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.0.2.lcssa, %._crit_edge ] ; 6 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.f, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.12.1.lcssa, %._crit_edge ]
  %.sroa.19.0.lcssa = phi ptr [ %i.g, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.19.2.lcssa, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.l, label %bb.k

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.l
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.lcssa, %bb.l ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.19.1 = phi ptr [ %.sroa.19.0.lcssa, %bb.l ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.c:                                             ; preds = %.lr.ph78, %._crit_edge
  %i.n = phi i32 [ %i.b, %.lr.ph78 ], [ %i.v, %._crit_edge ]
  %indvars.iv100 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next101, %._crit_edge ] ; 2 uses
  %.sroa.19.076 = phi ptr [ %.sroa.19.5119, %.lr.ph78 ], [ %.sroa.19.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.12.075 = phi ptr [ %.sroa.0.5118, %.lr.ph78 ], [ %.sroa.12.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0.074 = phi ptr [ %.sroa.0.5118, %.lr.ph78 ], [ %.sroa.0.2.lcssa, %._crit_edge ] ; 2 uses
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = load ptr, ptr %2, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = and i64 %i.s, 68719476720
  %.not92 = icmp eq i64 %i.t, 0
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.u = lshr exact i64 %i.s, 4
  %wide.trip.count = and i64 %i.u, 4294967295
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre = load i32, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.v = phi i32 [ %i.n, %bb.c ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.2.lcssa = phi ptr [ %.sroa.0.074, %bb.c ], [ %.sroa.0.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.075, %bb.c ], [ %.sroa.12.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.076, %bb.c ], [ %.sroa.19.3, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next101, %i.w
  br i1 %i.x, label %bb.c, label %._crit_edge79, !llvm.loop !33

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.19.270 = phi ptr [ %.sroa.19.076, %.lr.ph ], [ %.sroa.19.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 6 uses
  %.sroa.12.169 = phi ptr [ %.sroa.12.075, %.lr.ph ], [ %.sroa.12.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.0.268 = phi ptr [ %.sroa.0.074, %.lr.ph ], [ %.sroa.0.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 8 uses
  %i.y = load ptr, ptr %2, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.i, align 8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv100
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %.sroa.12.169, %.sroa.19.270
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %.sroa.12.169, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.12.169, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = ptrtoint ptr %.sroa.19.270 to i64
  %i.aj = ptrtoint ptr %.sroa.0.268 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 6 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775804
  br i1 %i.al, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.am = ashr exact i64 %i.ak, 2                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #15
          to label %.noexc36 unwind label %.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ak ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv to i32
  store i32 %i.as, ptr %i.ar, align 4
  %i.at = icmp sgt i64 %i.ak, 0
  br i1 %i.at, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %.sroa.0.268, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc36
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0.268, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.268, i64 noundef %i.ak) #14
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.f, %bb.d
  %.sroa.0.3 = phi ptr [ %.sroa.0.268, %bb.d ], [ %i.aq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0.268, %bb.f ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.169, %bb.d ], [ %i.au, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ah, %bb.f ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.270, %bb.d ], [ %i.av, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.19.270, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !34

bb.k:                                             ; preds = %._crit_edge79
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 4) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge79
  %i.aw = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.ax = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = lshr exact i64 %i.ay, 2
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  store i32 %i.ba, ptr %i.a, align 8
  %i.bb = and i64 %i.ay, 17179869180
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #15
          to label %bb.m unwind label %bb.b

bb.m:                                             ; preds = %bb.l
  store ptr %i.bc, ptr %i.j, align 8
  %.not93 = icmp eq i32 %i.ba, 0
  br i1 %.not93, label %._crit_edge86, label %.lr.ph85

._crit_edge86:                                    ; preds = %.lr.ph85, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %.not94 = icmp eq i32 %i.be, 0
  br i1 %.not94, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %._crit_edge86
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %wide.trip.count109 = zext i32 %i.be to i64
  br label %bb.o

.lr.ph85:                                         ; preds = %bb.m, %.lr.ph85
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %.lr.ph85 ], [ 0, %bb.m ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv103
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = load ptr, ptr %i.j, align 8
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv103
  store i32 %i.bh, ptr %i.bj, align 4
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.bk = load i32, ptr %i.a, align 8
  %i.bl = zext i32 %i.bk to i64
  %i.bm = icmp samesign ult i64 %indvars.iv.next104, %i.bl
  br i1 %i.bm, label %.lr.ph85, label %._crit_edge86, !llvm.loop !35

._crit_edge90:                                    ; preds = %bb.p, %._crit_edge86
  %.not.i.i.i37 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge90
  %i.bn = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.bo = sub i64 %i.bn, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bo) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge90, %bb.n
  ret void

bb.o:                                             ; preds = %.lr.ph89, %bb.p
  %indvars.iv106 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next107, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr %i.bf, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv106
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void @_ZN12MeshSplitter10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS6_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %i.br, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge90, label %bb.o, !llvm.loop !36

bb.q:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.b
  %.sroa.0.4 = phi ptr [ %.sroa.0.1, %bb.b ], [ %.sroa.0.0.lcssa, %bb.q ], [ %.sroa.0.268, %.loopexit ], [ %.sroa.0.268, %.loopexit.split-lp ] ; 3 uses
  %.sroa.19.4 = phi ptr [ %.sroa.19.1, %bb.b ], [ %.sroa.19.0.lcssa, %bb.q ], [ %.sroa.19.270, %.loopexit ], [ %.sroa.19.270, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.bs, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i38 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIjSaIjEED2Ev.exit39, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = ptrtoint ptr %.sroa.19.4 to i64
  %i.bu = ptrtoint ptr %.sroa.0.4 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.bv) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit39

_ZNSt6vectorIjSaIjEED2Ev.exit39:                  ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_Z28ComputeVertexBoneWeightTablePK6aiMesh(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.fr39 = freeze i32 %i.b                        ; 2 uses
  %.not19 = icmp eq i32 %.fr39, 0
  br i1 %.not19, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.c
  %i.e = zext i32 %.fr39 to i64                   ; 2 uses
  %i.f = mul nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 8
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #15 ; 2 uses
  store i64 %i.e, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = add nsw i64 %i.f, -24                    ; 2 uses
  %i.k = urem i64 %i.j, 24
  %i.l = sub nuw nsw i64 %i.j, %i.k
  %i.m = add nuw nsw i64 %i.l, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.o = phi i32 [ %i.d, %.lr.ph25 ], [ %i.x, %._crit_edge ]
  %indvars.iv29 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next30, %._crit_edge ] ; 4 uses
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv29
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1048
  %i.v = trunc nuw i64 %indvars.iv29 to i32
  %i.w = trunc nuw i64 %indvars.iv29 to i32
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %.pre = load i32, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.x = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.d ] ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next30, %i.y
  br i1 %i.z, label %bb.d, label %.loopexit, !llvm.loop !37

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit ] ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.v, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load float, ptr %i.af, align 4
  store float %i.al, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.am, ptr %i.ag, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ae, align 8            ; 7 uses
  %i.ao = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #15 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq ; 2 uses
  store i32 %i.w, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.af, align 4
  store float %i.az, ptr %i.ay, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ba = ptrtoaddr ptr %i.aw to i64
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 24
  %i.bf = sub i64 %i.ba, %i.ap
  %diff.check = icmp ult i64 %i.bf, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.an, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bj ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.an, i64 %i.bj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.bk = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 4, !alias.scope !41, !noalias !38
  %wide.load41 = load <2 x i64>, ptr %i.bk, align 4, !alias.scope !41, !noalias !38
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !38, !noalias !41
  store <2 x i64> %wide.load41, ptr %i.bl, align 4, !alias.scope !38, !noalias !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.preheader43:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !41, !noalias !38
  store i64 %i.bn, ptr %.012.i.i.i.i.i, align 4, !alias.scope !38, !noalias !41
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !44

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aw, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bh, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #14
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.aw, ptr %i.ae, align 8
  store ptr %i.bq, ptr %i.ag, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.br, ptr %i.ai, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = load i32, ptr %i.s, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.i, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = tail call noundef ptr @_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %i.d, ptr noundef %i.k) ; 3 uses
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #14
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.e, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !32

_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split, %bb.d
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split ], [ %i.o, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #14
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, %bb.f
  store ptr %i.n, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.z, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %1
  store ptr %i.aa, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #14
  br label %bb.s

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #14
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 4
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #15
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIPK6aiFacePS0_S0_ET0_T_S5_S4_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIPK6aiFacePS0_S0_ET0_T_S5_S4_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #13 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #14
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #16
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #17
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.j, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 7 uses
  %.01215 = phi ptr [ %i.i, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  store i32 0, ptr %.016, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = icmp eq ptr %.01215, %.016
  br i1 %i.b, label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = load i32, ptr %.01215, align 8           ; 3 uses
  store i32 %i.c, ptr %.016, align 8
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #15
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %i.h, i64 %i.e, i1 false)
  br label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  br label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit

_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit:  ; preds = %bb.d, %.noexc, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01215, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.i, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #13 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.q, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %2, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #14
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.f, %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !32

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #16
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.j, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #17
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 4                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #15 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 2 uses
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.n)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit unwind label %bb.e ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.r)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27 unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #14
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.c, %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !32

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #14
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, %bb.d
  store ptr %i.n, ptr %0, align 8
  store ptr %i.s, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j
  store ptr %i.ab, ptr %i.x, align 8
  ret void

bb.e:                                             ; preds = %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #13 ; 0 uses
  %i.af = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN6aiFaceD2Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #14
  br label %_ZN6aiFaceD2Ev.exit.thread

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #13 ; 0 uses
  %.not4.i.i29 = icmp eq ptr %i.n, %i.r
  br i1 %.not4.i.i29, label %_ZN6aiFaceD2Ev.exit.thread, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %bb.g, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32
  %.05.i.i31 = phi ptr [ %i.an, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32 ], [ %i.n, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i31, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i30
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #14
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32:            ; preds = %bb.h, %.lr.ph.i.i30
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i31, i64 16
  %.not.i.i33 = icmp eq ptr %.05.i.i31, %i.q
  br i1 %.not.i.i33, label %_ZN6aiFaceD2Ev.exit.thread, label %.lr.ph.i.i30, !llvm.loop !32

bb.i:                                             ; preds = %_ZN6aiFaceD2Ev.exit.thread
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZN6aiFaceD2Ev.exit.thread:                       ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32, %bb.e, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #14
  invoke void @__cxa_rethrow() #16
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ao

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #17
  unreachable

bb.l:                                             ; preds = %_ZN6aiFaceD2Ev.exit.thread
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !4}
!8 = !{!9, !11}
!9 = distinct !{!9, !10, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!10 = distinct !{!10, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!11 = distinct !{!11, !10, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !4}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!17 = distinct !{!17, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!20 = distinct !{!20, !4, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !4, !21}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!30 = distinct !{!30, !29, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!40 = distinct !{!40, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!43 = distinct !{!43, !4, !21, !22}
!44 = distinct !{!44, !4, !21}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !4}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = distinct !{!52, !4}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = distinct !{!54, !4, !21, !22}
!55 = distinct !{!55, !4, !22, !21}
!56 = distinct !{!56, !4, !21, !22}
!57 = distinct !{!57, !4, !22, !21}
!58 = distinct !{!58, !4, !21, !22}
!59 = distinct !{!59, !4, !22, !21}
!60 = distinct !{!60, !4, !21, !22}
!61 = distinct !{!61, !4, !22, !21}
!62 = distinct !{!62, !4}
end_hunk_2
