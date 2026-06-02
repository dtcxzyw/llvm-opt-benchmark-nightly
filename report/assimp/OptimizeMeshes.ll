inline.NumInlined: 300
inline.NumDeleted: 161
begin_hunk_0_@_ZN6Assimp21OptimizeMeshesProcess7ExecuteEP7aiScene:bb.a

bb.z:                                             ; preds = %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35
  %i.ed = icmp eq i64 %i.eb, 8
  br i1 %i.ed, label %bb.aa, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ee = load ptr, ptr %i.du, align 8
  store ptr %i.ee, ptr %i.dy, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %i.ef = load ptr, ptr %i.n, align 8
  %i.eg = load ptr, ptr %i.m, align 8
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 3
  %i.el = zext i32 %i.c to i64
  %.not23 = icmp eq i64 %i.ek, %i.el
  %i.em = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv() ; 2 uses
  br i1 %.not23, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  call void @_ZN6Assimp6Logger5debugIJRA47_KcRKjRA18_S2_RjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.em, ptr noundef nonnull align 1 dereferenceable(47) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.em, ptr noundef nonnull @.str.7)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp21OptimizeMeshesProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1128
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.preheader, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph13, %bb.c
  %indvars.iv16 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next17, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @_ZN6Assimp21OptimizeMeshesProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.u)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %i.v = load i32, ptr %i.e, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next17, %i.w
  br i1 %i.x, label %bb.c, label %._crit_edge, !llvm.loop !7
}

declare noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp21OptimizeMeshesProcess11ProcessNodeEP6aiNode(ptr noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.ak, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not87 = icmp eq i32 %i.q, 0
  br i1 %.not87, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.al

bb.b:                                             ; preds = %.lr.ph83, %bb.ak
  %i.s = phi i32 [ %i.c, %.lr.ph83 ], [ %i.hh, %bb.ak ]
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next.pre-phi, %bb.ak ] ; 4 uses
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv ; 4 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp ugt i32 %i.z, 1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 4
  %.pre96 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.f, align 8             ; 4 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.ae, ptr %i.g, align 8
  %.pre = load i32, ptr %i.b, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit:      ; preds = %bb.d, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i
  %i.af = phi ptr [ %i.ad, %bb.d ], [ %i.ae, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.ag = phi i32 [ %i.s, %bb.d ], [ %.pre, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ah = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ai = zext i32 %i.ag to i64
  %i.aj = icmp samesign ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit
  %i.ak = trunc nuw i64 %i.ah to i32
  %i.al = trunc nuw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread
  %.pre93 = load ptr, ptr %i.f, align 8
  %.pre94 = load ptr, ptr %i.g, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit
  %i.am = phi ptr [ %.pre94, %._crit_edge.loopexit ], [ %i.af, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit ] ; 4 uses
  %i.an = phi ptr [ %.pre93, %._crit_edge.loopexit ], [ %i.ae, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit ] ; 5 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  %i.ap = load ptr, ptr %i.h, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.u, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at ; 4 uses
  br i1 %i.ao, label %bb.ae, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread
  %i.av = phi i32 [ %i.ei, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.ag, %.lr.ph.preheader ] ; 8 uses
  %.03979 = phi i32 [ %.039, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.ak, %.lr.ph.preheader ] ; 9 uses
  %.039.in78 = phi i32 [ %.1, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.al, %.lr.ph.preheader ]
  %.04077 = phi i32 [ %.1.a, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %.04276 = phi i32 [ %.143, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %i.aw = load ptr, ptr %i.d, align 8
  %i.ax = zext i32 %.03979 to i64                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.e, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread

bb.e:                                             ; preds = %.lr.ph
  %i.bf = load i32, ptr %i.u, align 4
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bl = load i32, ptr %i.bk, align 4
  %.not.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not.i, label %bb.f, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.h, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bg
  %i.bq = load ptr, ptr %i.bp, align 8            ; 4 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.ba ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 7 uses
  %i.bt = load i32, ptr %i.i, align 4             ; 2 uses
  %.not18.i = icmp eq i32 %i.bt, -1
  br i1 %.not18.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.bv, %.04276
  %i.bx = icmp ugt i32 %i.bw, %i.bt
  br i1 %i.bx, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.by = load i32, ptr %i.j, align 8             ; 2 uses
  %.not19.i = icmp eq i32 %i.by, -1
  br i1 %.not19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = add i32 %i.ca, %.04077
  %i.cc = icmp ugt i32 %i.cb, %i.by
  br i1 %i.cc, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 232
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 232
  %i.cg = load i32, ptr %i.cf, align 8
  %.not20.i = icmp eq i32 %i.ce, %i.cg
  br i1 %.not20.i, label %bb.k, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 224
  %i.ci = load ptr, ptr %i.ch, align 8
  %.not.i.i44 = icmp ne ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 216
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = select i1 %.not.i.i44, i1 %i.cl, i1 false ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %i.co = load ptr, ptr %i.cn, align 8
  %.not.i23.i = icmp ne ptr %i.co, null
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 216
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = select i1 %.not.i23.i, i1 %i.cr, i1 false
  %i.ct = xor i1 %i.cm, %i.cs
  br i1 %i.ct, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = load i8, ptr %i.k, align 8, !range !8, !noundef !9
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.m, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit

bb.m:                                             ; preds = %bb.l
  %i.cw = load i32, ptr %i.bq, align 8
  %i.cx = load i32, ptr %i.bs, align 8
  %.not22.i = icmp ne i32 %i.cw, %i.cx
  %or.cond74.not = or i1 %i.cm, %.not22.i
  br i1 %or.cond74.not, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread, label %bb.n

_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit: ; preds = %bb.l
  br i1 %i.cm, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit
  %i.cy = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.cz = load ptr, ptr %i.l, align 8
  %.not.i45 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bs, ptr %i.cy, align 8
  %i.da = load ptr, ptr %i.g, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.db, ptr %i.g, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.dc = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.dd = ptrtoint ptr %i.cy to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 6 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.q, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dh = ashr exact i64 %i.df, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975)
  %i.dl = select i1 %i.dj, i64 1152921504606846975, i64 %i.dk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #19 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.df ; 2 uses
  %i.dp = load ptr, ptr %i.br, align 8
  store ptr %i.dp, ptr %i.do, align 8
  %i.dq = icmp sgt i64 %i.df, 0
  br i1 %i.dq, label %bb.r, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.dc, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.df) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dn, ptr %i.f, align 8
  store ptr %i.dr, ptr %i.g, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.ds, ptr %i.l, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.o, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.dt = load ptr, ptr %i.h, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ba
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, %.04276
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %5 = load i32, ptr %i.dy, align 8
  %6 = add i32 %5, %.04077
  %i.dz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ea = load i32, ptr %i.b, align 8
  %i.eb = add i32 %i.ea, -1
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ax
  store i32 %i.ee, ptr %i.ef, align 4
  %i.eg = load i32, ptr %i.b, align 8
  %i.eh = add i32 %i.eg, -1                       ; 2 uses
  store i32 %i.eh, ptr %i.b, align 8
  br label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread

_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread: ; preds = %bb.k, %bb.i, %bb.j, %bb.g, %bb.m, %bb.e, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit, %.lr.ph
  %i.ei = phi i32 [ %i.eh, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %i.av, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit ], [ %i.av, %.lr.ph ], [ %i.av, %bb.e ], [ %i.av, %bb.m ], [ %i.av, %bb.g ], [ %i.av, %bb.j ], [ %i.av, %bb.i ], [ %i.av, %bb.k ] ; 2 uses
  %.143 = phi i32 [ %4, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.04276, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit ], [ %.04276, %.lr.ph ], [ %.04276, %bb.e ], [ %.04276, %bb.m ], [ %.04276, %bb.g ], [ %.04276, %bb.j ], [ %.04276, %bb.i ], [ %.04276, %bb.k ]
  %.1.a = phi i32 [ %6, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.04077, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit ], [ %.04077, %.lr.ph ], [ %.04077, %bb.e ], [ %.04077, %bb.m ], [ %.04077, %bb.g ], [ %.04077, %bb.j ], [ %.04077, %bb.i ], [ %.04077, %bb.k ]
  %.1 = phi i32 [ %.039.in78, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.03979, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit ], [ %.03979, %.lr.ph ], [ %.03979, %bb.e ], [ %.03979, %bb.m ], [ %.03979, %bb.g ], [ %.03979, %bb.j ], [ %.03979, %bb.i ], [ %.03979, %bb.k ] ; 2 uses
  %.039 = add i32 %.1, 1                          ; 2 uses
  %i.ej = icmp ult i32 %.039, %i.ei
  br i1 %i.ej, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !10

bb.t:                                             ; preds = %._crit_edge
  %i.ek = load ptr, ptr %i.l, align 8
  %.not.i46 = icmp eq ptr %i.am, %i.ek
  br i1 %.not.i46, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = load ptr, ptr %i.au, align 8
  store ptr %i.el, ptr %i.am, align 8
  %i.em = load ptr, ptr %i.g, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  store ptr %i.en, ptr %i.g, align 8
  %.pre95 = load ptr, ptr %i.f, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit53

bb.v:                                             ; preds = %bb.t
  %i.eo = ptrtoint ptr %i.am to i64
  %i.ep = ptrtoint ptr %i.an to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 7 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775800
  br i1 %i.er, label %bb.w, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i47

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i47: ; preds = %bb.v
  %i.es = ashr exact i64 %i.eq, 3
  %i.et = ashr exact i64 %i.eq, 2                 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = call i64 @llvm.umin.i64(i64 %i.et, i64 1152921504606846975)
  %i.ew = select i1 %i.eu, i64 1152921504606846975, i64 %i.ev ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 3
  %i.ey = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #19 ; 5 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %i.eq ; 2 uses
  %i.fa = load ptr, ptr %i.au, align 8
  store ptr %i.fa, ptr %i.ez, align 8
  %i.fb = icmp sgt i64 %i.eq, 0
  br i1 %i.fb, label %bb.x, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50

bb.x:                                             ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i47
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr align 8 %i.an, i64 %i.eq, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50: ; preds = %bb.x, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i47
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %.not.i17.i.i51 = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i51, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.eq) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52: ; preds = %bb.y, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50
  store ptr %i.ey, ptr %i.f, align 8
  store ptr %i.fc, ptr %i.g, align 8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fd, ptr %i.l, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit53

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit53: ; preds = %bb.u, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52
  %i.fe = phi ptr [ %i.en, %bb.u ], [ %i.fc, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52 ]
  %i.ff = phi ptr [ %.pre95, %bb.u ], [ %i.ey, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @_ZN6Assimp13SceneCombiner11MergeMeshesEPP6aiMeshjN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEESB_(ptr noundef nonnull %i.a, i32 noundef 0, ptr %i.ff, ptr nonnull %i.fe)
  %i.fg = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.fh = load ptr, ptr %i.o, align 8
  %.not.i54 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not.i54, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit53
  %i.fi = load ptr, ptr %i.a, align 8
  store ptr %i.fi, ptr %i.fg, align 8
  %i.fj = load ptr, ptr %i.n, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  store ptr %i.fk, ptr %i.n, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61

bb.aa:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit53
  %i.fl = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.fm = ptrtoint ptr %i.fg to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 6 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775800
  br i1 %i.fp, label %bb.ab, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i55

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i55: ; preds = %bb.aa
  %i.fq = ashr exact i64 %i.fo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i56 = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i56, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975)
  %i.fu = select i1 %i.fs, i64 1152921504606846975, i64 %i.ft ; 3 uses
  %.not.i.i.i57 = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i57)
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #19 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fo ; 2 uses
  %i.fy = load ptr, ptr %i.a, align 8
  store ptr %i.fy, ptr %i.fx, align 8
  %i.fz = icmp sgt i64 %i.fo, 0
  br i1 %i.fz, label %bb.ac, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58

bb.ac:                                            ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr align 8 %i.fl, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58: ; preds = %bb.ac, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i55
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %.not.i17.i.i59 = icmp eq ptr %i.fl, null
  br i1 %.not.i17.i.i59, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fo) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60: ; preds = %bb.ad, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58
  store ptr %i.fw, ptr %i.m, align 8
  store ptr %i.ga, ptr %i.n, align 8
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.gb, ptr %i.o, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61: ; preds = %bb.z, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60
  %i.gc = phi ptr [ %i.fk, %bb.z ], [ %i.ga, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69

bb.ae:                                            ; preds = %._crit_edge
  %i.gd = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.ge = load ptr, ptr %i.o, align 8
  %.not.i62 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i62, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = load ptr, ptr %i.au, align 8
  store ptr %i.gf, ptr %i.gd, align 8
  %i.gg = load ptr, ptr %i.n, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  store ptr %i.gh, ptr %i.n, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69

bb.ag:                                            ; preds = %bb.ae
  %i.gi = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.gj = ptrtoint ptr %i.gd to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 6 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %bb.ah, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i63

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i63: ; preds = %bb.ag
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i64 = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i64, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i65 = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %.not.i.i.i65)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #19 ; 4 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gl ; 2 uses
  %i.gv = load ptr, ptr %i.au, align 8
  store ptr %i.gv, ptr %i.gu, align 8
  %i.gw = icmp sgt i64 %i.gl, 0
  br i1 %i.gw, label %bb.ai, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66

bb.ai:                                            ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i63
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66: ; preds = %bb.ai, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i63
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %.not.i17.i.i67 = icmp eq ptr %i.gi, null
  br i1 %.not.i17.i.i67, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gl) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68: ; preds = %bb.aj, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66
  store ptr %i.gt, ptr %i.m, align 8
  store ptr %i.gx, ptr %i.n, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.gy, ptr %i.o, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68, %bb.af, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61
  %i.gz = phi ptr [ %i.gx, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68 ], [ %i.gh, %bb.af ], [ %i.gc, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61 ]
  %i.ha = load ptr, ptr %i.m, align 8
end_hunk_0
