Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/SortByPTypeProcess?download=true
inline.NumInlined: 539
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp18SortByPTypeProcess15SetupPropertiesEPKNS_8ImporterE:bb.a
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.a, ptr %i.b, align 8
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_Z11UpdateNodesRKSt6vectorIjSaIjEEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load ptr, ptr %0, align 8
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %op.rdx, 0
  br i1 %i.f, label %.thread, label %bb.d

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.04762 = phi i32 [ 0, %.preheader ], [ %op.rdx, %bb.c ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4
  %i.i = shl i32 %i.h, 2
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load <4 x i32>, ptr %i.k, align 4
  %i.m = icmp ne <4 x i32> %i.l, splat (i32 -1)
  %i.n = bitcast <4 x i1> %i.m to i4
  %i.o = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.n)
  %i.p = zext nneg i4 %i.o to i32
  %op.rdx = add i32 %.04762, %i.p                 ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !4

.thread:                                          ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #20
  store i32 0, ptr %i.a, align 8
  store ptr null, ptr %i.c, align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ugt i32 %op.rdx, %i.b
  br i1 %i.q, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  %i.r = zext i32 %op.rdx to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #21 ; 2 uses
  %.pre = load i32, ptr %i.a, align 8
  %i.u = icmp eq i32 %.pre, 0
  br i1 %i.u, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.e
  %.04965.ph = phi ptr [ %i.t, %bb.e ], [ %i.d, %bb.d ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  %i.v = icmp ugt i32 %op.rdx, %i.au
  br i1 %i.v, label %._crit_edge.thread, label %_ZL17clearMeshesInNodeP6aiNode.exit58

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.m ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04965 = phi ptr [ %.251.3, %bb.m ], [ %.04965.ph, %.lr.ph.preheader ] ; 3 uses
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv80
  %i.y = load i32, ptr %i.x, align 4
  %i.z = shl i32 %i.y, 2
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not56 = icmp eq i32 %i.ad, -1
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.04965, i64 4
  store i32 %i.ad, ptr %.04965, align 4
  %.pre86 = load ptr, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.af = phi ptr [ %.pre86, %bb.f ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.251 = phi ptr [ %i.ae, %bb.f ], [ %.04965, %.lr.ph ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not56.1 = icmp eq i32 %i.ai, -1
  br i1 %.not56.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.251, i64 4
  store i32 %i.ai, ptr %.251, align 4
  %.pre87 = load ptr, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi ptr [ %.pre87, %bb.h ], [ %i.af, %bb.g ] ; 2 uses
  %.251.1 = phi ptr [ %i.aj, %bb.h ], [ %.251, %bb.g ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aa
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %.not56.2 = icmp eq i32 %i.an, -1
  br i1 %.not56.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.251.1, i64 4
  store i32 %i.an, ptr %.251.1, align 4
  %.pre88 = load ptr, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = phi ptr [ %.pre88, %bb.j ], [ %i.ak, %bb.i ]
  %.251.2 = phi ptr [ %i.ao, %bb.j ], [ %.251.1, %bb.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aa
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %.not56.3 = icmp eq i32 %i.as, -1
  br i1 %.not56.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.251.2, i64 4
  store i32 %i.as, ptr %.251.2, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.251.3 = phi ptr [ %i.at, %bb.l ], [ %.251.2, %bb.k ] ; 3 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.au = load i32, ptr %i.a, align 8             ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next81, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !5

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %.049.lcssa100 = phi ptr [ %.251.3, %._crit_edge ], [ %i.t, %bb.e ] ; 2 uses
  %i.ax = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZL17clearMeshesInNodeP6aiNode.exit58, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread
  tail call void @_ZdaPv(ptr noundef nonnull %i.ax) #20
  br label %_ZL17clearMeshesInNodeP6aiNode.exit58

_ZL17clearMeshesInNodeP6aiNode.exit58:            ; preds = %bb.n, %._crit_edge.thread, %._crit_edge
  %.049.lcssa99 = phi ptr [ %.251.3, %._crit_edge ], [ %.049.lcssa100, %._crit_edge.thread ], [ %.049.lcssa100, %bb.n ]
  store i32 %op.rdx, ptr %i.a, align 8
  %i.az = zext i32 %op.rdx to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %.049.lcssa99, i64 %i.ba
  store ptr %i.bb, ptr %i.c, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZL17clearMeshesInNodeP6aiNode.exit58, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %.not72 = icmp eq i32 %i.bd, 0
  br i1 %.not72, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph70, %bb.p
  %indvars.iv83 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next84, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv83
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void @_Z11UpdateNodesRKSt6vectorIjSaIjEEP6aiNode(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bh)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bi = load i32, ptr %i.bc, align 8
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next84, %i.bj
  br i1 %i.bk, label %bb.p, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %bb.p, %bb.o, %.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp18SortByPTypeProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 7 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %i.g = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv() ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull @.str.1)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull @.str.2)
  %i.h = load i32, ptr %i.d, align 8              ; 2 uses
  %.not579 = icmp eq i32 %i.h, 0
  br i1 %.not579, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %bb.c
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 4                  ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 3 uses
  %.pre = load i32, ptr %i.d, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.m = shl i32 %.pre, 2                         ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %bb.d

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %.sroa.21.61425 = phi ptr [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ], [ %i.k, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ]
  %.sroa.39.121423 = phi ptr [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ], [ %i.l, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ]
  %i.o = phi i32 [ 0, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ], [ %.pre, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit649

bb.d:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.q = shl nuw nsw i64 %i.n, 2                  ; 3 uses
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc437 unwind label %.thread1449 ; 6 uses

.noexc437:                                        ; preds = %bb.d
  store ptr %i.r, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.n ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.t, ptr %i.u, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.r, i8 -1, i64 %i.q, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %.pre1336 = load i32, ptr %i.d, align 8
  %3 = ptrtoint ptr %i.t to i64
  br label %.loopexit649

.loopexit649:                                     ; preds = %.noexc437, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %.sroa.21.61424 = phi ptr [ %.sroa.21.61425, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.k, %.noexc437 ] ; 3 uses
  %.sroa.39.121422 = phi ptr [ %.sroa.39.121423, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.l, %.noexc437 ] ; 2 uses
  %4 = phi i32 [ %i.o, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %.pre1336, %.noexc437 ]
  %5 = phi i64 [ 0, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %3, %.noexc437 ] ; 2 uses
  %6 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc437 ] ; 7 uses
  %i.w = phi ptr [ %i.p, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.s, %.noexc437 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.v, %.noexc437 ]
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.w, align 8
  %.not1054 = icmp eq i32 %4, 0
  br i1 %.not1054, label %._crit_edge1042.thread, label %.lr.ph1041

.lr.ph1041:                                       ; preds = %.loopexit649
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

._crit_edge1042:                                  ; preds = %bb.id
  %i.aa = icmp eq ptr %.sroa.0533.6, %.sroa.21.5
  br i1 %i.aa, label %._crit_edge1042.thread, label %bb.ig

.thread1449:                                      ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ja

bb.e:                                             ; preds = %.lr.ph1041, %bb.id
  %indvars.iv1324 = phi i64 [ 0, %.lr.ph1041 ], [ %indvars.iv.next1325, %bb.id ] ; 4 uses
  %.03171038 = phi i1 [ false, %.lr.ph1041 ], [ %.2319, %bb.id ]
  %.sroa.13.01037 = phi i32 [ 0, %.lr.ph1041 ], [ %.sroa.13.1, %bb.id ]
  %.sroa.10.01036 = phi i32 [ 0, %.lr.ph1041 ], [ %.sroa.10.1, %bb.id ]
  %.sroa.7.01035 = phi i32 [ 0, %.lr.ph1041 ], [ %.sroa.7.1, %bb.id ]
  %.sroa.0.01034 = phi i32 [ 0, %.lr.ph1041 ], [ %spec.select, %bb.id ]
  %.sroa.0533.01033 = phi ptr [ %.sroa.21.61424, %.lr.ph1041 ], [ %.sroa.0533.6, %bb.id ] ; 16 uses
  %.sroa.21.01032 = phi ptr [ %.sroa.21.61424, %.lr.ph1041 ], [ %.sroa.21.5, %bb.id ] ; 11 uses
  %.sroa.39.01031 = phi ptr [ %.sroa.39.121422, %.lr.ph1041 ], [ %.sroa.39.6, %bb.id ] ; 8 uses
  %.sroa.0527.01030 = phi ptr [ %6, %.lr.ph1041 ], [ %.sroa.0527.3, %bb.id ] ; 4 uses
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv1324
  %i.ae = load ptr, ptr %i.ad, align 8            ; 48 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 6 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.e
  %.not1063 = icmp eq ptr %.sroa.21.01032, %.sroa.0533.01033
  br i1 %.not1063, label %._crit_edge1053, label %.lr.ph1052.preheader

.lr.ph1052.preheader:                             ; preds = %.preheader
  %i.ah = ptrtoint ptr %.sroa.21.01032 to i64
  %i.ai = ptrtoint ptr %.sroa.0533.01033 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  br label %.lr.ph1052

._crit_edge1053:                                  ; preds = %bb.g, %.preheader
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store ptr %i.am, ptr %i.a, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA35_KcPS1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 1 dereferenceable(35) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.j

.lr.ph1052:                                       ; preds = %.lr.ph1052.preheader, %bb.g
  %.03151051 = phi i64 [ %i.aq, %bb.g ], [ 0, %.lr.ph1052.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0533.01033, i64 %.03151051
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1052
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.ao) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 1320) #20
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph1052, %bb.f
  %i.aq = add nuw i64 %.03151051, 1               ; 2 uses
  %exitcond1326.not = icmp eq i64 %i.aq, %i.ak
  br i1 %exitcond1326.not, label %._crit_edge1053, label %.lr.ph1052, !llvm.loop !7

bb.h:                                             ; preds = %._crit_edge1053
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.jb unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ix

bb.j:                                             ; preds = %._crit_edge1053
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @__cxa_free_exception(ptr nonnull %i.al) #19
  br label %bb.ix

bb.k:                                             ; preds = %bb.e
  %i.at = and i32 %i.af, 1                        ; 2 uses
  %spec.select = add i32 %i.at, %.sroa.0.01034    ; 2 uses
  %i.au = lshr i32 %i.af, 1
  %i.av = and i32 %i.au, 1                        ; 2 uses
  %.sroa.7.1 = add i32 %i.av, %.sroa.7.01035      ; 2 uses
  %.1311 = add nuw nsw i32 %i.av, %i.at
  %i.aw = lshr i32 %i.af, 2
  %i.ax = and i32 %i.aw, 1                        ; 2 uses
  %.sroa.10.1 = add i32 %i.ax, %.sroa.10.01036    ; 2 uses
  %.2312 = add nuw nsw i32 %.1311, %i.ax
  %i.ay = lshr i32 %i.af, 3
  %i.az = and i32 %i.ay, 1                        ; 2 uses
  %.sroa.13.1 = add i32 %i.az, %.sroa.13.01037    ; 2 uses
  %.3313 = add nuw nsw i32 %.2312, %i.az          ; 2 uses
  %i.ba = icmp eq i32 %.3313, 1
  br i1 %i.ba, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.z, align 8
  %i.bc = and i32 %i.bb, %i.af
  %.not426 = icmp eq i32 %i.bc, 0
  br i1 %.not426, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bd = ptrtoint ptr %.sroa.21.01032 to i64
  %i.be = ptrtoint ptr %.sroa.0533.01033 to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 6 uses
  %i.bg = ashr exact i64 %i.bf, 3                 ; 4 uses
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %.sroa.0527.01030, align 4
  %.not.i = icmp eq ptr %.sroa.21.01032, %.sroa.39.01031
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.ae, ptr %.sroa.21.01032, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bi = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc438 unwind label %.loopexit.split-lp645

.noexc438:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bg
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #21
          to label %.noexc439 unwind label %.loopexit644 ; 4 uses

.noexc439:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bf ; 2 uses
  store ptr %i.ae, ptr %i.bp, align 8
  %i.bq = icmp sgt i64 %i.bf, 0
  br i1 %i.bq, label %bb.q, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.q:                                             ; preds = %.noexc439
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %.sroa.0533.01033, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.q, %.noexc439
  %.not.i17.i.i = icmp eq ptr %.sroa.0533.01033, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.01033, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.n
  %.sroa.39.13 = phi ptr [ %i.br, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.39.01031, %bb.n ]
  %.pn582 = phi ptr [ %i.bp, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.21.01032, %bb.n ]
  %.sroa.0533.13 = phi ptr [ %i.bo, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0533.01033, %bb.n ]
  %.sroa.21.7 = getelementptr inbounds nuw i8, ptr %.pn582, i64 8
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.ae) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 1320) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %.sroa.39.1 = phi ptr [ %.sroa.39.13, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.sroa.39.01031, %bb.s ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.7, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.sroa.21.01032, %bb.s ]
  %.sroa.0533.1 = phi ptr [ %.sroa.0533.13, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.sroa.0533.01033, %bb.s ]
  %.1318 = phi i1 [ %.03171038, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ true, %bb.s ]
  %i.bs = load ptr, ptr %i.x, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1324
  store ptr null, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0527.01030, i64 16
  br label %bb.id

bb.u:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 208 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ic, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %.idx1055 = shl nuw nsw i64 %i.ca, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx1055
  %.not381965 = icmp eq i32 %i.bz, 0
  br i1 %.not381965, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.z
  %.0307967 = phi i32 [ %.1308571, %bb.z ], [ 0, %bb.v ] ; 2 uses
  %.0309966 = phi ptr [ %i.co, %bb.z ], [ %i.bw, %bb.v ] ; 2 uses
  %i.cc = load i32, ptr %.0309966, align 8        ; 4 uses
  %i.cd = add i32 %i.cc, -1
  %or.cond = icmp ult i32 %i.cd, 3
  br i1 %or.cond, label %.thread569, label %bb.w

.thread569:                                       ; preds = %.lr.ph
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = getelementptr [4 x i8], ptr %i.b, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4     ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4
  br label %bb.z

end_hunk_0
begin_hunk_1_@_ZN6Assimp18SortByPTypeProcess7ExecuteEP7aiScene:bb.a
.preheader626.preheader:                          ; preds = %bb.hx
  %i.amv = getelementptr inbounds i8, ptr %i.cp, i64 %.idx
  br label %.preheader626

.preheader626:                                    ; preds = %.preheader626.preheader, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit
  %i.amw = phi ptr [ %i.amx, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit ], [ %i.amv, %.preheader626.preheader ] ; 2 uses
  %i.amx = getelementptr inbounds i8, ptr %i.amw, i64 -24 ; 3 uses
  %i.amy = load ptr, ptr %i.amx, align 8          ; 3 uses
  %.not.i.i.i468 = icmp eq ptr %i.amy, null
  br i1 %.not.i.i.i468, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, label %bb.hy

bb.hy:                                            ; preds = %.preheader626
  %i.amz = getelementptr inbounds i8, ptr %i.amw, i64 -8
  %i.ana = load ptr, ptr %i.amz, align 8
  %i.anb = ptrtoint ptr %i.ana to i64
  %i.anc = ptrtoint ptr %i.amy to i64
  %i.and = sub i64 %i.anb, %i.anc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.amy, i64 noundef %i.and) #20
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit:        ; preds = %.preheader626, %bb.hy
  %i.ane = icmp eq ptr %i.amx, %i.cp
  br i1 %i.ane, label %.loopexit627, label %.preheader626

.loopexit627:                                     ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, %bb.hx
  %i.anf = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.ams, i64 noundef %i.anf) #20
  br label %bb.hz

bb.hz:                                            ; preds = %.loopexit627, %bb.aa
  %i.ang = icmp eq ptr %i.ae, null
  br i1 %i.ang, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.ae) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 1320) #20
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.anh = load ptr, ptr %i.x, align 8
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.anh, i64 %indvars.iv1324
  store ptr null, ptr %i.ani, align 8
  br label %bb.ic

bb.ic:                                            ; preds = %bb.u, %bb.ib
  %.sroa.0527.2 = phi ptr [ %.sroa.0527.01030, %bb.u ], [ %i.ami, %bb.ib ]
  %.sroa.39.5 = phi ptr [ %.sroa.39.01031, %bb.u ], [ %.sroa.39.4, %bb.ib ]
  %.sroa.21.4 = phi ptr [ %.sroa.21.01032, %bb.u ], [ %.sroa.21.3, %bb.ib ]
  %.sroa.0533.5 = phi ptr [ %.sroa.0533.01033, %bb.u ], [ %.sroa.0533.4, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.t
  %.sroa.0527.3 = phi ptr [ %i.bu, %bb.t ], [ %.sroa.0527.2, %bb.ic ]
  %.sroa.39.6 = phi ptr [ %.sroa.39.1, %bb.t ], [ %.sroa.39.5, %bb.ic ] ; 7 uses
  %.sroa.21.5 = phi ptr [ %.sroa.21.1, %bb.t ], [ %.sroa.21.4, %bb.ic ] ; 3 uses
  %.sroa.0533.6 = phi ptr [ %.sroa.0533.1, %bb.t ], [ %.sroa.0533.5, %bb.ic ] ; 11 uses
  %.2319 = phi i1 [ %.1318, %bb.t ], [ true, %bb.ic ] ; 2 uses
  %indvars.iv.next1325 = add nuw nsw i64 %indvars.iv1324, 1 ; 2 uses
  %i.anj = load i32, ptr %i.d, align 8            ; 2 uses
  %i.ank = zext i32 %i.anj to i64
  %i.anl = icmp samesign ult i64 %indvars.iv.next1325, %i.ank
  br i1 %i.anl, label %bb.e, label %._crit_edge1042, !llvm.loop !27

.loopexit.split-lp635:                            ; preds = %bb.hw, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465, %.loopexit.split-lp590.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp635.loopexit.split-lp.loopexit.split-lp, %.loopexit629, %.loopexit.split-lp630
  %.sroa.39.7 = phi ptr [ %.sroa.21.21026, %.loopexit.split-lp630 ], [ %.sroa.39.01031, %.loopexit.split-lp635.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.39.21025.lcssa, %.loopexit629 ], [ %.sroa.39.14, %bb.hw ], [ %.sroa.39.14, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %.sroa.39.14, %.loopexit.split-lp590.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0533.7 = phi ptr [ %.sroa.0533.21027, %.loopexit.split-lp630 ], [ %.sroa.0533.01033, %.loopexit.split-lp635.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0533.21027, %.loopexit629 ], [ %.sroa.0533.14, %bb.hw ], [ %.sroa.0533.14, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %.sroa.0533.14, %.loopexit.split-lp590.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn424 = phi { ptr, i32 } [ %lpad.loopexit.split-lp632, %.loopexit.split-lp630 ], [ %lpad.loopexit.split-lp1938, %.loopexit.split-lp635.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit631, %.loopexit629 ], [ %lpad.phi, %bb.hw ], [ %lpad.phi, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %lpad.loopexit.split-lp1932, %.loopexit.split-lp590.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ix

._crit_edge1042.thread:                           ; preds = %.loopexit649, %._crit_edge1042
  %.sroa.0533.0.lcssa1435 = phi ptr [ %.sroa.0533.6, %._crit_edge1042 ], [ %.sroa.21.61424, %.loopexit649 ] ; 2 uses
  %.sroa.39.0.lcssa1434 = phi ptr [ %.sroa.39.6, %._crit_edge1042 ], [ %.sroa.39.121422, %.loopexit649 ] ; 2 uses
  %i.anm = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.anm, ptr noundef nonnull @.str.5)
          to label %bb.ie unwind label %bb.if

bb.ie:                                            ; preds = %._crit_edge1042.thread
  invoke void @__cxa_throw(ptr nonnull %i.anm, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.jb unwind label %.loopexit.split-lp645

bb.if:                                            ; preds = %._crit_edge1042.thread
  %i.ann = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.anm) #19
  br label %bb.ix

.loopexit644:                                     ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit646 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

.loopexit.split-lp645:                            ; preds = %bb.ie, %bb.ih, %bb.il, %._crit_edge1347, %bb.p
  %.sroa.39.0945 = phi ptr [ %.sroa.39.0.lcssa1434, %bb.ie ], [ %.sroa.39.6, %bb.ih ], [ %.sroa.39.6, %bb.il ], [ %.sroa.39.6, %._crit_edge1347 ], [ %.sroa.21.01032, %bb.p ]
  %.sroa.0533.0904 = phi ptr [ %.sroa.0533.0.lcssa1435, %bb.ie ], [ %.sroa.0533.6, %bb.ih ], [ %.sroa.0533.6, %bb.il ], [ %.sroa.0533.6, %._crit_edge1347 ], [ %.sroa.0533.01033, %bb.p ]
  %lpad.loopexit.split-lp647 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

bb.ig:                                            ; preds = %._crit_edge1042
  br i1 %.2319, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.ano = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.anp = load ptr, ptr %i.ano, align 8
  invoke void @_Z11UpdateNodesRKSt6vectorIjSaIjEEP6aiNode(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.anp)
          to label %._crit_edge1345 unwind label %.loopexit.split-lp645

._crit_edge1345:                                  ; preds = %bb.ih
  %.pre1346 = load i32, ptr %i.d, align 8
  br label %bb.ii

bb.ii:                                            ; preds = %._crit_edge1345, %bb.ig
  %i.anq = phi i32 [ %.pre1346, %._crit_edge1345 ], [ %i.anj, %bb.ig ]
  %i.anr = ptrtoint ptr %.sroa.21.5 to i64
  %i.ans = ptrtoint ptr %.sroa.0533.6 to i64      ; 2 uses
  %i.ant = sub i64 %i.anr, %i.ans                 ; 2 uses
  %i.anu = ashr exact i64 %i.ant, 3               ; 2 uses
  %i.anv = zext i32 %i.anq to i64                 ; 2 uses
  %.not = icmp eq i64 %i.anu, %i.anv
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre1348 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not, label %._crit_edge1347, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.anw = icmp eq ptr %.pre1348, null
  br i1 %i.anw, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  tail call void @_ZdaPv(ptr noundef nonnull %.pre1348) #20
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.anx = trunc i64 %i.anu to i32
  store i32 %i.anx, ptr %i.d, align 8
  %i.any = and i64 %i.ant, 34359738360
  %i.anz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.any) #21
          to label %bb.im unwind label %.loopexit.split-lp645 ; 2 uses

bb.im:                                            ; preds = %bb.il
  store ptr %i.anz, ptr %.phi.trans.insert, align 8
  %.pre1349 = load i32, ptr %i.d, align 8
  %.pre1350 = zext i32 %.pre1349 to i64
  br label %._crit_edge1347

._crit_edge1347:                                  ; preds = %bb.ii, %bb.im
  %.pre-phi = phi i64 [ %.pre1350, %bb.im ], [ %i.anv, %bb.ii ]
  %i.aoa = phi ptr [ %i.anz, %bb.im ], [ %.pre1348, %bb.ii ]
  %i.aob = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aoa, ptr nonnull align 8 %.sroa.0533.6, i64 %i.aob, i1 false)
  %i.aoc = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.in unwind label %.loopexit.split-lp645

bb.in:                                            ; preds = %._crit_edge1347
  br i1 %i.aoc, label %bb.iu, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.aod = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aoe = load i32, ptr %i.aod, align 8          ; 4 uses
  %i.aof = and i32 %i.aoe, 1
  %.not373 = icmp eq i32 %i.aof, 0
  %i.aog = select i1 %.not373, ptr @.str.8, ptr @.str.7
  %i.aoh = and i32 %i.aoe, 2
  %.not374 = icmp eq i32 %i.aoh, 0
  %i.aoi = select i1 %.not374, ptr @.str.8, ptr @.str.7
  %i.aoj = and i32 %i.aoe, 4
  %.not375 = icmp eq i32 %i.aoj, 0
  %i.aok = select i1 %.not375, ptr @.str.8, ptr @.str.7
  %i.aol = and i32 %i.aoe, 8
  %.not376 = icmp eq i32 %i.aol, 0
  %i.aom = select i1 %.not376, ptr @.str.8, ptr @.str.7
  %i.aon = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.6, i32 noundef %spec.select, ptr noundef nonnull %i.aog, i32 noundef %.sroa.7.1, ptr noundef nonnull %i.aoi, i32 noundef %.sroa.10.1, ptr noundef nonnull %i.aok, i32 noundef %.sroa.13.1, ptr noundef nonnull %i.aom) #19 ; 0 uses
  %i.aoo = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ip unwind label %bb.it

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aoo, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
          to label %bb.iq unwind label %bb.it

bb.iq:                                            ; preds = %bb.ip
  %i.aop = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ir unwind label %bb.it

bb.ir:                                            ; preds = %bb.iq
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aop, ptr noundef nonnull @.str.9)
          to label %bb.is unwind label %bb.it

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.iu

bb.it:                                            ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.io
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.ix

bb.iu:                                            ; preds = %bb.is, %bb.in
  %.not.i.i.i469 = icmp eq ptr %6, null
  br i1 %.not.i.i.i469, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aor = ptrtoint ptr %6 to i64
  %i.aos = sub i64 %5, %i.aor
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.aos) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.iu, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.not.i.i.i470 = icmp eq ptr %.sroa.0533.6, null
  br i1 %.not.i.i.i470, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.aot = ptrtoint ptr %.sroa.39.6 to i64
  %i.aou = sub i64 %i.aot, %i.ans
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.6, i64 noundef %i.aou) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.iw, %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.b
  ret void

bb.ix:                                            ; preds = %.loopexit644, %.loopexit.split-lp645, %bb.j, %.loopexit.split-lp635, %bb.i, %bb.it, %bb.if
  %.sroa.39.9 = phi ptr [ %.sroa.39.6, %bb.it ], [ %.sroa.39.7, %.loopexit.split-lp635 ], [ %.sroa.39.0.lcssa1434, %bb.if ], [ %.sroa.39.01031, %bb.j ], [ %.sroa.39.01031, %bb.i ], [ %.sroa.21.01032, %.loopexit644 ], [ %.sroa.39.0945, %.loopexit.split-lp645 ]
  %.sroa.0533.9 = phi ptr [ %.sroa.0533.6, %bb.it ], [ %.sroa.0533.7, %.loopexit.split-lp635 ], [ %.sroa.0533.0.lcssa1435, %bb.if ], [ %.sroa.0533.01033, %bb.j ], [ %.sroa.0533.01033, %bb.i ], [ %.sroa.0533.01033, %.loopexit644 ], [ %.sroa.0533.0904, %.loopexit.split-lp645 ] ; 2 uses
  %.pn429.pn = phi { ptr, i32 } [ %i.aoq, %bb.it ], [ %.pn424, %.loopexit.split-lp635 ], [ %i.ann, %bb.if ], [ %i.as, %bb.j ], [ %i.ar, %bb.i ], [ %lpad.loopexit646, %.loopexit644 ], [ %lpad.loopexit.split-lp647, %.loopexit.split-lp645 ] ; 2 uses
  %.not.i.i.i471 = icmp eq ptr %6, null
  br i1 %.not.i.i.i471, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aov = ptrtoint ptr %6 to i64
  %i.aow = sub i64 %5, %i.aov
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.aow) #20
  br label %bb.iz

bb.iz:                                            ; preds = %bb.ix, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.not.i.i.i473 = icmp eq ptr %.sroa.0533.9, null
  br i1 %.not.i.i.i473, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit474, label %bb.ja

bb.ja:                                            ; preds = %.thread1449, %bb.iz
  %.pn429.pn.pn1456 = phi { ptr, i32 } [ %i.ab, %.thread1449 ], [ %.pn429.pn, %bb.iz ]
  %.sroa.0533.101455 = phi ptr [ %i.k, %.thread1449 ], [ %.sroa.0533.9, %bb.iz ] ; 2 uses
  %.sroa.39.101454 = phi ptr [ %i.l, %.thread1449 ], [ %.sroa.39.9, %bb.iz ]
  %i.aox = ptrtoint ptr %.sroa.39.101454 to i64
  %i.aoy = ptrtoint ptr %.sroa.0533.101455 to i64
  %i.aoz = sub i64 %i.aox, %i.aoy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.101455, i64 noundef %i.aoz) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit474

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit474:        ; preds = %bb.iz, %bb.ja
  %.pn429.pn.pn1457 = phi { ptr, i32 } [ %.pn429.pn, %bb.iz ], [ %.pn429.pn.pn1456, %bb.ja ]
  resume { ptr, i32 } %.pn429.pn.pn1457

bb.jb:                                            ; preds = %bb.ie, %bb.h
  unreachable
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #20
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ae) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 9 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.ah, label %.preheader47.preheader

bb.z:                                             ; preds = %.preheader47.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 1028) #20
  %.pre = load ptr, ptr %i.am, align 8
  br label %.preheader47.1

.preheader47.1:                                   ; preds = %.preheader47.preheader, %bb.z
  %i.ao = phi ptr [ %i.an, %.preheader47.preheader ], [ %.pre, %bb.z ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.preheader47.2, label %bb.aa

bb.aa:                                            ; preds = %.preheader47.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 1028) #20
  %.pre69 = load ptr, ptr %i.am, align 8
  br label %.preheader47.2

.preheader47.2:                                   ; preds = %bb.aa, %.preheader47.1
  %i.as = phi ptr [ %.pre69, %bb.aa ], [ %i.ao, %.preheader47.1 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.preheader47.3, label %bb.ab

bb.ab:                                            ; preds = %.preheader47.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 1028) #20
  %.pre70 = load ptr, ptr %i.am, align 8
  br label %.preheader47.3

.preheader47.3:                                   ; preds = %bb.ab, %.preheader47.2
  %i.aw = phi ptr [ %.pre70, %bb.ab ], [ %i.as, %.preheader47.2 ] ; 2 uses
end_hunk_1
