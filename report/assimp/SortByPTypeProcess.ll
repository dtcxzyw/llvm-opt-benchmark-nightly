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
  %2 = alloca %"class.std::vector", align 8       ; 15 uses
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
  %.sroa.21.61396 = phi ptr [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ], [ %i.k, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ]
  %.sroa.39.111394 = phi ptr [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ], [ %i.l, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ]
  %i.o = phi i32 [ 0, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit.thread ], [ %.pre, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit617

bb.d:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.q = shl nuw nsw i64 %i.n, 2                  ; 3 uses
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc437 unwind label %.thread1422 ; 6 uses

.noexc437:                                        ; preds = %bb.d
  store ptr %i.r, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.t, ptr %i.u, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.r, i8 -1, i64 %i.q, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %.pre1307 = load i32, ptr %i.d, align 8
  br label %.loopexit617

.loopexit617:                                     ; preds = %.noexc437, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %.sroa.21.61395 = phi ptr [ %.sroa.21.61396, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.k, %.noexc437 ] ; 3 uses
  %.sroa.39.111393 = phi ptr [ %.sroa.39.111394, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.l, %.noexc437 ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc437 ]
  %i.x = phi i32 [ %i.o, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %.pre1307, %.noexc437 ]
  %i.y = phi ptr [ %i.p, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.s, %.noexc437 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.v, %.noexc437 ]
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.y, align 8
  %.not1013 = icmp eq i32 %i.x, 0
  br i1 %.not1013, label %._crit_edge1001.thread, label %.lr.ph1000

.lr.ph1000:                                       ; preds = %.loopexit617
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

._crit_edge1001:                                  ; preds = %bb.ir
  %i.ac = icmp eq ptr %.sroa.0533.5, %.sroa.21.5
  br i1 %i.ac, label %._crit_edge1001.thread, label %bb.iv

.thread1422:                                      ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.jp

bb.e:                                             ; preds = %.lr.ph1000, %bb.ir
  %indvars.iv1295 = phi i64 [ 0, %.lr.ph1000 ], [ %indvars.iv.next1296, %bb.ir ] ; 4 uses
  %.0317997 = phi i1 [ false, %.lr.ph1000 ], [ %.2319, %bb.ir ]
  %.sroa.13.0996 = phi i32 [ 0, %.lr.ph1000 ], [ %.sroa.13.1, %bb.ir ]
  %.sroa.10.0995 = phi i32 [ 0, %.lr.ph1000 ], [ %.sroa.10.1, %bb.ir ]
  %.sroa.7.0994 = phi i32 [ 0, %.lr.ph1000 ], [ %.sroa.7.1, %bb.ir ]
  %.sroa.0.0993 = phi i32 [ 0, %.lr.ph1000 ], [ %spec.select, %bb.ir ]
  %.sroa.0533.0992 = phi ptr [ %.sroa.21.61395, %.lr.ph1000 ], [ %.sroa.0533.5, %bb.ir ] ; 17 uses
  %.sroa.21.0991 = phi ptr [ %.sroa.21.61395, %.lr.ph1000 ], [ %.sroa.21.5, %bb.ir ] ; 11 uses
  %.sroa.39.0990 = phi ptr [ %.sroa.39.111393, %.lr.ph1000 ], [ %.sroa.39.5, %bb.ir ] ; 9 uses
  %.sroa.0527.0989 = phi ptr [ %i.w, %.lr.ph1000 ], [ %.sroa.0527.3, %bb.ir ] ; 4 uses
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv1295
  %i.ag = load ptr, ptr %i.af, align 8            ; 48 uses
  %i.ah = load i32, ptr %i.ag, align 8            ; 6 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.e
  %.not1022 = icmp eq ptr %.sroa.21.0991, %.sroa.0533.0992
  br i1 %.not1022, label %._crit_edge1012, label %.lr.ph1011.preheader

.lr.ph1011.preheader:                             ; preds = %.preheader
  %i.aj = ptrtoint ptr %.sroa.21.0991 to i64
  %i.ak = ptrtoint ptr %.sroa.0533.0992 to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  br label %.lr.ph1011

._crit_edge1012:                                  ; preds = %bb.g, %.preheader
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  store ptr %i.ao, ptr %i.a, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA35_KcPS1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 1 dereferenceable(35) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.j

.lr.ph1011:                                       ; preds = %.lr.ph1011.preheader, %bb.g
  %.03151010 = phi i64 [ %i.as, %bb.g ], [ 0, %.lr.ph1011.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0533.0992, i64 %.03151010
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1011
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.aq) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 1320) #20
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph1011, %bb.f
  %i.as = add nuw i64 %.03151010, 1               ; 2 uses
  %exitcond1297.not = icmp eq i64 %i.as, %i.am
  br i1 %exitcond1297.not, label %._crit_edge1012, label %.lr.ph1011, !llvm.loop !7

bb.h:                                             ; preds = %._crit_edge1012
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.jq unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.jm

bb.j:                                             ; preds = %._crit_edge1012
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @__cxa_free_exception(ptr nonnull %i.an) #19
  br label %bb.jm

bb.k:                                             ; preds = %bb.e
  %i.av = and i32 %i.ah, 1                        ; 2 uses
  %spec.select = add i32 %i.av, %.sroa.0.0993     ; 2 uses
  %i.aw = lshr i32 %i.ah, 1
  %i.ax = and i32 %i.aw, 1                        ; 2 uses
  %.sroa.7.1 = add i32 %i.ax, %.sroa.7.0994       ; 2 uses
  %.1311 = add nuw nsw i32 %i.ax, %i.av
  %i.ay = lshr i32 %i.ah, 2
  %i.az = and i32 %i.ay, 1                        ; 2 uses
  %.sroa.10.1 = add i32 %i.az, %.sroa.10.0995     ; 2 uses
  %.2312 = add nuw nsw i32 %.1311, %i.az
  %i.ba = lshr i32 %i.ah, 3
  %i.bb = and i32 %i.ba, 1                        ; 2 uses
  %.sroa.13.1 = add i32 %i.bb, %.sroa.13.0996     ; 2 uses
  %.3313 = add nuw nsw i32 %.2312, %i.bb          ; 2 uses
  %i.bc = icmp eq i32 %.3313, 1
  br i1 %i.bc, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.ab, align 8
  %i.be = and i32 %i.bd, %i.ah
  %.not426 = icmp eq i32 %i.be, 0
  br i1 %.not426, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bf = ptrtoint ptr %.sroa.21.0991 to i64
  %i.bg = ptrtoint ptr %.sroa.0533.0992 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 6 uses
  %i.bi = ashr exact i64 %i.bh, 3                 ; 4 uses
  %i.bj = trunc i64 %i.bi to i32
  store i32 %i.bj, ptr %.sroa.0527.0989, align 4
  %.not.i = icmp eq ptr %.sroa.21.0991, %.sroa.39.0990
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.ag, ptr %.sroa.21.0991, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bk = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bk, label %bb.p, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc438 unwind label %.loopexit.split-lp613

.noexc438:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bi
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #21
          to label %.noexc439 unwind label %.loopexit612 ; 4 uses

.noexc439:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bh ; 2 uses
  store ptr %i.ag, ptr %i.br, align 8
  %i.bs = icmp sgt i64 %i.bh, 0
  br i1 %i.bs, label %bb.q, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.q:                                             ; preds = %.noexc439
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %.sroa.0533.0992, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.q, %.noexc439
  %.not.i17.i.i = icmp eq ptr %.sroa.0533.0992, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.0992, i64 noundef %i.bh) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.n
  %.sroa.39.12 = phi ptr [ %i.bt, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.39.0990, %bb.n ]
  %.pn582 = phi ptr [ %i.br, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.21.0991, %bb.n ]
  %.sroa.0533.12 = phi ptr [ %i.bq, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0533.0992, %bb.n ]
  %.sroa.21.7 = getelementptr inbounds nuw i8, ptr %.pn582, i64 8
  br label %bb.t

.loopexit612:                                     ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit614 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm
end_hunk_0
