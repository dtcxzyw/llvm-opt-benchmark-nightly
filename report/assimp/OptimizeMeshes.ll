inline.NumInlined: 300
inline.NumDeleted: 161
begin_hunk_0_@_ZN6Assimp21OptimizeMeshesProcess7ExecuteEP7aiScene:bb.a
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.k                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.w, %i.r
  br i1 %i.x, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = sub i64 %i.y, %i.k                       ; 3 uses
  %i.aa = shl nuw nsw i64 %i.r, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 4 uses
  %i.ac = icmp sgt i64 %i.z, 0
  br i1 %i.ac, label %bb.d, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.j, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.v) #20
  %.pre42.pre = load ptr, ptr %i.m, align 8
  br label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.pre42 = phi ptr [ %.pre42.pre, %bb.e ], [ %i.p, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ]
  store ptr %i.ab, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store ptr %i.ad, ptr %i.h, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.r
  store ptr %i.ae, ptr %i.s, align 8
  %.pre = load i32, ptr %i.b, align 8
  %.pre45 = zext i32 %.pre to i64
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi = phi i64 [ %i.r, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26 ], [ %.pre45, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.af = phi ptr [ %i.p, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26 ], [ %.pre42, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.al, %.pre-phi
  br i1 %i.am, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i27, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i27: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aj                    ; 3 uses
  %i.aq = shl nuw nsw i64 %.pre-phi, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #19 ; 4 uses
  %i.as = icmp sgt i64 %i.ap, 0
  br i1 %i.as, label %bb.f, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.af, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28: ; preds = %bb.f, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i27
  %.not.i8.i29 = icmp eq ptr %i.af, null
  br i1 %.not.i8.i29, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #20
  br label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30: ; preds = %bb.g, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28
  store ptr %i.ar, ptr %i.m, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store ptr %i.at, ptr %i.n, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.pre-phi
  store ptr %i.au, ptr %i.ag, align 8
  %.pre43 = load i32, ptr %i.b, align 8
  %.pre46 = zext i32 %.pre43 to i64
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31:   ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30
  %.pre-phi47 = phi i64 [ %.pre-phi, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ], [ %.pre46, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 12                ; 3 uses
  %i.bd = icmp ult i64 %i.bc, %.pre-phi47
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31
  %i.be = sub nuw nsw i64 %.pre-phi47, %i.bc
  tail call void @_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef %i.be)
  br label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31
  %i.bf = icmp ugt i64 %i.bc, %.pre-phi47
  br i1 %i.bf, label %bb.j, label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %.pre-phi47 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i.i32, label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.bg, ptr %i.aw, align 8
  br label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void @_ZN6Assimp21OptimizeMeshesProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp eq i32 %i.bk, -559038737
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit
  store i32 -1, ptr %i.bj, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit
  %i.bm = load i32, ptr %i.b, align 8
  %.not40 = icmp eq i32 %i.bm, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %bb.l
  %i.bo = load ptr, ptr %i.bh, align 8
  tail call void @_ZN6Assimp21OptimizeMeshesProcess11ProcessNodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.bo)
  %i.bp = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bq = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %.not = icmp eq ptr %i.bp, %i.bq
  br i1 %.not, label %bb.u, label %bb.x

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.02238 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %i.bs = load ptr, ptr %i.bn, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef %i.bu)
  %i.bw = load ptr, ptr %i.av, align 8
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bv, ptr %i.by, align 4
  %i.bz = load ptr, ptr %i.av, align 8
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %indvars.iv ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp ugt i32 %i.cb, 1
  br i1 %i.cc, label %bb.n, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.o, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %bb.n
  %i.cg = add i32 %.02238, 1                      ; 2 uses
  store i32 %.02238, ptr %i.cd, align 4
  %i.ch = load ptr, ptr %i.f, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv ; 2 uses
  %i.cl = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.cm = load ptr, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %i.ck, align 8
  store ptr %i.cn, ptr %i.cl, align 8
  %i.co = load ptr, ptr %i.n, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cp, ptr %i.n, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.q:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.cr = ptrtoint ptr %i.cl to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.r, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.cv = ashr exact i64 %i.ct, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i, %i.cv ; 2 uses
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.cw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #19 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.ct ; 2 uses
  %i.db = load ptr, ptr %i.ck, align 8
  store ptr %i.db, ptr %i.da, align 8
  %i.dc = icmp sgt i64 %i.ct, 0
  br i1 %i.dc, label %bb.s, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr align 8 %i.cq, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.s, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ct) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.cz, ptr %i.m, align 8
  store ptr %i.dd, ptr %i.n, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.de, ptr %i.ag, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.p, %bb.m, %bb.n
  %.1 = phi i32 [ %.02238, %bb.m ], [ %.02238, %bb.n ], [ %i.cg, %bb.p ], [ %i.cg, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.b, align 8
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.m, label %._crit_edge, !llvm.loop !3

bb.u:                                             ; preds = %._crit_edge
  %i.di = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull @.str.4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.di) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.dj

bb.x:                                             ; preds = %._crit_edge
  %i.dk = load ptr, ptr %i.aw, align 8
  %i.dl = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i33, label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35, label %_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i34

_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i34: ; preds = %bb.x
  store ptr %i.dl, ptr %i.aw, align 8
  br label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35

_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35: ; preds = %bb.x, %_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i34
  %i.dm = ptrtoint ptr %i.bp to i64
  %i.dn = sub i64 %i.dm, %i.br
  %i.do = lshr exact i64 %i.dn, 3
  %i.dp = trunc i64 %i.do to i32
  %i.dq = load ptr, ptr %i.f, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i32 %i.dp, ptr %i.dr, align 8
  %i.ds = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.dt = load ptr, ptr %i.n, align 8
  %i.du = load ptr, ptr %i.f, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = ptrtoint ptr %i.ds to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 3 uses
  %i.ea = icmp sgt i64 %i.dz, 8
  br i1 %i.ea, label %bb.y, label %bb.z, !prof !5

bb.y:                                             ; preds = %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dw, ptr align 8 %i.ds, i64 %i.dz, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.z:                                             ; preds = %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35
  %i.eb = icmp eq i64 %i.dz, 8
  br i1 %i.eb, label %bb.aa, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ec = load ptr, ptr %i.ds, align 8
  store ptr %i.ec, ptr %i.dw, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %i.ed = load ptr, ptr %i.n, align 8
  %i.ee = load ptr, ptr %i.m, align 8
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %i.ej = zext i32 %i.c to i64
  %.not23 = icmp eq i64 %i.ei, %i.ej
  %i.ek = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv() ; 2 uses
  br i1 %.not23, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  call void @_ZN6Assimp6Logger5debugIJRA47_KcRKjRA18_S2_RjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ek, ptr noundef nonnull align 1 dereferenceable(47) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ek, ptr noundef nonnull @.str.7)
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
  %i.s = phi i32 [ %i.c, %.lr.ph83 ], [ %i.hd, %bb.ak ]
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
  %i.av = phi i32 [ %i.el, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.ag, %.lr.ph.preheader ] ; 8 uses
  %.03979 = phi i32 [ %.039, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.ak, %.lr.ph.preheader ] ; 9 uses
  %.039.in78 = phi i32 [ %.1, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.al, %.lr.ph.preheader ]
  %.04077 = phi i32 [ %.141, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ 0, %.lr.ph.preheader ] ; 10 uses
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
  %i.dh = ashr exact i64 %i.df, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i, %i.dh ; 2 uses
  %i.dj = call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #19 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.df ; 2 uses
  %i.dn = load ptr, ptr %i.br, align 8
  store ptr %i.dn, ptr %i.dm, align 8
  %i.do = icmp sgt i64 %i.df, 0
  br i1 %i.do, label %bb.r, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr align 8 %i.dc, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.df) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dl, ptr %i.f, align 8
  store ptr %i.dp, ptr %i.g, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.dq, ptr %i.l, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.o, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.dr = load ptr, ptr %i.h, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ba
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = add i32 %i.dx, %.04276
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = add i32 %i.ea, %.04077
  %i.ec = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ed = load i32, ptr %i.b, align 8
  %i.ee = add i32 %i.ed, -1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ax
  store i32 %i.eh, ptr %i.ei, align 4
  %i.ej = load i32, ptr %i.b, align 8
  %i.ek = add i32 %i.ej, -1                       ; 2 uses
  store i32 %i.ek, ptr %i.b, align 8
  br label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread

_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread: ; preds = %bb.k, %bb.i, %bb.j, %bb.g, %bb.m, %bb.e, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit, %.lr.ph
  %i.el = phi i32 [ %i.ek, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %i.av, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit ], [ %i.av, %.lr.ph ], [ %i.av, %bb.e ], [ %i.av, %bb.m ], [ %i.av, %bb.g ], [ %i.av, %bb.j ], [ %i.av, %bb.i ], [ %i.av, %bb.k ] ; 2 uses
  %.143 = phi i32 [ %i.dy, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.04276, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit ], [ %.04276, %.lr.ph ], [ %.04276, %bb.e ], [ %.04276, %bb.m ], [ %.04276, %bb.g ], [ %.04276, %bb.j ], [ %.04276, %bb.i ], [ %.04276, %bb.k ]
  %.141 = phi i32 [ %i.eb, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.04077, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit ], [ %.04077, %.lr.ph ], [ %.04077, %bb.e ], [ %.04077, %bb.m ], [ %.04077, %bb.g ], [ %.04077, %bb.j ], [ %.04077, %bb.i ], [ %.04077, %bb.k ]
  %.1 = phi i32 [ %.039.in78, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.03979, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit ], [ %.03979, %.lr.ph ], [ %.03979, %bb.e ], [ %.03979, %bb.m ], [ %.03979, %bb.g ], [ %.03979, %bb.j ], [ %.03979, %bb.i ], [ %.03979, %bb.k ] ; 2 uses
  %.039 = add i32 %.1, 1                          ; 2 uses
  %i.em = icmp ult i32 %.039, %i.el
  br i1 %i.em, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !10

bb.t:                                             ; preds = %._crit_edge
  %i.en = load ptr, ptr %i.l, align 8
  %.not.i46 = icmp eq ptr %i.am, %i.en
  br i1 %.not.i46, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eo = load ptr, ptr %i.au, align 8
  store ptr %i.eo, ptr %i.am, align 8
  %i.ep = load ptr, ptr %i.g, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.g, align 8
  %.pre95 = load ptr, ptr %i.f, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit53

bb.v:                                             ; preds = %bb.t
  %i.er = ptrtoint ptr %i.am to i64
  %i.es = ptrtoint ptr %i.an to i64
  %i.et = sub i64 %i.er, %i.es                    ; 6 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.w, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i47

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i47: ; preds = %bb.v
  %i.ev = ashr exact i64 %i.et, 2
  %i.ew = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975) ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 3
  %i.ey = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #19 ; 5 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %i.et ; 2 uses
  %i.fa = load ptr, ptr %i.au, align 8
  store ptr %i.fa, ptr %i.ez, align 8
  %i.fb = icmp sgt i64 %i.et, 0
  br i1 %i.fb, label %bb.x, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50

bb.x:                                             ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i47
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr align 8 %i.an, i64 %i.et, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50: ; preds = %bb.x, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i47
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %.not.i17.i.i51 = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i51, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.et) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52: ; preds = %bb.y, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i50
  store ptr %i.ey, ptr %i.f, align 8
  store ptr %i.fc, ptr %i.g, align 8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fd, ptr %i.l, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit53

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit53: ; preds = %bb.u, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52
  %i.fe = phi ptr [ %i.eq, %bb.u ], [ %i.fc, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52 ]
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
  %i.fq = ashr exact i64 %i.fo, 3                 ; 2 uses
  %.sroa.speculated.i.i.i56 = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i56, %i.fq ; 2 uses
  %i.fs = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i57 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i57)
  %i.ft = shl nuw nsw i64 %i.fs, 3
  %i.fu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #19 ; 4 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.fo ; 2 uses
  %i.fw = load ptr, ptr %i.a, align 8
  store ptr %i.fw, ptr %i.fv, align 8
  %i.fx = icmp sgt i64 %i.fo, 0
  br i1 %i.fx, label %bb.ac, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58

bb.ac:                                            ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr align 8 %i.fl, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58: ; preds = %bb.ac, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i55
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %.not.i17.i.i59 = icmp eq ptr %i.fl, null
  br i1 %.not.i17.i.i59, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fo) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60: ; preds = %bb.ad, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i58
  store ptr %i.fu, ptr %i.m, align 8
  store ptr %i.fy, ptr %i.n, align 8
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fs
  store ptr %i.fz, ptr %i.o, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61: ; preds = %bb.z, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60
  %i.ga = phi ptr [ %i.fk, %bb.z ], [ %i.fy, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69

bb.ae:                                            ; preds = %._crit_edge
  %i.gb = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.gc = load ptr, ptr %i.o, align 8
  %.not.i62 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i62, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gd = load ptr, ptr %i.au, align 8
  store ptr %i.gd, ptr %i.gb, align 8
  %i.ge = load ptr, ptr %i.n, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.n, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69

bb.ag:                                            ; preds = %bb.ae
  %i.gg = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.gh = ptrtoint ptr %i.gb to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 6 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %bb.ah, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i63

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i63: ; preds = %bb.ag
  %i.gl = ashr exact i64 %i.gj, 3                 ; 2 uses
  %.sroa.speculated.i.i.i64 = call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i64, %i.gl ; 2 uses
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gm, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i65 = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %.not.i.i.i65)
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #19 ; 4 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 %i.gj ; 2 uses
  %i.gr = load ptr, ptr %i.au, align 8
  store ptr %i.gr, ptr %i.gq, align 8
  %i.gs = icmp sgt i64 %i.gj, 0
  br i1 %i.gs, label %bb.ai, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66

bb.ai:                                            ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i63
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gp, ptr align 8 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66: ; preds = %bb.ai, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i63
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %.not.i17.i.i67 = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i67, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gj) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68: ; preds = %bb.aj, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i66
  store ptr %i.gp, ptr %i.m, align 8
  store ptr %i.gt, ptr %i.n, align 8
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.gu, ptr %i.o, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68, %bb.af, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61
  %i.gv = phi ptr [ %i.gt, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i68 ], [ %i.gf, %bb.af ], [ %i.ga, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit61 ]
  %i.gw = load ptr, ptr %i.m, align 8
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = lshr exact i64 %i.gz, 3
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = add i32 %i.hb, -1
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69, %bb.c
  %indvars.iv.next.pre-phi = phi i64 [ %i.ah, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69 ], [ %.pre96, %bb.c ] ; 2 uses
  %storemerge = phi i32 [ %i.hc, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit69 ], [ %i.ac, %bb.c ]
  store i32 %storemerge, ptr %i.u, align 4
  %i.hd = load i32, ptr %i.b, align 8             ; 2 uses
  %i.he = zext i32 %i.hd to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next.pre-phi, %i.he
  br i1 %i.hf, label %bb.b, label %.preheader, !llvm.loop !11

._crit_edge86:                                    ; preds = %bb.al, %.preheader
  ret void

bb.al:                                            ; preds = %.lr.ph85, %bb.al
  %indvars.iv90 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next91, %bb.al ] ; 2 uses
  %i.hg = load ptr, ptr %i.r, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv90
  %i.hi = load ptr, ptr %i.hh, align 8
  call void @_ZN6Assimp21OptimizeMeshesProcess11ProcessNodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.hi)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.hj = load i32, ptr %i.p, align 8
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp samesign ult i64 %indvars.iv.next91, %i.hk
  br i1 %i.hl, label %bb.al, label %._crit_edge86, !llvm.loop !12
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #18
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #18
  resume { ptr, i32 } %i.p
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5debugIJRA47_KcRKjRA18_S2_RjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(47) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(47) %1) #18
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 1 dereferenceable(47) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA47_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6) #18
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA47_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA18_KcRjERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSB_SC_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA47_cEERKT_.exit
  %i.d = load ptr, ptr %5, align 8
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %5, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %6, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %6, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #18
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA47_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 align 2 {
end_hunk_0
