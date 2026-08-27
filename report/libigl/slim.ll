Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/slim?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZN5Eigen12SparseMatrixIdLi0EiEaSIS1_S1_EERS1_RKNS_7ProductIT_T0_Li2EEE:bb.a
  %i.ad = load <2 x ptr>, ptr %i.z, align 8, !tbaa !394
  store <2 x ptr> %i.ac, ptr %i.z, align 8, !tbaa !394
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !394
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = load <2 x i64>, ptr %i.k, align 8, !tbaa !334
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !334
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !334
  store <2 x i64> %i.ag, ptr %i.k, align 8, !tbaa !334
  call void @free(ptr noundef %i.y) #28
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !302
  call void @free(ptr noundef %i.ah) #28
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !303 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !304 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #31
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %0

bb.h:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_5BlockIS1_Lin1ELin1ELb0EEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !354, !range !301, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_5BlockIS1_Lin1ELin1ELb0EEEEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !359
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !359
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.d, i64 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !302  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_5BlockIS1_Lin1ELin1ELb0EEEEEvRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.h) #28
  store ptr null, ptr %i.g, align 8, !tbaa !302
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_5BlockIS1_Lin1ELin1ELb0EEEEEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_5BlockIS1_Lin1ELin1ELb0EEEEEvRKT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_5BlockIS3_Lin1ELin1ELb0EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !302  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31
  %i.h = load i32, ptr %i.b, align 4, !tbaa !31   ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %.lr.ph28, label %._crit_edge

.lr.ph28:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #28
  store ptr null, ptr %i.a, align 8, !tbaa !302
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !255
  %i.r = load i64, ptr %i.i, align 8, !tbaa !30
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %i.u = sext i32 %i.t to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.u, double noundef 0.000000e+00)
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7squeezeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph28, %.loopexit
  %i.v = phi i32 [ %i.h, %.lr.ph28 ], [ %i.ax, %.loopexit ] ; 3 uses
  %.02126 = phi i64 [ 1, %.lr.ph28 ], [ %i.w, %.loopexit ] ; 3 uses
  %.022.in25 = phi i32 [ %i.g, %.lr.ph28 ], [ %i.y, %.loopexit ] ; 2 uses
  %.02227 = sext i32 %.022.in25 to i64
  %i.w = add nuw nsw i64 %.02126, 1               ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.02126
  %i.aa = icmp sgt i32 %.022.in25, %i.v
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.02126 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %or.cond = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.ae = phi i32 [ %i.an, %.lr.ph ], [ %i.v, %bb.c ]
  %.023 = phi i64 [ %i.ar, %.lr.ph ], [ 0, %bb.c ] ; 4 uses
  %i.af = add nsw i64 %.023, %.02227              ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !31
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr [4 x i8], ptr %i.n, i64 %.023
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.ai
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !31
  %i.al = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.af
  %i.am = load double, ptr %i.al, align 8, !tbaa !28
  %i.an = load i32, ptr %i.z, align 4, !tbaa !31  ; 3 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr [8 x i8], ptr %i.o, i64 %.023
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.ao
  store double %i.am, ptr %i.aq, align 8, !tbaa !28
  %i.ar = add nuw nsw i64 %.023, 1                ; 2 uses
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !31 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit, !llvm.loop !395

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  %i.av = phi i32 [ %i.ac, %bb.c ], [ %i.as, %.lr.ph ]
  %i.aw = phi i32 [ %i.v, %bb.c ], [ %i.an, %.lr.ph ]
  %i.ax = add nsw i32 %i.av, %i.aw                ; 2 uses
  store i32 %i.ax, ptr %i.x, align 4, !tbaa !31
  %exitcond.not = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !396

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl11slim_buildAERKN5Eigen12SparseMatrixIdLi0EiEES4_S4_RKNS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEERSt6vectorINS0_7TripletIdiEESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !202
  %i.c = icmp eq i64 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 31 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = trunc i64 %i.e to i32                    ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30   ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = add nsw i64 %i.j, %i.h                   ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.l = shl nsw i64 %i.k, 2                      ; 3 uses
  %i.m = icmp ugt i64 %i.l, 576460752303423487
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 19 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !340  ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !337    ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = icmp ult i64 %i.t, %i.l
  br i1 %i.u, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !397
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.r
  %i.z = shl nuw nsw i64 %i.k, 6
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #32 ; 5 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !337   ; 5 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !397 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.aa, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !372, !alias.scope !398
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !377

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ab, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !340
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ai) #31
  br label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.aa, ptr %4, align 8, !tbaa !337
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !397
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.l ; 2 uses
  store ptr %i.ak, ptr %i.n, align 8, !tbaa !340
  %.pre1386 = load i64, ptr %i.g, align 8, !tbaa !30
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.al = phi ptr [ %i.p, %bb.d ], [ %i.aa, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %i.am = phi ptr [ %i.o, %bb.d ], [ %i.ak, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 3 uses
  %i.an = phi i64 [ %i.h, %bb.d ], [ %.pre1386, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph1277, label %.preheader

.lr.ph1277:                                       ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.au = shl nsw i32 %i.f, 1
  %i.av = and i64 %i.h, 4294967295
  br label %bb.f

.preheader:                                       ; preds = %._crit_edge1275, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.aw = phi ptr [ %i.al, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %i.cm, %._crit_edge1275 ]
  %i.ax = phi ptr [ %i.am, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %i.cl, %._crit_edge1275 ] ; 2 uses
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !30  ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph1282, label %.loopexit

.lr.ph1282:                                       ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.bf = mul nsw i32 %i.f, 3
  %i.bg = and i64 %i.h, 4294967295
  br label %bb.z

bb.f:                                             ; preds = %.lr.ph1277, %._crit_edge1275
  %i.bh = phi i64 [ %i.an, %.lr.ph1277 ], [ %i.ck, %._crit_edge1275 ]
  %i.bi = phi ptr [ %i.am, %.lr.ph1277 ], [ %i.cl, %._crit_edge1275 ] ; 2 uses
  %i.bj = phi ptr [ %i.al, %.lr.ph1277 ], [ %i.cm, %._crit_edge1275 ] ; 2 uses
  %i.bk = phi ptr [ %i.am, %.lr.ph1277 ], [ %i.cn, %._crit_edge1275 ] ; 2 uses
  %indvars.iv1328 = phi i64 [ 0, %.lr.ph1277 ], [ %indvars.iv.next1329, %._crit_edge1275 ] ; 8 uses
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !303
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !304
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !255
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv1328 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %i.br = load ptr, ptr %i.as, align 8, !tbaa !302 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr i8, ptr %i.bo, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !31
  %i.bv = sext i32 %i.bu to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.h:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv1328
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !31
  %i.by = sext i32 %i.bx to i64
  %i.bz = add nsw i64 %i.by, %i.bq
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.g, %bb.h
  %.sink.i = phi i64 [ %i.bv, %bb.g ], [ %i.bz, %bb.h ] ; 2 uses
  %i.ca = icmp sgt i64 %.sink.i, %i.bq
  br i1 %i.ca, label %.lr.ph1274, label %._crit_edge1275

.lr.ph1274:                                       ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cb = add nuw i64 %indvars.iv1328, %i.av      ; 4 uses
  %.pre1387 = load ptr, ptr %i.at, align 8, !tbaa !397
  %i.cc = trunc nuw nsw i64 %indvars.iv1328 to i32
  %i.cd = trunc nuw nsw i64 %indvars.iv1328 to i32
  %i.ce = trunc i64 %i.cb to i32
  %i.cf = trunc i64 %i.cb to i32
  %i.cg = trunc nuw nsw i64 %indvars.iv1328 to i32
  %i.ch = trunc nuw nsw i64 %indvars.iv1328 to i32
  %i.ci = trunc i64 %i.cb to i32
  %i.cj = trunc i64 %i.cb to i32
  br label %bb.i

._crit_edge1275.loopexit:                         ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289
  %.pre1393 = load i64, ptr %i.g, align 8, !tbaa !30
  br label %._crit_edge1275

._crit_edge1275:                                  ; preds = %._crit_edge1275.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.ck = phi i64 [ %.pre1393, %._crit_edge1275.loopexit ], [ %i.bh, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.cl = phi ptr [ %i.hi, %._crit_edge1275.loopexit ], [ %i.bi, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.cm = phi ptr [ %i.hj, %._crit_edge1275.loopexit ], [ %i.bj, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.cn = phi ptr [ %i.hi, %._crit_edge1275.loopexit ], [ %i.bk, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ]
  %indvars.iv.next1329 = add nuw nsw i64 %indvars.iv1328, 1 ; 2 uses
  %i.co = icmp sgt i64 %i.ck, %indvars.iv.next1329
  br i1 %i.co, label %bb.f, label %.preheader, !llvm.loop !402

bb.i:                                             ; preds = %.lr.ph1274, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289
  %i.cp = phi ptr [ %i.bi, %.lr.ph1274 ], [ %i.hi, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289 ]
  %i.cq = phi ptr [ %i.bj, %.lr.ph1274 ], [ %i.hj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289 ] ; 6 uses
  %i.cr = phi ptr [ %i.bk, %.lr.ph1274 ], [ %i.hi, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289 ] ; 5 uses
  %i.cs = phi ptr [ %.pre1387, %.lr.ph1274 ], [ %i.hk, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289 ] ; 5 uses
  %.sroa.81194.01273 = phi i64 [ %i.bq, %.lr.ph1274 ], [ %i.hl, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289 ] ; 3 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %.sroa.81194.01273
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !31 ; 6 uses
  %i.cv = sext i32 %i.cu to i64                   ; 4 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.sroa.81194.01273
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !28 ; 4 uses
  %i.cy = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.cv
  %i.da = load double, ptr %i.cz, align 8, !tbaa !28
  %i.db = fmul double %i.cx, %i.da                ; 2 uses
  %.not.i.i = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !31
  %.sroa.51174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.cc, ptr %.sroa.51174.0..sroa_idx, align 4, !tbaa !31
  %.sroa.61177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store double %i.db, ptr %.sroa.61177.0..sroa_idx, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  store ptr %i.dc, ptr %i.at, align 8, !tbaa !397
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.dd = ptrtoint ptr %i.cr to i64
  %i.de = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775792
  br i1 %i.dg, label %bb.l, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #30
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.dh = ashr exact i64 %i.df, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 576460752303423487)
  %i.dl = select i1 %i.dj, i64 576460752303423487, i64 %i.dk ; 3 uses
  %.not.i.i.i.i247 = icmp ne i64 %i.dl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i247)
  %i.dm = shl nuw nsw i64 %i.dl, 4
  %i.dn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #32 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.df ; 3 uses
  store i32 %i.cu, ptr %i.do, align 8, !tbaa !31
  %.sroa.51174.0..sroa_idx1175 = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.cd, ptr %.sroa.51174.0..sroa_idx1175, align 4, !tbaa !31
  %.sroa.61177.0..sroa_idx1178 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store double %i.db, ptr %.sroa.61177.0..sroa_idx1178, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.cr
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ %i.dn, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %i.cq, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !372, !alias.scope !403
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dp, %i.cr
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !377

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dn, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dq, %.lr.ph.i.i.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_ZN3igl11slim_buildAERKN5Eigen12SparseMatrixIdLi0EiEES4_S4_RKNS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEERSt6vectorINS0_7TripletIdiEESaISB_EE:bb.a
  %i.ln = getelementptr [8 x i8], ptr %i.lk, i64 %i.ja
  %.idx1219 = shl i64 %i.lj, 4
  %i.lo = getelementptr i8, ptr %i.ln, i64 %.idx1219
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !28
  %i.lq = fmul double %i.jc, %i.lp                ; 2 uses
  %.not.i.i320 = icmp eq ptr %i.li, %i.lh
  br i1 %.not.i.i320, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit319
  store i32 %i.lm, ptr %i.li, align 8, !tbaa !31
  %.sroa.51101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %i.il, ptr %.sroa.51101.0..sroa_idx, align 4, !tbaa !31
  %.sroa.61104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store double %i.lq, ptr %.sroa.61104.0..sroa_idx, align 8, !tbaa !28
  %i.lr = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  store ptr %i.lr, ptr %i.be, align 8, !tbaa !397
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit333

bb.am:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit319
  %i.ls = ptrtoint ptr %i.lh to i64
  %i.lt = ptrtoint ptr %i.ll to i64               ; 2 uses
  %i.lu = sub i64 %i.ls, %i.lt                    ; 3 uses
  %i.lv = icmp eq i64 %i.lu, 9223372036854775792
  br i1 %i.lv, label %bb.an, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i321

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #30
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i321: ; preds = %bb.am
  %i.lw = ashr exact i64 %i.lu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i322 = tail call i64 @llvm.umax.i64(i64 %i.lw, i64 1)
  %i.lx = add nsw i64 %.sroa.speculated.i.i.i.i322, %i.lw ; 2 uses
  %i.ly = icmp ult i64 %i.lx, %i.lw
  %i.lz = tail call i64 @llvm.umin.i64(i64 %i.lx, i64 576460752303423487)
  %i.ma = select i1 %i.ly, i64 576460752303423487, i64 %i.lz ; 3 uses
  %.not.i.i.i.i323 = icmp ne i64 %i.ma, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i323)
  %i.mb = shl nuw nsw i64 %i.ma, 4
  %i.mc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #32 ; 6 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lu ; 3 uses
  store i32 %i.lm, ptr %i.md, align 8, !tbaa !31
  %.sroa.51101.0..sroa_idx1102 = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store i32 %i.im, ptr %.sroa.51101.0..sroa_idx1102, align 4, !tbaa !31
  %.sroa.61104.0..sroa_idx1105 = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store double %i.lq, ptr %.sroa.61104.0..sroa_idx1105, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i324 = icmp eq ptr %i.ll, %i.lh
  br i1 %.not10.i.i.i.i.i.i324, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i329, label %.lr.ph.i.i.i.i.i.i325

.lr.ph.i.i.i.i.i.i325:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i321, %.lr.ph.i.i.i.i.i.i325
  %.012.i.i.i.i.i.i326 = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i325 ], [ %i.mc, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i321 ] ; 2 uses
  %.0911.i.i.i.i.i.i327 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.i325 ], [ %i.ll, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i321 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i326, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i327, i64 16, i1 false), !tbaa.struct !372, !alias.scope !429
  %i.me = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i327, i64 16 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i326, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i328 = icmp eq ptr %i.me, %i.lh
  br i1 %.not.i.i.i.i.i.i328, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i329, label %.lr.ph.i.i.i.i.i.i325, !llvm.loop !377

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i329: ; preds = %.lr.ph.i.i.i.i.i.i325, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i321
  %.0.lcssa.i.i.i.i.i.i330 = phi ptr [ %i.mc, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i321 ], [ %i.mf, %.lr.ph.i.i.i.i.i.i325 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i330, i64 16 ; 2 uses
  %.not.i23.i.i.i331 = icmp eq ptr %i.ll, null
  br i1 %.not.i23.i.i.i331, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i329
  %i.mh = load ptr, ptr %i.n, align 8, !tbaa !340
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = sub i64 %i.mi, %i.lt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.mj) #31
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332: ; preds = %bb.ao, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i329
  store ptr %i.mc, ptr %4, align 8, !tbaa !337
  store ptr %i.mg, ptr %i.be, align 8, !tbaa !397
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.mc, i64 %i.ma ; 2 uses
  store ptr %i.mk, ptr %i.n, align 8, !tbaa !340
  %.pre1398 = load ptr, ptr %3, align 8, !tbaa !14
  %.pre1399 = load i64, ptr %i.d, align 8, !tbaa !18
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit333

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit333: ; preds = %bb.al, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332
  %i.ml = phi ptr [ %i.lg, %bb.al ], [ %i.mk, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332 ] ; 5 uses
  %i.mm = phi ptr [ %i.lr, %bb.al ], [ %i.mg, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332 ] ; 5 uses
  %i.mn = phi i64 [ %i.lj, %bb.al ], [ %.pre1399, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332 ]
  %i.mo = phi ptr [ %i.lk, %bb.al ], [ %.pre1398, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332 ]
  %i.mp = phi ptr [ %i.ll, %bb.al ], [ %i.mc, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332 ] ; 6 uses
  %i.mq = getelementptr [8 x i8], ptr %i.mo, i64 %i.ja
  %.idx1220 = mul i64 %i.mn, 24
  %i.mr = getelementptr i8, ptr %i.mq, i64 %.idx1220
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !28
  %i.mt = fmul double %i.jc, %i.ms                ; 2 uses
  %.not.i.i334 = icmp eq ptr %i.mm, %i.ml
  br i1 %.not.i.i334, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit333
  store i32 %i.lm, ptr %i.mm, align 8, !tbaa !31
  %.sroa.51091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store i32 %i.in, ptr %.sroa.51091.0..sroa_idx, align 4, !tbaa !31
  %.sroa.61094.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store double %i.mt, ptr %.sroa.61094.0..sroa_idx, align 8, !tbaa !28
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 2 uses
  store ptr %i.mu, ptr %i.be, align 8, !tbaa !397
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit347

bb.aq:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit333
  %i.mv = ptrtoint ptr %i.ml to i64
  %i.mw = ptrtoint ptr %i.mp to i64               ; 2 uses
  %i.mx = sub i64 %i.mv, %i.mw                    ; 3 uses
  %i.my = icmp eq i64 %i.mx, 9223372036854775792
  br i1 %i.my, label %bb.ar, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i335

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #30
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i335: ; preds = %bb.aq
  %i.mz = ashr exact i64 %i.mx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i336 = tail call i64 @llvm.umax.i64(i64 %i.mz, i64 1)
  %i.na = add nsw i64 %.sroa.speculated.i.i.i.i336, %i.mz ; 2 uses
  %i.nb = icmp ult i64 %i.na, %i.mz
  %i.nc = tail call i64 @llvm.umin.i64(i64 %i.na, i64 576460752303423487)
  %i.nd = select i1 %i.nb, i64 576460752303423487, i64 %i.nc ; 3 uses
  %.not.i.i.i.i337 = icmp ne i64 %i.nd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i337)
  %i.ne = shl nuw nsw i64 %i.nd, 4
  %i.nf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ne) #32 ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.mx ; 3 uses
  store i32 %i.lm, ptr %i.ng, align 8, !tbaa !31
  %.sroa.51091.0..sroa_idx1092 = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  store i32 %i.io, ptr %.sroa.51091.0..sroa_idx1092, align 4, !tbaa !31
  %.sroa.61094.0..sroa_idx1095 = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store double %i.mt, ptr %.sroa.61094.0..sroa_idx1095, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i338 = icmp eq ptr %i.mp, %i.ml
  br i1 %.not10.i.i.i.i.i.i338, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i339

.lr.ph.i.i.i.i.i.i339:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i335, %.lr.ph.i.i.i.i.i.i339
  %.012.i.i.i.i.i.i340 = phi ptr [ %i.ni, %.lr.ph.i.i.i.i.i.i339 ], [ %i.nf, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i335 ] ; 2 uses
  %.0911.i.i.i.i.i.i341 = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.i339 ], [ %i.mp, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i335 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i340, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i341, i64 16, i1 false), !tbaa.struct !372, !alias.scope !433
  %i.nh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i341, i64 16 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i340, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i342 = icmp eq ptr %i.nh, %i.ml
  br i1 %.not.i.i.i.i.i.i342, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i339, !llvm.loop !377

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i343: ; preds = %.lr.ph.i.i.i.i.i.i339, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i335
  %.0.lcssa.i.i.i.i.i.i344 = phi ptr [ %i.nf, %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i335 ], [ %i.ni, %.lr.ph.i.i.i.i.i.i339 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i344, i64 16 ; 2 uses
  %.not.i23.i.i.i345 = icmp eq ptr %i.mp, null
  br i1 %.not.i23.i.i.i345, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i346, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i343
  %i.nk = load ptr, ptr %i.n, align 8, !tbaa !340
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = sub i64 %i.nl, %i.mw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.nm) #31
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i346

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i346: ; preds = %bb.as, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i343
  store ptr %i.nf, ptr %4, align 8, !tbaa !337
  store ptr %i.nj, ptr %i.be, align 8, !tbaa !397
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.nf, i64 %i.nd ; 2 uses
  store ptr %i.nn, ptr %i.n, align 8, !tbaa !340
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit347

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit347: ; preds = %bb.ap, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i346
  %i.no = phi ptr [ %i.ml, %bb.ap ], [ %i.nn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i346 ] ; 4 uses
  %i.np = phi ptr [ %i.mp, %bb.ap ], [ %i.nf, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i346 ] ; 2 uses
  %i.nq = phi ptr [ %i.mu, %bb.ap ], [ %i.nj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i346 ]
  %i.nr = add nsw i64 %.sroa.81135.01278, 1       ; 2 uses
  %exitcond1331.not = icmp eq i64 %i.nr, %.sink.i290
  br i1 %exitcond1331.not, label %._crit_edge1280.loopexit, label %bb.ac, !llvm.loop !437

bb.at:                                            ; preds = %bb.a
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !30
  %i.nu = add nsw i64 %i.k, %i.nt                 ; 2 uses
  %i.nv = mul nsw i64 %i.nu, 9                    ; 3 uses
  %i.nw = icmp ugt i64 %i.nv, 576460752303423487
  br i1 %i.nw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.nx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 57 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !340 ; 2 uses
  %i.nz = load ptr, ptr %4, align 8, !tbaa !337   ; 2 uses
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = ptrtoint ptr %i.nz to i64               ; 2 uses
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = ashr exact i64 %i.oc, 4
  %i.oe = icmp ult i64 %i.od, %i.nv
  br i1 %i.oe, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i348, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit357

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i348: ; preds = %bb.av
  %i.of = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !397
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.oh, %i.ob
  %i.oj = mul nuw nsw i64 %i.nu, 144
  %i.ok = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oj) #32 ; 5 uses
  %i.ol = load ptr, ptr %4, align 8, !tbaa !337   ; 5 uses
  %i.om = load ptr, ptr %i.of, align 8, !tbaa !397 ; 2 uses
  %.not10.i.i.i.i349 = icmp eq ptr %i.ol, %i.om
  br i1 %.not10.i.i.i.i349, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i354, label %.lr.ph.i.i.i.i350

.lr.ph.i.i.i.i350:                                ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i348, %.lr.ph.i.i.i.i350
  %.012.i.i.i.i351 = phi ptr [ %i.oo, %.lr.ph.i.i.i.i350 ], [ %i.ok, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i348 ] ; 2 uses
  %.0911.i.i.i.i352 = phi ptr [ %i.on, %.lr.ph.i.i.i.i350 ], [ %i.ol, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i348 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i351, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i352, i64 16, i1 false), !tbaa.struct !372, !alias.scope !438
  %i.on = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i352, i64 16 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i351, i64 16
  %.not.i.i.i.i353 = icmp eq ptr %i.on, %i.om
  br i1 %.not.i.i.i.i353, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i354, label %.lr.ph.i.i.i.i350, !llvm.loop !377

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i354: ; preds = %.lr.ph.i.i.i.i350, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i348
  %.not.i8.i355 = icmp eq ptr %i.ol, null
  br i1 %.not.i8.i355, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i356, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i354
  %i.op = load ptr, ptr %i.nx, align 8, !tbaa !340
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = ptrtoint ptr %i.ol to i64
  %i.os = sub i64 %i.oq, %i.or
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.os) #31
  br label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i356

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i356: ; preds = %bb.aw, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i354
  store ptr %i.ok, ptr %4, align 8, !tbaa !337
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oi
  store ptr %i.ot, ptr %i.of, align 8, !tbaa !397
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %i.nv ; 2 uses
  store ptr %i.ou, ptr %i.nx, align 8, !tbaa !340
  %.pre = load i64, ptr %i.g, align 8, !tbaa !30
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit357

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit357: ; preds = %bb.av, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i356
  %i.ov = phi ptr [ %i.nz, %bb.av ], [ %i.ok, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i356 ] ; 2 uses
  %i.ow = phi ptr [ %i.ny, %bb.av ], [ %i.ou, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i356 ] ; 3 uses
  %i.ox = phi i64 [ %i.h, %bb.av ], [ %.pre, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i356 ] ; 2 uses
  %i.oy = icmp sgt i64 %i.ox, 0
  br i1 %i.oy, label %.lr.ph1262, label %.preheader1225

.lr.ph1262:                                       ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit357
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 19 uses
  %i.pe = shl i64 %i.h, 1
  %i.pf = mul nsw i32 %i.f, 3
  %i.pg = mul nsw i32 %i.f, 6
  %i.ph = and i64 %i.h, 4294967295
  %i.pi = and i64 %i.pe, 4294967294
  br label %bb.ax

.preheader1225:                                   ; preds = %._crit_edge, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit357
  %i.pj = phi ptr [ %i.ov, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit357 ], [ %i.rn, %._crit_edge ] ; 2 uses
  %i.pk = phi ptr [ %i.ow, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit357 ], [ %i.rm, %._crit_edge ] ; 3 uses
  %i.pl = load i64, ptr %i.i, align 8, !tbaa !30  ; 2 uses
  %i.pm = icmp sgt i64 %i.pl, 0
  br i1 %i.pm, label %.lr.ph1267, label %.preheader1223

.lr.ph1267:                                       ; preds = %.preheader1225
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 19 uses
  %i.ps = shl i64 %i.h, 1
  %i.pt = shl nsw i32 %i.f, 2
  %i.pu = mul nsw i32 %i.f, 7
  %i.pv = and i64 %i.h, 4294967295
  %i.pw = and i64 %i.ps, 4294967294
  br label %bb.cl

bb.ax:                                            ; preds = %.lr.ph1262, %._crit_edge
  %i.px = phi i64 [ %i.ox, %.lr.ph1262 ], [ %i.rl, %._crit_edge ]
  %i.py = phi ptr [ %i.ow, %.lr.ph1262 ], [ %i.rm, %._crit_edge ] ; 2 uses
  %i.pz = phi ptr [ %i.ov, %.lr.ph1262 ], [ %i.rn, %._crit_edge ] ; 2 uses
  %i.qa = phi ptr [ %i.ow, %.lr.ph1262 ], [ %i.ro, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph1262 ], [ %indvars.iv.next, %._crit_edge ] ; 11 uses
  %i.qb = load ptr, ptr %i.oz, align 8, !tbaa !303
  %i.qc = load ptr, ptr %i.pa, align 8, !tbaa !304
  %i.qd = load ptr, ptr %i.pb, align 8, !tbaa !255
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !31
  %i.qg = sext i32 %i.qf to i64                   ; 3 uses
  %i.qh = load ptr, ptr %i.pc, align 8, !tbaa !302 ; 2 uses
  %i.qi = icmp eq ptr %i.qh, null
  br i1 %i.qi, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.qj = getelementptr i8, ptr %i.qe, i64 4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !31
  %i.ql = sext i32 %i.qk to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359

bb.az:                                            ; preds = %bb.ax
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %indvars.iv
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !31
  %i.qo = sext i32 %i.qn to i64
  %i.qp = add nsw i64 %i.qo, %i.qg
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359: ; preds = %bb.ay, %bb.az
  %.sink.i358 = phi i64 [ %i.ql, %bb.ay ], [ %i.qp, %bb.az ] ; 2 uses
  %i.qq = icmp sgt i64 %.sink.i358, %i.qg
  br i1 %i.qq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359
  %i.qr = add nuw i64 %indvars.iv, %i.ph          ; 6 uses
  %i.qs = add nuw i64 %indvars.iv, %i.pi          ; 6 uses
  %.pre1335 = load ptr, ptr %i.pd, align 8, !tbaa !397
  %i.qt = trunc nuw nsw i64 %indvars.iv to i32
  %i.qu = trunc nuw nsw i64 %indvars.iv to i32
  %i.qv = trunc i64 %i.qr to i32
  %i.qw = trunc i64 %i.qr to i32
  %i.qx = trunc i64 %i.qs to i32
  %i.qy = trunc i64 %i.qs to i32
  %i.qz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ra = trunc nuw nsw i64 %indvars.iv to i32
  %i.rb = trunc i64 %i.qr to i32
  %i.rc = trunc i64 %i.qr to i32
  %i.rd = trunc i64 %i.qs to i32
  %i.re = trunc i64 %i.qs to i32
  %i.rf = trunc nuw nsw i64 %indvars.iv to i32
  %i.rg = trunc nuw nsw i64 %indvars.iv to i32
  %i.rh = trunc i64 %i.qr to i32
  %i.ri = trunc i64 %i.qr to i32
  %i.rj = trunc i64 %i.qs to i32
  %i.rk = trunc i64 %i.qs to i32
  br label %bb.ba

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit485
  %.pre1351 = load i64, ptr %i.g, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359
  %i.rl = phi i64 [ %.pre1351, %._crit_edge.loopexit ], [ %i.px, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359 ] ; 2 uses
  %i.rm = phi ptr [ %i.ace, %._crit_edge.loopexit ], [ %i.py, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359 ] ; 2 uses
  %i.rn = phi ptr [ %i.acf, %._crit_edge.loopexit ], [ %i.pz, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359 ] ; 2 uses
  %i.ro = phi ptr [ %i.ace, %._crit_edge.loopexit ], [ %i.qa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit359 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rp = icmp sgt i64 %i.rl, %indvars.iv.next
  br i1 %i.rp, label %bb.ax, label %.preheader1225, !llvm.loop !442

bb.ba:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit485
  %i.rq = phi ptr [ %i.py, %.lr.ph ], [ %i.ace, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit485 ]
  %i.rr = phi ptr [ %i.pz, %.lr.ph ], [ %i.acf, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit485 ] ; 6 uses
  %i.rs = phi ptr [ %i.qa, %.lr.ph ], [ %i.ace, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit485 ] ; 5 uses
  %i.rt = phi ptr [ %.pre1335, %.lr.ph ], [ %i.acg, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit485 ] ; 5 uses
  %.sroa.81081.01260 = phi i64 [ %i.qg, %.lr.ph ], [ %i.ach, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit485 ] ; 3 uses
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %.sroa.81081.01260
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !31 ; 9 uses
  %i.rw = sext i32 %i.rv to i64                   ; 9 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %.sroa.81081.01260
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !28 ; 9 uses
  %i.rz = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.sa = getelementptr [8 x i8], ptr %i.rz, i64 %i.rw
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !28
  %i.sc = fmul double %i.ry, %i.sb                ; 2 uses
  %.not.i.i360 = icmp eq ptr %i.rt, %i.rs
  br i1 %.not.i.i360, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.rv, ptr %i.rt, align 8, !tbaa !31
  %.sroa.51047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  store i32 %i.qt, ptr %.sroa.51047.0..sroa_idx, align 4, !tbaa !31
  %.sroa.61050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store double %i.sc, ptr %.sroa.61050.0..sroa_idx, align 8, !tbaa !28
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rt, i64 16 ; 2 uses
  store ptr %i.sd, ptr %i.pd, align 8, !tbaa !397
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit373

bb.bc:                                            ; preds = %bb.ba
  %i.se = ptrtoint ptr %i.rs to i64
  %i.sf = ptrtoint ptr %i.rr to i64               ; 2 uses
  %i.sg = sub i64 %i.se, %i.sf                    ; 3 uses
  %i.sh = icmp eq i64 %i.sg, 9223372036854775792
  br i1 %i.sh, label %bb.bd, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i361

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #30
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i361: ; preds = %bb.bc
  %i.si = ashr exact i64 %i.sg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i362 = tail call i64 @llvm.umax.i64(i64 %i.si, i64 1)
  %i.sj = add nsw i64 %.sroa.speculated.i.i.i.i362, %i.si ; 2 uses
  %i.sk = icmp ult i64 %i.sj, %i.si
  %i.sl = tail call i64 @llvm.umin.i64(i64 %i.sj, i64 576460752303423487)
  %i.sm = select i1 %i.sk, i64 576460752303423487, i64 %i.sl ; 3 uses
  %.not.i.i.i.i363 = icmp ne i64 %i.sm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i363)
  %i.sn = shl nuw nsw i64 %i.sm, 4
  %i.so = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sn) #32 ; 6 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sg ; 3 uses
  store i32 %i.rv, ptr %i.sp, align 8, !tbaa !31
  %.sroa.51047.0..sroa_idx1048 = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
end_hunk_1
begin_hunk_2_@_ZN5Eigen12SparseMatrixIdLi0EiE11setIdentityEv:bb.a
  %i.cl = icmp sgt i64 %i.bx, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i10, label %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i5

_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i5: ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setOnesEv.exit
  %i.cm = icmp eq i64 %i.bx, 0
  br i1 %i.cm, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14

.lr.ph.i.i.i.i.i.i.i.i.i.i10:                     ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setOnesEv.exit
  %i.cn = zext nneg i32 %i.cj to i64
  %i.co = icmp samesign ugt i64 %i.by, %i.cn
  br i1 %i.co, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader.new, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader.new: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i10
  %unroll_iter80 = and i64 %i.by, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i10, %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i5
  %min.iters.check58 = icmp ult i64 %i.by, 8
  br i1 %min.iters.check58, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6
  %n.vec60 = and i64 %i.by, -8                    ; 3 uses
  %broadcast.splatinsert61 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat62 = shufflevector <4 x i32> %broadcast.splatinsert61, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph59
  %index64 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body63 ] ; 2 uses
  %vec.ind65 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph59 ], [ %vec.ind.next68, %vector.body63 ] ; 3 uses
  %step.add66 = add <4 x i32> %vec.ind65, splat (i32 4)
  %i.cp = mul nsw <4 x i32> %broadcast.splat62, %vec.ind65
  %i.cq = mul nsw <4 x i32> %broadcast.splat62, %step.add66
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index64 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %i.cp, ptr %i.cr, align 4, !tbaa !31
  store <4 x i32> %i.cq, ptr %i.cs, align 4, !tbaa !31
  %index.next67 = add nuw i64 %index64, 8         ; 2 uses
  %vec.ind.next68 = add <4 x i32> %vec.ind65, splat (i32 8)
  %i.ct = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.ct, label %middle.block69, label %vector.body63, !llvm.loop !566

middle.block69:                                   ; preds = %vector.body63
  %cmp.n70 = icmp eq i64 %i.by, %n.vec60
  br i1 %cmp.n70, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6, %middle.block69
  %.05.i.i.i.i.i.i.i.i.i.i8.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6 ], [ %n.vec60, %middle.block69 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader.new
  %.05.us.i.i.i.i.i.i.i.i.i.i12 = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader.new ], [ %i.db, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11 ] ; 4 uses
  %niter81 = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader.new ], [ %niter81.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11 ]
  %i.cu = trunc i64 %.05.us.i.i.i.i.i.i.i.i.i.i12 to i32
  %i.cv = sdiv i32 %i.cu, %i.ck
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.05.us.i.i.i.i.i.i.i.i.i.i12
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !31
  %i.cx = or disjoint i64 %.05.us.i.i.i.i.i.i.i.i.i.i12, 1 ; 2 uses
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = sdiv i32 %i.cy, %i.ck
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cx
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !31
  %i.db = add nuw nsw i64 %.05.us.i.i.i.i.i.i.i.i.i.i12, 2 ; 3 uses
  %niter81.next.1 = add i64 %niter81, 2           ; 2 uses
  %niter81.ncmp.1 = icmp eq i64 %niter81.next.1, %unroll_iter80
  br i1 %niter81.ncmp.1, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14.loopexit.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11, !llvm.loop !559

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7
  %.05.i.i.i.i.i.i.i.i.i.i8 = phi i64 [ %i.df, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7 ], [ %.05.i.i.i.i.i.i.i.i.i.i8.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader ] ; 4 uses
  %i.dc = trunc i64 %.05.i.i.i.i.i.i.i.i.i.i8 to i32
  %i.dd = mul nsw i32 %i.cd, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.05.i.i.i.i.i.i.i.i.i.i8
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !31
  %i.df = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i8, 1
  %exitcond.not.i.i.i.i.i.i.i.i.i.i9 = icmp eq i64 %.05.i.i.i.i.i.i.i.i.i.i8, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i9, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7, !llvm.loop !567

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14.loopexit.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11
  %i.dg = and i64 %i.bx, 1
  %lcmp.mod78.not.not = icmp eq i64 %i.dg, 0
  br i1 %lcmp.mod78.not.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.epil.preheader, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14.loopexit.unr-lcssa
  %lcmp.mod79 = trunc i64 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.dh = trunc i64 %i.db to i32
  %i.di = sdiv i32 %i.dh, %i.ck
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.db
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !31
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.epil.preheader, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14.loopexit.unr-lcssa, %middle.block69, %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i5
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !302
  tail call void @free(ptr noundef %i.dl) #28
  store ptr null, ptr %i.dk, align 8, !tbaa !302
  ret void
}

declare void @_ZN3igl21AtA_cached_precomputeIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERNS_15AtA_cached_dataERS4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN3igl10AtA_cachedIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERKNS_15AtA_cached_dataERS4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !327, !range !301, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !568, !nonnull !17, !align !391 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.f, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !302  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.j) #28
  store ptr null, ptr %i.i, align 8, !tbaa !302
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRKT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(65) %1)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl4slim8buildRhsERNS_8SLIMDataERKN5Eigen12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::assign_op.353", align 1 ; 3 uses
  %3 = alloca %"class.Eigen::Matrix.21", align 8  ; 9 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 9 uses
  %5 = alloca %"class.Eigen::CwiseBinaryOp.135", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.b = load i32, ptr %i.a, align 4, !tbaa !258  ; 6 uses
  %i.c = mul nsw i32 %i.b, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.e = load i32, ptr %i.d, align 8, !tbaa !319  ; 14 uses
  %i.f = mul nsw i32 %i.c, %i.e                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = shl nuw nsw i64 %i.g, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.i) ; 3 uses
  %i.j = icmp eq ptr %calloc, null
  br i1 %i.j, label %.noexc.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !256
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.b
  store ptr %calloc, ptr %3, align 8, !tbaa !27
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i
  %i.l = phi ptr [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i ], [ null, %bb.a ] ; 20 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.m, align 8, !tbaa !25
  %i.n = icmp eq i32 %i.b, 2
  %i.o = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.n, label %.preheader246, label %.preheader247

.preheader247:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader247
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = load i64, ptr %i.r, align 8, !tbaa !18   ; 8 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18   ; 8 uses
  %.idx = shl i64 %i.v, 4
  %.idx229 = shl i64 %i.w, 4
  %.idx230 = mul i64 %i.w, 24
  %.idx231 = shl i64 %i.w, 5
  %.idx232 = mul i64 %i.w, 40
  %.idx233 = mul i64 %i.w, 48
  %.idx234 = mul i64 %i.w, 56
  %.idx235 = shl i64 %i.w, 6
  %i.x = shl nuw nsw i32 %i.e, 1
  %.idx236 = mul i64 %i.v, 24
  %.idx237 = shl i64 %i.v, 5
  %.idx238 = mul i64 %i.v, 40
  %i.y = mul nuw nsw i32 %i.e, 3
  %i.z = shl nuw nsw i32 %i.e, 2
  %i.aa = mul nuw nsw i32 %i.e, 5
  %.idx239 = mul i64 %i.v, 48
  %.idx240 = mul i64 %i.v, 56
  %.idx241 = shl i64 %i.v, 6
  %i.ab = mul nuw nsw i32 %i.e, 6
  %i.ac = mul nuw nsw i32 %i.e, 7
  %i.ad = shl nuw nsw i32 %i.e, 3
  %i.ae = zext nneg i32 %i.e to i64               ; 2 uses
  %i.af = zext nneg i32 %i.x to i64
  %i.ag = zext nneg i32 %i.y to i64
  %i.ah = zext nneg i32 %i.z to i64
  %i.ai = zext nneg i32 %i.aa to i64
  %i.aj = zext nneg i32 %i.ab to i64
  %i.ak = zext nneg i32 %i.ac to i64
  %i.al = zext nneg i32 %i.ad to i64
  %invariant.gep280 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ae
  %invariant.gep282 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.af
  %invariant.gep284 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ag
  %invariant.gep286 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ah
  %invariant.gep288 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %invariant.gep290 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aj
  %invariant.gep292 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  %invariant.gep294 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.al
  br label %bb.c

.preheader246:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.o, label %.lr.ph251, label %.loopexit

.lr.ph251:                                        ; preds = %.preheader246
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 11 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !18 ; 5 uses
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !18 ; 5 uses
  %.idx242 = shl i64 %i.at, 4                     ; 4 uses
  %.idx243 = mul i64 %i.at, 24                    ; 4 uses
  %.idx244 = shl i64 %i.as, 4                     ; 4 uses
  %.idx245 = mul i64 %i.as, 24                    ; 4 uses
  %i.au = shl nuw i32 %i.e, 1
  %i.av = mul i32 %i.e, 3
  %i.aw = zext nneg i32 %i.e to i64               ; 8 uses
  %i.ax = zext i32 %i.au to i64                   ; 2 uses
  %i.ay = zext i32 %i.av to i64                   ; 2 uses
  %invariant.gep296 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aw ; 7 uses
  %invariant.gep298 = getelementptr [8 x i8], ptr %i.l, i64 %i.ax ; 5 uses
  %invariant.gep300 = getelementptr [8 x i8], ptr %i.l, i64 %i.ay ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 36
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph251
  %i.az = shl nuw nsw i64 %i.aw, 4
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.az ; 3 uses
  %i.ba = shl nuw nsw i64 %i.aw, 3                ; 8 uses
  %i.bb = add nuw nsw i64 %i.aw, %i.ax
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %scevgep306 = getelementptr i8, ptr %i.l, i64 %i.bc ; 3 uses
  %i.bd = add nuw nsw i64 %i.aw, %i.ay
  %i.be = shl nuw nsw i64 %i.bd, 3
  %scevgep307 = getelementptr i8, ptr %i.l, i64 %i.be ; 4 uses
  %scevgep308 = getelementptr i8, ptr %i.an, i64 %.idx245 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.an, i64 %.idx245
  %scevgep309 = getelementptr i8, ptr %i.bf, i64 %i.ba ; 2 uses
  %scevgep310 = getelementptr i8, ptr %i.an, i64 %.idx244 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.an, i64 %.idx244
  %scevgep311 = getelementptr i8, ptr %i.bg, i64 %i.ba ; 2 uses
  %i.bh = shl i64 %i.as, 3                        ; 2 uses
  %scevgep312 = getelementptr i8, ptr %i.an, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %i.an, i64 %i.bh
  %scevgep313 = getelementptr i8, ptr %i.bi, i64 %i.ba ; 2 uses
  %scevgep314 = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %scevgep315 = getelementptr i8, ptr %i.aq, i64 %.idx243 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.aq, i64 %.idx243
  %scevgep316 = getelementptr i8, ptr %i.bj, i64 %i.ba ; 2 uses
  %scevgep317 = getelementptr i8, ptr %i.aq, i64 %.idx242 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.aq, i64 %.idx242
  %scevgep318 = getelementptr i8, ptr %i.bk, i64 %i.ba ; 2 uses
  %i.bl = shl i64 %i.at, 3                        ; 2 uses
  %scevgep319 = getelementptr i8, ptr %i.aq, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %i.aq, i64 %i.bl
  %scevgep320 = getelementptr i8, ptr %i.bm, i64 %i.ba ; 2 uses
  %scevgep321 = getelementptr i8, ptr %i.aq, i64 %i.ba ; 2 uses
  %i.bn = insertelement <8 x ptr> poison, ptr %i.l, i64 0
  %i.bo = shufflevector <8 x ptr> %i.bn, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bp = insertelement <8 x ptr> poison, ptr %scevgep306, i64 0 ; 2 uses
  %i.bq = insertelement <8 x ptr> %i.bp, ptr %scevgep307, i64 1
  %i.br = insertelement <8 x ptr> %i.bq, ptr %scevgep309, i64 2
  %i.bs = insertelement <8 x ptr> %i.br, ptr %scevgep311, i64 3
  %i.bt = insertelement <8 x ptr> %i.bs, ptr %scevgep313, i64 4
  %i.bu = insertelement <8 x ptr> %i.bt, ptr %scevgep314, i64 5
  %i.bv = insertelement <8 x ptr> %i.bu, ptr %scevgep316, i64 6
  %i.bw = insertelement <8 x ptr> %i.bv, ptr %scevgep318, i64 7
  %i.bx = icmp ult <8 x ptr> %i.bo, %i.bw
  %i.by = insertelement <8 x ptr> poison, ptr %invariant.gep298, i64 0 ; 2 uses
  %i.bz = insertelement <8 x ptr> %i.by, ptr %invariant.gep300, i64 1
  %i.ca = insertelement <8 x ptr> %i.bz, ptr %scevgep308, i64 2
  %i.cb = insertelement <8 x ptr> %i.ca, ptr %scevgep310, i64 3
  %i.cc = insertelement <8 x ptr> %i.cb, ptr %scevgep312, i64 4
  %i.cd = insertelement <8 x ptr> %i.cc, ptr %i.an, i64 5
  %i.ce = insertelement <8 x ptr> %i.cd, ptr %scevgep315, i64 6
  %i.cf = insertelement <8 x ptr> %i.ce, ptr %scevgep317, i64 7
  %i.cg = insertelement <8 x ptr> poison, ptr %invariant.gep296, i64 0
  %i.ch = shufflevector <8 x ptr> %i.cg, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ci = icmp ult <8 x ptr> %i.cf, %i.ch
  %i.cj = and <8 x i1> %i.bx, %i.ci
  %bound0350 = icmp ult ptr %i.l, %scevgep320
  %bound1351 = icmp ult ptr %scevgep319, %invariant.gep296
  %found.conflict352 = and i1 %bound0350, %bound1351
  %bound0354 = icmp ult ptr %i.l, %scevgep321
  %bound1355 = icmp ult ptr %i.aq, %invariant.gep296
  %found.conflict356 = and i1 %bound0354, %bound1355
  %bound0358 = icmp ult ptr %invariant.gep296, %scevgep306
  %bound1359 = icmp ult ptr %invariant.gep298, %scevgep
  %found.conflict360 = and i1 %bound0358, %bound1359
  %bound0362 = icmp ult ptr %invariant.gep296, %scevgep307
  %bound1363 = icmp ult ptr %invariant.gep300, %scevgep
  %found.conflict364 = and i1 %bound0362, %bound1363
  %i.ck = insertelement <8 x ptr> poison, ptr %scevgep309, i64 0
  %i.cl = insertelement <8 x ptr> %i.ck, ptr %scevgep311, i64 1
  %i.cm = insertelement <8 x ptr> %i.cl, ptr %scevgep313, i64 2
  %i.cn = insertelement <8 x ptr> %i.cm, ptr %scevgep314, i64 3
  %i.co = insertelement <8 x ptr> %i.cn, ptr %scevgep316, i64 4
  %i.cp = insertelement <8 x ptr> %i.co, ptr %scevgep318, i64 5
  %i.cq = insertelement <8 x ptr> %i.cp, ptr %scevgep320, i64 6
  %i.cr = insertelement <8 x ptr> %i.cq, ptr %scevgep321, i64 7 ; 3 uses
  %i.cs = icmp ult <8 x ptr> %i.ch, %i.cr
  %i.ct = insertelement <8 x ptr> poison, ptr %scevgep308, i64 0
  %i.cu = insertelement <8 x ptr> %i.ct, ptr %scevgep310, i64 1
  %i.cv = insertelement <8 x ptr> %i.cu, ptr %scevgep312, i64 2
  %i.cw = insertelement <8 x ptr> %i.cv, ptr %i.an, i64 3
  %i.cx = insertelement <8 x ptr> %i.cw, ptr %scevgep315, i64 4
  %i.cy = insertelement <8 x ptr> %i.cx, ptr %scevgep317, i64 5
  %i.cz = insertelement <8 x ptr> %i.cy, ptr %scevgep319, i64 6
  %i.da = insertelement <8 x ptr> %i.cz, ptr %i.aq, i64 7 ; 3 uses
  %i.db = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.dc = shufflevector <8 x ptr> %i.db, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.dd = icmp ult <8 x ptr> %i.da, %i.dc
  %i.de = and <8 x i1> %i.cs, %i.dd
  %bound0398 = icmp ult ptr %invariant.gep298, %scevgep307
  %bound1399 = icmp ult ptr %invariant.gep300, %scevgep306
  %found.conflict400 = and i1 %bound0398, %bound1399
  %i.df = shufflevector <8 x ptr> %i.by, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.dg = icmp ult <8 x ptr> %i.df, %i.cr
  %i.dh = shufflevector <8 x ptr> %i.bp, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.di = icmp ult <8 x ptr> %i.da, %i.dh
  %i.dj = and <8 x i1> %i.dg, %i.di
  %i.dk = insertelement <8 x ptr> poison, ptr %invariant.gep300, i64 0
  %i.dl = shufflevector <8 x ptr> %i.dk, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.dm = icmp ult <8 x ptr> %i.dl, %i.cr
  %i.dn = insertelement <8 x ptr> poison, ptr %scevgep307, i64 0
  %i.do = shufflevector <8 x ptr> %i.dn, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.dp = icmp ult <8 x ptr> %i.da, %i.do
  %i.dq = and <8 x i1> %i.dm, %i.dp
  %rdx.op = or <8 x i1> %i.cj, %i.de
  %rdx.op499 = or <8 x i1> %rdx.op, %i.dj
  %rdx.op500 = or <8 x i1> %rdx.op499, %i.dq
  %i.dr = bitcast <8 x i1> %rdx.op500 to i8
  %i.ds = icmp ne i8 %i.dr, 0
  %op.rdx = or i1 %i.ds, %found.conflict352
  %op.rdx501 = or i1 %found.conflict356, %found.conflict360
  %op.rdx502 = or i1 %found.conflict364, %found.conflict400
  %op.rdx503 = or i1 %op.rdx, %op.rdx501
  %op.rdx504 = or i1 %op.rdx503, %op.rdx502
  br i1 %op.rdx504, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 2147483646              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.dt = getelementptr [8 x i8], ptr %i.an, i64 %index ; 5 uses
  %wide.load = load <2 x double>, ptr %i.dt, align 8, !tbaa !28, !alias.scope !574
  %i.du = getelementptr [8 x i8], ptr %i.aq, i64 %index ; 5 uses
  %wide.load466 = load <2 x double>, ptr %i.du, align 8, !tbaa !28, !alias.scope !577
  %i.dv = getelementptr [8 x i8], ptr %i.dt, i64 %i.as ; 2 uses
  %wide.load467 = load <2 x double>, ptr %i.dv, align 8, !tbaa !28, !alias.scope !579
  %i.dw = getelementptr [8 x i8], ptr %i.du, i64 %i.at ; 2 uses
  %wide.load468 = load <2 x double>, ptr %i.dw, align 8, !tbaa !28, !alias.scope !581
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index
  %i.dy = fmul <2 x double> %wide.load467, %wide.load468
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %wide.load466, <2 x double> %i.dy)
  store <2 x double> %i.dz, ptr %i.dx, align 8, !tbaa !28, !alias.scope !583, !noalias !585
  %wide.load469 = load <2 x double>, ptr %i.dt, align 8, !tbaa !28, !alias.scope !574
  %i.ea = getelementptr i8, ptr %i.du, i64 %.idx242 ; 2 uses
  %wide.load470 = load <2 x double>, ptr %i.ea, align 8, !tbaa !28, !alias.scope !593
  %wide.load471 = load <2 x double>, ptr %i.dv, align 8, !tbaa !28, !alias.scope !579
  %i.eb = getelementptr i8, ptr %i.du, i64 %.idx243 ; 2 uses
  %wide.load472 = load <2 x double>, ptr %i.eb, align 8, !tbaa !28, !alias.scope !594
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep296, i64 %index
  %i.ed = fmul <2 x double> %wide.load471, %wide.load472
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load469, <2 x double> %wide.load470, <2 x double> %i.ed)
  store <2 x double> %i.ee, ptr %i.ec, align 8, !tbaa !28, !alias.scope !595, !noalias !596
  %i.ef = getelementptr i8, ptr %i.dt, i64 %.idx244 ; 2 uses
  %wide.load473 = load <2 x double>, ptr %i.ef, align 8, !tbaa !28, !alias.scope !597
  %wide.load474 = load <2 x double>, ptr %i.du, align 8, !tbaa !28, !alias.scope !577
  %i.eg = getelementptr i8, ptr %i.dt, i64 %.idx245 ; 2 uses
  %wide.load475 = load <2 x double>, ptr %i.eg, align 8, !tbaa !28, !alias.scope !598
  %wide.load476 = load <2 x double>, ptr %i.dw, align 8, !tbaa !28, !alias.scope !581
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep298, i64 %index
  %i.ei = fmul <2 x double> %wide.load475, %wide.load476
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load473, <2 x double> %wide.load474, <2 x double> %i.ei)
  store <2 x double> %i.ej, ptr %i.eh, align 8, !tbaa !28, !alias.scope !599, !noalias !600
  %wide.load477 = load <2 x double>, ptr %i.ef, align 8, !tbaa !28, !alias.scope !597
  %wide.load478 = load <2 x double>, ptr %i.ea, align 8, !tbaa !28, !alias.scope !593
end_hunk_2
